# AT e-Diagnose AllergyIntolerance - ELGA e-Diagnose R4 v0.1.0

## Resource Profile: AT e-Diagnose AllergyIntolerance 

### Definition

AllergyIntolerance dient der Dokumentation einer klinischen Einschätzung einer Allergie oder Intoleranz sowie einer bestehenden oder potenziellen Überempfindlichkeit gegenüber einer bestimmten Substanz oder Substanzklasse und des damit verbundenen Risikos einer unerwünschten Reaktion bei Exposition.

### clinicalStatus und verificationStatus

Die Elemente `clinicalStatus` und `verificationStatus` stehen fachlich in engem Zusammenhang: Der `clinicalStatus` beschreibt, ob ein Zustand aktuell besteht, der `verificationStatus` gibt an, wie gesichert diese Aussage ist. Die FHIR-Basisspezifikation lässt viele Kombinationen dieser beiden Werte zu. Für e-Diagnose sind jedoch nur die in der folgenden Tabelle angeführten Kombinationen relevant und erlaubt. Andere Kombinationen sind im Rahmen von e-Diagnose nicht zu verwenden.

| | | |
| :--- | :--- | :--- |
| `active` | `unconfirmed` | nicht gesichert |
| `active` | `presumed` | Verdacht auf |
| `active` | `confirmed` | gesichert |
| `resolved` | `refuted` | Widerlegt/Ausschluss von |

### MustSupport-Kennzeichnung

Im Sinne der [Designentscheidungen](design_choices.md#mustsupport-kennzeichnung-von-relevanten-elementen) wurden alle relevanten Elemente mit MustSupport gekennzeichnet.

In Bezug auf die verbotenen Elemente wird hervorgehoben, dass Freitext nur in `reaction.note.text` festgehalten werden darf. Für alle anderen verbotenen Elemente wird eine entsprechende Begründung angegeben.

**Usages:**

* Refer to this Profile: [AT e-Diagnose Summary-Liste](StructureDefinition-at-elga-ediag-list.md)
* Examples for this Profile: [AllergyIntolerance/AllergyEntry01](AllergyIntolerance-AllergyEntry01.md) and [AllergyIntolerance/AllergyEntry01Request](AllergyIntolerance-AllergyEntry01Request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-allergyintolerance.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-ediag-allergyintolerance.csv), [Excel](../StructureDefinition-at-elga-ediag-allergyintolerance.xlsx), [Schematron](../StructureDefinition-at-elga-ediag-allergyintolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-allergyintolerance",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance",
  "version" : "0.1.0",
  "name" : "AtEdiagAllergyIntolerance",
  "title" : "AT e-Diagnose AllergyIntolerance",
  "status" : "active",
  "date" : "2026-10-20T08:47:52+00:00",
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
  "description" : "Dieses AllergyIntolerance-Profil passt die AllergyIntolerance-Resource für die Anforderungen der e-Diagnose an.",
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
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance",
      "short" : "AT e-Diagnose AllergyIntolerance",
      "constraint" : [{
        "key" : "allergy-status-combination",
        "severity" : "error",
        "human" : "Erlaubte Kombinationen von clinicalStatus und verificationStatus: active mit unconfirmed, presumed oder confirmed; resolved mit refuted.",
        "expression" : "(clinicalStatus.coding.exists(code = 'active') and verificationStatus.coding.exists(code = 'unconfirmed' or code = 'presumed' or code = 'confirmed')) or (clinicalStatus.coding.exists(code = 'resolved') and verificationStatus.coding.exists(code = 'refuted'))",
        "source" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"
      },
      {
        "key" : "contained-asserter",
        "severity" : "error",
        "human" : "Eine eingebettete Ressource (contained) ist nur zulässig, wenn sie als asserter referenziert wird.",
        "expression" : "contained.exists() implies asserter.reference = '#' + contained.id",
        "source" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"
      }]
    },
    {
      "id" : "AllergyIntolerance.implicitRules",
      "path" : "AllergyIntolerance.implicitRules",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.contained",
      "path" : "AllergyIntolerance.contained",
      "short" : "Eingebettete Bezugsperson, die als asserter referenziert wird.",
      "max" : "1",
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-relatedperson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.extension",
      "path" : "AllergyIntolerance.extension",
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
      "id" : "AllergyIntolerance.extension:reported",
      "path" : "AllergyIntolerance.extension",
      "sliceName" : "reported",
      "short" : "True wenn diese Allergie fremdberichtet ist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.extension:entered-in-error",
      "path" : "AllergyIntolerance.extension",
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
      "id" : "AllergyIntolerance.extension:evidence",
      "path" : "AllergyIntolerance.extension",
      "sliceName" : "evidence",
      "short" : "Verweis auf e-Befunde als medizinische Evidenz.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-evidence"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.modifierExtension",
      "path" : "AllergyIntolerance.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.identifier",
      "path" : "AllergyIntolerance.identifier",
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
      "id" : "AllergyIntolerance.identifier:businessIdentifier",
      "path" : "AllergyIntolerance.identifier",
      "sliceName" : "businessIdentifier",
      "short" : "Identifier innerhalb der e-Diagnose für einen Eintrag.",
      "definition" : "Ein Client kann diesen Identifier nutzen, um einzelne Einträge im Zuge einer Bearbeitung miteinander zu verknüpfen. Sollte dieser Identifier durch den Client nicht gesetzt werden, wird er von der Fachanwendung e-Diagnose vergeben.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.identifier:businessIdentifier.use",
      "path" : "AllergyIntolerance.identifier.use",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.identifier:businessIdentifier.system",
      "path" : "AllergyIntolerance.identifier.system",
      "min" : 1,
      "patternUri" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.identifier:businessIdentifier.value",
      "path" : "AllergyIntolerance.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "short" : "Status der Allergie; mögliche Codes: active | resolved.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-allergyintolerance-clinical-status"
      }
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "Verifizierungsstatus der Allergie; mögliche Codes: unconfirmed | presumed | confirmed | refuted.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-allergyintolerance-verification-status"
      }
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "short" : "Unterscheidung zwischen Allergie und Intoleranz fachlich oft nicht einfach. Für die e-Diagnose insofern nicht relevant.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "short" : "Unterscheidung zwischen Kategorien wird über den code abgebildet. Für die e-Diagnose insofern nicht relevant.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "short" : "Value-Set mit beschränkter Aussagekraft. Für die e-Diagnose insofern nicht relevant.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Allergiecode",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-allergyintolerance-code"
      }
    },
    {
      "id" : "AllergyIntolerance.code.text",
      "path" : "AllergyIntolerance.code.text",
      "short" : "Die ursprüngliche textuelle Eingabe soll im Feld reaction.note.text dokumentiert werden.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "short" : "Betroffene Person, auf die sich die Allergie bezieht.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.encounter",
      "path" : "AllergyIntolerance.encounter",
      "short" : "In e-Diagnose werden keine Behandlungskontakte dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
      "short" : "Für e-Diagnose ist insbesondere der Beginn der Reaktion relevant.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "short" : "Zeitpunkt der Dokumentation der Allergie oder Intoleranz.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "short" : "GDA, der die Allergie in der e-Diagnose erfasst bzw. dokumentiert hat.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitioner",
        "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.asserter",
      "path" : "AllergyIntolerance.asserter",
      "short" : "Quelle der Information zur Allergie, z. B. Patient, behandelnde Person oder Dritter.",
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
      "id" : "AllergyIntolerance.lastOccurrence",
      "path" : "AllergyIntolerance.lastOccurrence",
      "short" : "Es wird nur eine Reaktion dokumentiert, weshalb dieses Datum gleichbedeutend mit reaction.onset ist.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "short" : "Weitere textuelle Eingaben sollen im Feld reaction.note.text dokumentiert werden.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "short" : "Details zur allergischen Reaktion.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.extension",
      "path" : "AllergyIntolerance.reaction.extension",
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
      "id" : "AllergyIntolerance.reaction.extension:reactionTime",
      "path" : "AllergyIntolerance.reaction.extension",
      "sliceName" : "reactionTime",
      "short" : "Zeitlicher Verlauf der Manifestation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reaction-time"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.modifierExtension",
      "path" : "AllergyIntolerance.reaction.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "short" : "Wird über code abgebildet.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "Aufgezeichnete klinische Symptome der allergischen Reaktion.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-code"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.description",
      "path" : "AllergyIntolerance.reaction.description",
      "short" : "Weitere textuelle Eingaben sollen im Feld reaction.note.text dokumentiert werden.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.onset",
      "path" : "AllergyIntolerance.reaction.onset",
      "short" : "Beginn der Reaktion.",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.note",
      "path" : "AllergyIntolerance.reaction.note",
      "short" : "Freitext zu Allergie und Intoleranzen als Zusatzinformation.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.note.author[x]",
      "path" : "AllergyIntolerance.reaction.note.author[x]",
      "short" : "Wird über recorder abgebildet.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.note.time",
      "path" : "AllergyIntolerance.reaction.note.time",
      "short" : "Wird über recordedDate abgebildet.",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.note.text",
      "path" : "AllergyIntolerance.reaction.note.text",
      "maxLength" : 500,
      "mustSupport" : true
    }]
  }
}

```
