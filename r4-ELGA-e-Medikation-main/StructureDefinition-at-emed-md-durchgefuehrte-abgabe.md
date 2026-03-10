# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Durchgeführte Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Durchgeführte Abgabe**

## Resource Profile: ELGA e-Med Durchgeführte Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-md-durchgefuehrte-abgabe | *Version*:0.1.1 | |
| Draft as of 2026-03-10 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMDDurchgefuehrteAbgabe |

 
Dokumentiert eine durchgeführte Abgabe eines Arzneimittels ("MedicationDispense"-Ressource). Sofern eine zugehörige geplante Abgabe vorliegt, können Abweichungen hinsichtlich der Dosierung oder einer möglichen Substitution des Medikaments in der durchgeführten Abgabe dokumentiert werden. 

**Usages:**

* Examples for this Profile: [MedicationDispense/At-Emed-Example-Durchgefuehrte-Abgabe-01](MedicationDispense-At-Emed-Example-Durchgefuehrte-Abgabe-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-md-durchgefuehrte-abgabe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.csv), [Excel](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.xlsx), [Schematron](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-md-durchgefuehrte-abgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-md-durchgefuehrte-abgabe",
  "version" : "0.1.1",
  "name" : "AtEmedMDDurchgefuehrteAbgabe",
  "title" : "ELGA e-Med Durchgeführte Abgabe",
  "status" : "draft",
  "date" : "2026-03-10T08:28:41+00:00",
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
  "description" : "Dokumentiert eine durchgeführte Abgabe eines Arzneimittels (\"MedicationDispense\"-Ressource). \nSofern eine zugehörige geplante Abgabe vorliegt, können Abweichungen hinsichtlich der Dosierung oder einer möglichen\nSubstitution des Medikaments in der durchgeführten Abgabe dokumentiert werden.",
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
      "short" : "Durchgeführte Abgabe eines Arzneimittels mit oder ohne Bezug zum Medikationsplan. Verwendet R5 Backport Extensions."
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "short" : "Externer Identifier.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.partOf",
      "path" : "MedicationDispense.partOf",
      "short" : "Auslösendes Ereignis. Verwendung in der durchgeführten Abgabe prüfen.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.status",
      "path" : "MedicationDispense.status",
      "short" : "Status des durchgeführten Abgabe: preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknown; http://hl7.org/fhir/ValueSet/medicationdispense-status|4.0.1\n-> VS einschränken",
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
      "short" : "Warum keine Abgabe erfolgte (zB. Allergie, Produkt nicht verfügbar). Code oder Referenz (DetectedIssue)"
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept",
      "path" : "MedicationDispense.statusReason[x]",
      "sliceName" : "statusReasonCodeableConcept",
      "short" : "Bsp: https://hl7.org/fhir/R4/valueset-medicationdispense-status-reason.html",
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
      "short" : "Verwendung in der durchgeführten Abgabe prüfen.",
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
      "short" : "Angabe, wo das abgegebene Medikament voraussichtlich eingenommen oder verabreicht wird (z.B. stationär oder ambulant), https://hl7.org/fhir/R4/valueset-medicationdispense-category.html. Verwendung zu prüfen.",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Abgegebenes Medikament. Code oder Referenz",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "short" : "Angabe mittels Pharmazentralnummer (PZN) aus der ASP-Liste.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/CodeSystem/asp-liste"
      }
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationDispense.medication[x].coding",
      "min" : 1
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "short" : "Österreichischer Patient für den die durchgeführte Abgabe ausgestellt wird.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.context",
      "path" : "MedicationDispense.context",
      "short" : "Referenz auf Encounter oder EpisodeOfCare. Verwendung in der durchgeführten Abgabe prüfen.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.supportingInformation",
      "path" : "MedicationDispense.supportingInformation",
      "short" : "Referenz auf zusätzliche Informationen, die die Abgabe des Medikaments unterstützen. \nVerwendung in der durchgeführten Abgabe prüfen."
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
      "short" : "Rolle: https://hl7.org/fhir/R4/valueset-medicationdispense-performer-function.html; Verwendung in der durchgeführten Abgabe prüfen.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "short" : "RefrenzReference auf Practitioner, PractitionerRole, Organization; entfernen: Patient, Device, RelatedPerson",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "short" : "Ort der Abgabe (Referenz auf Location Ressource). Verwendung prüfen.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "short" : "Referenz auf zugehörige geplante Abgabe.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "short" : "Mögliche Werte z.B. FFC (First-Fill Complete für vollständig erfüllte Bestellungen), FFP (First-Fill Part Fill für teilweise erfüllte Bestellungen), \nBsp: http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "short" : "Abgegebene Menge und Einheit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.daysSupply",
      "path" : "MedicationDispense.daysSupply",
      "short" : "Medikamentenmenge, ausgedrückt als zeitliche Menge",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.whenPrepared",
      "path" : "MedicationDispense.whenPrepared",
      "short" : "Verpackungs- und Prüfdatum.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.whenHandedOver",
      "path" : "MedicationDispense.whenHandedOver",
      "short" : "Der Zeitpunkt, zu dem das abgegebene Produkt dem Patienten oder seinem Vertreter zur Verfügung gestellt wurde.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.destination",
      "path" : "MedicationDispense.destination",
      "short" : "Ort an den das Medikament geschickt wurde (Referenz auf Location Ressource). Verwendung prüfen.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.receiver",
      "path" : "MedicationDispense.receiver",
      "short" : "Person, die das Medikament abgeholt hat. Verwendung prüfen.",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner"]
      }]
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
      "short" : "Gibt an, wie das Medikament vom Patienten einzunehmen ist. \nWenn sich die Dosis oder Dosierungsrate über den gesamten Verabreichungszeitraum ändern soll \n(z.B. bei verschreibungspflichtigen Medikamenten mit schrittweiser Dosierungsreduktion), \nmüssen mehrere Dosierungsanweisungen bereitgestellt werden, um die verschiedenen Dosen/Dosierungsraten zu vermitteln. \nDer Apotheker überprüft die Medikamentenbestellung vor der Abgabe und aktualisiert die Dosierungsanweisung auf der Grundlage \ndes tatsächlich abgegebenen Produkts.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution",
      "path" : "MedicationDispense.substitution",
      "short" : "Gibt an, ob im Rahmen der Abgabe eine Substitution vorgenommen wurde oder nicht. Wenn nichts angegeben ist, wurde keine Substitution vorgenommen.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.wasSubstituted",
      "path" : "MedicationDispense.substitution.wasSubstituted",
      "short" : "TRUE, wenn der Apotheker ein anderes Medikament oder Produkt als das verschriebene abgegeben hat."
    },
    {
      "id" : "MedicationDispense.substitution.type",
      "path" : "MedicationDispense.substitution.type",
      "short" : "Typ der Substitution: z.B. E equivalent, http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.reason",
      "path" : "MedicationDispense.substitution.reason",
      "short" : "Grund für die Substitution: z.B. OS out of stock, https://hl7.org/fhir/R4/v3/SubstanceAdminSubstitutionReason/vs.html",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.responsibleParty",
      "path" : "MedicationDispense.substitution.responsibleParty",
      "short" : "Für die Subistution Verantwortlicher.",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.detectedIssue",
      "path" : "MedicationDispense.detectedIssue",
      "short" : "Referenenz auf DetectedIssue Ressource. Verwendung prüfen.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.eventHistory",
      "path" : "MedicationDispense.eventHistory",
      "short" : "Bezeichnet eine Liste von Provenance-Ressourcen, die verschiedene relevante Versionen \ndieser Ressource dokumentieren. Verwendung prüfen.",
      "max" : "0"
    }]
  }
}

```
