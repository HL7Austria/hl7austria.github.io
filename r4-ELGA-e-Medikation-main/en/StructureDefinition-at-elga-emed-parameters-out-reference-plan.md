# AT ELGA e-Medikation Parameters Out $reference-plan - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Parameters Out $reference-plan 

Die $reference-plan Operation wird direkt auf Instanzebene einer Durchgeführten Abgabe aufgerufen. Dem Server wird dabei lediglich optional die Referenz auf einen Planeintrag, jedoch keine Ressource übermittelt, weshalb weder ein Transaction-Response Bundle noch OperationOutcome(s) mit Hinweisen zu ignorierten Must-Support Elementen zurückgegeben werden. Die Antwort enthält daher immer entweder das Ergebnis der Operation oder Fehler:

* Bei Erfolg enthält die Antwort ausschließlich die Durchgeführte Abgabe, zu der die Referenz auf den Planeintrag hinzugefügt bzw. von der sie entfernt wurde, so wie sie nach dem Ausführen der Operation am Server persistiert ist.
* Im Fehlerfall enthält die Antwort ausschließlich ein OperationOutcome mit dem Fehler, der zur Ablehnung der Operation geführt hat.

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-parameters-out-reference-plan.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-parameters-out-reference-plan.csv), [Excel](../StructureDefinition-at-elga-emed-parameters-out-reference-plan.xlsx), [Schematron](../StructureDefinition-at-elga-emed-parameters-out-reference-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-parameters-out-reference-plan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-reference-plan",
  "version" : "0.1.0",
  "name" : "AtElgaEmedParametersOutReferencePlan",
  "title" : "AT ELGA e-Medikation Parameters Out $reference-plan",
  "status" : "draft",
  "date" : "2026-10-28T09:21:39+00:00",
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
  "description" : "Profil für den Rückgabewert der $reference-plan Operation.",
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
        "key" : "at-emed-reference-plan-out-ergebnis",
        "severity" : "error",
        "human" : "Es ist entweder die Durchgeführte Abgabe (Erfolgsfall) oder mindestens ein OperationOutcome mit einem Issue der Schwere 'error' oder 'fatal' (Fehlerfall) enthalten.",
        "expression" : "parameter.resource.ofType(MedicationDispense).exists() or (parameter.resource.ofType(MedicationDispense).empty() and parameter.resource.ofType(OperationOutcome).issue.where(severity = 'error' or severity = 'fatal').exists())",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-reference-plan"
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
      "short" : "Fehler, der zur Ablehnung der Operation geführt hat (nur bei Misserfolg)",
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
      "id" : "Parameters.parameter:durchgefuehrteAbgabe",
      "path" : "Parameters.parameter",
      "sliceName" : "durchgefuehrteAbgabe",
      "short" : "Die Durchgeführte Abgabe, zu der die Referenz auf den Planeintrag hinzugefügt bzw. von der sie entfernt wurde, so wie sie nach dem Ausführen der Operation am Server persistiert ist (nur bei Erfolg)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgabe.modifierExtension",
      "path" : "Parameters.parameter.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgabe.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "durchgefuehrteAbgabe",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgabe.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "short" : "Fachliche Begründung: Der Parameter transportiert ausschließlich eine Ressource, ein Wert ist nicht vorgesehen.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgabe.resource",
      "path" : "Parameters.parameter.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationDispense",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:durchgefuehrteAbgabe.part",
      "path" : "Parameters.parameter.part",
      "short" : "Fachliche Begründung: Verschachtelte Parameter sind nicht vorgesehen.",
      "max" : "0"
    }]
  }
}

```
