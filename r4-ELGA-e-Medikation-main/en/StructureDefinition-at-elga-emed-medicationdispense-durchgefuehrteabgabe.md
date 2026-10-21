# AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe 

Die Ressource **`MedicationDispense`** bildet eine **Durchgeführte Abgabe** ab.

Sie enthält das abgegebe Arzneimittel mit dessen Dosierung und dient somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Eine **Durchgeführte Abgabe** kann sich auf einen Planeintrag und/oder eine **Geplante Abgabe** beziehen und trägt dann denselben **e-Med GroupIdentifier**. Sie kann hinsichtlich des tatsächlich abgegebenen Arzneimittels und dessen Dosierung von Planeintrag und **Geplanter Abgabe** abweichen.

Der aktuelle Status einer **Durchgeführten Abgabe** wird mittels **status**- und **type**-Element dokumentiert (siehe [Status des MedicationDispense in der Durchgeführten Abgabe](workflowmanagement.md#status-des-medicationdispense-in-der-durchgeführten-abgabe)).

Relevante Use Cases:

* [Sub_UC_eMed_05_01 - Durchgeführte Abgabe erstellen](Sub_UC_eMed_05.md#sub_uc_emed_05_01---durchgeführte-abgabe-erstellen)

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Transaction Bundle durchgeführte Abgaben](StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.md)
* Examples for this Profile: [MedicationDispense/At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-01](MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-01.md), [MedicationDispense/At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02](MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02.md) and [MedicationDispense/At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02](MedicationDispense-At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.csv), [Excel](../StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.xlsx), [Schematron](../StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.sch) 

### Notes:

#### Search Parameters

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

#### Regeln für den Inhalt der narrativen Teile

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medicationdispense-durchgefuehrteabgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe",
  "version" : "0.1.0",
  "name" : "AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe",
  "title" : "AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe",
  "status" : "draft",
  "date" : "2026-10-21T09:29:04+00:00",
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
  "description" : "Profil einer \"Durchgeführten Abgabe\" eines Arzneimittels aus dem Medikationsplan.",
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
      "id" : "MedicationDispense.id",
      "path" : "MedicationDispense.id",
      "short" : "Technische id der Ressource",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.meta",
      "path" : "MedicationDispense.meta",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.meta.versionId",
      "path" : "MedicationDispense.meta.versionId",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.meta.lastUpdated",
      "path" : "MedicationDispense.meta.lastUpdated",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.meta.profile",
      "path" : "MedicationDispense.meta.profile",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.implicitRules",
      "path" : "MedicationDispense.implicitRules",
      "short" : "Fachliche Begründung: Die Ressource wird nach den Regeln dieses Implementierungsleitfadens interpretiert. Zusätzliche implizite Verarbeitungsregeln werden nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.text",
      "path" : "MedicationDispense.text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.text.status",
      "path" : "MedicationDispense.text.status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.text.div",
      "path" : "MedicationDispense.text.div",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.contained",
      "path" : "MedicationDispense.contained",
      "short" : "TODO",
      "type" : [{
        "code" : "Medication",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"]
      }],
      "mustSupport" : true
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
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction"]
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
      "id" : "MedicationDispense.extension:statusChanged",
      "path" : "MedicationDispense.extension",
      "sliceName" : "statusChanged",
      "short" : "Datum der Statusänderung. Dies ist nur bei einem Status von: cancelled | entered-in-error | stopped relevant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.statusChanged"]
      }]
    },
    {
      "id" : "MedicationDispense.extension:groupIdentifier",
      "path" : "MedicationDispense.extension",
      "sliceName" : "groupIdentifier",
      "short" : "Als groupIdentifier dient der e-Med GroupIdentifier der zugehörigen Geplanten Abgabe (wird auch im e-Rezept mitgeführt).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-group-identifier"]
      }]
    },
    {
      "id" : "MedicationDispense.modifierExtension",
      "path" : "MedicationDispense.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.partOf",
      "path" : "MedicationDispense.partOf",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.status",
      "path" : "MedicationDispense.status",
      "short" : "Status der Durchgeführten Abgabe. Mögliche Ausprägungen: [completed | cancelled | entered-in-error ] Bedeutung: completed: Die Durchgeführte Abgabe ist abgeschlossen. | cancelled: Leerabgabe | entered-in-error: Die Durchgeführte Abgabe wird aufgrund falscher Eingabe storniert.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]",
      "path" : "MedicationDispense.statusReason[x]",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.category",
      "path" : "MedicationDispense.category",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "short" : "Abgegebenes Medikament. Das Medikament wird immer in einer contained Medication Ressource dokumentiert, damit \nArzneimittel mit und ohne PZN einheitlich dokumentiert werden können.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"],
        "aggregation" : ["contained"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "short" : "Patient, für den die Durchgeführte Abgabe ausgestellt wird (über Zentralen Patientenindex identifiziert und Teilnehmer von ELGA e-Medikation).",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.context",
      "path" : "MedicationDispense.context",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.supportingInformation",
      "path" : "MedicationDispense.supportingInformation",
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
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "short" : "Refrenz auf Practitioner, PractitionerRole, Organization, \nder/die die Durchgeführte Abgabe erstellt hat und für den Inhalt verantwortlich ist (identifiziert über den GDA-Index und berechtigt \nauf die ELGA e-Medikation des Patienten zuzugreifen).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "resolve().category.coding.system"
        },
        {
          "type" : "value",
          "path" : "resolve().category.coding.code"
        }],
        "ordered" : false,
        "rules" : "closed"
      },
      "short" : "Referenz auf zugehörige Geplante Abgabe (MedicationRequest), sofern diese existiert bzw. \nPlaneintrag (MedicationRequest). Es muss nicht zwingend eine Geplante Abgabe referenziert werden, da es auch durchgeführte \nAbgaben ohne Geplante Abgabe geben kann (z.B. Notfall oder OTC-Medikation).",
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.authorizingPrescription:geplanteAbgabe",
      "path" : "MedicationDispense.authorizingPrescription",
      "sliceName" : "geplanteAbgabe",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.authorizingPrescription:planeintrag",
      "path" : "MedicationDispense.authorizingPrescription",
      "sliceName" : "planeintrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "short" : "Art der Abgabe (z.B. für Teilabgaben). Mögliche Ausprägungen: [FFC | FFP | RFP | RFC | EM]. Bedeutung: FFC: First Fill - Complete | FFP: First Fill - Part Fill | RFP: Refill - Part Fill | RFC: Refill - Complete | EM: Emergency Supply.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/at-elga-emed-medicationdispense-type-vs"
      }
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
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.whenPrepared",
      "path" : "MedicationDispense.whenPrepared",
      "max" : "0"
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
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.receiver",
      "path" : "MedicationDispense.receiver",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.note",
      "path" : "MedicationDispense.note",
      "short" : "Zusätzliche Informationen zur Abgabe, die nicht anders dokumentiert werden kann.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction",
      "path" : "MedicationDispense.dosageInstruction",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "extension.value.ofType(CodeableConcept).coding.code"
        }],
        "ordered" : false,
        "rules" : "closed"
      },
      "short" : "Gibt an, wie das abgegebene Arzneimittel vom Patienten einzunehmen ist. \nDer Apotheker überprüft die Medikamentenverordnung vor der Abgabe und passt die Dosierungsanweisung gegebenenfalls auf Grundlage des tatsächlich abgegebenen Produkts an.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction:freitextDosage",
      "path" : "MedicationDispense.dosageInstruction",
      "sliceName" : "freitextDosage",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-freetext-administration"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction:standardDosage",
      "path" : "MedicationDispense.dosageInstruction",
      "sliceName" : "standardDosage",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration"]
      }],
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
