# AT ELGA e-Diagnose RelatedPerson - ELGA e-Diagnose R4 (Draft) v0.1.0

## Resource Profile: AT ELGA e-Diagnose RelatedPerson 

 
Das AT e-Diagnose RelatedPerson-Profil leitet sich vom RelatedPerson-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md) and [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-relatedperson.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-ediag-relatedperson.csv), [Excel](../StructureDefinition-at-elga-ediag-relatedperson.xlsx), [Schematron](../StructureDefinition-at-elga-ediag-relatedperson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-relatedperson",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-relatedperson",
  "version" : "0.1.0",
  "name" : "AtEdiagRelatedPerson",
  "title" : "AT ELGA e-Diagnose RelatedPerson",
  "status" : "active",
  "date" : "2026-10-02T12:58:24+00:00",
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
  "description" : "Das AT e-Diagnose RelatedPerson-Profil leitet sich vom RelatedPerson-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson",
      "short" : "AT e-Diagnose RelatedPerson"
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.active",
      "path" : "RelatedPerson.active",
      "short" : "Für den jeweiligen Eintrag der e-Diagnose ist diese Bezugsperson als aktiv zu kennzeichnen.",
      "min" : 1,
      "fixedBoolean" : true,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship.coding",
      "path" : "RelatedPerson.relationship.coding",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.relationship.text",
      "path" : "RelatedPerson.relationship.text",
      "short" : "Beziehung der Bezugsperson zum Patienten (z. B. Mutter, Vater, Ehepartner).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "short" : "Name der Bezugsperson.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.gender",
      "path" : "RelatedPerson.gender",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.birthDate",
      "path" : "RelatedPerson.birthDate",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.photo",
      "path" : "RelatedPerson.photo",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.period",
      "path" : "RelatedPerson.period",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.communication",
      "path" : "RelatedPerson.communication",
      "max" : "0"
    }]
  }
}

```
