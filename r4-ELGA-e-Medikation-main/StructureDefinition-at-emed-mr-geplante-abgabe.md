# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Geplante Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Geplante Abgabe**

## Resource Profile: ELGA e-Medikation Geplante Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-geplante-abgabe | *Version*:0.1.1 | |
| Draft as of 2026-01-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMRGeplanteAbgabe |

 
**Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab. Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions. 

**Usages:**

* Examples for this Profile: [MedicationRequest/AtEmedExampleGeplanteAbgabe01](MedicationRequest-AtEmedExampleGeplanteAbgabe01.md)

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
  "title" : "ELGA e-Medikation Geplante Abgabe",
  "status" : "draft",
  "date" : "2026-01-28T08:09:20+00:00",
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
  "description" : "**Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab.\nSie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation.\nAls groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird.\nWerden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions.",
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
        "short" : "Geplante Abgabe eines Arzneimittels aus dem Medikationsplan. Verwendet R5 Backport Extensions.",
        "constraint" : [
          {
            "key" : "med-1",
            "severity" : "error",
            "human" : "Für die geplante Abgabe muss entweder CodeableConcept (PZN) oder Reference(Medication) angegeben werden – aber genau eins.",
            "expression" : "medicationCodeableConcept.exists() xor medicationReference.exists()",
            "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-geplante-abgabe"
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
        "short" : "Period over which the medication should be taken.",
        "definition" : "Period over which the medication should be taken. Where there are multiple dosageInstruction lines (for example, tapering doses), this is the earliest date and the latest end date of the dosageInstructions.",
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
        "short" : "Full representation of the dosage instructions",
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
        "short" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
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
        "short" : "MedicationRequest identifier = {eMed-ID}_{locally assigned ID}  Setzt sich zusammen aus groupIdentifier (Rezept-Klammer) und individueller Identifikation der geplanten Abgabe.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "short" : "Status der geplanten Abgabe (im Standardfall active oder complete): active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown -> entfernen: draft, unknown"
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
        "short" : "Die Geplante Abgabe stellt eine Anforderung und Ermächtigung zum Handeln durch den Antragsteller dar, daher ist intent immer \"order\".",
        "patternCode" : "order",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.category",
        "path" : "MedicationRequest.category",
        "short" : "Kategorie damit geplante Abgabe von Medikationsplaneintrag unterschieden werden kann.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/MedicationRequestCategoryVS"
        }
      },
      {
        "id" : "MedicationRequest.category.coding",
        "path" : "MedicationRequest.category.coding",
        "patternCoding" : {
          "code" : "2",
          "display" : "Geplante Abgabe"
        }
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
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "CodeableConcept"
          },
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
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
        "path" : "MedicationRequest.medication[x]",
        "sliceName" : "medicationCodeableConcept",
        "short" : "Angabe mittels Pharmazentralnummer (PZN) aus der ASP-Liste.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://termgit.elga.gv.at/CodeSystem/asp-liste"
        }
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding",
        "path" : "MedicationRequest.medication[x].coding",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding.system",
        "path" : "MedicationRequest.medication[x].coding.system",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding.code",
        "path" : "MedicationRequest.medication[x].coding.code",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding.display",
        "path" : "MedicationRequest.medication[x].coding.display",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationReference",
        "path" : "MedicationRequest.medication[x]",
        "sliceName" : "medicationReference",
        "short" : "Bei magistralen Anwendungen oder Infusionen ohne PZN.",
        "min" : 0,
        "max" : "1",
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
        "id" : "MedicationRequest.subject",
        "path" : "MedicationRequest.subject",
        "short" : "Österreichischer Patient für den die geplante Abgabe ausgestellt wird.",
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
        "short" : "Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.supportingInformation",
        "path" : "MedicationRequest.supportingInformation",
        "short" : "Keine Verwendung in der geplanten Abgabe.",
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
        "short" : "Der Arzt oder die Ärztin, die die geplante Abgabe erstellt hat und für den Inhalt verantwortlich ist.",
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
        "short" : "Grund für die Verordnung des Arzneimittels. Entweder Code oder Referenz (evtl. Invariante).",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.reasonCode.coding",
        "path" : "MedicationRequest.reasonCode.coding",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.reasonCode.coding.system",
        "path" : "MedicationRequest.reasonCode.coding.system",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.reasonCode.coding.code",
        "path" : "MedicationRequest.reasonCode.coding.code",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.reasonCode.coding.display",
        "path" : "MedicationRequest.reasonCode.coding.display",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.reasonReference",
        "path" : "MedicationRequest.reasonReference",
        "short" : "Grund für die Verordnung des Arzneimittels. Entweder Code oder Referenz (evtl. Invariante).",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.instantiatesCanonical",
        "path" : "MedicationRequest.instantiatesCanonical",
        "short" : "URL, die auf ein Protokoll, eine Richtlinie, einen Auftragssatz oder eine andere Definition verweist, die von diesem MedicationRequest ganz oder teilweise eingehalten wird. Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.instantiatesUri",
        "path" : "MedicationRequest.instantiatesUri",
        "short" : "URL, die auf ein extern gepflegtes Protokoll, eine Richtlinie, einen Auftragssatz oder eine andere Definition verweist, die von dieser Medikamentenanforderung ganz oder teilweise eingehalten wird. Keine Verwendung in der geplanten Abgabe.",
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
        ]
      },
      {
        "id" : "MedicationRequest.groupIdentifier",
        "path" : "MedicationRequest.groupIdentifier",
        "short" : "Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden von einem:r Arzt:Ärtztin mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer').",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.courseOfTherapyType",
        "path" : "MedicationRequest.courseOfTherapyType",
        "short" : "Gesamtmuster der Medikamentengabe (z.B. saisonal). Evtl. im Planeintrag (dosageInstruction), paused soll im Status dokumentiert werden.",
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
        "short" : "Zusätzliche Informationen zur geplanten Abgabe, die durch die anderen Attribute nicht abgebildet werden konnten. -> Dzt. unklar, ob erforderlich, evtl einschränken"
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
        "short" : "Anweisungen zur Einnahme/Verabreichung des Arzneimittels."
      },
      {
        "id" : "MedicationRequest.dosageInstruction.patientInstruction",
        "path" : "MedicationRequest.dosageInstruction.patientInstruction",
        "short" : "Anweisungen für den Patienten"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
        "short" : "Wiederholungen innerhalb der Dauer"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.period",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.period",
        "short" : "Zeitraum, über den Wiederholungen erfolgen sollen"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
        "short" : "Zeiteinheit: s | min | h | d | wk | mo | a  (UCUM)"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.when",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.when",
        "short" : "Code für den Zeitraum des Auftretens (z.B. nach dem Frühstück) https://hl7.org/fhir/R4/valueset-event-timing.html",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/event-timing"
        }
      },
      {
        "id" : "MedicationRequest.dosageInstruction.asNeeded[x]",
        "path" : "MedicationRequest.dosageInstruction.asNeeded[x]",
        "short" : "Bedarfsmedikation"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "short" : "Verabreichte Medikamentendosis. Keine Verwendung in der geplanten Abgabe. Zu prüfen",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.dispenseRequest",
        "path" : "MedicationRequest.dispenseRequest",
        "short" : "Details zur geplanten Abgabe des Arzneimittels."
      },
      {
        "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "short" : "Anzahl der möglichen Einlösungen."
      },
      {
        "id" : "MedicationRequest.substitution",
        "path" : "MedicationRequest.substitution",
        "short" : "Gibt an, ob eine Substitution Teil der Abgabe sein kann / sollte / nicht sein darf. Dieser Block erläutert die Absicht des verschreibenden Arztes. Wenn nichts angegeben ist, kann eine Substitution vorgenommen werden. -> Eher keine Verwendung in der geplanten Abgabe, Dokumentation über Substitution erfolg in der Dispenses-Resource."
      },
      {
        "id" : "MedicationRequest.priorPrescription",
        "path" : "MedicationRequest.priorPrescription",
        "short" : "Im Falle einer Änderung wird auf die ersetzte geplante Abgabe verwiesen."
      },
      {
        "id" : "MedicationRequest.detectedIssue",
        "path" : "MedicationRequest.detectedIssue",
        "short" : "Bezeichnet ein tatsächliches / potenzielles klinisches Problem mit oder zwischen aktiven / vorgeschlagenen klinischen Maßnahmen für einen Patienten, z. B. Wechselwirkungen zwischen Medikamenten, doppelte Therapie, Dosierungswarnung usw. -> Keine Verwendung in der geplanten Abgabe",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.eventHistory",
        "path" : "MedicationRequest.eventHistory",
        "short" : "Bezeichnet eine Liste von Provenance-Ressourcen, die verschiedene relevante Versionen dieser Ressource dokumentieren. -> Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      }
    ]
  }
}

```
