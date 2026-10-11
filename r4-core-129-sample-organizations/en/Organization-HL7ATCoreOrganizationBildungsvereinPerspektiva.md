# HL7ATCoreOrganizationBildungsvereinPerspektiva - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Organization: HL7ATCoreOrganizationBildungsvereinPerspektiva

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

Bildungsverein Perspektiva (Gemeinnütziger Bildungsverein) (urn:publicid:gv.at:baseid+XZVR#123456789)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Gemeinnütziger Bildungsverein |
| Alias: | Perspektiva |
| Contact Detail | * [office@perspektiva.example](mailto:office@perspektiva.example)
* [+43 732 555 310](tel:+43732555310)
* Bildungsgasse 8, 1. Stock Linz Oberösterreich 4020 AUT (work)
 |
| Kursanmeldung: | * [kurse@perspektiva.example](mailto:kurse@perspektiva.example)
* [https://perspektiva.example/kurse](https://perspektiva.example/kurse)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "HL7ATCoreOrganizationBildungsvereinPerspektiva",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "system" : "urn:publicid:gv.at:baseid+XZVR",
    "value" : "123456789"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "edu",
      "display" : "Educational Institute"
    }],
    "text" : "Gemeinnütziger Bildungsverein"
  }],
  "name" : "Bildungsverein Perspektiva",
  "alias" : ["Perspektiva"],
  "telecom" : [{
    "system" : "email",
    "value" : "office@perspektiva.example",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+43 732 555 310",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "both",
    "line" : ["Bildungsgasse 8, 1. Stock"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Bildungsgasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "8"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "1. Stock"
      },
      {
        "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Vereinsbüro"
      }]
    }],
    "city" : "Linz",
    "state" : "Oberösterreich",
    "postalCode" : "4020",
    "country" : "AUT"
  }],
  "contact" : [{
    "purpose" : {
      "text" : "Kursanmeldung"
    },
    "telecom" : [{
      "system" : "email",
      "value" : "kurse@perspektiva.example",
      "use" : "work"
    },
    {
      "system" : "url",
      "value" : "https://perspektiva.example/kurse",
      "use" : "work"
    }]
  }]
}

```
