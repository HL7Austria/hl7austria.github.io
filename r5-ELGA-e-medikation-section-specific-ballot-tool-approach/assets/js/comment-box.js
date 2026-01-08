// comment-box.js

(function () {
    let currentSelection = null;
    const COMMENTS_JSON_URL_PREFIX = 'https://raw.githubusercontent.com/HL7Austria/ballot-comments/main/discussions-';
    const COMMENTS_JSON_URL_SUFFIX = '/comments.json';
    const COMMENTS_JSON_URL = COMMENTS_JSON_URL_PREFIX.concat(GITHUB_REPO.replace("HL7Austria/",""), COMMENTS_JSON_URL_SUFFIX);
    let loadedComments = [];

    const INLINE_TAGS = ['a', 'span', 'b', 'i', 'u', 'strong', 'em', 'small', 'abbr', 'sub', 'sup', 'mark', 'time'];

    async function loadComments() {
      try {
        const res = await fetch(COMMENTS_JSON_URL);
        if (!res.ok) throw new Error('Failed to fetch comments.json');
        loadedComments = await res.json();
        return loadedComments;
      } catch (e) {
        console.error('❌ Failed to load comments:', e);
        return [];
      }
    }

    function showToast(message) {
      const toast = document.createElement('div');
      toast.textContent = message;
      toast.style.position = 'fixed';
      toast.style.bottom = '2rem';
      toast.style.right = '2rem';
      toast.style.background = '#333';
      toast.style.color = 'white';
      toast.style.padding = '0.5rem 1rem';
      toast.style.borderRadius = '8px';
      toast.style.zIndex = '99999';
      toast.style.opacity = '0.9';
      document.body.appendChild(toast);

      setTimeout(() => {
        toast.remove();
      }, 3000);
    }

    function patchCommentsLocally(newComment) {
      loadedComments.push(newComment);
      highlightComment(newComment);
    }

    function compressXPath(xpath) {
      const parts = xpath.split('/');
      const compressed = [];
      let count = 1;

      for (let i = 1; i < parts.length; i++) {
        if (parts[i] === parts[i - 1]) {
          count++;
        } else {
          if (count > 1) {
            compressed.push(`${parts[i - 1]}*${count}`);
          } else {
            compressed.push(parts[i - 1]);
          }
          count = 1;
        }
      }

      // Handle the last element
      if (count > 1) {
        compressed.push(`${parts[parts.length - 1]}*${count}`);
      } else {
        compressed.push(parts[parts.length - 1]);
      }

      return compressed.join('/');
    }


    function getXPathForNode(node) {
      if (!node) return '';

      if (node.nodeType === Node.TEXT_NODE) {
        return getXPathForNode(node.parentNode) + '/text()';
      }

      const parts = [];
      while (node && node.nodeType === 1) {
        let index = 1;
        let sibling = node.previousSibling;

        while (sibling) {
          if (
            sibling.nodeType === Node.ELEMENT_NODE &&
            sibling.nodeName === node.nodeName
          ) {
            index++;
          }
          sibling = sibling.previousSibling;
        }

        const tagName = node.nodeName.toLowerCase();
        const part = `${tagName}[${index}]`;
        parts.unshift(part);
        node = node.parentNode;
      }

      return '/' + parts.join('/');
    }



    function getNodeByXPath(xpath) {
      try {
        const result = document.evaluate(xpath, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null);
        return result.singleNodeValue;
      } catch (e) {
        console.warn('❗ Invalid XPath', xpath, e);
        return null;
      }
    }

    function highlightSingleNode(startXPath, startOffset, endOffset, color = '#fffd8c', commentId = '') {
      const startNode = getNodeByXPath(startXPath);
      if (!startNode) return;
      const endNode = startNode;


      const range = document.createRange();
      range.setStart(startNode, Math.min(startOffset, startNode.length));
      range.setEnd(endNode, Math.min(endOffset, endNode.length));

      const span = document.createElement('span');
      span.style.backgroundColor = color;
      span.style.position = 'relative';
      span.setAttribute('data-comment', 'true');
      span.setAttribute('data-comment-id', commentId);

      range.surroundContents(span);

      return span;
    }

    function generateCommentId(comment) {
      const { page, startXPath, startOffset, endOffset } = comment;
      const compressedStart = compressXPath(startXPath);
      const payload = `${page}|${compressedStart}|${startOffset}|${endOffset}`;
      return payload;
    }


    function showGiscusForComment(commentId) {
        const containerId = 'giscus-container';
        let container = document.getElementById(containerId);

        if (!container) {
          container = document.createElement('div');
          container.id = containerId;
          container.style.position = 'fixed';
          container.style.bottom = '1rem';
          container.style.right = '1rem';
          container.style.width = '400px';
          container.style.height = '400px';
          container.style.background = 'white';
          container.style.border = '1px solid #ccc';
          container.style.zIndex = '10000';
          container.style.overflow = 'auto';
          container.style.boxShadow = '0 2px 8px rgba(0,0,0,0.2)';
          document.body.appendChild(container);
        }

        // Clear old content and force fresh load
        container.style.display = 'block';
        container.innerHTML = '';

        const closeButton = document.createElement('button');
        closeButton.textContent = '✖';
        closeButton.style.position = 'absolute';
        closeButton.style.top = '5px';
        closeButton.style.right = '5px';
        closeButton.style.zIndex = '10001';
        closeButton.onclick = () => {
          container.style.display = 'none';
          container.innerHTML = '';
        };

        const giscusScript = document.createElement('script');
        giscusScript.src = 'https://giscus.app/client.js';
        giscusScript.setAttribute('data-repo', GITHUB_REPO);
        giscusScript.setAttribute('data-repo-id', GITHUB_REPO_ID);
        giscusScript.setAttribute('data-category', GITHUB_CATEGORY);
        giscusScript.setAttribute('data-category-id', GITHUB_CATEGORY_ID);
        giscusScript.setAttribute('data-mapping', 'specific');
        giscusScript.setAttribute('data-term', commentId);
        giscusScript.setAttribute('data-theme', 'light');
        giscusScript.crossOrigin = 'anonymous';
        giscusScript.async = true;

        //For debugging
        console.log('💬 Injecting Giscus with term:', commentId);

        container.appendChild(closeButton);
        container.appendChild(giscusScript);
      }


    function highlightComment(comment) {
      if (comment.page !== location.pathname) return;
      const span = highlightSingleNode(
        comment.startXPath,
        comment.startOffset,
        comment.endOffset,
        '#fffd8c',
        comment.commentId
      );
      if (span) {
        span.style.cursor = 'pointer';
        span.onclick = () => {
          const cid = span.getAttribute('data-comment-id');
          if (cid) {
            showGiscusForComment(cid);
          } else {
            console.warn('⚠️ No comment ID found on span');
          }
        };
      }
    }

    function snapToWordBoundaries(text, maxWords = 30) {
      const words = text.trim().split(/\s+/);
      if (!words || words.length === 0) return '';

      let cleanedText = '';

      if (words.length === 1) {
        cleanedText = words[0];
      } else {
        // Skip the first word to avoid mid-word selections
        // Also skip the last word to avoid trailing mid-word errors
        cleanedText = words.slice(1, Math.min(words.length - 1, maxWords - 1)).join(' ');
      }

      return encodeURIComponent(cleanedText)
        .replace(/\(/g, '%28')
        .replace(/\)/g, '%29')
        .replace(/-/g, '%2D');
    }

    function createTemplateBox(comment) {
        const box = document.createElement('div');
        box.id = 'templateBox';
        box.style.position = 'fixed';
        box.style.bottom = '1rem';
        box.style.right = '1rem';
        box.style.background = '#fff';
        box.style.border = '1px solid #ccc';
        box.style.padding = '1rem';
        box.style.boxShadow = '0 2px 8px rgba(0,0,0,0.2)';
        box.style.zIndex = '9999';
        box.style.maxWidth = '400px';
        box.style.display = 'block';

        const passageHeader = document.createElement('label');
        passageHeader.textContent = '📖 Passage in question';
        const passage = document.createElement('blockquote');
        passage.textContent = comment.selection;
        passage.style.whiteSpace = 'pre-wrap';

        const issueLabel = document.createElement('label');
        issueLabel.textContent = '🛠️ Describe your issue';
        const issueInput = document.createElement('textarea');
        issueInput.rows = 3;
        issueInput.style.width = '100%';

        const solutionLabel = document.createElement('label');
        solutionLabel.textContent = '💡 Proposed solution';
        const solutionInput = document.createElement('textarea');
        solutionInput.rows = 3;
        solutionInput.style.width = '100%';

        const ratingLabel = document.createElement('label');
        ratingLabel.textContent = '⭐ Rating';
        const ratingSelect = document.createElement('select');
        ratingSelect.style.width = '100%';
        [
          'approval & comment',
          'approval proposal',
          'approval & typo',
          'approval question',
          'comment only',
          'light disapproval',
          'heavy disapproval'
        ].forEach(value => {
          const option = document.createElement('option');
          option.value = value;
          option.textContent = value;
          ratingSelect.appendChild(option);
        });

        const selection = window.getSelection();
        const text = selection.toString().trim();
        const fragment = snapToWordBoundaries(text);
        const linkToHighlight = `${location.href.split('#')[0]}#:~:text=${fragment}`;

        const copyBtn = document.createElement('button');
        copyBtn.textContent = '📋 Copy and Comment';
        copyBtn.style.marginTop = '0.5rem';
        copyBtn.onclick = () => {
          const finalTemplate = `### Passage in question\n> ${comment.selection}\n\n` +
                                `### 🔗 [Highlight Link](${linkToHighlight})\n\n` +
                                `### Describe your issue\n${issueInput.value}\n\n` +
                                `### Describe your proposed solution\n${solutionInput.value}\n\n` +
                                `### Rating\n${ratingSelect.value}`;

          navigator.clipboard.writeText(finalTemplate).then(() => {
            showToast('✅ Template copied!');
            patchCommentsLocally(comment);
            box.remove();
            showGiscusForComment(comment.commentId);
          });
        };

        const cancelBtn = document.createElement('button');
        cancelBtn.textContent = '✖ Cancel';
        cancelBtn.style.marginLeft = '0.5rem';
        cancelBtn.onclick = () => {
          box.remove();
          window.getSelection().removeAllRanges();
        };

        box.appendChild(passageHeader);
        box.appendChild(passage);
        box.appendChild(issueLabel);
        box.appendChild(issueInput);
        box.appendChild(solutionLabel);
        box.appendChild(solutionInput);
        box.appendChild(ratingLabel);
        box.appendChild(ratingSelect);
        box.appendChild(document.createElement('br'));
        box.appendChild(copyBtn);
        box.appendChild(cancelBtn);

        document.body.appendChild(box);
      }


      async function initializeHighlights() {
        await loadComments();
        loadedComments.forEach(comment => {
          highlightComment(comment);
        });
      }

    window.addEventListener('load', async () => {
      await initializeHighlights();
    });

    document.addEventListener('mouseup', () => {
      const sel = window.getSelection();
      if (!sel || sel.isCollapsed) return;

      const range = sel.getRangeAt(0);
      if (range.startContainer !== range.endContainer) {
        alert("⚠️ Please only select inside a single paragraph or element!");
        window.getSelection().removeAllRanges();
        return;
      }

      const selection = sel.toString().trim();
      if (!selection) return;

      const comment = {
        page: location.pathname,
        selection,
        startXPath: getXPathForNode(range.startContainer),
        startOffset: range.startOffset,
        endOffset: range.endOffset,
        url: '',
        createdAt: new Date().toISOString(),
        number: 0
      };
      comment.commentId = generateCommentId(comment);
      createTemplateBox(comment);

      window.getSelection().removeAllRanges();
    });
  })();
