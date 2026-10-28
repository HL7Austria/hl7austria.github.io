# AT ELGA e-Medikation Dosage Dosierung - ELGA e-Medikation (R4) DRAFT v0.1.0

## Data Type Profile: AT ELGA e-Medikation Dosage Dosierung 

**Usages:**

* Derived from this DataType Profile: [AT ELGA e-Medikation Freitext-Dosierschema](StructureDefinition-at-elga-emed-dosage-freetext-administration.md) and [AT ELGA e-Medikation Standard-Tageszeiten-Dosierschema](StructureDefinition-at-elga-emed-dosage-standard-administration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-dosage-dosierung.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-dosage-dosierung.csv), [Excel](../StructureDefinition-at-elga-emed-dosage-dosierung.xlsx), [Schematron](../StructureDefinition-at-elga-emed-dosage-dosierung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-dosage-dosierung",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-dosierung",
  "version" : "0.1.0",
  "name" : "AtElgaEmedDosageDosierung",
  "title" : "AT ELGA e-Medikation Dosage Dosierung",
  "status" : "draft",
  "date" : "2026-10-28T15:47:56+00:00",
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
  "description" : "Basisprofil für alle Dosierungschemata",
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
      "id" : "Dosage.extension",
      "path" : "Dosage.extension",
      "min" : 1
    },
    {
      "id" : "Dosage.extension:DosageCategory",
      "path" : "Dosage.extension",
      "sliceName" : "DosageCategory",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.modifierExtension",
      "path" : "Dosage.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Dosage.sequence",
      "path" : "Dosage.sequence",
      "short" : "Die Reihenfolge der Dosierungsanweisungen. Entfällt bei Einzeldosierung.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.text",
      "path" : "Dosage.text",
      "short" : "Textdarstellung der Dosierung: bei strukturierter Dosierung durch die Fachanwendung generiert, sonst Freitext-Dosierungsanweisung (wenn keine strukturierte Angabe möglich ist).",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.additionalInstruction",
      "path" : "Dosage.additionalInstruction",
      "short" : "Codierte Anweisungen oder Warnhinweise für den Patienten, z.B. zur Einnahme oder zur Aufbewahrung des Arzneimittels. (ex):\nhttps://hl7.org/fhir/R4/valueset-additional-instruction-codes.html.",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.additionalInstruction.coding",
      "path" : "Dosage.additionalInstruction.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.additionalInstruction.coding.system",
      "path" : "Dosage.additionalInstruction.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.additionalInstruction.coding.version",
      "path" : "Dosage.additionalInstruction.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.additionalInstruction.coding.code",
      "path" : "Dosage.additionalInstruction.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.additionalInstruction.coding.display",
      "path" : "Dosage.additionalInstruction.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.additionalInstruction.text",
      "path" : "Dosage.additionalInstruction.text",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Dosage.patientInstruction",
      "path" : "Dosage.patientInstruction",
      "short" : "Freitext Anweisungen für den Patienten, z.B. zur Einnahme oder zur Aufbewahrung des Arzneimittels.",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.timing",
      "path" : "Dosage.timing",
      "short" : "Zeitpunkt oder Zeitraum der Einnahme des Medikaments. \nUm widersprüchliche Anweisungen zu vermeiden, ist entweder Dosage.timing oder Dosage.text zu befüllen.",
      "type" : [{
        "code" : "Timing",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-timing"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.asNeeded[x]",
      "path" : "Dosage.asNeeded[x]",
      "short" : "Bedarfsmedikation: Ja/Nein",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.site",
      "path" : "Dosage.site",
      "short" : "Körperstelle, an der das Medikament angewendet wird, z.B. Haut, Auge, Ohr etc.",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.site.coding",
      "path" : "Dosage.site.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.site.coding.system",
      "path" : "Dosage.site.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.site.coding.version",
      "path" : "Dosage.site.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.site.coding.code",
      "path" : "Dosage.site.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.site.coding.display",
      "path" : "Dosage.site.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.site.text",
      "path" : "Dosage.site.text",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Dosage.route",
      "path" : "Dosage.route",
      "short" : "Art der Anwendung der Arznei. (z.B. oral, nasal, intravenös, subkutan). Kann bei codierten Arzneien aus der ASP-Liste entnommen werden.",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.route.coding",
      "path" : "Dosage.route.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.route.coding.system",
      "path" : "Dosage.route.coding.system",
      "min" : 1,
      "patternUri" : "https://termgit.elga.gv.at/CodeSystem/medikationartanwendung",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.route.coding.version",
      "path" : "Dosage.route.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.route.coding.code",
      "path" : "Dosage.route.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.route.coding.display",
      "path" : "Dosage.route.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.route.text",
      "path" : "Dosage.route.text",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Dosage.method",
      "path" : "Dosage.method",
      "short" : "Verabreichungsmethode, z.B. Infusion, Injektion, Tablette, Salbe etc.",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.method.coding",
      "path" : "Dosage.method.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.method.coding.system",
      "path" : "Dosage.method.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.method.coding.version",
      "path" : "Dosage.method.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.method.coding.code",
      "path" : "Dosage.method.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.method.coding.display",
      "path" : "Dosage.method.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.method.text",
      "path" : "Dosage.method.text",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Dosage.doseAndRate",
      "path" : "Dosage.doseAndRate",
      "short" : "Menge des verabreichten Medikaments",
      "max" : "1",
      "mustSupport" : true
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
      "short" : "Menge des verabreichten Medikaments pro Dosis.",
      "mustSupport" : true
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
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.low",
      "path" : "Dosage.doseAndRate.dose[x].low",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.low.value",
      "path" : "Dosage.doseAndRate.dose[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.low.unit",
      "path" : "Dosage.doseAndRate.dose[x].low.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.low.system",
      "path" : "Dosage.doseAndRate.dose[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.low.code",
      "path" : "Dosage.doseAndRate.dose[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.high",
      "path" : "Dosage.doseAndRate.dose[x].high",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.high.value",
      "path" : "Dosage.doseAndRate.dose[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.high.unit",
      "path" : "Dosage.doseAndRate.dose[x].high.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.high.system",
      "path" : "Dosage.doseAndRate.dose[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseRange.high.code",
      "path" : "Dosage.doseAndRate.dose[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity",
      "path" : "Dosage.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "short" : "TODO",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-medikationmengenart"
      }
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity.value",
      "path" : "Dosage.doseAndRate.dose[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity.unit",
      "path" : "Dosage.doseAndRate.dose[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity.system",
      "path" : "Dosage.doseAndRate.dose[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.dose[x]:doseQuantity.code",
      "path" : "Dosage.doseAndRate.dose[x].code",
      "min" : 1,
      "mustSupport" : true
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
      },
      "short" : "Menge des verabreichten Medikaments pro Zeiteinheit.",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateQuantity",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateQuantity.value",
      "path" : "Dosage.doseAndRate.rate[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateQuantity.unit",
      "path" : "Dosage.doseAndRate.rate[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateQuantity.system",
      "path" : "Dosage.doseAndRate.rate[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateQuantity.code",
      "path" : "Dosage.doseAndRate.rate[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.low",
      "path" : "Dosage.doseAndRate.rate[x].low",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.low.value",
      "path" : "Dosage.doseAndRate.rate[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.low.unit",
      "path" : "Dosage.doseAndRate.rate[x].low.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.low.system",
      "path" : "Dosage.doseAndRate.rate[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.low.code",
      "path" : "Dosage.doseAndRate.rate[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.high",
      "path" : "Dosage.doseAndRate.rate[x].high",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.high.value",
      "path" : "Dosage.doseAndRate.rate[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.high.unit",
      "path" : "Dosage.doseAndRate.rate[x].high.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.high.system",
      "path" : "Dosage.doseAndRate.rate[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRange.high.code",
      "path" : "Dosage.doseAndRate.rate[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio",
      "path" : "Dosage.doseAndRate.rate[x]",
      "sliceName" : "rateRatio",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.numerator",
      "path" : "Dosage.doseAndRate.rate[x].numerator",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.numerator.value",
      "path" : "Dosage.doseAndRate.rate[x].numerator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.numerator.comparator",
      "path" : "Dosage.doseAndRate.rate[x].numerator.comparator",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.numerator.unit",
      "path" : "Dosage.doseAndRate.rate[x].numerator.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.numerator.system",
      "path" : "Dosage.doseAndRate.rate[x].numerator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.numerator.code",
      "path" : "Dosage.doseAndRate.rate[x].numerator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.denominator",
      "path" : "Dosage.doseAndRate.rate[x].denominator",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.denominator.value",
      "path" : "Dosage.doseAndRate.rate[x].denominator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.denominator.comparator",
      "path" : "Dosage.doseAndRate.rate[x].denominator.comparator",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.denominator.unit",
      "path" : "Dosage.doseAndRate.rate[x].denominator.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.denominator.system",
      "path" : "Dosage.doseAndRate.rate[x].denominator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.doseAndRate.rate[x]:rateRatio.denominator.code",
      "path" : "Dosage.doseAndRate.rate[x].denominator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod",
      "path" : "Dosage.maxDosePerPeriod",
      "short" : "Maximale Menge pro Zeiteinheit",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.numerator",
      "path" : "Dosage.maxDosePerPeriod.numerator",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.numerator.value",
      "path" : "Dosage.maxDosePerPeriod.numerator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.numerator.comparator",
      "path" : "Dosage.maxDosePerPeriod.numerator.comparator",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Dosage.maxDosePerPeriod.numerator.unit",
      "path" : "Dosage.maxDosePerPeriod.numerator.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.numerator.system",
      "path" : "Dosage.maxDosePerPeriod.numerator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.numerator.code",
      "path" : "Dosage.maxDosePerPeriod.numerator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.denominator",
      "path" : "Dosage.maxDosePerPeriod.denominator",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.denominator.value",
      "path" : "Dosage.maxDosePerPeriod.denominator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.denominator.comparator",
      "path" : "Dosage.maxDosePerPeriod.denominator.comparator",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Dosage.maxDosePerPeriod.denominator.unit",
      "path" : "Dosage.maxDosePerPeriod.denominator.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.denominator.system",
      "path" : "Dosage.maxDosePerPeriod.denominator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerPeriod.denominator.code",
      "path" : "Dosage.maxDosePerPeriod.denominator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerAdministration",
      "path" : "Dosage.maxDosePerAdministration",
      "short" : "Maximal Menge pro Abgabe",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerAdministration.value",
      "path" : "Dosage.maxDosePerAdministration.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerAdministration.unit",
      "path" : "Dosage.maxDosePerAdministration.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerAdministration.system",
      "path" : "Dosage.maxDosePerAdministration.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerAdministration.code",
      "path" : "Dosage.maxDosePerAdministration.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerLifetime",
      "path" : "Dosage.maxDosePerLifetime",
      "short" : "Maximale Lebenszeitdosis",
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerLifetime.value",
      "path" : "Dosage.maxDosePerLifetime.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerLifetime.unit",
      "path" : "Dosage.maxDosePerLifetime.unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerLifetime.system",
      "path" : "Dosage.maxDosePerLifetime.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Dosage.maxDosePerLifetime.code",
      "path" : "Dosage.maxDosePerLifetime.code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
