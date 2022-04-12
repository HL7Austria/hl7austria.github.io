import glob
import yaml
import re

# Read all directories and look for a index.md file
# if found, the content of the file is added to the index.html in this repository. 

def populate_html( fName, name, label, branch, version, description, published ):
    return f"""<a href="{fName}/index.html" class="list-group-item list-group-item-action flex-column align-items-start">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">{name}<span style="margin-left: 8px;" class="label {label}">{branch}</span></h5>
                                <span class="label label-info">{version}</span>                      
                            </div>
                            <p class="mb-1" style="margin-top:6px;">{description}</p>                    
                            <small>Last published:</small> <span class="label label-default">{published}</span>
                            </a>"""

# (.*)<!--\s*@@begin-include
# <!--\s*@@end-include\s*-->(.*)

regex = '<!--\s*@@begin-include\s*-->(.*)<!--\s*@@end-include\s*-->'
content = '<!-- @@begin-include -->'
branchContent =  ''
for name in glob.glob('./*/_index.yml'):
    
    with open(name) as file:  
        index_yml = yaml.load(file, Loader=yaml.FullLoader)
        print(index_yml)
        folder_name = name.replace('/_index.yml', '')
        current = 'label-warning'
        if index_yml[4].get("branch", "n.a.") == 'main':
            current = 'label-success'
        if index_yml[5].get("type", "") == 'official':
            current = 'label-primary'
        
        tmp = populate_html(folder_name, index_yml[0].get("name", "n.a."), current, index_yml[4].get("branch", "n.a."), index_yml[1].get("version", "n.a."), index_yml[2].get("description", "n.a."), index_yml[3].get("last_published", "n.a."))  
        if index_yml[5].get("type", "") == 'official' or index_yml[4].get("branch", "n.a.") == 'main':
            content += tmp
        else:
            branchContent += tmp


content =  content + '<h4 style="margin-top:20px">Working drafts</h4>' + branchContent + '<!-- @@end-include -->'
with open('./index.html','r',encoding="utf8") as inputfile:
    pattern = re.compile( regex, re.MULTILINE | re.DOTALL)
    c_out = pattern.sub( content,  inputfile.read() )

    with open("index.html", "w") as index_html:
        index_html.write( c_out )
        index_html.close()

        



