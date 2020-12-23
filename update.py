import glob
import yaml
import re

# Read all directories and look for a index.md file
# if found, the content of the file is added to the index.html in this repository.


# (.*)<!--\s*@@begin-include
# <!--\s*@@end-include\s*-->(.*)

regex = '<!--\s*@@begin-include\s*-->(.*)<!--\s*@@end-include\s*-->'
content = '<!-- @@begin-include -->'
for name in glob.glob('./*/_index.yml'):
    
    with open(name) as file:  
        index_yml = yaml.load(file, Loader=yaml.FullLoader)
        content += f"""<a href="r4-core-master/index.html" class="list-group-item list-group-item-action flex-column align-items-start">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">{index_yml[0].get("title", "n.a.")}<span style="margin-left: 8px;" class="label label-success">{index_yml[4].get("branch", "n.a.")}</span></h5>
                            <span class="label label-info">{index_yml[1].get("version", "n.a.")}</span>                      
                        </div>
                        <p class="mb-1">{index_yml[2].get("description", "n.a.")}</p>                    
                        <small>Last published: <span class="label label-default">{index_yml[3].get("last_published", "n.a.")}</span></small>
                        </a>"""   


content =  content + '<!-- @@end-include -->'
with open('./index.html','r',encoding="utf8") as inputfile:
    pattern = re.compile( regex, re.MULTILINE | re.DOTALL)
    c_out = pattern.sub( content,  inputfile.read() )

    with open("index.html", "w") as index_html:
        index_html.write( c_out )
        index_html.close()

        



