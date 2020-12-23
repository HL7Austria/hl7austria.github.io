import markdown
import glob

# Read all directories and look for a index.md file
# if found, the content of the file is added to the index.html in this repository.

for name in glob.glob('./*/_index.md'):
    print '\t', markdown.markdown(name);
