# ELGA.MOPED\SV12 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV12**

## Example Organization: SV12

Profiles: [AT MOPED Organization SV Profil](StructureDefinition-at-moped-organization-SV.md), `https://elga.moped.at/StructureDefinition/AtMopedOrganizationSV`

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/12, `http://example.org/lsvt-code`/L2

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Niederösterreich

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Kremser Landstraße 3, 3100 St. Pölten St. Pölten Niederösterreich 3100 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV12",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV",
    "https://elga.moped.at/StructureDefinition/AtMopedOrganizationSV"]
  },
  "identifier" : [{
    "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
    "value" : "12"
  },
  {
    "system" : "http://example.org/lsvt-code",
    "value" : "L2"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "406",
      "display" : "Sozialversicherung"
    }]
  }],
  "name" : "Österreichische Gesundheitskasse Niederösterreich",
  "contact" : [{
    "address" : {
      "line" : ["Kremser Landstraße 3, 3100 St. Pölten"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Kremser Landstraße"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "3"
        }]
      }],
      "city" : "St. Pölten",
      "state" : "Niederösterreich",
      "postalCode" : "3100",
      "country" : "AUT"
    }
  }]
}

```
