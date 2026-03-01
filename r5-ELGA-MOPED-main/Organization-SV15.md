# ELGA.MOPED\SV15 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV15**

## Example Organization: SV15

Profile: [SV Organization](StructureDefinition-SVOrganization.md)

**identifier**: `http://svc.co.at/CodeSystem/ecard-svt-cs`/15

**type**: Sozialversicherung

**name**: Österreichische Gesundheitskasse Steiermark

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Josef-Pongratz-Platz 1, 8010 Graz Graz Steiermark 8010 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "SV15",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/SVOrganization"]
  },
  "identifier" : [{
    "system" : "http://svc.co.at/CodeSystem/ecard-svt-cs",
    "value" : "15"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "406",
      "display" : "Sozialversicherung"
    }]
  }],
  "name" : "Österreichische Gesundheitskasse Steiermark",
  "contact" : [{
    "address" : {
      "line" : ["Josef-Pongratz-Platz 1, 8010 Graz"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Josef-Pongratz-Platz"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "1"
        }]
      }],
      "city" : "Graz",
      "state" : "Steiermark",
      "postalCode" : "8010",
      "country" : "AUT"
    }
  }]
}

```
