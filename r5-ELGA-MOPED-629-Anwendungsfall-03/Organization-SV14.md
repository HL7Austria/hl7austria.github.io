# ELGA.MOPED\SV14 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV14**

## Example Organization: SV14

Profile: [SV Organization](StructureDefinition-SVOrganization.md)

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/14

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Oberösterreich

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Gruberstraße 77, 4021 Linz Linz Oberösterreich 4021 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV14",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
  },
  "identifier" : [
    {
      "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
      "value" : "14"
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
  "name" : "Österreichische Gesundheitskasse Oberösterreich",
  "contact" : [
    {
      "address" : {
        "line" : ["Gruberstraße 77, 4021 Linz"],
        "_line" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
                "valueString" : "Gruberstraße"
              },
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
                "valueString" : "77"
              }
            ]
          }
        ],
        "city" : "Linz",
        "state" : "Oberösterreich",
        "postalCode" : "4021",
        "country" : "AUT"
      }
    }
  ]
}

```
