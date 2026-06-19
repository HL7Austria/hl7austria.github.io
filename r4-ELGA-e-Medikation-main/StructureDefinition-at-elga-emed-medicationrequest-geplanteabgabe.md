# HL7.AT.FHIR.ELGA.EMED.R4\At ELGA e-Medikation MedicationRequest Geplante Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **At ELGA e-Medikation MedicationRequest Geplante Abgabe**

## Resource Profile: At ELGA e-Medikation MedicationRequest Geplante Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe | *Version*:0.1.1 | |
| Draft as of 2026-06-19 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedMedicationRequestGeplanteAbgabe |

 
Bildet eine "Geplante Abgabe" eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab ("MedicationRequest"-Ressource mit Kategorie "Geplante Abgabe"): Sie enthält die verordnete Medikation und deren Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Werden mehrere Medikamente gleichzeitig verordnet und sollen demselben e-Rezept zugeordnet sein, wird für jedes Medikament eine "Geplante Abgabe" mit demselben "e-Med GroupIdentifier" erstellt (bildet 'Rezept-Klammer'). Es werden R5-Backport-Extensions verwendet. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md)
* Examples for this Profile: [MedicationRequest/At-Emed-Example-Mr-Geplante-Abgabe](MedicationRequest-At-Emed-Example-Mr-Geplante-Abgabe.md) and [MedicationRequest/At-Emed-Journey-03-Mr-Geplante-Abgabe](MedicationRequest-At-Emed-Journey-03-Mr-Geplante-Abgabe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.csv), [Excel](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.xlsx), [Schematron](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medicationrequest-geplanteabgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe",
  "version" : "0.1.1",
  "name" : "AtElgaEmedMedicationRequestGeplanteAbgabe",
  "title" : "At ELGA e-Medikation MedicationRequest Geplante Abgabe",
  "status" : "draft",
  "date" : "2026-06-19T14:53:34+00:00",
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
  "description" : "Bildet eine \"Geplante Abgabe\" eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab (\"MedicationRequest\"-Ressource mit Kategorie \"Geplante Abgabe\"):\nSie enthält die verordnete Medikation und deren Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. \nWerden mehrere Medikamente gleichzeitig verordnet und sollen demselben e-Rezept zugeordnet sein, wird für jedes Medikament eine \"Geplante Abgabe\" mit demselben \"e-Med GroupIdentifier\" erstellt (bildet 'Rezept-Klammer'). \nEs werden R5-Backport-Extensions verwendet.",
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
      "short" : "Geplante Abgabe eines Arzneimittels aus dem Medikationsplan. Verwendet R5 Backport Extensions."
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
      "short" : "Logischer Identifier. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Status der geplanten Abgabe. Mögliche Ausprägung: [active | completed | entered-in-error | stopped]. Bedeutung: active: offene, geplante Abgabe | completed: geplante Abgabe abgeschlossen | entered-in-error: nach fehlerhafter Eingabe; Storno nur möglich, wenn noch keine zugehörige Abgabe durchgeführt wurde | stopped: Verwendung zu prüfen (Status soll analog zu e-Rezept abgebildet werden)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/GeplanteAbgabeStatusVS"
      }
    },
    {
      "id" : "MedicationRequest.statusReason",
      "path" : "MedicationRequest.statusReason",
      "short" : "Grund des aktuellen Status: https://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Die geplante Abgabe stellt einen Auftrag zur Durchführung und eine Autorisierung des Verfassers dar; daher ist intent immer \"order\".",
      "patternCode" : "order",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "MedicationRequest.category:mrcategory",
      "path" : "MedicationRequest.category",
      "sliceName" : "mrcategory",
      "short" : "Kategorie zur Unterscheidung eines Medikationsplaneintrags von einer geplanten Abgabe (beide haben intent order)",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
          "code" : "2",
          "display" : "Geplante Abgabe"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:recipetype",
      "path" : "MedicationRequest.category",
      "sliceName" : "recipetype",
      "short" : "Kategorie zur Unterscheidung, ob ein Kassen-, Privat- oder Substitutionsrezept erstellt wurde.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-medikationrezeptart"
      }
    },
    {
      "id" : "MedicationRequest.priority",
      "path" : "MedicationRequest.priority",
      "short" : "Priorität der geplanten Abgabe. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "short" : "Gibt an, ob die geplante Abgabe untersagt ist. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reported[x]",
      "path" : "MedicationRequest.reported[x]",
      "short" : "Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Das Arzneimittel wird immer in einer contained Medication Ressource dokumentiert, damit \nArzneimittel mit und ohne PZN einheitlich dokumentiert werden können.",
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
      "short" : "Patient, für den die geplante Abgabe ausgestellt werden soll (über Zentralen Patientenindex identifiziert und Teilnehmer von ELGA e-Medikation).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "short" : "Aufenthalt/Begegnung, während dessen die geplante Abgabe erstellt wurde. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.supportingInformation",
      "path" : "MedicationRequest.supportingInformation",
      "short" : "Referenz auf zusätzliche Informationen (Ressource Any)\n(z. B. Größe und Gewicht des Patienten), die die Verschreibung des Medikaments unterstützen. \nKeine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "short" : "Datum der Ausstellung der geplanten Abgabe.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "Der Arzt oder die Ärztin, die die geplante Abgabe erstellt hat und für den Inhalt verantwortlich ist \n(eindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA e-Medikation des Patienten zuzugreifen).",
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
      "short" : "Durchführende Person. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.performerType",
      "path" : "MedicationRequest.performerType",
      "short" : "Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "short" : "Person der Dateineingabe. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "short" : "Grund für die Verordnung des Arzneimittels als Code oder Referenz. Bis zur Verfügbarkeit von e-Diagnose keine Verwendung in geplanter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesCanonical",
      "path" : "MedicationRequest.instantiatesCanonical",
      "short" : "URL, die auf eine Richtlinie/Guideline verweist, die von dieser \ngeplanten Abgabe ganz oder teilweise eingehalten wird. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesUri",
      "path" : "MedicationRequest.instantiatesUri",
      "short" : "URL, die auf eine externe gepflegte Richtlinie/Guideline verweist, die von dieser \ngeplanten Abgabe ganz oder teilweise eingehalten wird. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "Referenz auf die (aktuelle) Version des zugrundeliegenden Medikationsplaneintrags, auf dem diese geplante Abgabe basiert.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "Als groupIdentifier dient die eMED-ID, die auch im e-Rezept mitgeführt wird. \nWerden von einem:r Arzt:Ärtztin mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine \ngeplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer').",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType",
      "path" : "MedicationRequest.courseOfTherapyType",
      "short" : "Gesamtmuster der Medikamentengabe (z.B. saisonal). Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.insurance",
      "path" : "MedicationRequest.insurance",
      "short" : "Versicherungsinformatinen als Coverage oder ClaimResponse Resource. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "short" : "Zusätzliche Informationen zur geplanten Abgabe (Kommunikation zwischen Arzt und Apotheke, die nicht die Dosierung betreffen).",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "Angabe der Dosierinformationen.",
      "max" : "1",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-dosierung"]
      }]
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "short" : "Details zur geplanten Abgabe des Arzneimittels.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill",
      "path" : "MedicationRequest.dispenseRequest.initialFill",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill.quantity",
      "path" : "MedicationRequest.dispenseRequest.initialFill.quantity",
      "short" : "Anzahl der Einheiten für die erste Abgabe, z.B. 30 Kapseln oder 100 mg. Keine Verwendung in der geplanten Abgabe."
    },
    {
      "id" : "MedicationRequest.dispenseRequest.dispenseInterval",
      "path" : "MedicationRequest.dispenseRequest.dispenseInterval",
      "short" : "Mindestzeitraum zwischen den Abgaben. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod",
      "short" : "Gültigkeitszeitraum einer geplante Abgabe (abhängig von Rezeptart): Kassenrezept: ab Erstelldatum 1 Monat, bei Teilabgabe verlängert sich Gültigkeitsdauer auf 3 Monate („Besorger“-Prozess). Privatrezept: ab Erstelldatum max. 365 Tage, die Gültigkeitsdauer kann vom Arzt definiert werden. Substitutionsrezept: Max. Gültigkeitsdauer 12 Monate.",
      "definition" : "Zeitraum in dem die geplante Abgabe eingelöst werden kann.\nDer Gültigkeitszeitraum ist abhängig von der **Rezeptart**: \n* **Kassenrezept**: ab Erstelldatum einen Monat gültig (vom Ausstellungszeitpunkt bis zum gleichen Tag des Folgemonats 23:59 Uhr); validityPeriod.start kein Datum in der Zukunft; bei einer Teilabgabe verlängert sich die gesamte Gültigkeitsdauer auf 3 Monate („Besorger“-Prozess).\n* **Privatrezept**: ab Erstelldatum maximal 365 Tage gültig, wenn die erste Einlösung innerhalb von 1 Monat ab Erstelldatum erfolgt (sonst Status abgelaufen). validityPeriod.start kein Datum in der Zukunft; Die Gültigkeitsdauer (validityPeriod.end) kann vom Arzt definiert werden.\n* **Substitutionsrezept**: Maximale Gültigkeitsdauer 12 Monate. Das validityPeriod.start darf maximal einen Monat in der Zukunft liegen, gültig bis das validityPeriod.end erreicht ist.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "short" : "Die Anzahl der weiteren möglichen Einlösungen (abhängig von Rezeptart): Kassenrezept: keine weitere Einlösung möglich (fixer Wert 0). Privatrezept: bis zu 6 Einlösungen, Anzahl der möglichen Einlösungen kann vom Arzt definiert werden. Sustitutionsrezept: keine weitere Einlösung möglich (fixer Wert 0)",
      "definition" : "Anzahl der weiteren möglichen Einlösungen:\n* **Kassenrezept**: keine weitere Einlösung möglich (fixer Wert 0)\n* **Privatrezept**: bis zu 6 Einlösungen, Anzahl der möglichen Einlösungen kann vom Arzt definiert werden\n* **Sustitutionsrezept**: keine weitere Einlösung möglich (fixer Wert 0) ",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity",
      "path" : "MedicationRequest.dispenseRequest.quantity",
      "short" : "Menge des Medikaments, die bei jeder Abgabe bereitgestellt werden soll.\nDa sich die Angaben zum Arzneimittel jeweils auf eine Packung der Arznei beziehen, MUSS die Anzahl der auszugebenden Packungen angegeben werden (mindestens 1). \nDies gilt für Arzneimittel mit PZN und magistralen Zubereitungen.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration",
      "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.value",
      "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.value",
      "short" : "Dauer, für die die bereitgestellte Menge des Medikaments voraussichtlich ausreicht. Keine Verwendung in der geplanten Abgabe."
    },
    {
      "id" : "MedicationRequest.dispenseRequest.performer",
      "path" : "MedicationRequest.dispenseRequest.performer",
      "short" : "Apotheke oder andere Einrichtung, die die geplante Abgabe einlösen soll. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "short" : "Gibt an, ob das Arzneimittel substituiert werden darf (Absicht des Arztes, der die geplante Abgabe erstellt). Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.priorPrescription",
      "path" : "MedicationRequest.priorPrescription",
      "short" : "Im Falle einer Änderung wird auf die ersetzte geplante Abgabe verwiesen. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.detectedIssue",
      "path" : "MedicationRequest.detectedIssue",
      "short" : "Klinisches Problem mit Maßnahme, mittels Referenz auf Ressouce DetectedIssue. Keine Verwendung in der geplanten \nAbgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.eventHistory",
      "path" : "MedicationRequest.eventHistory",
      "short" : "Referenz auf Provenance-Ressourcen, die \nverschiedene relevante Versionen dieser Ressource dokumentieren. \nKeine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    }]
  }
}

```
