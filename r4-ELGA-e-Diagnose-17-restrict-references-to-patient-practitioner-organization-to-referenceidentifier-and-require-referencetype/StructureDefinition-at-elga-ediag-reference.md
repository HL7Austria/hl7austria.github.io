# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose Reference - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose Reference**

## Data Type Profile: AT ELGA e-Diagnose Reference 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference | *Version*:0.1.0 | |
| Draft as of 2026-08-20 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEdiagReference |

 
Das AT e-Diagnose Reference-Profil schränkt den Reference-Datentyp insofern ein, dass Referenzen auf Patient, Practitioner und Organization ein bestimmtes `identifier.system` verlangen. 

**Usages:**

* Use this DataType Profile: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md), [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md), [AT ELGA Entered In Error](StructureDefinition-at-elga-ediag-ext-entered-in-error.md), [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)... Show 3 more, [AT ELGA e-Diagnose PractitionerRole](StructureDefinition-at-elga-ediag-practitionerrole.md), [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md) and [AT ELGA e-Diagnose RelatedPerson](StructureDefinition-at-elga-ediag-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-reference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-reference.csv), [Excel](StructureDefinition-at-elga-ediag-reference.xlsx), [Schematron](StructureDefinition-at-elga-ediag-reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-reference",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference",
  "version" : "0.1.0",
  "name" : "AtElgaEdiagReference",
  "title" : "AT ELGA e-Diagnose Reference",
  "status" : "draft",
  "date" : "2026-08-20T12:23:05+00:00",
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
  "description" : "Das AT e-Diagnose Reference-Profil schränkt den Reference-Datentyp insofern ein, dass Referenzen auf Patient, Practitioner und Organization ein bestimmtes `identifier.system` verlangen.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Reference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Reference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Reference",
      "path" : "Reference",
      "constraint" : [{
        "key" : "reference-identifier-system",
        "severity" : "error",
        "human" : "Für Referenzen auf Patient MUSS `identifier.system` den Wert `urn:oid:1.2.40.0.10.2.1.1.149` haben. Für Referenzen auf Practitioner und Organization MUSS `identifier.system` den Wert `urn:ietf:rfc:3986` haben.",
        "expression" : "(type != 'Patient' and type != 'Practitioner' and type != 'Organization') or ((type = 'Patient' and identifier.system = 'urn:oid:1.2.40.0.10.2.1.1.149') or ((type = 'Practitioner' or type = 'Organization') and identifier.system = 'urn:ietf:rfc:3986'))",
        "source" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference"
      }]
    },
    {
      "id" : "Reference.reference",
      "path" : "Reference.reference",
      "max" : "0"
    },
    {
      "id" : "Reference.type",
      "path" : "Reference.type",
      "min" : 1
    },
    {
      "id" : "Reference.identifier",
      "path" : "Reference.identifier",
      "min" : 1
    },
    {
      "id" : "Reference.identifier.system",
      "path" : "Reference.identifier.system",
      "min" : 1
    },
    {
      "id" : "Reference.identifier.value",
      "path" : "Reference.identifier.value",
      "min" : 1
    }]
  }
}

```
