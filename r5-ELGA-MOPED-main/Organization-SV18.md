# ELGA.MOPED\SV18 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV18**

## Example Organization: SV18

Profile: [SV Organization](StructureDefinition-SVOrganization.md)

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/18, `http://example.org/lsvt-code`/L8

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Tirol

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Klara-Pölt-Weg 2, 6020 Innsbruck Innsbruck Tirol 6020 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV18",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
  },
  "identifier" : [{
    "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
    "value" : "18"
  },
  {
    "system" : "http://example.org/lsvt-code",
    "value" : "L8"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "406",
      "display" : "Sozialversicherung"
    }]
  }],
  "name" : "Österreichische Gesundheitskasse Tirol",
  "contact" : [{
    "address" : {
      "line" : ["Klara-Pölt-Weg 2, 6020 Innsbruck"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Klara-Pölt-Weg"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "2"
        }]
      }],
      "city" : "Innsbruck",
      "state" : "Tirol",
      "postalCode" : "6020",
      "country" : "AUT"
    }
  }]
}

```
