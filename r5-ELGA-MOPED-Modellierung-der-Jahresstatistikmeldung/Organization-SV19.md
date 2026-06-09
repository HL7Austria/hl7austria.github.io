# ELGA.MOPED\SV19 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV19**

## Example Organization: SV19

Profiles: [AT MOPED Organization SV Profil](StructureDefinition-at-moped-organization-SV.md), `https://elga.moped.at/StructureDefinition/AtMopedOrganizationSV`

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/19, `http://example.org/lsvt-code`/L9

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Vorarlberg

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Jahngasse 4, 6850 Dornbirn Dornbirn Vorarlberg 6850 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV19",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV",
    "https://elga.moped.at/StructureDefinition/AtMopedOrganizationSV"]
  },
  "identifier" : [{
    "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
    "value" : "19"
  },
  {
    "system" : "http://example.org/lsvt-code",
    "value" : "L9"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "406",
      "display" : "Sozialversicherung"
    }]
  }],
  "name" : "Österreichische Gesundheitskasse Vorarlberg",
  "contact" : [{
    "address" : {
      "line" : ["Jahngasse 4, 6850 Dornbirn"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Jahngasse"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "4"
        }]
      }],
      "city" : "Dornbirn",
      "state" : "Vorarlberg",
      "postalCode" : "6850",
      "country" : "AUT"
    }
  }]
}

```
