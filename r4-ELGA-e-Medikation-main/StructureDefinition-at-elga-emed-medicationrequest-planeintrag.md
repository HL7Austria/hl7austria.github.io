# HL7.AT.FHIR.ELGA.EMED.R4\At ELGA e-Medikation MedicationRequest Planeintrag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **At ELGA e-Medikation MedicationRequest Planeintrag**

## Resource Profile: At ELGA e-Medikation MedicationRequest Planeintrag 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag | *Version*:0.1.1 | |
| Draft as of 2026-07-01 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedMedicationRequestPlaneintrag |

 
Ein Medikationsplaneintrag im Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine "MedicationRequest"-Ressource abgebildet. Die Ressource enthält genau ein Medikament mit der zugehörigen Dosierung, wobei das Medikament verpflichtend in einer contained Medication-Ressource (inline, d.h. innerhalb der Ressource), dokumentiert wird. Der Medikationsplaneintrag kann in weiterer Folge als Grundlage für die Erstellung einer "Geplanten Abgabe" dienen. Es werden R5-Backport-Extensions verwendet. 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Collection Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) and [AT ELGA e-Medikation Transaction Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md)
* Refer to this Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md), [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) and [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)
* Examples for this Profile: [MedicationRequest/At-Emed-Example-Mr-Planeintrag](MedicationRequest-At-Emed-Example-Mr-Planeintrag.md), [MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-01](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-01.md), [MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-02](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.md) and [MedicationRequest/At-Emed-Journey-05-b-Mr-Planeintrag-01](MedicationRequest-At-Emed-Journey-05-b-Mr-Planeintrag-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medicationrequest-planeintrag.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.csv), [Excel](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.xlsx), [Schematron](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medicationrequest-planeintrag",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag",
  "version" : "0.1.1",
  "name" : "AtElgaEmedMedicationRequestPlaneintrag",
  "title" : "At ELGA e-Medikation MedicationRequest Planeintrag",
  "status" : "draft",
  "date" : "2026-07-01T15:59:29+00:00",
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
  "description" : "Ein Medikationsplaneintrag im Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine \"MedicationRequest\"-Ressource abgebildet.\nDie Ressource enthält genau ein Medikament mit der zugehörigen Dosierung, wobei das Medikament verpflichtend in einer contained Medication-Ressource (inline, d.h. innerhalb der Ressource), dokumentiert wird.\nDer Medikationsplaneintrag kann in weiterer Folge als Grundlage für die Erstellung einer \"Geplanten Abgabe\" dienen. Es werden R5-Backport-Extensions verwendet.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest",
      "short" : "Medikationsplaneintrag"
    },
    {
      "id" : "MedicationRequest.extension",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:effectiveDosePeriod",
      "path" : "MedicationRequest.extension",
      "sliceName" : "effectiveDosePeriod",
      "short" : "Zeitraum, in dem die Medikation eingenommen werden soll.",
      "definition" : "Zeitraum, über den die Medikation eingenommen werden soll. Wenn mehrere dosageInstruction-Zeilen vorhanden sind (z. B. bei einer ausschleichenden Dosierung), entspricht dieser Zeitraum dem frühesten Startdatum und dem spätesten Enddatum der dosageInstructions.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod"]
      }]
    },
    {
      "id" : "MedicationRequest.extension:renderedDosageInstruction",
      "path" : "MedicationRequest.extension",
      "sliceName" : "renderedDosageInstruction",
      "short" : "Vollständige Darstellung der Dosierungsanweisungen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"]
      }]
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "short" : "Medikationsplaneintrag-ID.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Status des Medikationsplaneintrags. Mögliche Ausprägungen: [active | on-hold | completed | stopped | entered-in-error]. Bedeutung: active: Planeintrag einer aktiven Medikation, die eingenommen werden soll | on-hold: Planeintrag ist pausiert, die Therapie ist unterbrochen (Wiederaufnahme vorgesehen) | completed: Therapie gemäß Planeintrag wie geplant durchgeführt und abgeschlossen | stopped: Therapie gemäß Planeintrag vorzeitig gestoppt und abgeschlossen | entered-in-error: Fehlerhafter Planeintrag storniert und abgeschlossen.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/MedikationsplaneintragStatusVS"
      }
    },
    {
      "id" : "MedicationRequest.statusReason",
      "path" : "MedicationRequest.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.statusReason.coding",
      "path" : "MedicationRequest.statusReason.coding",
      "short" : "Codierter Grund für den aktuellen Status des Medikationsplaneintrags, z.B. warum ein Medikament abgesetzt wurde. Keine codierte Angabe im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.statusReason.text",
      "path" : "MedicationRequest.statusReason.text",
      "short" : "Grund für den aktuellen Status des Medikationsplaneintrags (Freitext), z.B. warum ein Medikament abgesetzt wurde.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Ein Medikationsplaneintrag ist eine autorisierte ärztliche Anordnung und stellt eine verbindliche Einnahmeanweisung für den Patienten dar, auf dessen Basis eine Geplante Abgabe erstellt werden kann. Fixer Wert: \"order\". (req) proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option. https://hl7.org/fhir/R4/valueset-medicationrequest-intent.html",
      "patternCode" : "order",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "short" : "Kategorie zur Unterscheidung eines Medikationsplaneintrags von einer geplanten Abgabe (beide haben intent order)",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
          "code" : "1",
          "display" : "Medikationsplaneintrag"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.priority",
      "path" : "MedicationRequest.priority",
      "short" : "Priorität des Medikationsplaneintrag: (req) routine | urgent | asap | stat. Keine Verwendung in Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "short" : "Gibt an, ob der Medikationsplaneintrag die Verordnung einer Medikation (und somit die Erstellung einer geplanten Abgabe) untersagt (z.B. bei Allergie).",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reported[x]",
      "path" : "MedicationRequest.reported[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "MedicationRequest.reported[x]:reportedReference",
      "path" : "MedicationRequest.reported[x]",
      "sliceName" : "reportedReference",
      "short" : "Im Falle einer Fremdmedikation Angabe einer Referenz auf: (Patient | Practitioner | PractitionerRole | RelatedPerson | Organization). Keine Verwendung im Medikationsplan.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "MedicationRequest.reported[x]:reportedBoolean",
      "path" : "MedicationRequest.reported[x]",
      "sliceName" : "reportedBoolean",
      "short" : "TRUE im Falle der Dokumentation von Fremdmedikation (ein anderer Arzt hat das Medikament ursprünglich verordnet), sonst FALSE.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Das Arzneimittel wird immer in einer contained Medication Ressource dokumentiert, damit Arzneimittel mit und ohne PZN einheitlich dokumentiert werden können.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"],
        "aggregation" : ["contained"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "short" : "Patient, für den der Medikationsplaneintrag ausgestellt werden soll, der über den Zentralen Patientenindex identifizierbar und Teilnehmer von ELGA e-Medikation ist.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "short" : "Aufenthalt/Begegnung, während dessen der Medikationsplaneintrag erstellt wurde. Keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.supportingInformation",
      "path" : "MedicationRequest.supportingInformation",
      "short" : "Referenz auf zusätzliche Informationen (Ressource Any) (z. B. Größe und Gewicht des Patienten), die die Verschreibung des Medikaments unterstützen. Keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "short" : "Datum der Erstellung des Medikationsplaneintrags.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "Arzt oder Ärztin, die den Medikationsplaneintrag erstellt hat und für den Inhalt verantwortlich ist. Eindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA e-Medikation des Patienten zuzugreifen.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.performer",
      "path" : "MedicationRequest.performer",
      "short" : "Der gewünschte Ausführende der medikamentösen Behandlung (z.B. der Ausführende der Medikamentengabe). Keine Verwendung im Planeintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.performerType",
      "path" : "MedicationRequest.performerType",
      "short" : "Rollen: https://hl7.org/fhir/R4/valueset-performer-role.html. Keine Verwendung im Planeintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "short" : "Die Person, die den Medikationsplaneintrag im Auftrag eines GDA eingegeben hat.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "short" : "Grund für die Verordnung des Arzneimittels. Entweder Code oder Referenz. Verwendung erst, wenn codierte Angabe möglich.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesCanonical",
      "path" : "MedicationRequest.instantiatesCanonical",
      "short" : "URL, die auf eine Richtlinie/Guideline verweist, die von diesem Medikationsplaneintrag ganz oder teilweise eingehalten wird. Derzeit keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesUri",
      "path" : "MedicationRequest.instantiatesUri",
      "short" : "URL, die auf eine extern gepflegte Richtlinie/Guideline verweist, die von diesem Medikationsplaneintrag ganz oder teilweise eingehalten wird. Derzeit keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "Keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "Erst bei der geplanten Abgabe (Rezepterstellung) relevant.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType",
      "path" : "MedicationRequest.courseOfTherapyType",
      "short" : "Gesamtmuster der Medikamentengabe. Mögliche Ausprägungen: [continuous | acute ]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.insurance",
      "path" : "MedicationRequest.insurance",
      "short" : "Keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "short" : "Zusätzliche Informationen zum Medikationsplaneintrag.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "Angabe der Dosierinformationen strukturiert oder als Freitext.",
      "min" : 1,
      "type" : [{
        "code" : "Dosage",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-dosierung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "short" : "Details zur geplanten Abgabe des Arzneimittels im Medikationsplan. Keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "short" : "Gibt an, ob das Arzneimittel substituiert werden darf (Absicht des Arztes, der den Medikationsplaneintrag erstellt). Derzeit keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.priorPrescription",
      "path" : "MedicationRequest.priorPrescription",
      "short" : "Im Falle einer Änderung wird auf den ersetzten Medikationsplaneintrag verwiesen.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.detectedIssue",
      "path" : "MedicationRequest.detectedIssue",
      "short" : "Klinisches Problem mit Maßnahme (Referenz auf Ressouce DetectedIssue). Keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.eventHistory",
      "path" : "MedicationRequest.eventHistory",
      "short" : "Referenz auf Provenance-Ressourcen, die verschiedene relevante Versionen dieser Ressource dokumentieren. Keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    }]
  }
}

```
