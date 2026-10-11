# MedikationRezeptart - ELGA e-Medikation (R4) DRAFT v0.1.0

## CodeSystem: MedikationRezeptart 

This Code system is referenced in the definition of the following value sets:

* [ELGA_MedikationRezeptart](ValueSet-elga-medikationrezeptart.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medikationrezeptart",
  "url" : "https://termgit.elga.gv.at/CodeSystem/medikationrezeptart",
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.10.1.4.3.4.3.3"
  }],
  "version" : "0.1.0",
  "name" : "medikationrezeptart",
  "title" : "MedikationRezeptart",
  "status" : "active",
  "date" : "2015-03-31",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "**Description:** ELGA Codelist for Prescription type\n\n**Beschreibung:** ELGA Codeliste für RezeptArt",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "KASSEN",
    "display" : "Kassenrezept"
  },
  {
    "code" : "PRIVAT",
    "display" : "Privatrezept"
  },
  {
    "code" : "SUBST",
    "display" : "Substitutionsrezept"
  }]
}

```
