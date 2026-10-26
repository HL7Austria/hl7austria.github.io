# At ELGA e-Medikation MedicationRequest Geplante Abgabe - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: At ELGA e-Medikation MedicationRequest Geplante Abgabe 

Die Ressource **`MedicationRequest`** mit der Kategorie "Geplante Abgabe" bildet eine **Geplante Abgabe** ab.

Sie repräsentiert den Auftrag zur Abgabe eines Arzneimittels sowie die entsprechende Autorisierung durch den Verfasser.

Sie enthält genau das im zugehörigen Planeintrag verordnete Arzneimittel mit dessen Dosierung und dient somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Werden mehrere Arzneimittel gemeinsam verordnet (und sind demselben e-Rezept zugeordnet), wird für jedes Arzneimittel eine **Geplante Abgabe** mit demselben **e-Med GroupIdentifier** erstellt.

Der aktuelle Status einer Geplanten Abgabe wird im **status**-Element dokumentiert (siehe [Status der Geplanten Abgabe (MedicationRequest)](workflowmanagement.md#status-der-geplanten-abgabe-medicationrequest)).

Relevante Use Cases:

* [Sub_UC_eMed_04_01 - Geplante Abgabe erstellen (Prescription-Write)](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write)

Die Übersetzungen der `short-descriptions` werden noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Transaction Bundle Geplante Abgaben](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.md) and [AT ELGA e-Medikation Transaction-Response Bundle Geplante Abgaben](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-write-response.md)
* Refer to this Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md)
* Examples for this Profile: [MedicationRequest/At-Emed-Journey-01-03-Mr-Geplante-Abgabe-01](MedicationRequest-At-Emed-Journey-01-03-Mr-Geplante-Abgabe-01.md), [MedicationRequest/At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02](MedicationRequest-At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02.md) and [MedicationRequest/At-Emed-Journey-07-03-Mr-Geplante-Abgabe-03](MedicationRequest-At-Emed-Journey-07-03-Mr-Geplante-Abgabe-03.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.csv), [Excel](../StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.xlsx), [Schematron](../StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.sch) 

### Notes:

#### Search Parameters

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

#### Regeln für den Inhalt der narrativen Teile

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medicationrequest-geplanteabgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe",
  "version" : "0.1.0",
  "name" : "AtElgaEmedMedicationRequestGeplanteAbgabe",
  "title" : "At ELGA e-Medikation MedicationRequest Geplante Abgabe",
  "status" : "draft",
  "date" : "2026-10-26T17:20:41+00:00",
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
  "description" : "Profil einer Geplanten Abgabe eines Arzneimittels aus dem Medikationsplan.",
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
  "baseDefinition" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-base",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest.contained",
      "path" : "MedicationRequest.contained",
      "type" : [{
        "code" : "Medication",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"]
      }]
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
      "short" : "Geplanter Einnahmezeitraum. Beginn: aktuelles Datum oder in der Zukunft, Ende: Datum in der Zukunft oder unbefristet. Der geplante Einnahmezeitraum muss mit den zeitlichen Einschränkungen der Dosage übereinstimmen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:effectiveDosePeriod.extension",
      "path" : "MedicationRequest.extension.extension",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.extension:effectiveDosePeriod.url",
      "path" : "MedicationRequest.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:effectiveDosePeriod.value[x]",
      "path" : "MedicationRequest.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:effectiveDosePeriod.value[x].start",
      "path" : "MedicationRequest.extension.value[x].start",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:effectiveDosePeriod.value[x].end",
      "path" : "MedicationRequest.extension.value[x].end",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:renderedDosageInstruction",
      "path" : "MedicationRequest.extension",
      "sliceName" : "renderedDosageInstruction",
      "short" : "Vollständige textuelle Zusammenfassung der Dosierungsanweisungen - wird von der Fachanwendung anhand der definierten Regeln befüllt..",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:renderedDosageInstruction.extension",
      "path" : "MedicationRequest.extension.extension",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.extension:renderedDosageInstruction.url",
      "path" : "MedicationRequest.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:renderedDosageInstruction.value[x]",
      "path" : "MedicationRequest.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Status der Geplanten Abgabe. Mögliche Ausprägung: [active | completed | entered-in-error | stopped | cancelled]. Bedeutung: active: offene, Geplante Abgabe | completed: Geplante Abgabe abgeschlossen (automatisch durch Fachanwendung gesetzt)| entered-in-error: nach fehlerhafter Eingabe (Storno nur möglich, wenn noch keine Abgabe durchgeführt wurde) | stopped: Geplante Abgabe zeitlich abgelaufen (automatisch durch Fachanwendung gesetzt) | cancelled: Geplante Abgabe cancelled, wenn alle Durchgeführten Abgaben (jede Einlösung) den Status cancelled haben (automatisch durch Fachanwendung gesetzt)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/GeplanteAbgabeStatusVS"
      }
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Fixer Wert: \"order\".",
      "patternCode" : "order",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
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
      "short" : "Kategorie zur Unterscheidung einer Geplanten Abgabe von einem Planeintrag (beide haben intent order).",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/MedicationRequestCategoryVS"
      }
    },
    {
      "id" : "MedicationRequest.category:mrcategory.coding",
      "path" : "MedicationRequest.category.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:mrcategory.coding.system",
      "path" : "MedicationRequest.category.coding.system",
      "min" : 1,
      "patternUri" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:mrcategory.coding.version",
      "path" : "MedicationRequest.category.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:mrcategory.coding.code",
      "path" : "MedicationRequest.category.coding.code",
      "fixedCode" : "GeplAbgabe",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:mrcategory.coding.display",
      "path" : "MedicationRequest.category.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:mrcategory.text",
      "path" : "MedicationRequest.category.text",
      "max" : "0"
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
      "id" : "MedicationRequest.category:recipetype.coding",
      "path" : "MedicationRequest.category.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:recipetype.coding.system",
      "path" : "MedicationRequest.category.coding.system",
      "min" : 1,
      "patternUri" : "https://termgit.elga.gv.at/CodeSystem/medikationrezeptart",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:recipetype.coding.version",
      "path" : "MedicationRequest.category.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:recipetype.coding.code",
      "path" : "MedicationRequest.category.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:recipetype.coding.display",
      "path" : "MedicationRequest.category.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category:recipetype.text",
      "path" : "MedicationRequest.category.text",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "short" : "Fachliche Begründung: Die Geplante Abgabe bildet einen positiven Abgabeauftrag ab; ein ausdrückliches Verbot einer Abgabe wird nicht als eigene Geplante Abgabe dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reported[x]",
      "path" : "MedicationRequest.reported[x]",
      "short" : "Fachliche Begründung: Die Geplante Abgabe wird als Auftrag dokumentiert; eine Kennzeichnung als lediglich berichteter Auftrag würde die Bedeutung der Ressource verändern und wird daher nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Das Arzneimittel wird in einer contained Medication Ressource oder als Conditional Reference dokumentiert. Muss bei der Erstellung mit der medication im zugehörigen Planeintrag übereinstimmen.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"],
        "aggregation" : ["contained"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x].reference",
      "path" : "MedicationRequest.medication[x].reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "short" : "ELGA-Teilnehmer, für den die Geplante Abgabe erstellt wird.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject.reference",
      "path" : "MedicationRequest.subject.reference",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject.identifier",
      "path" : "MedicationRequest.subject.identifier",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject.identifier.use",
      "path" : "MedicationRequest.subject.identifier.use",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.subject.identifier.system",
      "path" : "MedicationRequest.subject.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject.identifier.value",
      "path" : "MedicationRequest.subject.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "short" : "Datum der Erstellung der Geplanten Abgabe.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "GDA, welcher die Geplante Abgabe erstellt hat und für den Inhalt verantwortlich ist.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester.reference",
      "path" : "MedicationRequest.requester.reference",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester.identifier",
      "path" : "MedicationRequest.requester.identifier",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester.identifier.use",
      "path" : "MedicationRequest.requester.identifier.use",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.requester.identifier.system",
      "path" : "MedicationRequest.requester.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester.identifier.value",
      "path" : "MedicationRequest.requester.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "Referenz auf die aktuelle Version des zugrundeliegenden Planeintrags, auf dem diese Geplante Abgabe basiert.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.basedOn.reference",
      "path" : "MedicationRequest.basedOn.reference",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "Der \"e-Med GroupIdentifier\" bildet die Rezept-Klammer. Geplante Abgaben, die demselben e-Rezept zugeordnet sind, führen denselben e-Med GroupIdentifier.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.groupIdentifier.use",
      "path" : "MedicationRequest.groupIdentifier.use",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.groupIdentifier.system",
      "path" : "MedicationRequest.groupIdentifier.system",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.groupIdentifier.value",
      "path" : "MedicationRequest.groupIdentifier.value",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType",
      "path" : "MedicationRequest.courseOfTherapyType",
      "short" : "Art der Medikation. Keine Verwendung in der Geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "short" : "Zusätzliche Informationen zur Geplanten Abgabe, die nicht die Dosierung betreffen.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.note.text",
      "path" : "MedicationRequest.note.text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "Angabe der Dosierinformationen strukturiert oder als Freitext. Muss bei der Erstellung mit der dosageInstruction im zugehörigen Planeintrag übereinstimmen."
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "short" : "Informationen zur vorgesehenen Abgabe des Arzneimittels.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.modifierExtension",
      "path" : "MedicationRequest.dispenseRequest.modifierExtension",
      "short" : "Fachliche Begründung: Für die Abgabedetails sind keine zusätzlichen Erweiterungen vorgesehen, die deren Bedeutung verändern.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod",
      "short" : "Gültigkeitszeitraum der Geplante Abgabe (u.a. abhängig von der Rezeptart).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod.start",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod.start",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod.end",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod.end",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "short" : "Die Anzahl der möglichen weiteren Einlösungen (u.a. abhängig von der Rezeptart).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity",
      "path" : "MedicationRequest.dispenseRequest.quantity",
      "short" : "Bereitzustellende Menge bei jeder Einlösung.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity.value",
      "path" : "MedicationRequest.dispenseRequest.quantity.value",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity.unit",
      "path" : "MedicationRequest.dispenseRequest.quantity.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity.code",
      "path" : "MedicationRequest.dispenseRequest.quantity.code",
      "mustSupport" : true
    }]
  }
}

```
