# OrganizationGruppenpraxisFrauenmedizinSonnenfeld - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Organization: OrganizationGruppenpraxisFrauenmedizinSonnenfeld

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG) |
| Alias: | Frauenmedizin Sonnenfeld |
| Administrative: | * [+43 732 555 410](tel:+43732555410)
* [ordination@frauenmedizin-sonnenfeld.example](mailto:ordination@frauenmedizin-sonnenfeld.example)
* Sonnenfeldgasse 12, 1. Stock Sonnenfeld Steiermark 8000 AUT (work)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationGruppenpraxisFrauenmedizinSonnenfeld",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "system" : "urn:publicid:gv.at:baseid+XFN",
    "value" : "999998x"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }],
    "text" : "Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)"
  }],
  "name" : "Gruppenpraxis Frauenmedizin Sonnenfeld OG",
  "alias" : ["Frauenmedizin Sonnenfeld"],
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "ADMIN",
        "display" : "Administrative"
      }]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+43 732 555 410",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "ordination@frauenmedizin-sonnenfeld.example",
      "use" : "work"
    }],
    "address" : {
      "use" : "work",
      "type" : "physical",
      "line" : ["Sonnenfeldgasse 12, 1. Stock"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Sonnenfeldgasse"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "12"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
          "valueString" : "1. Stock"
        }]
      }],
      "city" : "Sonnenfeld",
      "state" : "Steiermark",
      "postalCode" : "8000",
      "country" : "AUT"
    }
  }]
}

```
