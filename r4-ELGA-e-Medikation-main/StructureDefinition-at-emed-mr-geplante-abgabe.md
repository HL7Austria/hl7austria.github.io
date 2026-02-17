# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Geplante Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Geplante Abgabe**

## Resource Profile: ELGA e-Med Geplante Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-geplante-abgabe | *Version*:0.1.1 | |
| Draft as of 2026-02-17 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMRGeplanteAbgabe |

 
**Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab ("MedicationRequest"-Ressource). Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions. 

**Usages:**

* Examples for this Profile: [MedicationRequest/AtEmedJourneyMrGeplanteAbgabe03](MedicationRequest-AtEmedJourneyMrGeplanteAbgabe03.md)

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
  "date" : "2026-02-17T17:15:57+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://elga.gv.at"
        }
      ]
    },
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "**Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab (\"MedicationRequest\"-Ressource).\nSie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation.\nAls groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird.\nWerden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest",
        "short" : "Geplante Abgabe eines Arzneimittels aus dem Medikationsplan. Verwendet R5 Backport Extensions."
      },
      {
        "id" : "MedicationRequest.contained",
        "path" : "MedicationRequest.contained",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "MedicationRequest.contained:medication",
        "path" : "MedicationRequest.contained",
        "sliceName" : "medication",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Medication",
            "profile" : [
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.contained:substance",
        "path" : "MedicationRequest.contained",
        "sliceName" : "substance",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Substance",
            "profile" : [
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension",
        "path" : "MedicationRequest.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
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
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension:renderedDosageInstruction",
        "path" : "MedicationRequest.extension",
        "sliceName" : "renderedDosageInstruction",
        "short" : "Vollständige Darstellung der Dosierungsanweisungen",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension:offLabelUse",
        "path" : "MedicationRequest.extension",
        "sliceName" : "offLabelUse",
        "short" : "Weist darauf hin, dass der verschreibende Arzt das Medikament wissentlich für eine Indikation, Altersgruppe, Dosierung oder Verabreichungsform verschrieben hat, die nicht von den Aufsichtsbehörden zugelassen ist und in der Verschreibungsinformation für das Produkt nicht erwähnt wird.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.identifier",
        "path" : "MedicationRequest.identifier",
        "short" : "MedicationRequest identifier = {eMed-ID}_{locally assigned ID}.\nSetzt sich zusammen aus: groupIdentifier (Rezept-Klammer) und individueller Identifikation der geplanten Abgabe.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "short" : "Status der geplanten Abgabe (im Standardfall active oder complete): \n (req) active | on-hold | cancelled | completed | entered-in-error | stopped  (entfernt: draft | unknown); TODO: Fachlich zu prüfen.",
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
        "short" : "Kategorie damit Instanz einer geplanten Abgabe von Medikationsplaneintrag\n unterschieden werden kann (beide haben intent order)",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
              "code" : "2"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.priority",
        "path" : "MedicationRequest.priority",
        "short" : "Priorität der geplanten Abgabe: routine | urgent | asap | stat. Keine Verwendung in der geplanten Abgabe.",
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
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.medication[x].reference",
        "path" : "MedicationRequest.medication[x].reference",
        "constraint" : [
          {
            "key" : "contained-ref",
            "severity" : "error",
            "human" : "Medication must be contained (#...)",
            "expression" : "reference.startsWith('#')",
            "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-geplante-abgabe"
          }
        ]
      },
      {
        "id" : "MedicationRequest.subject",
        "path" : "MedicationRequest.subject",
        "short" : "Patient, für den der Medikationsplaneintrag ausgestellt werden soll, der über den \nZentralen Patientenindex identifizierbar und Teilnehmer von ELGA e-Medikation ist.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"
            ]
          }
        ],
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
        "short" : "Der Arzt oder die Ärztin, die die geplante Abgabe erstellt hat und für den Inhalt verantwortlich ist.\nEindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA e-Medikation des Patienten zuzugreifen.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole",
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"
            ]
          }
        ],
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
        "short" : "Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.reasonCode",
        "path" : "MedicationRequest.reasonCode",
        "short" : "Grund für die Verordnung des Arzneimittels. \nEntweder Code oder Referenz (TODO: Evtl. Invariante). Erst wenn codierte Angabe möglich.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.instantiatesCanonical",
        "path" : "MedicationRequest.instantiatesCanonical",
        "short" : "URL, die auf ein Protokoll (Richtlinie, Guideline) verweist, die von diesem \nMedikationsplaneintrag ganz oder teilweise eingehalten wird. Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.instantiatesUri",
        "path" : "MedicationRequest.instantiatesUri",
        "short" : "URL, die auf ein extern gepflegtes Protokoll (Richtlinie, Guideline) verweist, die von diesem \nMedikationsplaneintrag ganz oder teilweise eingehalten wird. Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.basedOn",
        "path" : "MedicationRequest.basedOn",
        "short" : "Referenz auf den zugrundeliegenden Medikationsplaneintrag, auf dem diese geplante Abgabe basiert.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.groupIdentifier",
        "path" : "MedicationRequest.groupIdentifier",
        "short" : "Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), \ndie auch im e-Rezept mitgeführt wird. Werden von einem:r Arzt:Ärtztin mehrere Arzneimittel gleichzeitig verordnet, \nwird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer').",
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
        "short" : "Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.note",
        "path" : "MedicationRequest.note",
        "short" : "Zusätzliche Informationen zur geplanten Abgabe. TODO: prüfen",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
        "short" : "Anweisungen zur Einnahme/Verabreichung des Arzneimittels. TODO: alle Elemente + R5 Extensions prüfen",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dispenseRequest",
        "path" : "MedicationRequest.dispenseRequest",
        "short" : "Details zur geplanten Abgabe des Arzneimittels.",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "short" : "Anzahl der möglichen Einlösungen."
      },
      {
        "id" : "MedicationRequest.substitution",
        "path" : "MedicationRequest.substitution",
        "short" : "Gibt an, ob das Arzneimittel substituiert werden darf oder nicht.\nErläutert die Absicht des verschreibenden Arztes. Wenn nichts angegeben ist, kann eine Substitution vorgenommen werden. \nDie Dokumentation über eine tatsächlich erfolgte Substitution erfolgt in der Dispense-Resource. \nTODO: Eher keine Verwendung in der geplanten Abgabe.",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.priorPrescription",
        "path" : "MedicationRequest.priorPrescription",
        "short" : "Im Falle einer Änderung wird auf die ersetzte geplante Abgabe verwiesen.",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.detectedIssue",
        "path" : "MedicationRequest.detectedIssue",
        "short" : "Klinisches Problem mit Maßnahme. Nur mittesl Referenz auf Ressouce DetectedIssue. Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.eventHistory",
        "path" : "MedicationRequest.eventHistory",
        "short" : "Referenz auf Provenance-Ressourcen, die verschiedene relevante Versionen dieser Ressource dokumentieren. \nKeine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      }
    ]
  }
}

```
