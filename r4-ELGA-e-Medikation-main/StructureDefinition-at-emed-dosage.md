# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Dosage - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Dosage**

## Data Type Profile: ELGA e-Med Dosage 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-dosage | *Version*:0.1.1 | |
| Draft as of 2026-02-23 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedDosage |

 
**Beschreibung:** Dosage 

**Usages:**

* Use this DataType Profile: [ELGA e-Med Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md) and [ELGA e-Med Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-dosage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-dosage.csv), [Excel](StructureDefinition-at-emed-dosage.xlsx), [Schematron](StructureDefinition-at-emed-dosage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-dosage",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-dosage",
  "version" : "0.1.1",
  "name" : "AtEmedDosage",
  "title" : "ELGA e-Med Dosage",
  "status" : "draft",
  "date" : "2026-02-23T17:25:44+00:00",
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
  "description" : "**Beschreibung:** Dosage",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Dosage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Dosage.sequence",
      "path" : "Dosage.sequence",
      "short" : "Die Reihenfolge der Dosierungsanweisungen. Entfällt bei Einzeldosierung.",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.text",
      "path" : "Dosage.text",
      "short" : "Freitext-Dosierungsanweisung, wenn keine strukturierte Angabe möglich ist.",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.additionalInstruction",
      "path" : "Dosage.additionalInstruction",
      "short" : "Codierte Anweisungen oder Warnhinweise für den Patienten, z.B. zur Einnahme oder zur Aufbewahrung des Arzneimittels. (ex):\nhttps://hl7.org/fhir/R4/valueset-additional-instruction-codes.html. TODO: Nur wenn nicht ohnehin im Beipackzettel enthalten oder zusätzlich? Evtl. f. magistrale Zubereitungen, da kein Beipackzettel."
    },
    {
      "id" : "Dosage.patientInstruction",
      "path" : "Dosage.patientInstruction",
      "short" : "Freitext Anweisungen für den Patienten, z.B. zur Einnahme oder zur Aufbewahrung des Arzneimittels."
    },
    {
      "id" : "Dosage.timing",
      "path" : "Dosage.timing",
      "short" : "Zeitpunkt oder Zeitraum der Einnahme des Medikaments. \nUm widersprüchliche Anweisungen zu vermeiden, ist entweder Dosage.timing oder Dosage.text zu befüllen.",
      "type" : [{
        "code" : "Timing",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-timing"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.asNeeded[x]",
      "path" : "Dosage.asNeeded[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Dosage.asNeeded[x]:asNeededBoolean",
      "path" : "Dosage.asNeeded[x]",
      "sliceName" : "asNeededBoolean",
      "short" : "Bedarfsmedikation: Ja/Nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.asNeeded[x]:asNeededCodeableConcept",
      "path" : "Dosage.asNeeded[x]",
      "sliceName" : "asNeededCodeableConcept",
      "short" : "Bedarfsmedikation: Grund für die Bedarfsmedikation; Vermutlich reicht ein genereller Grund für die Medikation im Planeintrag (wenn e-Diagnose verfügbar).",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Dosage.site",
      "path" : "Dosage.site",
      "short" : "Körperstelle, an der das Medikament angewendet wird, z.B. Haut, Auge, Ohr etc."
    },
    {
      "id" : "Dosage.route",
      "path" : "Dosage.route",
      "short" : "Art der Anwendung der Arznei. (z.B. oral, nasal, intravenös, subkutan)\n Kann bei codierten Arzneien aus der ASP-Liste entnommen werden.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/CodeSystem/medikationartanwendung"
      }
    },
    {
      "id" : "Dosage.method",
      "path" : "Dosage.method",
      "short" : "Verabreichungsmethode, z.B. Infusion, Injektion, Tablette, Salbe etc. ",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate",
      "path" : "Dosage.doseAndRate",
      "short" : "Menge des verabreichten Medikaments",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.type",
      "path" : "Dosage.doseAndRate.type",
      "short" : "Art der Dosierung, z.B. berechnet, wie verordnet (ex): https://hl7.org/fhir/R4/valueset-dose-rate-type.html"
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]",
      "path" : "Dosage.doseAndRate.dose[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Menge des verabreichten Medikaments pro Zeiteinheit."
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange",
      "path" : "Dosage.doseAndRate.dose[x]",
      "sliceName" : "doseRange",
      "short" : "Dosierungsspanne wird mit low und high angegeben, z.B. 5-10 mg.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity",
      "path" : "Dosage.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "short" : "Mapping auf doseQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity.unit",
      "path" : "Dosage.doseAndRate.dose[x].unit",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart"
      }
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]",
      "path" : "Dosage.doseAndRate.rate[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRatio",
      "short" : "TODO: prüfen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRange",
      "short" : "TODO: prüfen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateQuantity",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateQuantity",
      "short" : "TODO: prüfen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    }]
  }
}

```
