# ELGA.MOPED\SV16 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV16**

## Example Organization: SV16

Profiles: [AT MOPED Organization SV Profil](StructureDefinition-at-moped-organization-SV.md), `https://elga.moped.at/StructureDefinition/AtMopedOrganizationSV`

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/16, `http://example.org/lsvt-code`/L6

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Kärnten

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Kempfstraße 8, 9021 Klagenfurt am Wörthersee Klagenfurt am Wörthersee Kärnten 9021 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV16",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV",
    "https://elga.moped.at/StructureDefinition/AtMopedOrganizationSV"]
  },
  "identifier" : [{
    "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
    "value" : "16"
  },
  {
    "system" : "http://example.org/lsvt-code",
    "value" : "L6"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "406",
      "display" : "Sozialversicherung"
    }]
  }],
  "name" : "Österreichische Gesundheitskasse Kärnten",
  "contact" : [{
    "address" : {
      "line" : ["Kempfstraße 8, 9021 Klagenfurt am Wörthersee"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Kempfstraße"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "8"
        }]
      }],
      "city" : "Klagenfurt am Wörthersee",
      "state" : "Kärnten",
      "postalCode" : "9021",
      "country" : "AUT"
    }
  }]
}

```
