# AT ELGA e-Medikation List Medikationsplan - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation List Medikationsplan 

Die **`List`**-Ressource bildet den Medikationsplan ab und enthält keinen oder mehrere Einträge (`List.entry`):

* Jeder Eintrag referenziert über `List.entry.item` genau einen Medikationsplaneintrag (`MedicationRequest`).
* Die Reihenfolge der `List.entry`-Elemente bestimmt die Reihenfolge der Planeinträge im Medikationsplan.
* Das Element `List.entry.flag` kennzeichnet den Änderungsstatus des jeweiligen Medikationsplaneintrags.
* Ein leerer Medikationsplan muss mit einem `emtptyReason` gekennzeichnet sein.

Relevante Use Cases:

* [Technische Use Cases für Medikationsplan schreiben (UC_eMed_02)](Sub_UC_eMed_02.md)

Die Übersetzungen der `short-descriptions` werden noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Transaction-Response Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan-write-response.md), [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) and [AT ELGA e-Medikation Transaction Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-list-medikationsplan.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-list-medikationsplan.csv), [Excel](../StructureDefinition-at-elga-emed-list-medikationsplan.xlsx), [Schematron](../StructureDefinition-at-elga-emed-list-medikationsplan.sch) 

### Notes:

#### Search Parameters

* **Name**: _id
  * **Type**: [token](https://hl7.org/fhir/R4/search.html#token)
  * **Description**: Technische id der Ressource
  * **Expression**: `List.id`
* **Name**: _lastUpdated
  * **Type**: [date](https://hl7.org/fhir/R4/search.html#date)
  * **Description**: Timestamp der letzten Änderung der Liste
  * **Expression**: `List.meta.lastUpdated`
* **Name**: _profile
  * **Type**: [reference](https://hl7.org/fhir/R4/search.html#reference)
  * **Description**: Von der Liste deklarierte Profile zu denen sie angibt konform zu sein
  * **Expression**: `List.meta.profile`
* **Name**: code
  * **Type**: [token](https://hl7.org/fhir/R4/search.html#token)
  * **Description**: Art der Liste (in diesem Fall: Medikationsplan)
  * **Expression**: `List.code`
* **Name**: date
  * **Type**: [date](https://hl7.org/fhir/R4/search.html#date)
  * **Description**: Erstellungszeitpunkt bzw. Zeitraum der Erfassung von Medikationsplanversionen
  * **Expression**: `List.date`
* **Name**: empty-reason
  * **Type**: [token](https://hl7.org/fhir/R4/search.html#token)
  * **Description**: Medikationsplan mit einem bestimmten Grund warum der Plan leer ist
  * **Expression**: `List.emptyReason`
* **Name**: item
  * **Type**: [reference](https://hl7.org/fhir/R4/search.html#reference)
  * **Description**: Medikationsplan, der einen bestimmten Planeintrag beinhaltet
  * **Expression**: `List.entry.item`
* **Name**: source
  * **Type**: [reference](https://hl7.org/fhir/R4/search.html#reference)
  * **Description**: Autor der letzten Änderung des Medikationsplans
  * **Expression**: `List.source`
* **Name**: medicationrequest-author
  * **Type**: [reference](https://hl7.org/fhir/R4/search.html#reference)
  * **Description**: Autor eines MedicationRequest, der Teil der Liste ist
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).requester`
* **Name**: medicationrequest-status
  * **Type**: [token](https://hl7.org/fhir/R4/search.html#token)
  * **Description**: Status des MedicationRequest, der Teil der Liste ist
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).status`
* **Name**: medicationrequest-status-reason
  * **Type**: [token](https://hl7.org/fhir/R4/search.html#token)
  * **Description**: Absetzgrund (StatusReason)
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).statusReason.ofType(CodeableConcept)`
* **Name**: medicationrequest-effectivePeriod
  * **Type**: [date](https://hl7.org/fhir/R4/search.html#date)
  * **Description**: Einnahmezeitraum
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod').value.ofType(Period)`
* **Name**: medicationrequest-authoredOn
  * **Type**: [date](https://hl7.org/fhir/R4/search.html#date)
  * **Description**: Erstellungs-/Änderungszeitpunkt
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).authoredOn`
* **Name**: medicationrequest-courseOfTherapyType
  * **Type**: [token](https://hl7.org/fhir/R4/search.html#token)
  * **Description**: Art der Medikation (Akutmedikation oder Dauermedikation): acute|continuous
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).courseOfTherapyType.ofType(CodeableConcept)`
* **Name**: [medicationrequest-medication-code](SearchParameter-at-elga-emed-searchparameter-list-mr-medication-code.md)
  * **Type**: [token](https://hl7.org/fhir/R4/search.html#token)
  * **Description**: Code (PZN) der enthaltenen Medication
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).medication.resolve().ofType(Medication).code.ofType(CodeableConcept)`
* **Name**: medicationrequest-medication-name
  * **Type**: [string](https://hl7.org/fhir/R4/search.html#string)
  * **Description**: Arzneimittelname der enthaltenen Medication
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).medication.resolve().ofType(Medication).code.coding.display`
* **Name**: medicationrequest-medication-ingredient
  * **Type**: [token](https://hl7.org/fhir/R4/search.html#token)
  * **Description**: Wirkstoff der enthaltenen Medication
  * **Expression**: `List.entry.item.resolve().ofType(MedicationRequest).medication.resolve().ofType(Medication).ingredient.item.ofType(CodeableConcept)`

#### Regeln für den Inhalt der narrativen Teile

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-list-medikationsplan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan",
  "version" : "0.1.0",
  "name" : "AtElgaEmedListMedikationsplan",
  "title" : "AT ELGA e-Medikation List Medikationsplan",
  "status" : "draft",
  "date" : "2026-10-29T08:12:50+00:00",
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
  "description" : "Profil für einen Medikationsplan.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List",
      "constraint" : [{
        "key" : "at-emed-list-same-patient",
        "severity" : "error",
        "human" : "Alle in der Liste referenzierten Patienten müssen gleich sein",
        "expression" : "entry.item.resolve().ofType(MedicationRequest).all(subject.identifier.system = %context.subject.identifier.system and subject.identifier.value = %context.subject.identifier.value)",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"
      }]
    },
    {
      "id" : "List.id",
      "path" : "List.id",
      "short" : "Technische id der Ressource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.meta",
      "path" : "List.meta",
      "mustSupport" : true
    },
    {
      "id" : "List.meta.versionId",
      "path" : "List.meta.versionId",
      "mustSupport" : true
    },
    {
      "id" : "List.meta.lastUpdated",
      "path" : "List.meta.lastUpdated",
      "mustSupport" : true
    },
    {
      "id" : "List.meta.profile",
      "path" : "List.meta.profile",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "List.implicitRules",
      "path" : "List.implicitRules",
      "short" : "Fachliche Begründung: Die Ressource wird nach den Regeln dieses Implementierungsleitfadens interpretiert. Zusätzliche implizite Verarbeitungsregeln werden nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "List.text",
      "path" : "List.text",
      "mustSupport" : true
    },
    {
      "id" : "List.text.status",
      "path" : "List.text.status",
      "mustSupport" : true
    },
    {
      "id" : "List.text.div",
      "path" : "List.text.div",
      "mustSupport" : true
    },
    {
      "id" : "List.extension",
      "path" : "List.extension",
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
      "id" : "List.extension:PatientModified",
      "path" : "List.extension",
      "sliceName" : "PatientModified",
      "short" : "Boolean der angibt, ob diese Version des Plans durch Aktionen des Patienten verändert wurde (z.B. Einträge entfernt).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-patient-modified"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.modifierExtension",
      "path" : "List.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "short" : "Status des Medikationsplans. Fixer Wert: current.",
      "patternCode" : "current",
      "mustSupport" : true
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "short" : "Der Medikationsplan ist ein laufend gepflegtes Dokument. Fixer Wert: working.",
      "fixedCode" : "working",
      "mustSupport" : true
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "short" : "Code, der den Medikationsplan identifiziert.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding",
      "path" : "List.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding.system",
      "path" : "List.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding.version",
      "path" : "List.code.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding.code",
      "path" : "List.code.coding.code",
      "min" : 1,
      "fixedCode" : "736378000",
      "mustSupport" : true
    },
    {
      "id" : "List.code.coding.display",
      "path" : "List.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "List.code.text",
      "path" : "List.code.text",
      "max" : "0"
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "short" : "ELGA-Teilnehmer, für den der Medikationsplan dokumentiert wird.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.subject.reference",
      "path" : "List.subject.reference",
      "mustSupport" : true
    },
    {
      "id" : "List.subject.type",
      "path" : "List.subject.type",
      "mustSupport" : true
    },
    {
      "id" : "List.subject.identifier",
      "path" : "List.subject.identifier",
      "mustSupport" : true
    },
    {
      "id" : "List.subject.identifier.use",
      "path" : "List.subject.identifier.use",
      "max" : "0"
    },
    {
      "id" : "List.subject.identifier.system",
      "path" : "List.subject.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "List.subject.identifier.value",
      "path" : "List.subject.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "List.encounter",
      "path" : "List.encounter",
      "short" : "Fachliche Begründung: Es wird derzeit kein Behandlungskontext dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "List.date",
      "path" : "List.date",
      "short" : "Letzte Aktualisierung des Medikationsplans.",
      "mustSupport" : true
    },
    {
      "id" : "List.source",
      "path" : "List.source",
      "short" : "Ersteller des Medikationsplans und für den Inhalt verantwortlich. Device nur für initiale Erstellung durch die Fachanwendung.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-device-fachanwendung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.source.reference",
      "path" : "List.source.reference",
      "mustSupport" : true
    },
    {
      "id" : "List.source.type",
      "path" : "List.source.type",
      "mustSupport" : true
    },
    {
      "id" : "List.source.identifier",
      "path" : "List.source.identifier",
      "mustSupport" : true
    },
    {
      "id" : "List.source.identifier.use",
      "path" : "List.source.identifier.use",
      "max" : "0"
    },
    {
      "id" : "List.source.identifier.system",
      "path" : "List.source.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "List.source.identifier.value",
      "path" : "List.source.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "List.orderedBy",
      "path" : "List.orderedBy",
      "max" : "0"
    },
    {
      "id" : "List.note",
      "path" : "List.note",
      "short" : "Fachliche Begründung: Auf dieser Ebene existieren keine Freitext-Anmerkungen im Medikationsplan. Freitext ist in den jeweiligen MedicationRequests (Planeinträgen möglich).",
      "max" : "0"
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "short" : "Medikationsplaneinträge. Die Reihenfolge der Medikationsplaneinträge ist fachlich relevant und wird durch den Ersteller durch die Reihung der Eintries festgelegt.",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "short" : "Kennzeichnet die Art der Änderung des Medikationsplaneintrags: [new | unchanged | changed | removed]. Bedeutung: new: Neuer Planeintrag wird hinzugefügt | unchanged: Bestehender Planeintrag wird beibehalten und zur Kenntnis genommen | changed: Bestehender Planeintrag wird geändert | removed: Bestehender Planeintrag wird entfernt",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListEntryFlagVS"
      }
    },
    {
      "id" : "List.entry.flag.coding",
      "path" : "List.entry.flag.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag.coding.system",
      "path" : "List.entry.flag.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag.coding.version",
      "path" : "List.entry.flag.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag.coding.code",
      "path" : "List.entry.flag.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag.coding.display",
      "path" : "List.entry.flag.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag.text",
      "path" : "List.entry.flag.text",
      "max" : "0"
    },
    {
      "id" : "List.entry.deleted",
      "path" : "List.entry.deleted",
      "short" : "Fachliche Begründung: Keine Verwendung im Medikationsplan (da list.mode immer working).",
      "max" : "0"
    },
    {
      "id" : "List.entry.date",
      "path" : "List.entry.date",
      "short" : "Fachliche Begründung: Das Datum der initialen Aufnahme eines Eintrags wird nicht auf Ebene der Liste, sondern im referenzierten Medikationsplaneintrag dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "short" : "Referenz auf einen Medikationsplaneintrag.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.entry.item.reference",
      "path" : "List.entry.item.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason",
      "path" : "List.emptyReason",
      "short" : "Begründung, welshalb der Medikationsplan leer ist. Mögliche Ausprägungen: [notstarted |  nilknown ] Bedeutung: notstarted: Intitalzustand - noch nie befüllt; nilknown: Der Plan wurde vom GDA explizit als leer dokumentiert oder alle Einträge wurden abgesetzt, storniert oder gelöscht.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaListEmptyReasonVS"
      }
    },
    {
      "id" : "List.emptyReason.coding",
      "path" : "List.emptyReason.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason.coding.system",
      "path" : "List.emptyReason.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason.coding.version",
      "path" : "List.emptyReason.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason.coding.code",
      "path" : "List.emptyReason.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason.coding.display",
      "path" : "List.emptyReason.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "List.emptyReason.text",
      "path" : "List.emptyReason.text",
      "max" : "0"
    }]
  }
}

```
