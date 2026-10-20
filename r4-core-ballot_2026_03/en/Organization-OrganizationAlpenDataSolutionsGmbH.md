# OrganizationAlpenDataSolutionsGmbH - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Organization: OrganizationAlpenDataSolutionsGmbH

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

AlpenData Solutions GmbH (Non-Healthcare Business or Corporation) (Tax ID number: ATU12345678)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Non-Healthcare Business or Corporation |
| Alias: | AlpenData |
| Other Id: | `urn:publicid:gv.at:baseid+XFN`/FN 123456a |
| Contact Detail | * [verwaltung@alpendata.example](mailto:verwaltung@alpendata.example)
* Technologiepark 12, 2. Stock, Büro 204 Graz Steiermark 8010 AUT (work)
 |
| Technical Support: | * [support@alpendata.example](mailto:support@alpendata.example)
* [+43 316 555 201](tel:+43316555201)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationAlpenDataSolutionsGmbH",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "TAX",
        "display" : "Tax ID number"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.2.0.3.1",
    "value" : "ATU12345678"
  },
  {
    "system" : "urn:publicid:gv.at:baseid+XFN",
    "value" : "FN 123456a"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "bus",
      "display" : "Non-Healthcare Business or Corporation"
    }]
  }],
  "name" : "AlpenData Solutions GmbH",
  "alias" : ["AlpenData"],
  "telecom" : [{
    "system" : "email",
    "value" : "verwaltung@alpendata.example",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "both",
    "line" : ["Technologiepark 12, 2. Stock, Büro 204"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Technologiepark"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "12"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "2. Stock, Büro 204"
      },
      {
        "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Verwaltung"
      }]
    }],
    "city" : "Graz",
    "state" : "Steiermark",
    "postalCode" : "8010",
    "country" : "AUT"
  }],
  "contact" : [{
    "purpose" : {
      "text" : "Technical Support"
    },
    "telecom" : [{
      "system" : "email",
      "value" : "support@alpendata.example",
      "use" : "work"
    },
    {
      "system" : "phone",
      "value" : "+43 316 555 201",
      "use" : "work"
    }]
  }]
}

```
