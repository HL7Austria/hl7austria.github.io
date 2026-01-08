# ELGA.MOPED\SV12 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV12**

## Example Organization: SV12

Profile: [SV Organization](StructureDefinition-SVOrganization.md)

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/12

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Niederösterreich



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV12",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
  },
  "identifier" : [
    {
      "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
      "value" : "12"
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
  "name" : "Österreichische Gesundheitskasse Niederösterreich"
}

```
