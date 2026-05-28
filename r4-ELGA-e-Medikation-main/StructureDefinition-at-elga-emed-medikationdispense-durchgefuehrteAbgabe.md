# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe**

## Resource Profile: AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medikationdispense-durchgefuehrteAbgabe | *Version*:0.1.1 | |
| Draft as of 2026-05-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe |

 
Dokumentiert eine durchgeführte Abgabe eines Arzneimittels ("MedicationDispense"-Ressource). In der durchgeführten Abgabe können Abweichungen hinsichtlich des Medikaments und dessen Dosierung dokumentiert werden. Sofern eine zugehörige geplante Abgabe vorliegt, muss diese mit dem zugehörigen Planeintrag referenziert werden. Eine mögliche Substitution des Medikaments ist implizit, durch die Referenz auf die zugehörige geplante Abgabe, ersichtlich. 

**Usages:**

* Examples for this Profile: [MedicationDispense/At-Emed-Example-Durchgefuehrte-Abgabe-01](MedicationDispense-At-Emed-Example-Durchgefuehrte-Abgabe-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteAbgabe.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteAbgabe.csv), [Excel](StructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteAbgabe.xlsx), [Schematron](StructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteAbgabe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medikationdispense-durchgefuehrteAbgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medikationdispense-durchgefuehrteAbgabe",
  "version" : "0.1.1",
  "name" : "AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe",
  "title" : "AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe",
  "status" : "draft",
  "date" : "2026-05-28T11:16:16+00:00",
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
  "description" : "Dokumentiert eine durchgeführte Abgabe eines Arzneimittels (\"MedicationDispense\"-Ressource). \nIn der durchgeführten Abgabe können Abweichungen hinsichtlich des Medikaments und dessen Dosierung dokumentiert werden.\nSofern eine zugehörige geplante Abgabe vorliegt, muss diese mit dem zugehörigen Planeintrag referenziert werden. Eine mögliche Substitution des Medikaments ist implizit, durch die Referenz auf die zugehörige geplante Abgabe, ersichtlich.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense",
      "short" : "Durchgeführte Abgabe eines Arzneimittels mit oder ohne Bezug zur geplanten Abgabe. Verwendet R5 Backport Extensions."
    },
    {
      "id" : "MedicationDispense.extension",
      "path" : "MedicationDispense.extension",
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
      "id" : "MedicationDispense.extension:renderedDosageInstruction",
      "path" : "MedicationDispense.extension",
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
      "id" : "MedicationDispense.extension:recorded",
      "path" : "MedicationDispense.extension",
      "sliceName" : "recorded",
      "short" : "Datum und Uhrzeit, zu denen die Abgabe erfasst wurde. Dies muss nicht unbedingt mit dem Zeitpunkt übereinstimmen, zu dem das Medikament dem Patienten ausgehändigt wurde (z.B. bei Nacherfassung der Abgabe).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.recorded"]
      }]
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "short" : "Durchgeführte-Abgabe-ID. Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.partOf",
      "path" : "MedicationDispense.partOf",
      "short" : "Auslösendes Ereignis (Referenz auf Procedure-Ressource). Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.status",
      "path" : "MedicationDispense.status",
      "short" : "Status der durchgeführten Abgabe. Mögliche Ausprägungen: [completed | entered-in-error | stopped] Bedeutung: completed: Die durchgeführte Abgabe ist abgeschlossen. | entered-in-error: Die durchgeführte Abgabe wird aufgrund falscher Eingabe storniert. | stopped: Die Abgabe wird nicht durchgeführt (Medikament wird abgesetzt).",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]",
      "path" : "MedicationDispense.statusReason[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Grund für den aktuellen Status, z.B. warum keine Abgabe erfolgte (zB. Produkt nicht verfügbar). Code oder Referenz (DetectedIssue)"
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept",
      "path" : "MedicationDispense.statusReason[x]",
      "sliceName" : "statusReasonCodeableConcept",
      "short" : "Grund für den aktuellen Status als Code. (ex) https://hl7.org/fhir/R4/valueset-medicationdispense-status-reason.html",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonReference",
      "path" : "MedicationDispense.statusReason[x]",
      "sliceName" : "statusReasonReference",
      "short" : "Referenz auf DetectedIssue-Ressource. Keine Verwendung in der durchgeführten Abgabe.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DetectedIssue"]
      }]
    },
    {
      "id" : "MedicationDispense.category",
      "path" : "MedicationDispense.category",
      "short" : "Angabe, wo das abgegebene Medikament voraussichtlich eingenommen oder verabreicht wird (z.B. stationär oder ambulant). Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "short" : "Abgegebenes Medikament. Das Medikament wird immer in einer contained Medication Ressource dokumentiert, damit \nArzneimittel mit und ohne PZN einheitlich dokumentiert werden können.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"],
        "aggregation" : ["contained"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "short" : "Patient, für den die durchgeführte Abgabe ausgestellt wird (über Zentralen Patientenindex identifiziert und Teilnehmer von ELGA e-Medikation).",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.context",
      "path" : "MedicationDispense.context",
      "short" : "Referenz auf Encounter oder EpisodeOfCare. Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.supportingInformation",
      "path" : "MedicationDispense.supportingInformation",
      "short" : "Referenz (Any) auf zusätzliche Informationen, die die Abgabe des Medikaments unterstützen. Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.performer",
      "path" : "MedicationDispense.performer",
      "short" : "Durchführende Person",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.function",
      "path" : "MedicationDispense.performer.function",
      "short" : "Rolle der Person, die die Abgabe durchgeführt hat. Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "short" : "Refrenz auf Practitioner, PractitionerRole, Organization, \nder/die die durchgeführte Abgabe erstellt hat und für den Inhalt verantwortlich ist (identifiziert über den GDA-Index und berechtigt \nauf die ELGA e-Medikation des Patienten zuzugreifen).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "short" : "Ort der Abgabe (Referenz auf Location Ressource). Keine Verwendung in durchgeführter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "short" : "Referenz auf zugehörige geplante Abgabe (MedicationRequest), sofern diese existiert bzw. Planeintrag (MedicationRequest).",
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "short" : "Art der Abgabe (z.B. für Teilabgaben). Mögliche Ausprägungen: [FFC | FFP | RFP | RFC | EM]. Bedeutung: FFC: First Fill - Complete | FFP: First Fill - Part Fill | RFP: Refill - Part Fill | RFC: Refill - Complete | EM: Emergency Supply.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "short" : "Abgegebene Packungsanzahl.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.daysSupply",
      "path" : "MedicationDispense.daysSupply",
      "short" : "Tage, für die die abgegebene Menge ausreicht",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.whenPrepared",
      "path" : "MedicationDispense.whenPrepared",
      "short" : "Zeitpunkt, zu dem das Produkt verpackt und geprüft wurde.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.whenHandedOver",
      "path" : "MedicationDispense.whenHandedOver",
      "short" : "Der Zeitpunkt, zu dem das abgegebene Produkt dem Patienten oder seinem Vertreter zur Verfügung gestellt wurde.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.destination",
      "path" : "MedicationDispense.destination",
      "short" : "Ort an den das Medikament geschickt wurde (Referenz auf Location Ressource). Keine Verwendung in durchgeführter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.receiver",
      "path" : "MedicationDispense.receiver",
      "short" : "Person, die das Medikament abgeholt hat. Referenz auf Patient oder Practitioner. Keine Verwendung in durchgeführter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.note",
      "path" : "MedicationDispense.note",
      "short" : "Zusätzliche Informationen zur Abgabe, die nicht anders dokumentiert werden kann.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction",
      "path" : "MedicationDispense.dosageInstruction",
      "short" : "Gibt an, wie das Medikament vom Patienten einzunehmen ist. \nDer Apotheker überprüft die Medikamentenverordnung vor der Abgabe und passt die Dosierungsanweisung gegebenenfalls auf Grundlage des tatsächlich abgegebenen Produkts an.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution",
      "path" : "MedicationDispense.substitution",
      "short" : "Gibt an, ob im Rahmen der Abgabe eine Substitution vorgenommen wurde oder nicht.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.detectedIssue",
      "path" : "MedicationDispense.detectedIssue",
      "short" : "Referenenz auf DetectedIssue Ressource. Keine Verwendung in durchgeführter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.eventHistory",
      "path" : "MedicationDispense.eventHistory",
      "short" : "Bezeichnet eine Liste von Provenance-Ressourcen, die verschiedene relevante Versionen \ndieser Ressource dokumentieren.",
      "max" : "0"
    }]
  }
}

```
