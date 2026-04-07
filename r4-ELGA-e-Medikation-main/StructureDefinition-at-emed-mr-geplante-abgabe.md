# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Geplante Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Geplante Abgabe**

## Resource Profile: ELGA e-Med Geplante Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-geplante-abgabe | *Version*:0.1.1 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMRGeplanteAbgabe |

 
Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab ("MedicationRequest"-Ressource). Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions. 

**Usages:**

* Examples for this Profile: [MedicationRequest/At-Emed-Example-Mr-Geplante-Abgabe](MedicationRequest-At-Emed-Example-Mr-Geplante-Abgabe.md) and [MedicationRequest/At-Emed-Journey-03-Mr-Geplante-Abgabe](MedicationRequest-At-Emed-Journey-03-Mr-Geplante-Abgabe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-mr-geplante-abgabe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-mr-geplante-abgabe.csv), [Excel](StructureDefinition-at-emed-mr-geplante-abgabe.xlsx), [Schematron](StructureDefinition-at-emed-mr-geplante-abgabe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-mr-geplante-abgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-geplante-abgabe",
  "version" : "0.1.1",
  "name" : "AtEmedMRGeplanteAbgabe",
  "title" : "ELGA e-Med Geplante Abgabe",
  "status" : "draft",
  "date" : "2026-04-07T16:09:01+00:00",
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
  "description" : "Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab (\"MedicationRequest\"-Ressource).\nSie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation.\nWerden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions.",
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
      "short" : "Gepante-Abgabe-ID. TODO: Verwendung noch zu prüfen, evtl. basedon mit logischem Identifier ausreichend.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Status der geplanten Abgabe: active | completed | entered-in-error | stopped. Details siehe Definition.",
      "definition" : "Status der geplanten Abgabe:\n* \\\"active\\\": offene, geplante Abgabe \n* \\\"completed\\\": implizit mittels Custom Operation gesetzt, nachdem alle Abgaben durchgeführt wurden (Rezept komplett eingelöst) (TODO: techn. prüfen) \n* \\\"entered-in-error\\\": nach fehlerhafter Eingabe; Storno nur möglich, wenn noch keine zugehörige Abgabe durchgeführt wurde (TODO: techn. prüfen?) \n* \\\"stopped\\\": TODO: Verwendung zu prüfen (Status soll analog zu e-Rezept abgebildet werden)\n(nicht verwendet: on-hold, cancelled, draft, unknown)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/GeplanteAbgabeStatusVS"
      }
    },
    {
      "id" : "MedicationRequest.statusReason",
      "path" : "MedicationRequest.statusReason",
      "short" : "Grund für den aktuellen Status: https://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Die Geplante Abgabe stellt eine Anforderung und Ermächtigung \nzum Handeln durch den Antragsteller dar, daher ist intent immer \"order\".",
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
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"],
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
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"]
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
      "short" : "Der Arzt oder die Ärztin, die die geplante Abgabe erstellt hat und für den Inhalt verantwortlich ist \n(eindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA e-Medikation des Patienten zuzugreifen).\nTODO: HL7ATCore-Practitioner-Profile profilieren.",
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
      "short" : "Keine Verwendung in der geplanten Abgabe.",
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
      "short" : "Person der Dateineingabe. Gemäß Vorgaben im CDA keine Verwendung in der geplanten Abgabe. TODO: Abstimmung der Verwendung mit e-Diagnose.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "short" : "Grund für die Verordnung des Arzneimittels als Code oder Referenz. Bis zur Verfügbarkeit von e-Diagnose keine Verwendung in geplanter Abgabe. ",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesCanonical",
      "path" : "MedicationRequest.instantiatesCanonical",
      "short" : "URL, die auf ein Protokoll (Richtlinie, Guideline) verweist, das von dieser \ngeplanten Abgabe ganz oder teilweise eingehalten wird. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.instantiatesUri",
      "path" : "MedicationRequest.instantiatesUri",
      "short" : "URL, die auf ein extern gepflegtes Protokoll (Richtlinie, Guideline) verweist, das von dieser \ngeplanten Abgabe ganz oder teilweise eingehalten wird. Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "Referenz auf die (aktuelle) Version des zugrundeliegenden Medikationsplaneintrags, auf dem diese geplante Abgabe basiert.\nTODO: zu prüfen: zusätzliche logische Referenz: reference.identifier \n{Medikationsplaneintrag-ID}_{Medikationsplaneintrag-ID_Version}.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "Als groupIdentifier dient die eMED-ID, die auch im e-Rezept mitgeführt wird. \nWerden von einem:r Arzt:Ärtztin mehrere Arzneimittel gleichzeitig verordnet, \nwird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer').\nTODO: eMED-ID Wording ist evtl. aufgrund des Parallelbetriebs noch anzupassen",
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
      "short" : "Zusätzliche Informationen zur geplanten Abgabe (Kommunikations zw. Arzt und Apotheke); die nicht die Dosierung betreffen. \nTODO: prüfen was CDA derzeit zulässt; HL7 Consultation, ob Feld benötigt",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "Angabe der Dosierinformationen. TODO: Dosiervarianten.",
      "max" : "1",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-dosage"]
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
      "short" : "Die Anzahl der weiteren möglichen Einlösungen ist abhängig von der Rezeptart (siehe Definition).",
      "definition" : "Anzahl der weiteren möglichen Einlösungen:\n* **Kassenrezept**: keine weitere Einlösung möglich (fixer Wert 0)\n* **Privatrezept**: bis zu 6 Einlösungen, Anzahl der möglichen Einlösungen kann vom Arzt definiert werden\n* **Sustitutionsrzepet**: keine weitere Einlösung möglich (fixer Wert 0) \n\nTODO: Techn. Prüfung: Wenn Kassenrezept oder Substitutionsrezept, dann 0. Verpflichtende Eingabe, wenn Privatrezept, max 6.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity",
      "path" : "MedicationRequest.dispenseRequest.quantity",
      "short" : "Menge des Medikaments, die bei jeder Abgabe bereitgestellt werden soll. \nDa sich die Angaben zum Arzneimittel jeweils auf eine Packung der Arznei beziehen, MUSS die Anzahl der auszugebenden Packungen angegeben werden (mindestens 1). \nDies gilt für Arzneimittel mit PZN und magistralen Zubereitungen.",
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
      "short" : "Gibt an, ob das Arzneimittel substituiert werden darf oder nicht.\nErläutert die Absicht des verschreibenden Arztes. Keine Verwendung in der geplanten Abgabe.",
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
