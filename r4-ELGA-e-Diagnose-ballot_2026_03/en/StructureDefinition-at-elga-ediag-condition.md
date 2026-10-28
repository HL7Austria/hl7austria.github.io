# AT e-Diagnose Condition - ELGA e-Diagnose R4 v0.1.1

## Resource Profile: AT e-Diagnose Condition 

### Definition

Dokumentiert Diagnosen und klinisch relevante Gesundheitszustände einer Person, einschließlich Erkrankungen, Symptome, allgemeiner Zustandsbeschreibungen (Findings), familiärer Vorbelastungen sowie sonstiger gesundheitlich relevanter Probleme oder Risiken. Sie bildet eine fachliche Feststellung zu einem Gesundheitsaspekt ab und kann sowohl aktuelle als auch vergangene Zustände umfassen.

### clinicalStatus und verificationStatus

Die Elemente `clinicalStatus` und `verificationStatus` stehen fachlich in engem Zusammenhang: Der `clinicalStatus` beschreibt, ob ein Zustand aktuell besteht, der `verificationStatus` gibt an, wie gesichert diese Aussage ist. Die FHIR-Basisspezifikation lässt viele Kombinationen dieser beiden Werte zu. Für e-Diagnose sind jedoch nur die in der folgenden Tabelle angeführten Kombinationen relevant und erlaubt. Andere Kombinationen sind im Rahmen von e-Diagnose nicht zu verwenden.

| | | |
| :--- | :--- | :--- |
| `active` | `provisional` | Verdacht auf |
| `active` | `differential` | Differentialdiagnose |
| `active` | - | gesichert |
| `inactive` | `refuted` | Ausschluss von |
| `inactive` | - | Zustand nach |

### MustSupport-Kennzeichnung

Im Sinne der [Designentscheidungen](design_choices.md#mustsupport-kennzeichnung-von-relevanten-elementen) wurden alle relevanten Elemente mit MustSupport gekennzeichnet.

In Bezug auf die verbotenen Elemente wird hervorgehoben, dass Freitext nur in `note.text` festgehalten werden darf. Für alle anderen verbotenen Elemente wird eine entsprechende Begründung angegeben.

**Usages:**

* Refer to this Profile: [AT e-Diagnose Summary-Liste](StructureDefinition-at-elga-ediag-list.md)
* Examples for this Profile: [Condition/ConditionEntry01](Condition-ConditionEntry01.md), [Condition/ConditionEntry01Request](Condition-ConditionEntry01Request.md), [Condition/ConditionEntry02](Condition-ConditionEntry02.md), [Condition/ConditionEntry03](Condition-ConditionEntry03.md)... Show 5 more, [Condition/ConditionEntry03EnteredInError](Condition-ConditionEntry03EnteredInError.md), [Condition/ConditionEntry04](Condition-ConditionEntry04.md), [Condition/ConditionEntry05](Condition-ConditionEntry05.md), [Condition/ConditionEntry06](Condition-ConditionEntry06.md) and [Condition/ConditionEntryContainedRelatedPerson](Condition-ConditionEntryContainedRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-condition.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-ediag-condition.csv), [Excel](../StructureDefinition-at-elga-ediag-condition.xlsx), [Schematron](../StructureDefinition-at-elga-ediag-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-condition",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition",
  "version" : "0.1.1",
  "name" : "AtEdiagCondition",
  "title" : "AT e-Diagnose Condition",
  "status" : "active",
  "date" : "2026-10-28T08:34:30+00:00",
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
  "description" : "Dieses Condition-Profil passt die Condition-Resource für die Anforderungen der e-Diagnose an.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "short" : "AT e-Diagnose Condition",
      "constraint" : [{
        "key" : "condition-status-combination",
        "severity" : "error",
        "human" : "Erlaubte Kombinationen von clinicalStatus und verificationStatus: active mit provisional, differential oder ohne verificationStatus; inactive mit refuted oder ohne verificationStatus.",
        "expression" : "verificationStatus.exists() implies ((verificationStatus.coding.exists(code = 'provisional' or code = 'differential') and clinicalStatus.coding.exists(code = 'active')) or (verificationStatus.coding.exists(code = 'refuted') and clinicalStatus.coding.exists(code = 'inactive')))",
        "source" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"
      },
      {
        "key" : "contained-asserter",
        "severity" : "error",
        "human" : "Eine eingebettete Ressource (contained) ist nur zulässig, wenn sie als asserter referenziert wird.",
        "expression" : "contained.exists() implies asserter.reference = '#' + contained.id",
        "source" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"
      }]
    },
    {
      "id" : "Condition.implicitRules",
      "path" : "Condition.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Condition.contained",
      "path" : "Condition.contained",
      "short" : "Eingebettete Bezugsperson, die als asserter referenziert wird.",
      "max" : "1",
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-relatedperson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
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
      "id" : "Condition.extension:reported",
      "path" : "Condition.extension",
      "sliceName" : "reported",
      "short" : "True wenn diese Diagnose fremdberichtet ist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:entered-in-error",
      "path" : "Condition.extension",
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
      "id" : "Condition.modifierExtension",
      "path" : "Condition.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
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
      "id" : "Condition.identifier:businessIdentifier",
      "path" : "Condition.identifier",
      "sliceName" : "businessIdentifier",
      "short" : "Identifier innerhalb der e-Diagnose für einen Eintrag.",
      "definition" : "Ein Client kann diesen Identifier nutzen, um einzelne Einträge im Zuge einer Bearbeitung miteinander zu verknüpfen. Sollte dieser Identifier durch den Client nicht gesetzt werden, wird er von der Fachanwendung e-Diagnose vergeben.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier:businessIdentifier.use",
      "path" : "Condition.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Condition.identifier:businessIdentifier.system",
      "path" : "Condition.identifier.system",
      "min" : 1,
      "patternUri" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier:businessIdentifier.value",
      "path" : "Condition.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Status der Diagnose; mögliche Codes: active | inactive.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-clinical-status"
      }
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Verifizierungsstatus der Diagnose, mögliche Codes: provisional | differential | refuted.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-verification-status"
      }
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Diagnosen werden dadurch kategorisiert, ob eine Diagnose Teil der Summary-Liste ist oder nicht.",
      "max" : "0"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Diagnosecode (Codierservice); Freitext ist nicht zulässig.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-code"
      }
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "Die ursprüngliche textuelle Eingabe soll im Feld note.text dokumentiert werden.",
      "max" : "0"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Person, auf die sich die Diagnose bezieht.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "short" : "In e-Diagnose werden keine Behandlungskontakte dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "short" : "Beginn der Erkrankung bzw. Diagnosezeitpunkt.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "short" : "Ende der Erkrankung.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "Zeitpunkt der Dokumentation der Diagnose.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "short" : "GDA, der die Diagnose in der e-Diagnose erfasst bzw. dokumentiert hat.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitioner",
        "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "short" : "Quelle der Information zur Diagnose, z. B. Patient, behandelnde Person oder Dritter.",
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
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "short" : "Verweis auf e-Befunde als medizinische Evidenz.",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "short" : "Verweis auf e-Befunde als medizinische Evidenz.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "Freitext zur Diagnose als Zusatzinformation.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.note.author[x]",
      "path" : "Condition.note.author[x]",
      "short" : "Wird über recorder abgebildet.",
      "max" : "0"
    },
    {
      "id" : "Condition.note.time",
      "path" : "Condition.note.time",
      "short" : "Wird über recordedDate abgebildet.",
      "max" : "0"
    },
    {
      "id" : "Condition.note.text",
      "path" : "Condition.note.text",
      "maxLength" : 500,
      "mustSupport" : true
    }]
  }
}

```
