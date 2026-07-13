# HL7.AT.FHIR.REFERENCE-IG\Reference IG - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Reference IG**

## Reference IG

This Implementation Guide (IG) serves as a reference for all FHIR IGs developed within the Austrian healthcare domain.

To support consistency and clarity, three distinct categories of IGs have been defined: Base IGs, Framework IGs, and Use Case IGs. Each category follows its own set of guidelines, which are outlined on their respective reference pages.

## Mandatory and Optional Constraints

Each category of Implementation Guide (IG) follows a defined mandatory structure, outlined in the corresponding templates. In addition, a set of optional tabs is available for use when relevant content is present in the IG. These optional elements are indicated using square brackets [ ].

For example, if the IG includes a CDA to FHIR mapping, the "Mapping" tab becomes applicable and should be included accordingly.

## IG Categories

Before creating your own IG, please determine which category best fits your use case and structure your guide accordingly. An overview of the categories is provided below:

### Base Implementation Guides

* Purpose: Define core FHIR elements, reusable data structures, constraints, extensions.
* Examples: Country-specific base profiles, datatype constraints, terminology bindings.

#### Base IG Examples:

Below are some representative IGs that belong to this category:

* [HL7® Austria FHIR® Core Implementation Guide R4](https://fhir.hl7.at/r4-core-main/index.html)
* [HL7® Austria FHIR® Core Implementation Guide R5](https://fhir.hl7.at/r5-core-main/index.html)

### Framework Implementation Guides

* Purpose: Provide general-purpose architectural guidance, patterns, or infrastructure for building interoperable systems.

#### Framework IG Examples:

Below are some representative IGs that belong to this category*:

* [International Patient Summary Implementation Guide](https://build.fhir.org/ig/HL7/fhir-ips/)
* [Austrian Patient Summary (R4)](https://fhir.hl7.at/r4-ELGA-AustrianPatientSummary-main/index.html)
* [TC FHIR AG Scheduling R5](https://fhir.hl7.at/r5-TC-FHIR-AG-Scheduling-R5-main/index.html)
* [Structured Data Capture IG](https://build.fhir.org/ig/HL7/sdc/)

*note that these examples do not follow the specified guidelines for Austria.

### Use Case Implementation Guides

* Purpose: Solve a specific clinical or administrative need; typically implementable by stakeholders with defined workflows, possibly including APIs, operations, and example scenarios.

#### Use Case IG Examples:

Below are some representative IGs that belong to this category:

* [Moderne Patient:innenabrechnung und Datenkommunikation on FHIR (MOPED)](https://fhir.hl7.at/r5-ELGA-MOPED-main/index.html)
* [Integrierte Versorgung Herzinsuffizienz (R4)](https://fhir.hl7.at/r4-ELGA-IV-Herzinsuffizienz-main/index.html)
* [ELGA e-Medikation FHIR R5 Implementierungsleitfaden](https://fhir.hl7.at/r5-ELGA-e-medikation-main/index.html)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.reference-ig",
  "url" : "https://fhir.hl7.at/hl7at/reference-ig/ImplementationGuide/hl7.at.fhir.reference-ig",
  "version" : "0.1.0",
  "name" : "HL7AustriaReferenceIG",
  "title" : "HL7 Austria Reference IG",
  "status" : "draft",
  "date" : "2026-07-13T05:22:13+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    }]
  }],
  "packageId" : "hl7.at.fhir.reference-ig",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.2.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Reference IG",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "developers-handbook.html",
        "name" : "developers-handbook.html",
        "title" : "Developer's Handbook",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "slicing.html",
          "name" : "slicing.html",
          "title" : "Slicing",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "howToReadAnIG.html",
        "name" : "howToReadAnIG.html",
        "title" : "How to read an IG",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "base.html",
        "name" : "base.html",
        "title" : "Base IGs",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "base-toc.html",
          "name" : "base-toc.html",
          "title" : "Base IGs - Table of Contents",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "base-artifacts.html",
          "name" : "base-artifacts.html",
          "title" : "Base IGs - Artifacts",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "base-about.html",
          "name" : "base-about.html",
          "title" : "Base IGs - About",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "base-authors.html",
            "name" : "base-authors.html",
            "title" : "Base IGs - Authors and Contributors",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "base-downloads.html",
            "name" : "base-downloads.html",
            "title" : "Base IGs - Downloads",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "base-dependencies.html",
            "name" : "base-dependencies.html",
            "title" : "Base IGs - Dependencies",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "base-copyright.html",
            "name" : "base-copyright.html",
            "title" : "Base IGs - Copyright",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "base-cross-version-analysis.html",
            "name" : "base-cross-version-analysis.html",
            "title" : "Base IGs - Cross-Version Analysis",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "base-known-issues.html",
            "name" : "base-known-issues.html",
            "title" : "Base IGs - Known Issues",
            "generation" : "markdown"
          }]
        }]
      },
      {
        "sourceUrl" : "framework.html",
        "name" : "framework.html",
        "title" : "Framework IGs",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "framework-toc.html",
          "name" : "framework-toc.html",
          "title" : "Framework IGs - Table of Contents",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "framework-introduction.html",
          "name" : "framework-introduction.html",
          "title" : "Framework IGs - Introduction",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "framework-scope-and-content.html",
            "name" : "framework-scope-and-content.html",
            "title" : "Framework IGs - Scope and Content",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-background.html",
            "name" : "framework-background.html",
            "title" : "Framework IGs - Background",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-challenges.html",
            "name" : "framework-challenges.html",
            "title" : "Framework IGs - Challenges",
            "generation" : "markdown"
          }]
        },
        {
          "sourceUrl" : "framework-functional.html",
          "name" : "framework-functional.html",
          "title" : "Framework IGs - Functional",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "framework-design-choices.html",
            "name" : "framework-design-choices.html",
            "title" : "Framework IGs - Design choices",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-system-actors.html",
            "name" : "framework-system-actors.html",
            "title" : "Framework IGs - System Actors",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-transactions.html",
            "name" : "framework-transactions.html",
            "title" : "Framework IGs - [Transactions]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-workflowmanagement.html",
            "name" : "framework-workflowmanagement.html",
            "title" : "Framework IGs - [Workflowmanagement]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-obligations.html",
            "name" : "framework-obligations.html",
            "title" : "Framework IGs - [Obligations]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-logical-models.html",
            "name" : "framework-logical-models.html",
            "title" : "Framework IGs - [Logical Models]",
            "generation" : "markdown"
          }]
        },
        {
          "sourceUrl" : "framework-use-cases.html",
          "name" : "framework-use-cases.html",
          "title" : "Framework IGs - Use Cases",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "framework-example-use-case-1.html",
            "name" : "framework-example-use-case-1.html",
            "title" : "Framework IGs - [Example Use Case 1]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-example-use-case-2.html",
            "name" : "framework-example-use-case-2.html",
            "title" : "Framework IGs - [Example Use Case 2]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-example-use-case-3.html",
            "name" : "framework-example-use-case-3.html",
            "title" : "Framework IGs - [Example Use Case 3]",
            "generation" : "markdown"
          }]
        },
        {
          "sourceUrl" : "framework-artifacts.html",
          "name" : "framework-artifacts.html",
          "title" : "Framework IGs - Artifacts",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "framework-about.html",
          "name" : "framework-about.html",
          "title" : "Framework IGs - About",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "framework-authors.html",
            "name" : "framework-authors.html",
            "title" : "Framework IGs - Authors and Contributors",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-downloads.html",
            "name" : "framework-downloads.html",
            "title" : "Framework IGs - Downloads",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-dependencies.html",
            "name" : "framework-dependencies.html",
            "title" : "Framework IGs - Dependencies",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-copyright.html",
            "name" : "framework-copyright.html",
            "title" : "Framework IGs - Copyright",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-cross-version-analysis.html",
            "name" : "framework-cross-version-analysis.html",
            "title" : "Framework IGs - Cross-Version Analysis",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "framework-known-issues.html",
            "name" : "framework-known-issues.html",
            "title" : "Framework IGs - Known Issues",
            "generation" : "markdown"
          }]
        }]
      },
      {
        "sourceUrl" : "use-case.html",
        "name" : "use-case.html",
        "title" : "Use Case IGs",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "use-case-toc.html",
          "name" : "use-case-toc.html",
          "title" : "Use Case IGs - Table of Contents",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "use-case-introduction.html",
          "name" : "use-case-introduction.html",
          "title" : "Use Case IGs - Introduction",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "use-case-scope-and-content.html",
            "name" : "use-case-scope-and-content.html",
            "title" : "Use Case IGs - Scope and Content",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-background.html",
            "name" : "use-case-background.html",
            "title" : "Use Case IGs - Background",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-challenges.html",
            "name" : "use-case-challenges.html",
            "title" : "Use Case IGs - Challenges",
            "generation" : "markdown"
          }]
        },
        {
          "sourceUrl" : "use-case-functional.html",
          "name" : "use-case-functional.html",
          "title" : "Use Case IGs - Functional",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "use-case-design-choices.html",
            "name" : "use-case-design-choices.html",
            "title" : "Use Case IGs - Design choices",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-system-actors.html",
            "name" : "use-case-system-actors.html",
            "title" : "Use Case IGs - System Actors",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-transactions.html",
            "name" : "use-case-transactions.html",
            "title" : "Use Case IGs - [Transactions]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-workflowmanagement.html",
            "name" : "use-case-workflowmanagement.html",
            "title" : "Use Case IGs - [Workflowmanagement]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-obligations.html",
            "name" : "use-case-obligations.html",
            "title" : "Use Case IGs - [Obligations]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-logical-models.html",
            "name" : "use-case-logical-models.html",
            "title" : "Use Case IGs - [Logical Models]",
            "generation" : "markdown"
          }]
        },
        {
          "sourceUrl" : "use-case-use-cases.html",
          "name" : "use-case-use-cases.html",
          "title" : "Use Case IGs - Use Cases",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "use-case-example-use-case-1.html",
            "name" : "use-case-example-use-case-1.html",
            "title" : "Use Case IGs - [Example Use Case 1]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-example-use-case-2.html",
            "name" : "use-case-example-use-case-2.html",
            "title" : "Use Case IGs - [Example Use Case 2]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-example-use-case-3.html",
            "name" : "use-case-example-use-case-3.html",
            "title" : "Use Case IGs - [Example Use Case 3]",
            "generation" : "markdown"
          }]
        },
        {
          "sourceUrl" : "use-case-mappings.html",
          "name" : "use-case-mappings.html",
          "title" : "Use Case IGs - Mappings",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "use-case-artifacts.html",
          "name" : "use-case-artifacts.html",
          "title" : "Use Case IGs - Artifacts",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "use-case-optional.html",
          "name" : "use-case-optional.html",
          "title" : "Use Case IGs - Optional",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "use-case-terminologies.html",
            "name" : "use-case-terminologies.html",
            "title" : "Use Case IGs - [Terminologies]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-technical-information.html",
            "name" : "use-case-technical-information.html",
            "title" : "Use Case IGs - [Technical Information]",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-examples.html",
            "name" : "use-case-examples.html",
            "title" : "Use Case IGs - [Examples]",
            "generation" : "markdown"
          }]
        },
        {
          "sourceUrl" : "use-case-about.html",
          "name" : "use-case-about.html",
          "title" : "Use Case IGs - About",
          "generation" : "markdown",
          "page" : [{
            "sourceUrl" : "use-case-authors.html",
            "name" : "use-case-authors.html",
            "title" : "Use Case IGs - Authors and Contributors",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-downloads.html",
            "name" : "use-case-downloads.html",
            "title" : "Use Case IGs - Downloads",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-dependencies.html",
            "name" : "use-case-dependencies.html",
            "title" : "Use Case IGs - Dependencies",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-copyright.html",
            "name" : "use-case-copyright.html",
            "title" : "Use Case IGs - Copyright",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-cross-version-analysis.html",
            "name" : "use-case-cross-version-analysis.html",
            "title" : "Use Case IGs - Cross-Version Analysis",
            "generation" : "markdown"
          },
          {
            "sourceUrl" : "use-case-known-issues.html",
            "name" : "use-case-known-issues.html",
            "title" : "Use Case IGs - Known Issues",
            "generation" : "markdown"
          }]
        }]
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2025+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "ci-build"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "https://fhir.hl7.at/hl7at/reference-ig/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
