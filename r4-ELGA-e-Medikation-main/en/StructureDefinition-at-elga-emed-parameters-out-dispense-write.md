# AT ELGA e-Medikation Parameters Out $dispense-write - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Parameters Out $dispense-write 

Bei Erfolg enthält die Antwort das Transaction-Response Bundle mit den persistierten Durchgeführten Abgaben sowie optional OperationOutcome(s) mit Hinweisen zu übermittelten Must-Support Elementen, die vom Server ignoriert wurden. Im Fehlerfall enthält die Antwort ausschließlich ein OperationOutcome mit dem Fehler, der zur Ablehnung der Operation geführt hat.

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-parameters-out-dispense-write.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-parameters-out-dispense-write.csv), [Excel](../StructureDefinition-at-elga-emed-parameters-out-dispense-write.xlsx), [Schematron](../StructureDefinition-at-elga-emed-parameters-out-dispense-write.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-parameters-out-dispense-write",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-dispense-write",
  "version" : "0.1.0",
  "name" : "AtElgaEmedParametersOutDispenseWrite",
  "title" : "AT ELGA e-Medikation Parameters Out $dispense-write",
  "status" : "draft",
  "date" : "2026-10-27T12:33:12+00:00",
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
  "description" : "Profil für den Rückgabewert der $dispense-write Operation.",
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
        "key" : "at-emed-dispense-write-out-ergebnis",
        "severity" : "error",
        "human" : "Ist kein Bundle mit persistierten Durchgeführten Abgaben enthalten (Fehlerfall), muss mindestens ein OperationOutcome mit einem Issue der Schwere 'error' oder 'fatal' enthalten sein.",
        "expression" : "parameter.resource.ofType(Bundle).exists() or (parameter.resource.ofType(OperationOutcome).count() >= 1 and parameter.resource.ofType(OperationOutcome).issue.where(severity = 'error' or severity = 'fatal').exists())",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-dispense-write"
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
      "short" : "Hinweise zu ignorierten Must-Support Elementen (bei Erfolg) bzw. Fehler, der zur Ablehnung der Operation geführt hat (bei Misserfolg)",
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
      "id" : "Parameters.parameter:durchgefuehrteAbgaben",
      "path" : "Parameters.parameter",
      "sliceName" : "durchgefuehrteAbgaben",
      "short" : "Transaction-Response Bundle mit den persistierten Durchgeführten Abgaben (nur bei Erfolg)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgaben.modifierExtension",
      "path" : "Parameters.parameter.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgaben.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "durchgefuehrteAbgaben",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgaben.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "short" : "Fachliche Begründung: Der Parameter transportiert ausschließlich eine Ressource, ein Wert ist nicht vorgesehen.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgaben.resource",
      "path" : "Parameters.parameter.resource",
      "min" : 1,
      "type" : [{
        "code" : "Bundle",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-durchgefuehrteabgaben-write-response"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgaben.part",
      "path" : "Parameters.parameter.part",
      "short" : "Fachliche Begründung: Verschachtelte Parameter sind nicht vorgesehen.",
      "max" : "0"
    }]
  }
}

```
