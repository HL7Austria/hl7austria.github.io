# ELGA.MOPED\SV18 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV18**

## Example Organization: SV18

Profile: [SV Organization](StructureDefinition-SVOrganization.md)

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/18

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Tirol



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV18",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
  },
  "identifier" : [
    {
      "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
      "value" : "18"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
          "code" : "406",
          "display" : "Sozialversicherung"
        }
      ]
    }
  ],
  "name" : "Österreichische Gesundheitskasse Tirol"
}

```
