# ELGA.MOPED\SV11 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV11**

## Example Organization: SV11

Profile: [SV Organization](StructureDefinition-SVOrganization.md)

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/11

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Wien

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Wienerbergstraße 15-19, 1100 Wien Wien Wien 1100 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV11",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
  },
  "identifier" : [
    {
      "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
      "value" : "11"
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
  "name" : "Österreichische Gesundheitskasse Wien",
  "contact" : [
    {
      "address" : {
        "line" : ["Wienerbergstraße 15-19, 1100 Wien"],
        "_line" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
                "valueString" : "Wienerbergstraße"
              },
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
                "valueString" : "15-19"
              }
            ]
          }
        ],
        "city" : "Wien",
        "state" : "Wien",
        "postalCode" : "1100",
        "country" : "AUT"
      }
    }
  ]
}

```
