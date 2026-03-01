# ELGA.MOPED\OrganizationKrankenhausRied - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganizationKrankenhausRied**

## Example Organization: OrganizationKrankenhausRied

Profile: [KH Organization](StructureDefinition-KHOrganization.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:oid:1.3.6.1.4.1.36124.5.427, `urn:oid:1.2.40.0.34.4.10`/K427, `urn:oid:1.2.40.0.10.1.4.3.2`/827378

**type**: Allgemeine Krankenanstalt

**name**: Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried

### Contacts

| | | |
| :--- | :--- | :--- |
| - | **Telecom** | **Address** |
| * | ph: Contact details not provided | Schlossberg 1, 4910 Ried im Innkreis Ried im Innkreis Oberösterreich 4910 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationKrankenhausRied",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.36124.5.427"
  },
  {
    "system" : "urn:oid:1.2.40.0.34.4.10",
    "value" : "K427"
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "827378"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "300",
      "display" : "Allgemeine Krankenanstalt"
    }]
  }],
  "name" : "Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried",
  "contact" : [{
    "telecom" : [{
      "system" : "phone",
      "value" : "Contact details not provided"
    }],
    "address" : {
      "line" : ["Schlossberg 1, 4910 Ried im Innkreis"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Schlossberg"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "1"
        }]
      }],
      "city" : "Ried im Innkreis",
      "state" : "Oberösterreich",
      "postalCode" : "4910",
      "country" : "AUT"
    }
  }]
}

```
