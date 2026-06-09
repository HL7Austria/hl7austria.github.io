# ELGA.MOPED\SV17 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV17**

## Example Organization: SV17

Profiles: [AT MOPED Organization SV Profil](StructureDefinition-at-moped-organization-SV.md), `https://elga.moped.at/StructureDefinition/AtMopedOrganizationSV`

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/17, `http://example.org/lsvt-code`/L7

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Salzburg

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Engelbert-Weiß-Weg 10, 5020 Salzburg Salzburg Salzburg 5020 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV17",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV",
    "https://elga.moped.at/StructureDefinition/AtMopedOrganizationSV"]
  },
  "identifier" : [{
    "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
    "value" : "17"
  },
  {
    "system" : "http://example.org/lsvt-code",
    "value" : "L7"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "406",
      "display" : "Sozialversicherung"
    }]
  }],
  "name" : "Österreichische Gesundheitskasse Salzburg",
  "contact" : [{
    "address" : {
      "line" : ["Engelbert-Weiß-Weg 10, 5020 Salzburg"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Engelbert-Weiß-Weg"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "10"
        }]
      }],
      "city" : "Salzburg",
      "state" : "Salzburg",
      "postalCode" : "5020",
      "country" : "AUT"
    }
  }]
}

```
