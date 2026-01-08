// embed-giscus.js

(function () {

    const script = document.createElement('script');
    script.src = 'https://giscus.app/client.js';
    script.type = 'text/javascript';
    script.setAttribute('data-repo', 'HL7Austria/ELGA-FHIR-e-Medikation-R5');
    script.setAttribute('data-repo-id', 'R_kgDOLhyFQQ');
    script.setAttribute('data-category', 'Comment');
    script.setAttribute('data-category-id', 'DIC_kwDOLhyFQc4Cev5-');
    script.setAttribute('data-mapping', 'url');
    script.setAttribute('data-reactions-enabled', '0');
    script.setAttribute('data-emit-metadata', '1');
    script.setAttribute('data-input-position', 'bottom');
    script.setAttribute('data-theme', 'light');
    script.setAttribute('data-lang', 'en');
    script.crossOrigin = 'anonymous';
    script.async = true;
  
    document.body.appendChild(script);

    console.log('[Giscus] embed script added');
  })();
  