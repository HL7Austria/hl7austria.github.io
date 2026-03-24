# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Medikation - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Medikation**

## Resource Profile: ELGA e-Med Medikation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication | *Version*:0.1.1 | |
| Draft as of 2026-03-24 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMedication |

 
Bildet ein Arzneimittel in der "Medication"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, geplante Abgabe und durchgeführte Abgabe. Aktuell nur geprüft im Kontext Planeintrag. Unterschieden werden folgende Fälle: 
1. Arzneimittel besitzt eine PZN und wird über diese identifiziert, die weiteren Informationen werden durch die Fachanwendung angereichert. a. Identifikation nur über PZN: eine Befüllung jener Felder, die über die ASP-Liste angereichert werden können, durch den GDA wird technisch verhindert (Invariante oder eigene Medication Ressource). b. Identifikation über PZN und Handelsname: damit eine Prüfung auf Übereinstimmung durchgeführt werden kann. TODO: Juristisch zu prüfen.
1. Arzneimittel besitzt keine PZN, alle benötigten Informationen sind verpflichtend vom GDA zu befüllen: a. Bei Verschreibung von Wirkstoffen b. Bei magistraler Anwendung, Infusionen
 

**Usages:**

* Refer to this Profile: [ELGA e-Med Durchgeführte Abgabe](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.md), [ELGA e-Med Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md) and [ELGA e-Med Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md)
* Examples for this Profile: [Medication/At-Emed-Example-Medication-Magistral-01](Medication-At-Emed-Example-Medication-Magistral-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-medication.csv), [Excel](StructureDefinition-at-emed-medication.xlsx), [Schematron](StructureDefinition-at-emed-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-medication",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication",
  "version" : "0.1.1",
  "name" : "AtEmedMedication",
  "title" : "ELGA e-Med Medikation",
  "status" : "draft",
  "date" : "2026-03-24T15:12:36+00:00",
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
  "description" : "Bildet ein Arzneimittel in der \"Medication\"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, geplante Abgabe und durchgeführte Abgabe. Aktuell nur geprüft im Kontext Planeintrag.\nUnterschieden werden folgende Fälle:\n1. Arzneimittel besitzt eine PZN und wird über diese identifiziert, die weiteren Informationen werden durch die Fachanwendung angereichert.\n    a. Identifikation nur über PZN: eine Befüllung jener Felder, die über die ASP-Liste angereichert werden können, durch den GDA wird technisch verhindert (Invariante oder eigene Medication Ressource).\n    b. Identifikation über PZN und Handelsname: damit eine Prüfung auf Übereinstimmung durchgeführt werden kann. TODO: Juristisch zu prüfen. \n3. Arzneimittel besitzt keine PZN, alle benötigten Informationen sind verpflichtend vom GDA zu befüllen:\n    a. Bei Verschreibung von Wirkstoffen\n    b. Bei magistraler Anwendung, Infusionen \n",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.text",
      "path" : "Medication.text",
      "short" : "TODO: Freitext für magistrale Anwendungen oder Abbildung in Substance.description?",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "short" : "Eindeutiger Identifikator für das Arzneimittel. Wird nicht benötigt, da PZN, sofern vorhanden, im Code angegeben wird.",
      "max" : "0"
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Code des Arzneimittels. Hier muss die Pharmazentralnummer (PZN) aus der ASP-Liste angegeben werden, sofern vorhanden.\nTODO: Slicing für meherere Codings\nGem. CDA V3: \nDas Codesystem Pharmazentralnummer {1.2.40.0.34.4.16} wird am Terminologieserver in der ASP-Liste (Liste der humanen Arzneispezialitäten gelistet nach PZN) publiziert, \ndie ASP-Liste enthält neben der Pharmazentralnummer {1.2.40.0.34.4.17} auch die korrespondierende Zulassungsnummer und Package Reference Number der AGES {1.2.40.0.34.4.26}. \nFür die Kompatibilität zum EU Kontext wird zukünftig auch die PCID der EMA {1.2.40.0.34.4.27} ermöglicht.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/CodeSystem/asp-liste"
      }
    },
    {
      "id" : "Medication.code.coding.display",
      "path" : "Medication.code.coding.display",
      "short" : "Juristisch zu prüfen, ob mindestens ein Displayname (Handelsname) zur PZN angegeben werden muss (Zwecks Prüfung auf Übereinstimmung und \nhistorischer Verfügbarkeit, im Falle von sich ändernden PZNs; evtl. könnte die Fachanwendung."
    },
    {
      "id" : "Medication.status",
      "path" : "Medication.status",
      "short" : "Verfügbarkeitsstatus des Arzneimittels:(req) active | inactive | entered-in-error. https://hl7.org/fhir/R4/valueset-medication-status.html.\n Keine Verwendung im Kontext Planeintrag.",
      "max" : "0"
    },
    {
      "id" : "Medication.manufacturer",
      "path" : "Medication.manufacturer",
      "short" : "Der Hersteller des Arzneimittels. Keine Verwendung im Kontext Planeintrag. \nTODO: Prüfen, ob im Kontext durchgeführte Abgabe und magistraler Zubereitung erforderlich; HL7ATCoreOrganization schränkt auf Organisationen gemäß GDA-Index ein.",
      "max" : "0"
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "short" : "Die Darreichungsform des Arzneimittels. Wenn PZN vorhanden 0..0, da Anreicherung aus ASP-Liste durch Fachanwendung.\nGem. CDA V3: \nFür die e-Medikation ist das CodeSystem ​Medikation_Darreichungsform 1.2.40.0.10.1.4.3.4.3.5 zu verwenden.\nFür den eHDSI Kontext ist das CodeSystem 0.4.0.127.0.16.1.1.2.1 zu verwenden.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart"
      }
    },
    {
      "id" : "Medication.amount",
      "path" : "Medication.amount",
      "short" : "Die Gesamtmenge des Arzneimittels in der Verpackung. \nWenn PZN vorhanden 0..0, da Anreicherung aus ASP-Liste durch Fachanwendung.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Wirkstoffe. Wenn PZN vorhanden 0..0, da Anreicherung aus ASP-Liste durch Fachanwendung.\nGemäß AG: Einschränkung auf CodeableConcept, TODO: prüfen, wie Freitext bei magistraler Zubereitung abgebildet wird:\nEvtl. in einer Substance-Ressource in der description (string).",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance"],
        "aggregation" : ["contained"]
      }]
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemCodeableConcept",
      "short" : "Inhaltsstoff codiert. TODO: prüfen, Einschränkung auf SPOR (EMA). Gemüß CDA v3:\nWirkstoff-Codes stammen aus der ATC-Klassifikation (Anatomical Therapeutic Chemical Classification), die von der WHO herausgegeben wird. \nWeitere Codes, wie auch die deutsche Bezeichnung der Codes, entsprechen dem GKV-Arzneimittelindex im Wissenschaftlichen Institut der AOK (WidO), \nAOK Bundesverband GbR, Deutschland, welcher auf den WHO ATC basiert.\nZusätzlich kommen ergänzende Codes aus dem Arzneimittelverzeichnis der AGES zum Einsatz.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemReference",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemReference",
      "short" : "Referenz auf Ressourcen Substance im Fall von magistraler Anwendung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance"],
        "aggregation" : ["contained"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "short" : "Aktive Wirkstoff TRUE/FALSE",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Menge der vorhandenen Zutat",
      "mustSupport" : true
    },
    {
      "id" : "Medication.batch",
      "path" : "Medication.batch",
      "short" : "Informationen zur Charge des Arzneimittels. Keine Verwenund im Kontext Planeintrag.",
      "max" : "0"
    }]
  }
}

```
