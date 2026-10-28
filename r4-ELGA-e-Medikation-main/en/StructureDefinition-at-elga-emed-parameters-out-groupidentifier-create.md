# AT ELGA e-Medikation Parameters Out $groupidentifier-create - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Parameters Out $groupidentifier-create 

Die $groupidentifier-create Operation wird auf Systemebene aufgerufen. Dem Server wird dabei keine Ressource übermittelt.

* Bei Erfolg enthält die Antwort den neu erzeugten **e-Med GroupIdentifier** (**groupIdentifier**) sowie den DataMatrix-Code (**dataMatrixCode**), der diesen codiert. Der DataMatrix-Code darf nur gemeinsam mit dem **e-Med GroupIdentifier** enthalten sein.
* Im Fehlerfall enthält die Antwort ausschließlich einen OperationOutcome mit dem Fehler, der zur Ablehnung der Operation geführt hat.

**Usages:**

* Examples for this Profile: [Parameters/At-Emed-Journey-01-03-Parameters-Out-GroupIdentifier-Create](Parameters-At-Emed-Journey-01-03-Parameters-Out-GroupIdentifier-Create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-parameters-out-groupidentifier-create.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-parameters-out-groupidentifier-create.csv), [Excel](../StructureDefinition-at-elga-emed-parameters-out-groupidentifier-create.xlsx), [Schematron](../StructureDefinition-at-elga-emed-parameters-out-groupidentifier-create.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-parameters-out-groupidentifier-create",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-groupidentifier-create",
  "version" : "0.1.0",
  "name" : "AtElgaEmedParametersOutGroupIdentifierCreate",
  "title" : "AT ELGA e-Medikation Parameters Out $groupidentifier-create",
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
  "description" : "Profil für den Rückgabewert der $groupidentifier-create Operation.",
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
        "key" : "at-emed-groupidentifier-create-out-ergebnis",
        "severity" : "error",
        "human" : "Es ist entweder der neu erzeugte e-Med GroupIdentifier (Erfolgsfall) oder ein OperationOutcome mit einem Issue der Schwere 'error' oder 'fatal' (Fehlerfall) enthalten, nicht beides.",
        "expression" : "(parameter.where(name = 'groupIdentifier').exists() and parameter.resource.ofType(OperationOutcome).empty()) or (parameter.where(name = 'groupIdentifier').empty() and parameter.resource.ofType(OperationOutcome).issue.where(severity = 'error' or severity = 'fatal').exists())",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-groupidentifier-create"
      },
      {
        "key" : "at-emed-groupidentifier-create-out-datamatrixcode",
        "severity" : "error",
        "human" : "Ein DataMatrix-Code darf nur enthalten sein, wenn auch der e-Med GroupIdentifier enthalten ist.",
        "expression" : "parameter.where(name = 'dataMatrixCode').exists() implies parameter.where(name = 'groupIdentifier').exists()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-groupidentifier-create"
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
          "type" : "value",
          "path" : "name"
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
      "max" : "1",
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
      "id" : "Parameters.parameter:groupIdentifier",
      "path" : "Parameters.parameter",
      "sliceName" : "groupIdentifier",
      "short" : "Der neu erzeugte e-Med GroupIdentifier (nur bei Erfolg)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:groupIdentifier.modifierExtension",
      "path" : "Parameters.parameter.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:groupIdentifier.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "groupIdentifier",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:groupIdentifier.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:groupIdentifier.resource",
      "path" : "Parameters.parameter.resource",
      "short" : "Fachliche Begründung: Der Parameter transportiert ausschließlich einen Wert, eine Ressource ist nicht vorgesehen.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:groupIdentifier.part",
      "path" : "Parameters.parameter.part",
      "short" : "Fachliche Begründung: Verschachtelte Parameter sind nicht vorgesehen.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:dataMatrixCode",
      "path" : "Parameters.parameter",
      "sliceName" : "dataMatrixCode",
      "short" : "Der DataMatrix-Code, der den neu erzeugten e-Med GroupIdentifier codiert (nur bei Erfolg)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:dataMatrixCode.modifierExtension",
      "path" : "Parameters.parameter.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:dataMatrixCode.name",
      "path" : "Parameters.parameter.name",
      "patternString" : "dataMatrixCode",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:dataMatrixCode.value[x]",
      "path" : "Parameters.parameter.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Attachment"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:dataMatrixCode.value[x].contentType",
      "path" : "Parameters.parameter.value[x].contentType",
      "min" : 1,
      "patternCode" : "image/png",
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:dataMatrixCode.value[x].data",
      "path" : "Parameters.parameter.value[x].data",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Parameters.parameter:dataMatrixCode.resource",
      "path" : "Parameters.parameter.resource",
      "short" : "Fachliche Begründung: Der Parameter transportiert ausschließlich einen Wert, eine Ressource ist nicht vorgesehen.",
      "max" : "0"
    },
    {
      "id" : "Parameters.parameter:dataMatrixCode.part",
      "path" : "Parameters.parameter.part",
      "short" : "Fachliche Begründung: Verschachtelte Parameter sind nicht vorgesehen.",
      "max" : "0"
    }]
  }
}

```
