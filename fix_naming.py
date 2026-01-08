import glob
import yaml
import re

regex = '<td>(N\/A)<\/td>'
pattern = re.compile( regex, re.MULTILINE | re.DOTALL)
for name in glob.glob('./*/*-mappings.html'):
    if 'r4-core-ballot_2021_01' not in name:
        with open(name) as file:  
            c_out = pattern.sub( '<td>n/a</td>', file.read() )
        with open(name, "w") as html:
            html.write( c_out )
            html.close()