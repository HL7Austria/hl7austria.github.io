# ELGA_MedikationRezeptart - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA_MedikationRezeptart 

 **References** 

* [AT ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "elga-medikationrezeptart",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-valueset"]
  },
  "url" : "https://termgit.elga.gv.at/ValueSet/elga-medikationrezeptart",
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.10.68"
  }],
  "version" : "0.1.0",
  "name" : "elga-medikationrezeptart",
  "title" : "ELGA_MedikationRezeptart",
  "status" : "active",
  "date" : "2024-03-25",
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
  "description" : "**Description:** ELGA ValueSet for Prescription type\n\n**Beschreibung:** ELGA ValueSet für RezeptArt",
  "compose" : {
    "include" : [{
      "extension" : [{
        "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-valueset-systemoid",
        "valueOid" : "urn:oid:1.2.40.0.10.1.4.3.4.3.3"
      }],
      "system" : "https://termgit.elga.gv.at/CodeSystem/medikationrezeptart",
      "version" : "1.0.0+20230131",
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
    }]
  }
}

```
