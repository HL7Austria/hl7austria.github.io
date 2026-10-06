# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Urlaubsvertreung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Urlaubsvertreung**

## Example Practitioner: Beispiel Urlaubsvertreung

Profile: [AT ELGA Core Practitioner Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitioner.html)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.4.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4, `urn:oid:1.2.40.0.10.1.4.3.2`/987654321

**active**: true

**name**: Erna Urlaubsvertretung 

**gender**: Female



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "At-Emed-Example-Practitioner-04",
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
    "family" : "Urlaubsvertretung",
    "given" : ["Erna"],
    "prefix" : ["Prof. Dr."]
  }],
  "gender" : "female"
}

```
