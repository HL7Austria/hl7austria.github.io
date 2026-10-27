# At ELGA e-Medikation MedicationRequest Planeintrag - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: At ELGA e-Medikation MedicationRequest Planeintrag 

Die Ressource **`MedicationRequest`** mit der Kategorie "Planeintrag" bildet einen Planeintrag des Medikationsplans ab.

Ein Planeintrag ist eine autorisierte ärztliche Anordnung und stellt eine verbindliche Einnahmeanweisung für den Patienten dar.

Er enthält genau ein Arzneimittel mit dessen Dosierung, wobei das Arzneimittel entweder verpflichtend mit einer contained Medication-Ressource oder einer Conditional Reference über PZN und Displayname dokumentiert wird. Der Planeintrag kann in weiterer Folge als Grundlage für die Erstellung einer "Geplanten Abgabe" dienen.

Relevante Use Cases:

* [Technische Use Cases für Medikationsplan schreiben (UC_eMed_02)](Sub_UC_eMed_02.md)

Die Übersetzungen der `short-descriptions` werden noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Transaction-Response Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan-write-response.md), [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) and [AT ELGA e-Medikation Transaction Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md)
* Refer to this Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md), [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) and [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)
* Examples for this Profile: [MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391](MedicationRequest-55e4be12-0d10-454c-a85f-cfb5f849e391.md), [MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52](MedicationRequest-6bacfe23-d469-4945-bf3c-90c7e647aa52.md), [MedicationRequest/7128c60c-126d-42b2-b575-dc26a2324b8b](MedicationRequest-7128c60c-126d-42b2-b575-dc26a2324b8b.md), [MedicationRequest/AtEmedExampleDosageStandardAdministration1](MedicationRequest-AtEmedExampleDosageStandardAdministration1.md)... Show 2 more, [MedicationRequest/AtEmedExampleDosageStandardAdministration2](MedicationRequest-AtEmedExampleDosageStandardAdministration2.md) and [MedicationRequest/AtEmedExampleDosageStandardAdministration3](MedicationRequest-AtEmedExampleDosageStandardAdministration3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-medicationrequest-planeintrag.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-medicationrequest-planeintrag.csv), [Excel](../StructureDefinition-at-elga-emed-medicationrequest-planeintrag.xlsx), [Schematron](../StructureDefinition-at-elga-emed-medicationrequest-planeintrag.sch) 

### Notes:

#### Search Parameters

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

#### Regeln für den Inhalt der narrativen Teile

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-medicationrequest-planeintrag",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag",
  "version" : "0.1.0",
  "name" : "AtElgaEmedMedicationRequestPlaneintrag",
  "title" : "At ELGA e-Medikation MedicationRequest Planeintrag",
  "status" : "draft",
  "date" : "2026-10-27T20:05:18+00:00",
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
  "description" : "Profil für einen Planeintrag.",
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
      "id" : "MedicationRequest",
      "path" : "MedicationRequest",
      "constraint" : [{
        "key" : "at-emed-planeintrag-status-reason-beim-absetzen-oder-pausieren",
        "severity" : "error",
        "human" : "Bei Status 'stopped' oder 'on-hold' muss ein statusReason angegeben werden.",
        "expression" : "(status = 'stopped' or status = 'on-hold') implies statusReason.coding.code.exists()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
      },
      {
        "key" : "e-med-acute-medication-effectiveDosePeriod",
        "severity" : "error",
        "human" : "Eine Akutmedikation (courseOfTherapyType = #acute) muss ein Enddatum besitzen.",
        "expression" : "courseOfTherapyType.where(coding.code='acute' and coding.system = 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy').exists() implies extension.where(url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod').value.ofType(Period).end.exists()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
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
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:effectiveDosePeriod",
      "path" : "MedicationRequest.extension",
      "sliceName" : "effectiveDosePeriod",
      "short" : "Zeitraum, in dem das Arzneimittel eingenommen werden soll. Bei Dauermedikation kann optional ein Enddatum dokumentiert werden. Bei Aktumedikation ist verpflichtend ein Enddatum zu dokumentieren. Der Einnahmezeitraum muss mit den zeitlichen Einschränkungen der Dosage übereinstimmen.",
      "min" : 1,
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
      "min" : 1,
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
      "short" : "Status des Planeintrags. Mögliche Ausprägungen: [active | on-hold | stopped | entered-in-error]. Bedeutung: active: aktuell einzunehmende Medikation | on-hold: pausierte Medikation (aktuell nicht einzunehmen) | stopped: wird nicht weiter verordnet (unabhängig ob vorzeitig abgesetzt, abgeschlossen oder Behandlungszeitraum abgelaufen)   \n| entered-in-error: fehlerhafter Planeintrag storniert",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/PlaneintragStatusVS"
      }
    },
    {
      "id" : "MedicationRequest.statusReason",
      "path" : "MedicationRequest.statusReason",
      "short" : "Begründung für den Status des Planeintrags.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetPlaneintragStatusReasonVS"
      }
    },
    {
      "id" : "MedicationRequest.statusReason.coding",
      "path" : "MedicationRequest.statusReason.coding",
      "short" : "Codierte Begründung für den Status. Wenn status stopped oder on-hold, verpflichtend anzugeben. Existiert kein passender Code, muss \"other\" ausgewählt werden und ein Freitext in dokumentiert werden.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.statusReason.coding.system",
      "path" : "MedicationRequest.statusReason.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.statusReason.coding.version",
      "path" : "MedicationRequest.statusReason.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.statusReason.coding.code",
      "path" : "MedicationRequest.statusReason.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.statusReason.coding.display",
      "path" : "MedicationRequest.statusReason.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.statusReason.text",
      "path" : "MedicationRequest.statusReason.text",
      "short" : "Begründung falls der Code 'other' angegeben wurde (Freitext).",
      "mustSupport" : true
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
      "short" : "Kategorie zur Unterscheidung eines Planeintrags von einer Geplanten Abgabe (beide haben intent order).",
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
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category.coding.system",
      "path" : "MedicationRequest.category.coding.system",
      "min" : 1,
      "patternUri" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category.coding.version",
      "path" : "MedicationRequest.category.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category.coding.code",
      "path" : "MedicationRequest.category.coding.code",
      "min" : 1,
      "patternCode" : "Planeintrag",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category.coding.display",
      "path" : "MedicationRequest.category.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category.text",
      "path" : "MedicationRequest.category.text",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "short" : "Fachliche Begründung: Arzneimittel, die (z.B. aufgrund einer Allergie) nicht eingenommen bzw. verordnet werden dürfen, werden nicht im Plan dokumentiert. Der Plan zeigt das Medizinische Soll an.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reported[x]",
      "path" : "MedicationRequest.reported[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.reported[x]:reportedBoolean",
      "path" : "MedicationRequest.reported[x]",
      "sliceName" : "reportedBoolean",
      "short" : "Kennzeichnet, ob die Medikationsinformation berichtet wurde. Bedeutung: false: Verordnung durch den Planeintrag erstellenden GDA | true: Fremdmedikation oder Eigenmedikation des Patienten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Das Arzneimittel wird in einer contained Medication Ressource oder als Conditional Reference dokumentiert.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-wirkstoff"],
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
      "short" : "ELGA-Teilnehmer, für den der Medikationsplan dokumentiert wird.",
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
      "short" : "Datum der Erstellung/Änderung des Planeintrags.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "GDA, welcher den Planeintrag zuletzt bearbeitet hat und für den Inhalt verantwortlich ist.",
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
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "Fachliche Begründung: Eine Rezept-Klammer wird erst bei der Erstellung Geplanter Abgaben benötigt und nicht im Planeintrag dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType",
      "path" : "MedicationRequest.courseOfTherapyType",
      "short" : "Art der Medikation. Mögliche Ausprägungen: [continuous | acute]",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetCourseOfTherapyType"
      }
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType.coding",
      "path" : "MedicationRequest.courseOfTherapyType.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType.coding.system",
      "path" : "MedicationRequest.courseOfTherapyType.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType.coding.version",
      "path" : "MedicationRequest.courseOfTherapyType.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType.coding.code",
      "path" : "MedicationRequest.courseOfTherapyType.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType.coding.display",
      "path" : "MedicationRequest.courseOfTherapyType.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType.text",
      "path" : "MedicationRequest.courseOfTherapyType.text",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "short" : "Zusätzliche Informationen zum Planeintrag, die nicht die Dosierung betreffen.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.note.text",
      "path" : "MedicationRequest.note.text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "short" : "Fachliche Begründung: Abgabedetails werden in der Geplanten Abgabe und nicht im Planeintrag dokumentiert.",
      "max" : "0"
    }]
  }
}

```
