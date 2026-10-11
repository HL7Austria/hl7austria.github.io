# OrganizationAlpenlaendischeGesundheitskasse - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Organization: OrganizationAlpenlaendischeGesundheitskasse

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

Alpenländische Gesundheitskasse (Gesetzlicher Krankenversicherungsträger) (https://example.org/fhir/NamingSystem/social-insurance-organization-id#AGK-001)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Gesetzlicher Krankenversicherungsträger |
| Alias: | AGK |
| Contact Detail | * [service@agk.example](mailto:service@agk.example)
* [+43 1 555 0500](tel:+4315550500)
* Versicherungsplatz 4, Erdgeschoss Wien Wien 1030 AUT (work)
 |
| Billing: | * [abrechnung@agk.example](mailto:abrechnung@agk.example)
* [+43 1 555 0501](tel:+4315550501)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationAlpenlaendischeGesundheitskasse",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "system" : "https://example.org/fhir/NamingSystem/social-insurance-organization-id",
    "value" : "AGK-001"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype",
      "code" : "406",
      "display" : "Sozialversicherung"
    }],
    "text" : "Gesetzlicher Krankenversicherungsträger"
  }],
  "name" : "Alpenländische Gesundheitskasse",
  "alias" : ["AGK"],
  "telecom" : [{
    "system" : "email",
    "value" : "service@agk.example",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+43 1 555 0500",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "both",
    "line" : ["Versicherungsplatz 4, Erdgeschoss"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Versicherungsplatz"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "4"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "Erdgeschoss"
      },
      {
        "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Kundenservice"
      }]
    }],
    "city" : "Wien",
    "state" : "Wien",
    "postalCode" : "1030",
    "country" : "AUT"
  }],
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "BILL",
        "display" : "Billing"
      }]
    },
    "telecom" : [{
      "system" : "email",
      "value" : "abrechnung@agk.example",
      "use" : "work"
    },
    {
      "system" : "phone",
      "value" : "+43 1 555 0501",
      "use" : "work"
    }]
  }]
}

```
