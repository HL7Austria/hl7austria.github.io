# ELGA.MOPED\SV13 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV13**

## Example Organization: SV13

Profile: [SV Organization](StructureDefinition-SVOrganization.md)

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/13, `http://example.org/lsvt-code`/L3

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Burgenland

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Siegfried Marcus-Straße 5, 7000 Eisenstadt Eisenstadt Burgenland 7000 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV13",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
  },
  "identifier" : [{
    "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
    "value" : "13"
  },
  {
    "system" : "http://example.org/lsvt-code",
    "value" : "L3"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "406",
      "display" : "Sozialversicherung"
    }]
  }],
  "name" : "Österreichische Gesundheitskasse Burgenland",
  "contact" : [{
    "address" : {
      "line" : ["Siegfried Marcus-Straße 5, 7000 Eisenstadt"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Siegfried Marcus-Straße"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "5"
        }]
      }],
      "city" : "Eisenstadt",
      "state" : "Burgenland",
      "postalCode" : "7000",
      "country" : "AUT"
    }
  }]
}

```
