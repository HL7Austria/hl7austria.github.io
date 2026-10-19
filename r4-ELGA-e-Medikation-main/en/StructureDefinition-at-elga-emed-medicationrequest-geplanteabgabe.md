# At ELGA e-Medikation MedicationRequest Geplante Abgabe - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: At ELGA e-Medikation MedicationRequest Geplante Abgabe 

Die Ressource **`MedicationRequest`** mit Kategorie "Geplante Abgabe" bildet eine **Geplante Abgabe** ab.

Sie enthält genau das im zugehörigen Planeintrag verordnete Arzneimittel mit dessen Dosierung und dient somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Werden mehrere Arzneimittel gleichzeitig verordnet (und sind demselben e-Rezept zugeordnet), wird für jedes Arzneimittel eine **Geplante Abgabe** mit demselben **e-Med GroupIdentifier** erstellt.

Der aktuelle Status einer geplanten Abgabe wird im **status**-Element dokumentiert (siehe [Status des MedicationRequests in der geplanten Abgabe](workflowmanagement.md#status-des-medicationrequests-in-der-geplanten-abgabe)).

Relevante Use Cases:

* [Sub_UC_eMed_04_01 - Geplante Abgabe erstellen (Prescription-Write)](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write)

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Transaction Bundle geplante Abgaben](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.md)
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
  "date" : "2026-10-19T15:55:36+00:00",
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
  "description" : "Profil einer \"Geplanten Abgabe\" eines Arzneimittels aus dem Medikationsplan.",
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
      "short" : "Zeitraum, in dem die Medikation eingenommen werden soll.",
      "definition" : "Zeitraum, über den die Medikation eingenommen werden soll. Wenn mehrere dosageInstruction-Zeilen vorhanden sind (z. B. bei einer ausschleichenden Dosierung), entspricht dieser Zeitraum dem frühesten Startdatum und dem spätesten Enddatum der dosageInstructions.",
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
      "short" : "Vollständige textuelle Zusammenfassung der Dosierungsanweisungen - wird von der Fachanwendung anhand der definiert Regeln befüllt.",
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
      "short" : "Status der geplanten Abgabe. Mögliche Ausprägung: [active | completed | entered-in-error | stopped]. Bedeutung: active: offene, Geplante Abgabe | completed: Geplante Abgabe abgeschlossen | entered-in-error: nach fehlerhafter Eingabe; Storno nur möglich, wenn noch keine zugehörige Abgabe durchgeführt wurde | stopped: Verwendung zu prüfen (Status soll analog zu e-Rezept abgebildet werden)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/GeplanteAbgabeStatusVS"
      }
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Die Geplante Abgabe stellt einen Auftrag zur Durchführung und eine Autorisierung des Verfassers dar; daher ist intent immer \"order\".",
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
      "short" : "Kategorie zur Unterscheidung eines Medikationsplaneintrags von einer geplanten Abgabe (beide haben intent order)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/MedicationRequestCategoryVS"
      }
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
      "short" : "Fachliche Begründung: TODO",
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
      "max" : "1"
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
      "short" : "Fachliche Begründung: Die geplante Abgabe bildet einen positiven Abgabeauftrag ab; ein ausdrückliches Verbot einer Abgabe wird nicht als eigene geplante Abgabe dokumentiert.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.reported[x]",
      "path" : "MedicationRequest.reported[x]",
      "short" : "Fachliche Begründung: Die geplante Abgabe wird als Auftrag dokumentiert; eine Kennzeichnung als lediglich berichteter Auftrag würde die Bedeutung der Ressource verändern und wird daher nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Das Arzneimittel wird in einer contained Medication Ressource oder als logische Referenz dokumentiert, damit Arzneimittel mit und ohne PZN einheitlich dokumentiert werden können.",
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
      "short" : "Patient, für den die Geplante Abgabe ausgestellt werden soll (über Zentralen Patientenindex identifiziert und Teilnehmer von ELGA e-Medikation).",
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
      "short" : "Fachliche Begründung: TODO",
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
      "short" : "Datum der Verordnung der geplanten Abgabe.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "Der Arzt oder die Ärztin, die die Geplante Abgabe erstellt hat und für den Inhalt verantwortlich ist \n(eindeutig identifiziert über den GDA-Index und berechtigt auf die ELGA e-Medikation des Patienten zuzugreifen).",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner",
        "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
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
      "short" : "Referenz auf die (aktuelle) Version des zugrundeliegenden Medikationsplaneintrags, auf dem diese Geplante Abgabe basiert.",
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
      "short" : "Als groupIdentifier dient die eMED-ID, die auch im e-Rezept mitgeführt wird. \nWerden von einem:r Arzt:Ärtztin mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine \nGeplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer').",
      "mustSupport" : true
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
      "short" : "Gesamtmuster der Medikamentengabe (z.B. saisonal). Keine Verwendung in der geplanten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "short" : "Zusätzliche Informationen zur geplanten Abgabe (Kommunikation zwischen Arzt und Apotheke, die nicht die Dosierung betreffen).",
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
      "short" : "Angabe der Dosierinformationen strukturiert oder als Freitext."
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "short" : "Details zur geplanten Abgabe des Arzneimittels.",
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
      "short" : "Gültigkeitszeitraum einer Geplante Abgabe (abhängig von Rezeptart): Kassenrezept: ab Erstelldatum 1 Monat, bei Teilabgabe verlängert sich Gültigkeitsdauer auf 3 Monate („Besorger“-Prozess). Privatrezept: ab Erstelldatum max. 365 Tage, die Gültigkeitsdauer kann vom Arzt definiert werden. Substitutionsrezept: Max. Gültigkeitsdauer 12 Monate.",
      "definition" : "Zeitraum in dem die Geplante Abgabe eingelöst werden kann.\nDer Gültigkeitszeitraum ist abhängig von der **Rezeptart**: \n* **Kassenrezept**: ab Erstelldatum einen Monat gültig (vom Ausstellungszeitpunkt bis zum gleichen Tag des Folgemonats 23:59 Uhr); validityPeriod.start kein Datum in der Zukunft; bei einer Teilabgabe verlängert sich die gesamte Gültigkeitsdauer auf 3 Monate („Besorger“-Prozess).\n* **Privatrezept**: ab Erstelldatum maximal 365 Tage gültig, wenn die erste Einlösung innerhalb von 1 Monat ab Erstelldatum erfolgt (sonst Status abgelaufen). validityPeriod.start kein Datum in der Zukunft; Die Gültigkeitsdauer (validityPeriod.end) kann vom Arzt definiert werden.\n* **Substitutionsrezept**: Maximale Gültigkeitsdauer 12 Monate. Das validityPeriod.start darf maximal einen Monat in der Zukunft liegen, gültig bis das validityPeriod.end erreicht ist.",
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
      "short" : "Die Anzahl der weiteren möglichen Einlösungen (abhängig von Rezeptart): Kassenrezept: keine weitere Einlösung möglich (fixer Wert 0). Privatrezept: bis zu 6 Einlösungen, Anzahl der möglichen Einlösungen kann vom Arzt definiert werden. Substitutionsrezept: keine weitere Einlösung möglich (fixer Wert 0)",
      "definition" : "Anzahl der weiteren möglichen Einlösungen:\n* **Kassenrezept**: keine weitere Einlösung möglich (fixer Wert 0)\n* **Privatrezept**: bis zu 6 Einlösungen, Anzahl der möglichen Einlösungen kann vom Arzt definiert werden\n* **Substitutionsrezept**: keine weitere Einlösung möglich (fixer Wert 0) ",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity",
      "path" : "MedicationRequest.dispenseRequest.quantity",
      "short" : "Menge des Medikaments, die bei jeder Abgabe bereitgestellt werden soll.\nDa sich die Angaben zum Arzneimittel jeweils auf eine Packung der Arznei beziehen, MUSS die Anzahl der auszugebenden Packungen angegeben werden (mindestens 1). \nDies gilt für Arzneimittel mit PZN und magistralen Zubereitungen.",
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
