# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Planeintrag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Planeintrag**

## Resource Profile: ELGA e-Medikation Planeintrag 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag | *Version*:0.1.1 | |
| Draft as of 2026-01-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMRPlaneintrag |

 
**Beschreibung:** Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA Teilnehmers ab. Er enthält genau ein Arzneimittel und dessen Dosierung. Kann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen (AtEmedMRGeplanteAbgabe). 

**Usages:**

* Use this Profile: [ELGA e-Medikation Bundle vom Typ Collection Medikationsplan](StructureDefinition-at-emed-bundle-medikationsplan.md)
* Refer to this Profile: [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md) and [ELGA e-Medikation Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md)
* Examples for this Profile: [MedicationRequest/AtEmedJourneyMrPlaneintrag0201](MedicationRequest-AtEmedJourneyMrPlaneintrag0201.md) and [MedicationRequest/AtEmedJourneyMrPlaneintrag0202](MedicationRequest-AtEmedJourneyMrPlaneintrag0202.md)

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
  "title" : "ELGA e-Medikation Planeintrag",
  "status" : "draft",
  "date" : "2026-01-28T19:29:09+00:00",
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
  "description" : "**Beschreibung:** Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA Teilnehmers ab. \nEr enthält genau ein Arzneimittel und dessen Dosierung.\nKann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen (AtEmedMRGeplanteAbgabe).",
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
        "constraint" : [
          {
            "key" : "med-1",
            "severity" : "error",
            "human" : "Für die geplante Abgabe muss entweder CodeableConcept (PZN) oder Reference(Medication) angegeben werden – aber genau eins.",
            "expression" : "medicationCodeableConcept.exists() xor medicationReference.exists()",
            "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
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
        "short" : "Zu prüfen, ob/wie in Medikationsplaneintrag verwendet. Geplante Abgabe-ID (e-Med-ID) steht jedenfalls erst zum Zeitpunkt der Erstellung einer geplanten Abgabe (Rezeptierung) zur Verfügung."
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "short" : "Status des Medikationsplaneintrags (im Standardfall active oder complete): active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown -> entfernen: draft, unknown"
      },
      {
        "id" : "MedicationRequest.statusReason",
        "path" : "MedicationRequest.statusReason",
        "short" : "Grund für den aktuellen Status des Medikationsplaneintrags: https://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html. Verwendung prüfen."
      },
      {
        "id" : "MedicationRequest.intent",
        "path" : "MedicationRequest.intent",
        "short" : "Der Medikationsplaneintrag stellt eine Anforderung und Ermächtigung zum Handeln durch den Antragsteller dar, daher ist intent immer \"order\".",
        "patternCode" : "order",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.category",
        "path" : "MedicationRequest.category",
        "short" : "Kategorie damit Instanz einer geplanten Abgabe von Medikationsplaneintrag unterschieden werden kann",
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
          "code" : "1",
          "display" : "Medikationsplaneintrag"
        }
      },
      {
        "id" : "MedicationRequest.priority",
        "path" : "MedicationRequest.priority",
        "short" : "Priorität des Medikationsplaneintrag: routine | urgent | asap | stat. Keine Verwendung in Medikationsplaneintrag.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.doNotPerform",
        "path" : "MedicationRequest.doNotPerform",
        "short" : "Gibt an, ob der Medikationsplaneintrag die Verordnung einer Medikation (und somit die Erstellung einer geplanten Abgabe) untersagt ist. Verwendung prüfen.",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.reported[x]",
        "path" : "MedicationRequest.reported[x]",
        "short" : "Gibt an, ob dieser Datensatz als sekundärer „gemeldeter” Datensatz und nicht als ursprünglicher primärer Referenzdatensatz erfasst wurde. Er kann auch die Quelle der Meldung angeben. Keine Verwendung in Medikationsplaneintrag.",
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
        "short" : "Österreichischer Patient für den der Medikationsplaneintrag ausgestellt wird.",
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
        "short" : "Die Begegnung, während der Medikationsplaneintrag erstellt wurde. Verwendung im Medikationsplaneintrag prüfen.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.supportingInformation",
        "path" : "MedicationRequest.supportingInformation",
        "short" : "Zusätzliche Informationen (z. B. Größe und Gewicht des Patienten), die die Verschreibung des Medikaments unterstützen. Verwendung im Medikationsplaneintrag prüfen.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.authoredOn",
        "path" : "MedicationRequest.authoredOn",
        "short" : "Datum der Ausstellung des Medikationsplaneintrags.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.requester",
        "path" : "MedicationRequest.requester",
        "short" : "Der Arzt oder die Ärztin, die den Medikationsplaneintrag erstellt hat und für den Inhalt verantwortlich ist.",
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
        "short" : "Der gewünschte Ausführende der medikamentösen Behandlung (z. B. der Ausführende der Medikamentengabe). Keine Verwendung in der geplanten Abgabe.",
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
        "short" : "Die Person, die den Medikationsplaneintrag im Auftrag eines GDA eingegeben hat. Keine Verwendung in der geplanten Abgabe.",
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
        "id" : "MedicationRequest.reasonReference",
        "path" : "MedicationRequest.reasonReference",
        "short" : "Grund für die Verordnung des Arzneimittels. Entweder Code oder Referenz (evtl. Invariante).",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.instantiatesCanonical",
        "path" : "MedicationRequest.instantiatesCanonical",
        "short" : "URL, die auf ein Protokoll, eine Richtlinie, einen Auftragssatz oder eine andere Definition verweist, die von diesem Medikationsplaneintrag ganz oder teilweise eingehalten wird. Verwendung im Medikationsplaneintrag zu prüfen.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.instantiatesUri",
        "path" : "MedicationRequest.instantiatesUri",
        "short" : "URL, die auf ein extern gepflegtes Protokoll, eine Richtlinie, einen Auftragssatz oder eine andere Definition verweist, die von dieser Medikamentenanforderung ganz oder teilweise eingehalten wird. Verwendung im Medikationsplaneintrag zu prüfen.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.basedOn",
        "path" : "MedicationRequest.basedOn",
        "short" : "Verwendung im Medikationsplaneintrag zu prüfen. Nach einer Änderung kann mit priorPrescription auf die Vorversion referenziert werden.\nSinnvoll wäre evtl. Referenz auf Medikationsplan (List), ist aber mit basedOn nicht möglich.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.groupIdentifier",
        "path" : "MedicationRequest.groupIdentifier",
        "short" : "Keine Verwendung im Medikationsplaneintrag. Erst bei der geplanten Abgabe (Rezepterstellung) relevant.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.courseOfTherapyType",
        "path" : "MedicationRequest.courseOfTherapyType",
        "short" : "Gesamtmuster der Medikamentengabe (z.B. saisonal). Verwendung im Medikationsplaneintrag prüfen (dosageInstruction), paused soll im Status dokumentiert werden.",
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
        "short" : "Zusätzliche Informationen zum Medikationsplaneintrag, die durch die anderen Attribute nicht abgebildet werden konnten. -> Dzt. unklar, ob erforderlich, evtl einschränken"
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
        "short" : "Verabreichte Medikamentendosis. Keine Verwendung im Medikationsplaneintrag. Zu prüfen",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.dispenseRequest",
        "path" : "MedicationRequest.dispenseRequest",
        "short" : "Details zur geplanten Abgabe des Arzneimittels im Medikationsplan. Zu klären."
      },
      {
        "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "short" : "Anzahl der möglichen Einlösungen."
      },
      {
        "id" : "MedicationRequest.substitution",
        "path" : "MedicationRequest.substitution",
        "short" : "Gibt an, ob eine Substitution Teil der Abgabe sein kann / sollte / nicht sein darf. Dieser Block erläutert die Absicht des Arztes, der den Medikationsplaneintrag erstellt. Wenn nichts angegeben ist, kann eine Substitution vorgenommen werden. -> Zu prüfen ob Verwendung im Medikationsplaneintrag, Dokumentation über Substitution erfolg in der Dispense-Resource.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.priorPrescription",
        "path" : "MedicationRequest.priorPrescription",
        "short" : "Im Falle einer Änderung wird auf den ersetzten Medikationsplaneintrag verwiesen. Unterscheidung zu basedOn ?"
      },
      {
        "id" : "MedicationRequest.detectedIssue",
        "path" : "MedicationRequest.detectedIssue",
        "short" : "Bezeichnet ein tatsächliches / potenzielles klinisches Problem mit oder zwischen aktiven / vorgeschlagenen klinischen Maßnahmen für einen Patienten, z. B. Wechselwirkungen zwischen Medikamenten, doppelte Therapie, Dosierungswarnung usw. Verwendung im Medikationsplaneintrag zu prüfen.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.eventHistory",
        "path" : "MedicationRequest.eventHistory",
        "short" : "Bezeichnet eine Liste von Provenance-Ressourcen, die verschiedene relevante Versionen dieser Ressource dokumentieren. Verwendung im Medikationsplaneintrag zu prüfen.",
        "max" : "0"
      }
    ]
  }
}

```
