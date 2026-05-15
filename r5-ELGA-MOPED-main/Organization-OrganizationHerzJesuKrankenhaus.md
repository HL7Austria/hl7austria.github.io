# ELGA.MOPED\OrganizationHerzJesuKrankenhaus - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganizationHerzJesuKrankenhaus**

## Example Organization: OrganizationHerzJesuKrankenhaus

Profile: [KA Organization](StructureDefinition-KAOrganization.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.1.0/NamingSystem-uri.html)/urn:oid:1.3.6.1.4.1.36124.5.914, `urn:oid:1.2.40.0.34.4.10`/K914, `urn:oid:1.2.40.0.10.1.4.3.2`/832138

**type**: Allgemeine Krankenanstalt

**name**: Herz Jesu-Krankenhaus

### Contacts

| | | |
| :--- | :--- | :--- |
| - | **Telecom** | **Address** |
| * | ph: Contact details not provided | Baumgasse 20a, 1030 Wien Wien Wien 1030 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationHerzJesuKrankenhaus",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/KAOrganization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.36124.5.914"
  },
  {
    "system" : "urn:oid:1.2.40.0.34.4.10",
    "value" : "K914"
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "832138"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "300",
      "display" : "Allgemeine Krankenanstalt"
    }]
  }],
  "name" : "Herz Jesu-Krankenhaus",
  "contact" : [{
    "telecom" : [{
      "system" : "phone",
      "value" : "Contact details not provided"
    }],
    "address" : {
      "line" : ["Baumgasse 20a, 1030 Wien"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Baumgasse"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "20a"
        }]
      }],
      "city" : "Wien",
      "state" : "Wien",
      "postalCode" : "1030",
      "country" : "AUT"
    }
  }]
}

```
