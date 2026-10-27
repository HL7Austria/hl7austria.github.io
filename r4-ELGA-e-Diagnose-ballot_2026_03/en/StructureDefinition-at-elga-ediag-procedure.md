# AT e-Diagnose Procedure - ELGA e-Diagnose R4 v0.1.0

## Resource Profile: AT e-Diagnose Procedure 

### Definition

Eine Prozedur beschreibt eine durchgeführte medizinische Maßnahme, Intervention oder einen operativen Eingriff. Sie dokumentiert zusammenfassend das Stattfinden einer Maßnahme.

### MustSupport-Kennzeichnung

Im Sinne der [Designentscheidungen](design_choices.md#mustsupport-kennzeichnung-von-relevanten-elementen) wurden alle relevanten Elemente mit MustSupport gekennzeichnet.

In Bezug auf die verbotenen Elemente wird hervorgehoben, dass Freitext nur in `note.text` festgehalten werden darf. Für alle anderen verbotenen Elemente wird eine entsprechende Begründung angegeben.

**Usages:**

* Refer to this Profile: [AT e-Diagnose Summary-Liste](StructureDefinition-at-elga-ediag-list.md)
* Examples for this Profile: [Procedure/ProcedureEntry01](Procedure-ProcedureEntry01.md) and [Procedure/ProcedureEntry01Request](Procedure-ProcedureEntry01Request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-procedure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-ediag-procedure.csv), [Excel](../StructureDefinition-at-elga-ediag-procedure.xlsx), [Schematron](../StructureDefinition-at-elga-ediag-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-procedure",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure",
  "version" : "0.1.0",
  "name" : "AtEdiagProcedure",
  "title" : "AT e-Diagnose Procedure",
  "status" : "active",
  "date" : "2026-10-27T15:15:47+00:00",
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
  "description" : "Dieses Procedure-Profil passt die Procedure-Resource für die Anforderungen der e-Diagnose an.",
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
      "short" : "AT e-Diagnose Procedure",
      "constraint" : [{
        "key" : "contained-asserter",
        "severity" : "error",
        "human" : "Eine eingebettete Ressource (contained) ist nur zulässig, wenn sie als asserter referenziert wird.",
        "expression" : "contained.exists() implies asserter.reference = '#' + contained.id",
        "source" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure"
      }]
    },
    {
      "id" : "Procedure.implicitRules",
      "path" : "Procedure.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Procedure.contained",
      "path" : "Procedure.contained",
      "short" : "Eingebettete Bezugsperson, die als asserter referenziert wird.",
      "max" : "1",
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-relatedperson"]
      }],
      "mustSupport" : true
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
      },
      "min" : 1
    },
    {
      "id" : "Procedure.extension:reported",
      "path" : "Procedure.extension",
      "sliceName" : "reported",
      "short" : "True wenn diese Prozedur fremdberichtet ist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:entered-in-error",
      "path" : "Procedure.extension",
      "sliceName" : "entered-in-error",
      "short" : "Dokumentation des GDA der den Eintrag storniert hat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:recordedDate",
      "path" : "Procedure.extension",
      "sliceName" : "recordedDate",
      "short" : "Zeitpunkt der Dokumentation der Prozedur.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.recorded"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.modifierExtension",
      "path" : "Procedure.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier:businessIdentifier",
      "path" : "Procedure.identifier",
      "sliceName" : "businessIdentifier",
      "short" : "Identifier innerhalb der e-Diagnose für einen Eintrag.",
      "definition" : "Ein Client kann diesen Identifier nutzen, um einzelne Einträge im Zuge einer Bearbeitung miteinander zu verknüpfen. Sollte dieser Identifier durch den Client nicht gesetzt werden, wird er von der Fachanwendung e-Diagnose vergeben.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier:businessIdentifier.use",
      "path" : "Procedure.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Procedure.identifier:businessIdentifier.system",
      "path" : "Procedure.identifier.system",
      "min" : 1,
      "patternUri" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier:businessIdentifier.value",
      "path" : "Procedure.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "short" : "Anforderungen werden in der e-Diagnose nicht dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "short" : "Hierarchische Dokumentation von Prozeduren werden in der e-Diagnose nicht unterstützt.",
      "max" : "0"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Nur tatsächlich durchgeführte (completed) Prozeduren werden in der e-Diagnose dokumentiert.",
      "fixedCode" : "completed",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Begründung für den Status der Prozedur nicht relevant.",
      "max" : "0"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "Kategorisierungen von Prozeduren werden in der e-Diagnose nicht angewendet.",
      "max" : "0"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Prozedurencode der durchgeführten Prozedur; Freitext ist nicht zulässig.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-procedure-code"
      }
    },
    {
      "id" : "Procedure.code.text",
      "path" : "Procedure.code.text",
      "short" : "Die ursprüngliche textuelle Eingabe soll im Feld note.text dokumentiert werden.",
      "max" : "0"
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "Person, auf die sich die Prozedur bezieht.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "In e-Diagnose werden keine Behandlungskontakte dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "short" : "Zeitpunkt der Durchführung.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "short" : "GDA, der die Prozedur in der e-Diagnose erfasst bzw. dokumentiert hat.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitioner",
        "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "short" : "Quelle der Information zur Prozedur, z. B. Patient, behandelnde Person oder Dritter.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitioner",
        "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitionerRole",
        "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient",
        "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-relatedperson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "short" : "Begründung für Prozedur wird nicht codiert erfasst.",
      "max" : "0"
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "short" : "Begründung für Prozedur in Form von Referenzen wird in e-Diagnose nicht unterstützt.",
      "max" : "0"
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "short" : "Verweis auf e-Befunde als medizinische Evidenz.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "short" : "Komplikation sollen in e-Diagnose nicht dokumentiert werden.",
      "max" : "0"
    },
    {
      "id" : "Procedure.complicationDetail",
      "path" : "Procedure.complicationDetail",
      "short" : "Komplikationen in Form von Referenzen werden in e-Diagnose nicht unterstützt.",
      "max" : "0"
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "Freitext zur Prozedur als Zusatzinformation.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.note.author[x]",
      "path" : "Procedure.note.author[x]",
      "short" : "Wird über recorder abgebildet.",
      "max" : "0"
    },
    {
      "id" : "Procedure.note.time",
      "path" : "Procedure.note.time",
      "short" : "Wird über die recordedDate-Extension abgebildet.",
      "max" : "0"
    },
    {
      "id" : "Procedure.note.text",
      "path" : "Procedure.note.text",
      "maxLength" : 500,
      "mustSupport" : true
    }]
  }
}

```
