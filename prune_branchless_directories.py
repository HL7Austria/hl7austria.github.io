# import glob
import os
import requests
import json
import shutil

# to be removed as the repository name will be part of _index.yml
project_dict = {
    'ig-infrastructure': 'HL7-AT-WORKSHOP-FHIRIGInfrastructure',
    'r4-core': 'HL7-AT-FHIR-Core-R4',
    'r4-ELGA-AustrianPatientSummary': 'ELGA-AustrianPatientSummary-R4',
    'r4-ELGA-IV-Diabetes': 'ELGA-IV-Diabetes-R4',
    'r4-ELGA-IV-Herzinsuffizienz': 'ELGA-IV-Herzinsuffizienz-R4',
    'r4-kiola': 'AIT-KIOLA-R4',
    'r4-naboto': 'NABOTO-IG',
    'r4-pica': 'AIST-PICA-R4',
    'r5-AGES-MedicinalProduct': 'AGES-MedicinalProduct-R5',
    'r5-core': 'HL7-AT-FHIR-Core-R5',
    'r4-ELGA-e-medikation': 'ELGA-e-Medikation-R4',
    'r5-ELGA-e-medikation': 'ELGA-FHIR-e-Medikation-R5',
    'r5-ELGA-MOPED': 'ELGA-MOPED-R5',
    'r5-LinkedCare': 'LinkedCare',
    'r5-pica': 'AIST-PICA-R5',
    'r5-TC-FHIR-AG-Scheduling-R5': 'TC-FHIR-AG-Scheduling-R5',
    'HL7-AT-Reference-IG': 'HL7-AT-Reference-IG'
}

# list of everything in this directory
# TODO: as soon as _index.yml contains the repository name a glob will be used
dir_list = os.listdir('.')
# dictionary with branch_prefix as keys and a list of corresponding directories as values
branch_prefix_to_directory_dict = {}

for directory_name in dir_list:
    # if it is a directory
    # TODO: as soon as _index.yml contains the repository name this is not necessary any more
    if os.path.isdir(directory_name):
        # loop all known branch_prefixes in order to match a directory to a repository
        # TODO: as soon as _index.yml contains the repository name this is not necessary any more
        for branch_prefix in project_dict.keys():
            if directory_name.startswith(branch_prefix):
                if branch_prefix not in branch_prefix_to_directory_dict:
                    branch_prefix_to_directory_dict[branch_prefix] = []
                # add the directory to the list belonging to the branch_prefix
                branch_prefix_to_directory_dict[branch_prefix].append(directory_name)

headers={ 'User-Agent': '<github_username>',
          'Authorization': 'Bearer <github_fine-grained_PAT>'} # https://github.com/settings/personal-access-tokens
for branch_prefix in branch_prefix_to_directory_dict.keys():
    # retrieve all branch names of a repository
    res = requests.get('https://api.github.com/repos/HL7Austria/' + project_dict[branch_prefix] + '/branches', headers=headers)
    # print(res.text)

    try:
        res.raise_for_status()
    except:
        print("ERROR: " + res.text)
        # not sure if we really want the script to fail completely because one request failed
        res.raise_for_status()

    # retrieve REST GET result as json
    branch_info_list = json.loads(res.text)
    # convert to a list of branch names
    branch_name_list = [branch_info['name'] for branch_info in branch_info_list]

    print('--------------------------------')
    # print repository name
    print(project_dict[branch_prefix])
    print('--------------------------------')

    for directory_name in branch_prefix_to_directory_dict[branch_prefix]:
        # extract branch name out of directory name
        # TODO: should not be necessary as soon as we can rely on _index.yml
        branch_name = directory_name.replace(branch_prefix + '-', '')
        if branch_name not in branch_name_list:
            print('to be deleted: ' + directory_name)
            shutil.rmtree(directory_name, ignore_errors=True)
        else:
            print('to be kept: ' + directory_name)
