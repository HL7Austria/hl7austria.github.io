# ELGA.MOPED\SV16 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV16**

## Example Organization: SV16

Profile: [SV Organization](StructureDefinition-SVOrganization.md)

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/16

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Kärnten



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV16",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
  },
  "identifier" : [
    {
      "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
      "value" : "16"
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
  "name" : "Österreichische Gesundheitskasse Kärnten"
}

```
