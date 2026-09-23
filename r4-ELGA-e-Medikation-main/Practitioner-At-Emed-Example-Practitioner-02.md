# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Apothekerin 02 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Apothekerin 02**

## Example Practitioner: Beispiel Apothekerin 02

Profile: [AT ELGA Core Practitioner Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitioner.html)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.4.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4, `urn:oid:1.2.40.0.10.1.4.3.2`/987654321

**active**: true

**name**: Claudia Apothekerin 

**gender**: Female



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "At-Emed-Example-Practitioner-02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.99.4613.4",
    "assigner" : {
      "display" : "Bundesministerium für Gesundheit"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "987654321",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "active" : true,
  "name" : [{
    "family" : "Apothekerin",
    "given" : ["Claudia"],
    "prefix" : ["Prof. Dr."]
  }],
  "gender" : "female"
}

```
