# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Geplante Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Geplante Abgabe**

## Resource Profile: ELGA e-Medikation Geplante Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe | *Version*:0.1.1 | |
| Draft as of 2026-01-22 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMedicationRequestGeplanteAbgabe |

 
**Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab. Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). 

**Usages:**

* Examples for this Profile: [MedicationRequest/AtEmedExampleMedicationRequestGeplanteAbgabe01](MedicationRequest-AtEmedExampleMedicationRequestGeplanteAbgabe01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.csv), [Excel](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.xlsx), [Schematron](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-medicationrequest-geplanteAbgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe",
  "version" : "0.1.1",
  "name" : "AtEmedMedicationRequestGeplanteAbgabe",
  "title" : "ELGA e-Medikation Geplante Abgabe",
  "status" : "draft",
  "date" : "2026-01-22T12:59:21+00:00",
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
  "description" : "**Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab.\nSie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. \nGeplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation.\nAls groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird.\nWerden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer').",
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
        "short" : "Geplante Abgabe eines Arzneimittels aus dem Medikationsplan.",
        "constraint" : [
          {
            "key" : "med-1",
            "severity" : "error",
            "human" : "Für die geplante Abgabe muss entweder CodeableConcept (PZN) oder Reference(Medication) angegeben werden – aber genau eins.",
            "expression" : "medicationCodeableConcept.exists() xor medicationReference.exists()",
            "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe"
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
        "short" : "Status der geplanten Abgabe (im Standardfall active oder complete): active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
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
        "short" : "Kategorie damit geplante Abgabe von Medikationsplaneintrag unterschieden werden kann"
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
        "short" : "Grund für die Verordnung des Arzneimittels. Entweder Code oder Referenz (evtl. Invariante)."
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
        "short" : "Keine Verwendung in der geplanten Abgabe.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.instantiatesUri",
        "path" : "MedicationRequest.instantiatesUri",
        "short" : "Keine Verwendung in der geplanten Abgabe.",
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
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-planeintrag"
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
        "short" : "Zusätzliche Informationen zur geplanten Abgabe, die durch die anderen Attribute nicht abgebildet werden konnten. Dzt. unklar, ob erforderlich.",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
        "short" : "Anweisungen zur Einnahme/Verabreichung des Arzneimittels."
      },
      {
        "id" : "MedicationRequest.priorPrescription",
        "path" : "MedicationRequest.priorPrescription",
        "short" : "Im Falle einer Änderung wird auf die ersetzte Verordnungen/MedicationRequests verwiesen."
      }
    ]
  }
}

```
