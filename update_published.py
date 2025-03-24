from datetime import datetime
import glob
import yaml
import re
import os
import json

OFFICIAL_TYPE_NAME = 'official'
MAIN_BRANCH_NAME = 'main'

class Entry():
    def __init__(self, name, description, label, version, branch, published):
        self.name = name
        self.description = description
        self.label = label
        self.version = version
        self.branch = branch
        self.published = published

def fromYaml( name, yaml,fname ):

    if len(yaml) == 6:
        label = 'label-warning'
        if index_yml[4].get("branch", "n.a.") == MAIN_BRANCH_NAME and index_yml[0].get("name", "").startswith('HL7'):
            label = 'label-success'
        # Partner main
        if index_yml[4].get("branch", "n.a.") == MAIN_BRANCH_NAME:
            label = 'label-success'
        # Working drafts
        if index_yml[5].get("type", "") == OFFICIAL_TYPE_NAME:
            label = 'label-primary'

        entryname = index_yml[0].get("name","n.a.")

        return {
            "name" : entryname,
            "description" : index_yml[2].get("description", "n.a."),
            "label" : label,
            "version" : index_yml[1].get("version", "n.a."),
            "branch" : index_yml[4].get("branch", "n.a."),
            "published" : index_yml[3].get("last_published", "n.a."),
            "type" :  index_yml[5].get("type", "n.a."),
            "fname": fname
        }
    else:
        print(f"❌ The provided yaml configuration in {name} does not contain all required properties")
        return

def from_package_list(entry_value, folder_name):
    package_list_path = os.path.join(folder_name, 'package-list.json')

    # Open and read the JSON file
    with open(package_list_path, 'r') as package_list_file:
        package_list = json.load(package_list_file)

    if 'package-id' in package_list:
        entry_value['id'] = package_list['package-id']
    else:
        entry_value['id'] = ''

    return entry_value

def build_publication(content):
    rows = ''
    for entry in content:
        rows += f"""<p class="mb-1" style="margin-top:6px;color:#666"><a href="./{entry['fname']}/index.html">Implementation Guide</a> | <a href="https://simplifier.net/packages/{entry['id']}">FHIR Registry</a> | <a href="https://build.fhir.org/ig/HL7Austria/{entry['fname']}/index.html">CI Build</a> | <a href="./{entry['fname']}/history.html">Publication History</a> | <a href="https://github.com/HL7Austria/{entry['fname']}">Source</a></p>"""
    return rows

def build_table_html( cn, clazz = 'datatable' ):
    ret = ''
    for key in cn.keys():
        value = cn[key]
        ret += f"""<div class="list-group-item list-group-item-action flex-column align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h4 class="mb-1">{key}</h4>
                        <p class="mb-1" style="margin-top:6px;color:#666">{value[0]['description']}</p>
                        {build_publication(value)}
                    </div>
                </div>"""

    return ret

regex = '<!--\s*@@begin-include\s*-->(.*)<!--\s*@@end-include\s*-->'
content = '<!-- @@begin-include --><h3 style="margin-top:20px">Official HL7® Austria IGs</h3><p>Official HL7® Austria IGs usually contain profiles and/or extensions which are applicable for the Austrian e-Health environment regardless of the respective use case they are applied to.</p>'
elgaContentHeader = '<h3 style="margin-top:50px">ELGA IGs</h3><p>IGs authored by ELGA GmbH are tailored towards specific use cases which are part of the Austrian e-Health record (ELGA) or other public services (e.g. e-medication, e-vaccination, etc.) and which may be enacted by the legislator.</p>'
partnerContent = '<h3 style="margin-top:50px">HL7® Austria Member IGs</h3>'

date_format = '%d.%m.%Y'

hl7content = dict()
elgacontent = dict()
membercontent = dict()

for name in glob.glob('./*/_index.yml'):

    with open(name) as file:
        index_yml = yaml.load(file, Loader=yaml.FullLoader)
        #print(index_yml)
        folder_name = os.path.dirname(os.path.normpath(file.name))
        entry_value = fromYaml(name, index_yml, folder_name)

        if entry_value is not None:
            if entry_value['branch'] == entry_value['fname']:
                entry_value = from_package_list(entry_value, folder_name)

                if entry_value['name'].startswith('HL7'):
                    if entry_value['name'] not in hl7content.keys():
                        hl7content[entry_value['name']] = []
                    hl7content[entry_value['name']].append( entry_value )
                elif entry_value['name'].startswith('ELGA'):
                    if entry_value['name'] not in elgacontent.keys():
                        elgacontent[entry_value['name']] = []
                    elgacontent[entry_value['name']].append( entry_value )
                else:
                    if entry_value['name'] not in membercontent.keys():
                        membercontent[entry_value['name']] = []
                    membercontent[entry_value['name']].append( entry_value )

content = content + build_table_html(hl7content) + \
          elgaContentHeader + build_table_html(elgacontent) + \
          partnerContent + build_table_html(membercontent) + \
          '<!-- @@end-include -->'

with open('./index.html','r',encoding="utf8") as inputfile:
    pattern = re.compile( regex, re.MULTILINE | re.DOTALL)
    c_out = pattern.sub( content,  inputfile.read() )

    with open("index.html", "w", encoding='utf8') as index_html:
        index_html.write( c_out )
        index_html.close()

