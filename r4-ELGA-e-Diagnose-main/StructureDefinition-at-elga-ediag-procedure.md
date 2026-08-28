# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose Procedure - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose Procedure**

## Resource Profile: AT ELGA e-Diagnose Procedure 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure | *Version*:0.1.0 | |
| Active as of 2026-08-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagProcedure |

 
Das AT e-Diagnose Procedure-Profil leitet sich vom Procedure-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. 

**Usages:**

* Examples for this Profile: [Procedure/ProcedureExample](Procedure-ProcedureExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-procedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-procedure.csv), [Excel](StructureDefinition-at-elga-ediag-procedure.xlsx), [Schematron](StructureDefinition-at-elga-ediag-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-procedure",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure",
  "version" : "0.1.0",
  "name" : "AtEdiagProcedure",
  "title" : "AT ELGA e-Diagnose Procedure",
  "status" : "active",
  "date" : "2026-08-28T05:58:13+00:00",
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
  "description" : "Das AT e-Diagnose Procedure-Profil leitet sich vom Procedure-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "short" : "AT e-Diagnose Procedure"
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.extension:reported",
      "path" : "Procedure.extension",
      "sliceName" : "reported",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported"]
      }]
    },
    {
      "id" : "Procedure.extension:entered-in-error",
      "path" : "Procedure.extension",
      "sliceName" : "entered-in-error",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error"]
      }]
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "short" : "Zuordnung der Diagnose in einem internem Dokumentationssystem"
    },
    {
      "id" : "Procedure.instantiatesCanonical",
      "path" : "Procedure.instantiatesCanonical",
      "short" : "Verweis auf eine standardisierte FHIR-Ressource, ein Template oder einen Leitfaden, der beschreibt, wie die Prozedur durchgeführt werden soll",
      "max" : "0"
    },
    {
      "id" : "Procedure.instantiatesUri",
      "path" : "Procedure.instantiatesUri",
      "short" : "Verweis auf ein externes Dokument",
      "max" : "0"
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "short" : "Verweis auf eine Anforderung",
      "max" : "0"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "short" : "Verweis der Ressource auf eine andere, übergreordnete Ressource",
      "max" : "0"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Nur tatsächlich durchgeführte (completed) oder irrtümlich dokumentierte (entered-in-error) Prozeduren",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-procedure-status"
      }
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "ToDo: Korrekturvermerk wird von digimed übernommen, ist noch in Abstimmung"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "Kategorisierung nach Verfahren",
      "max" : "0"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Prozedurencode der durchgeführten Prozedur",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-prozeduren-codes"
      }
    },
    {
      "id" : "Procedure.code.text",
      "path" : "Procedure.code.text",
      "max" : "0"
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "Person, auf die sich die Prozedur bezieht",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "Behandlungskontakt",
      "max" : "0"
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "short" : "Zeitpunkt der Durchführung",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "short" : "Gesundheitsdiensteanbieter, der die Prozedur eingetragen/dokumentiert hat",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "short" : "Quelle der Information zur Prozedur (z. B. behandelnde Person, Patient oder Dritter)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "Diese Person hat die Prozedur durchgeführt",
      "max" : "0"
    },
    {
      "id" : "Procedure.location",
      "path" : "Procedure.location",
      "short" : "Durchführungsort",
      "max" : "0"
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "short" : "Code, des med. Grundes für die Durchführung der Prozedur",
      "max" : "0"
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "short" : "Begründung dass die Prozedur durchgeführt worden ist - Verweis auf eine andere R. wie Condition, Observation,...",
      "max" : "0"
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "short" : "Betroffene Körperstelle",
      "max" : "0"
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "Ergebnis der Prozedur",
      "max" : "0"
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "short" : "Verweis auf ELGA-Befunde als medizinische Evidenz"
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "short" : "Komplikation/en während dem Eingriff",
      "max" : "0"
    },
    {
      "id" : "Procedure.complicationDetail",
      "path" : "Procedure.complicationDetail",
      "short" : "Eine Diagnose die durch die durchgeführte Prozedur entstanden ist",
      "max" : "0"
    },
    {
      "id" : "Procedure.followUp",
      "path" : "Procedure.followUp",
      "short" : "Nachkontrolle (Code)",
      "max" : "0"
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "Freitext zur Prozedur für Zusatzinformation",
      "max" : "1"
    },
    {
      "id" : "Procedure.note.author[x]",
      "path" : "Procedure.note.author[x]",
      "max" : "0"
    },
    {
      "id" : "Procedure.note.time",
      "path" : "Procedure.note.time",
      "max" : "0"
    },
    {
      "id" : "Procedure.focalDevice",
      "path" : "Procedure.focalDevice",
      "short" : "Prozedurendurchführendes Gerät",
      "max" : "0"
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "short" : "Verweis auf verwendete Materialien während der Prozedur (z.b. Medikamente)",
      "max" : "0"
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "short" : "Code der Materialien, die während der Prozedur verwendetet wurden",
      "max" : "0"
    }]
  }
}

```
