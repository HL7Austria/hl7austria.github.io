# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Planeintrag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Planeintrag**

## Resource Profile: ELGA e-Med Planeintrag 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag | *Version*:0.1.1 | |
| Draft as of 2026-03-27 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMRPlaneintrag |

 
Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA-Teilnehmers ab ("MedicationRequest"-Ressource). Er enthält genau ein Arzneimittel und dessen Dosierung. Kann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen. Verwendet R5 Backport Extensions. 

**Usages:**

* Use this Profile: [ELGA e-Med Medikationsplan Collection Bundle](StructureDefinition-at-emed-bundle-medikationsplan.md) and [ELGA e-Med Medikationsplan Transaction Bundle](StructureDefinition-at-emed-bundle-tx-medikationsplan.md)
* Refer to this Profile: [ELGA e-Med Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md) and [ELGA e-Med Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md)
* Examples for this Profile: [MedicationRequest/At-Emed-Example-Mr-Dosierung-1010](MedicationRequest-At-Emed-Example-Mr-Dosierung-1010.md), [MedicationRequest/At-Emed-Example-Mr-Dosierung-Freitext](MedicationRequest-At-Emed-Example-Mr-Dosierung-Freitext.md), [MedicationRequest/At-Emed-Example-Mr-Dosierung-Intervalle-Wh](MedicationRequest-At-Emed-Example-Mr-Dosierung-Intervalle-Wh.md), [MedicationRequest/At-Emed-Example-Mr-Dosierung-Wochentag-Kombi](MedicationRequest-At-Emed-Example-Mr-Dosierung-Wochentag-Kombi.md)... Show 7 more, [MedicationRequest/At-Emed-Example-Mr-Dosierung-Wochentag](MedicationRequest-At-Emed-Example-Mr-Dosierung-Wochentag.md), [MedicationRequest/At-Emed-Example-Mr-Dosierung-Zeit-1tg](MedicationRequest-At-Emed-Example-Mr-Dosierung-Zeit-1tg.md), [MedicationRequest/At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi](MedicationRequest-At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi.md), [MedicationRequest/At-Emed-Example-Mr-Planeintrag](MedicationRequest-At-Emed-Example-Mr-Planeintrag.md), [MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-01](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-01.md), [MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-02](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.md) and [MedicationRequest/At-Emed-Journey-05-b-Mr-Planeintrag-01](MedicationRequest-At-Emed-Journey-05-b-Mr-Planeintrag-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-mr-planeintrag)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-mr-planeintrag.csv), [Excel](StructureDefinition-at-emed-mr-planeintrag.xlsx), [Schematron](StructureDefinition-at-emed-mr-planeintrag.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-mr-planeintrag",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag",
  "version" : "0.1.1",
  "name" : "AtEmedMRPlaneintrag",
  "title" : "ELGA e-Med Planeintrag",
  "status" : "draft",
  "date" : "2026-03-27T10:18:57+00:00",
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
  "description" : "Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA-Teilnehmers ab (\"MedicationRequest\"-Ressource).\nEr enthält genau ein Arzneimittel und dessen Dosierung.\nKann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen. Verwendet R5 Backport Extensions.",
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
      "id" : "MedicationRequest.extension:offLabelUse",
      "path" : "MedicationRequest.extension",
      "sliceName" : "offLabelUse",
      "short" : "Weist darauf hin, dass der verschreibende Arzt das Medikament wissentlich für eine Indikation, Altersgruppe, Dosierung oder Verabreichungsform verschrieben hat, die nicht von den Aufsichtsbehörden zugelassen ist und in der Verschreibungsinformation für das Produkt nicht erwähnt wird.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel"]
      }]
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "short" : "Medikationsplaneintrag-ID. TODO: Verwendung einer logischen Medikationsplaneintrag-ID prüfen. Details zur Herstellung von Bezügen von geänderten Planeinträgen, siehe Definition.",
      "definition" : "Medikationsplaneintrag-ID.\nEvt. mit Zeitstempel (Planeintrag-ID_{Zeitstempel}) zur Herstellung eines Bezugs von geänderten Planeinträgen.\nVorteil: \n- Auch wenn sich die PZN ändert, aber logisch der gleiche Eintrag betroffen ist (z.B. Austausch eines Arzneimittels durch ein anderes mit weniger Wechselwirkung), kann ein Bezug hergestellt werden.\n- Wenn zur Vorversion des Eintrags bereits eine geplante Abgabe erstellt wurde, kann ein Bezug zum ursprünglichen Eintrag hergestellt werden.\nNachteil: \n- Falls Planeinträge mit komplett neuer Arznei überschrieben werden, entsteht dadurch ein verwirrender Bezug. \n- Die Verantwortung, dass nur Einträge geändert werden, die keine komplett neue Medikation beinhalten, liegt beim Ersteller des Eintrags.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Status des Medikationsplaneintrags. active | completed | on-hold | stopped. TODO: Fachlich zu püfen, ob im Medikationsplan dokumentiert werden soll, dass und warum ein Medikament abgesetzt wurde (Status: stopped, z.B. bei Allergie). Details siehe Definition.",
      "definition" : "Status des Medikationsplaneintrags:\n* \\\"active\\\": aktive Therapie; soll aktuell vom Patienten eingenommen werden\n* \\\"completed\\\": Therapie regulär abgeschlossen\n* \\\"on-hold\\\": Therapie vorübergehend unterbrochen; Wiederaufnahme vorgesehen\n* \\\"stopped\\\": begonnen Therapie, aber vorzeitig und ohne regulären Abschluss beendet\n\n(nicht verwendet: cancelled, entered-in-error, draft, unknown)\nhttps://hl7.org/fhir/R4/valueset-medicationrequest-status.html",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/MedikationsplaneintragStatusVS"
      }
    },
    {
      "id" : "MedicationRequest.statusReason",
      "path" : "MedicationRequest.statusReason",
      "short" : "Grund für den aktuellen Status des Medikationsplaneintrags: (ex) https://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html. TODO: Verwendung fachlich zu prüfen im Zusammenhang mit Status.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Ein Medikationsplaneintrag ist eine autorisierte ärztliche Anordnung und stellt eine verbindliche Einnahmeanweisung für den Patienten dar, auf dessen Basis eine geplante Abgabe erstellt werden kann. Fixer Wert: \"order\". (req) proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option. https://hl7.org/fhir/R4/valueset-medicationrequest-intent.html",
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
      "short" : "Gibt an, ob der Medikationsplaneintrag die Verordnung einer Medikation (und somit die Erstellung einer geplanten Abgabe) untersagt (z.B. bei Allergie). TODO: Fachlich zu prüfen, ob dieser Usecase existiert. Auch im Kontext mit status und statusReason zu betrachten. Evtl. erst in späterer Version",
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
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.reported[x]:reportedReference",
      "path" : "MedicationRequest.reported[x]",
      "sliceName" : "reportedReference",
      "short" : "Im Falle einer Fremdmedikation Angabe einer Referenz auf: (Patient | Practitioner | PractitionerRole | RelatedPerson | Organization)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "MedicationRequest.reported[x]:reportedBoolean",
      "path" : "MedicationRequest.reported[x]",
      "sliceName" : "reportedBoolean",
      "short" : "TRUE im Falle der Dokumentation von Fremdmedikation (ein anderer Arzt hat das Medikament ursprünglich verordnet), sonst FALSE. TODO: Klären ob hier der GDA eindeutig identifiziert sein muss (im GDA-I vorhanden) oder analog zu e-Impfpass Freitext sein kann. Juristisch Verantwortlichkeit für Korrektheit des Eintrags zu klären.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Das Arzneimittel wird immer in einer contained Medication Ressource dokumentiert, damit Arzneimittel mit und ohne PZN einheitlich dokumentiert werden können.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"],
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
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"]
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
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.performer",
      "path" : "MedicationRequest.performer",
      "short" : "Der gewünschte Ausführende der medikamentösen Behandlung (z.B. der Ausführende der Medikamentengabe). Keine Verwendung im Planeintrag. TODO: evtl im Kontext Medikationsblatt zu prüfen.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.performerType",
      "path" : "MedicationRequest.performerType",
      "short" : "Rollen: https://hl7.org/fhir/R4/valueset-performer-role.html. Keine Verwendung im Planeintrag. TODO: evtl im Kontext Medikationsblatt zu prüfen.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "short" : "Die Person, die den Medikationsplaneintrag im Auftrag eines GDA eingegeben hat. TODO: Prüfen, ob eine juristische Verpflichtung zur Dokumentation der Schreibkraft besteht.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "short" : "Grund für die Verordnung des Arzneimittels. Entweder Code oder Referenz (TODO: Evtl. Invariante). Erst wenn codierte Angabe möglich.",
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
      "short" : "URL, die auf ein Protokoll (Richtlinie, Guideline) verweist, das von diesem Medikationsplaneintrag ganz oder teilweise eingehalten wird. Derzeit keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesUri",
      "path" : "MedicationRequest.instantiatesUri",
      "short" : "URL, die auf ein extern gepflegtes Protokoll (Richtlinie, Guideline) verweist, das von diesem Medikationsplaneintrag ganz oder teilweise eingehalten wird. Derzeit keine Verwendung im Medikationsplaneintrag.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "TODO: Verwendung im Medikationsplaneintrag zu prüfen. Vermutlich nicht möglich, da keine versionsspezifischen Referenzen verwendet werden.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "Erst bei der geplanten Abgabe (Rezepterstellung) relevant. Evtl ein Verweis auf erstellte Rezepte? Würde Extension erfordern, da Kardinalität nur 0..1 zulässig",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType",
      "path" : "MedicationRequest.courseOfTherapyType",
      "short" : "Gesamtmuster der Medikamentengabe. continuous | acute | seasonal. Verwendung im Medikationsplaneintrag prüfen, evtl. durch Dosierungsinformationen abgedeckt.",
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
      "short" : "Zusätzliche Informationen zum Medikationsplaneintrag. TODO: fachlich prüfen, an welchen Stellen überall Freitext erforderlich sein soll/muss. Auch im Kontext zu entered-in-error Informationen.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "Angabe der Dosierinformationen strukturiert oder als Freitext. TODO: Inhalte AtEmedDosage fachlich prüfen.",
      "min" : 1,
      "type" : [{
        "code" : "Dosage",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-dosage"]
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
      "short" : "Gibt an, ob das Arzneimittel substituiert werden darf oder nicht. Erläutert die Absicht des Arztes, der den Medikationsplaneintrag erstellt. Wenn nichts angegeben ist, kann eine Substitution vorgenommen werden. Die Dokumentation über eine tatsächlich erfolgte Substitution erfolgt in der Dispense-Resource. TODO: Usecase fachlich zu prüfen. Es kann für den Patienten selbst oder das Pflegeheim eine wichtige Information sein, mit welchem Medikament das verordnete Medikament im Bedarfsfall ersetzen werden kann.",
      "mustSupport" : true
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
      "short" : "Klinisches Problem mit Maßnahme. Nur mittesl Referenz auf Ressouce DetectedIssue, Keine Verwendung im Medikationsplaneintrag.",
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
