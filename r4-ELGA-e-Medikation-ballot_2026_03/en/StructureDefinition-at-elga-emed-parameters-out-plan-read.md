# AT ELGA e-Medikation Parameters Out $plan-read - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Parameters Out $plan-read 

Bei Erfolg enthält die Antwort das temporäre, für die Bearbeitung aufbereitete Medikationsplan-Bundle mit der aktuellen, gegebenenfalls transformierten oder initial erzeugten List-Ressource sowie sämtlichen von ihr referenzierten Ressourcen (siehe [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md)). Zusätzlich können OperationOutcome(s) mit Hinweisen der Schwere **information** oder **warning** enthalten sein. Im Fehlerfall enthält die Antwort kein Medikationsplan-Bundle, sondern ausschließlich OperationOutcome(s) mit dem Fehler, der zur Ablehnung der Operation geführt hat.

Der ETag der aktuellen persistierten List-Version wird im HTTP-Response-Header übermittelt und ist nicht Teil dieser Parameters-Ressource.

**Usages:**

* Examples for this Profile: [Parameters/At-Emed-Journey-01-01-01-Parameters-Out-Plan-Read](Parameters-At-Emed-Journey-01-01-01-Parameters-Out-Plan-Read.md) and [Parameters/At-Emed-Journey-01-02-Parameters-Out-Plan-Read](Parameters-At-Emed-Journey-01-02-Parameters-Out-Plan-Read.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-parameters-out-plan-read.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-parameters-out-plan-read.csv), [Excel](../StructureDefinition-at-elga-emed-parameters-out-plan-read.xlsx), [Schematron](../StructureDefinition-at-elga-emed-parameters-out-plan-read.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-parameters-out-plan-read",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-plan-read",
  "version" : "0.1.0",
  "name" : "AtElgaEmedParametersOutPlanRead",
  "title" : "AT ELGA e-Medikation Parameters Out $plan-read",
  "status" : "draft",
  "date" : "2026-10-29T15:54:42+00:00",
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
  "description" : "Profil für den Rückgabewert der $plan-read Operation.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Parameters",
      "path" : "Parameters",
      "constraint" : [{
        "key" : "at-emed-plan-read-out-ergebnis",
        "severity" : "error",
        "human" : "Es ist entweder das Medikationsplan-Bundle (Erfolgsfall) oder mindestens ein OperationOutcome mit einem Issue der Schwere 'error' oder 'fatal' (Fehlerfall) enthalten. Im Erfolgsfall dürfen OperationOutcomes nur Issues der Schwere 'information' oder 'warning' enthalten.",
        "expression" : "(parameter.resource.ofType(Bundle).exists() and parameter.resource.ofType(OperationOutcome).issue.where(severity = 'error' or severity = 'fatal').empty()) or (parameter.resource.ofType(Bundle).empty() and parameter.resource.ofType(OperationOutcome).issue.where(severity = 'error' or severity = 'fatal').exists())",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-plan-read"
      }]
    },
    {
      "id" : "Parameters.implicitRules",
      "path" : "Parameters.implicitRules",
      "short" : "Fachliche Begründung: Die Ressource wird nach den Regeln dieses Implementierungsleitfadens interpretiert. Zusätzliche implizite Verarbeitungsregeln werden nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter",
      "path" : "Parameters.parameter",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter.modifierExtension",
      "path" : "Parameters.parameter.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter.name",
      "path" : "Parameters.parameter.name",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:operationOutcome",
      "path" : "Parameters.parameter",
      "sliceName" : "operationOutcome",
      "short" : "Hinweise mit der Schwere 'information' oder 'warning' (bei Erfolg) bzw. Fehler, der zur Ablehnung der Operation geführt hat (bei Misserfolg)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:operationOutcome.modifierExtension",
      "path" : "Parameters.parameter.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:operationOutcome.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "operationOutcome",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:operationOutcome.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "short" : "Fachliche Begründung: Der Parameter transportiert ausschließlich eine Ressource, ein Wert ist nicht vorgesehen.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:operationOutcome.resource",
      "path" : "Parameters.parameter.resource",
      "min" : 1,
      "type" : [{
        "code" : "OperationOutcome",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-operationoutcome"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:operationOutcome.part",
      "path" : "Parameters.parameter.part",
      "short" : "Fachliche Begründung: Verschachtelte Parameter sind nicht vorgesehen.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:medikationsplan",
      "path" : "Parameters.parameter",
      "sliceName" : "medikationsplan",
      "short" : "Das temporäre, für die Bearbeitung aufbereitete Medikationsplan-Bundle mit der aktuellen List-Ressource sowie sämtlichen von ihr referenzierten Ressourcen (nur bei Erfolg)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:medikationsplan.modifierExtension",
      "path" : "Parameters.parameter.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:medikationsplan.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "medikationsplan",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:medikationsplan.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "short" : "Fachliche Begründung: Der Parameter transportiert ausschließlich eine Ressource, ein Wert ist nicht vorgesehen.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:medikationsplan.resource",
      "path" : "Parameters.parameter.resource",
      "min" : 1,
      "type" : [{
        "code" : "Bundle",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:medikationsplan.part",
      "path" : "Parameters.parameter.part",
      "short" : "Fachliche Begründung: Verschachtelte Parameter sind nicht vorgesehen.",
      "max" : "0"
    }]
  }
}

```
