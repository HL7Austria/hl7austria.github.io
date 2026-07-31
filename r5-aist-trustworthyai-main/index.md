# Home - v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ImplementationGuide/fhir.ig.eu.aitransparency | *Version*:0.1.0 |
| Draft as of 2026-07-31 | *Computable Name*:EUAITransparencyIG |

# EU AI Transparency Implementation Guide

## Overview

This Implementation Guide (IG) defines a custom FHIR R5 framework for representing selected AI-related transparency, traceability, legal-context, and human-oversight metadata in healthcare.

The IG focuses on how documentation requirements and transparency-relevant concepts from the EU AI Act, the GDPR, and the European Health Data Space (EHDS) can be represented using machine-readable FHIR artifacts. It provides profiles, extensions, terminology, and examples for documenting AI-supported processing in clinical contexts.

The IG does not claim to provide complete legal compliance or regulatory certification. Instead, it supports structured documentation, traceability, and interoperability for selected AI-related metadata.

## Purpose

AI-supported healthcare workflows require technical documentation that is understandable, traceable, and interoperable across systems. Relevant information may include the identity of the AI system, its intended purpose, technical documentation, training-data context, privacy metadata, legal processing context, generated outputs, execution traces, human oversight, and patient-facing information.

This IG provides a FHIR-based representation of these concepts by defining reusable profiles and extensions. The goal is to make selected AI-related metadata explicit, structured, and linkable within healthcare IT environments.

## Scope

The IG covers selected metadata areas relevant to AI-supported processing in healthcare:

* AI system identification and system-level metadata
* Organizational accountability and contact information
* Model-card and technical-documentation metadata
* Training-data and data-quality context
* Privacy and data-use metadata
* AI-generated clinical outputs
* Execution traceability and audit metadata
* Provenance and legal-context documentation
* Human oversight actions
* Patient-facing information and explanation documentation

The IG does not replace clinical validation, conformity assessment, data protection assessment, national legal review, or organization-specific governance processes.

## Architecture

The Implementation Guide is organized into three main architectural contexts:

* Static System Context
* AI Output and Execution Context
* Clinical Decision and Patient-Facing Context

Detailed descriptions of all profiles are available in the **Profiles** section.

## Contents

This Implementation Guide contains:

* Profiles
* Extensions
* Code Systems
* Value Sets
* Example Instances
* Downloads
* Dependency Information

-------

-------

**Author:** Selina Adlberger
 **Context:** Developed as part of a Master's Thesis at the University of Applied Sciences Upper Austria (Hagenberg).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "fhir.ig.eu.aitransparency",
  "language" : "en",
  "url" : "http://example.org/fhir/eu-ai-transparency/ImplementationGuide/fhir.ig.eu.aitransparency",
  "version" : "0.1.0",
  "name" : "EUAITransparencyIG",
  "status" : "draft",
  "date" : "2026-07-31T11:07:29+00:00",
  "publisher" : "Selina Adlberger",
  "packageId" : "fhir.ig.eu.aitransparency",
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
    "version" : "7.3.0"
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
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ai-clinical-validation-status.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-clinical-validation-status"
      },
      "name" : "AI Clinical Validation Status",
      "description" : "Records the documented validation status of the AI system, such as clinically validated, under clinical validation, technically validated only, or not clinically validated.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-01-ai-only-ai-observation-risk-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-01-ai-only-ai-observation-risk-001"
      },
      "name" : "AI Output: Early Warning Risk Assessment (1)",
      "description" : "Synthetic AI-generated high-risk output derived from NEWS2-inspired input parameters.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-02-validation-ai-observation-risk-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-ai-observation-risk-001"
      },
      "name" : "AI Output: Early Warning Risk Assessment (2)",
      "description" : "Synthetic AI-generated high-risk output derived from NEWS2-inspired input parameters.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-03-override-ai-observation-risk-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-03-override-ai-observation-risk-001"
      },
      "name" : "AI Output: Early Warning Risk Assessment (3)",
      "description" : "Synthetic AI-generated low-risk output derived from NEWS2-inspired input parameters.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-04-correction-exp-ai-observation-risk-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-04-correction-exp-ai-observation-risk-001"
      },
      "name" : "AI Output: Early Warning Risk Assessment (4)",
      "description" : "Synthetic AI-generated low-risk output derived from NEWS2-inspired input parameters.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ai-performance-metrics.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-performance-metrics"
      },
      "name" : "AI Performance Metrics",
      "description" : "Documents quantitative performance measures and optional disclosures concerning bias, subgroup performance, or limitations of the evaluation.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ai-retention-information.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-retention-information"
      },
      "name" : "AI Retention Information",
      "description" : "Documents the stated retention duration for AI-related data, outputs, logs, or documentation.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ai-system-training-status.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-system-training-status"
      },
      "name" : "AI System-Specific Training Status",
      "description" : "Records whether the practitioner acting in the documented role has completed training specific to the relevant AI system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ai-training-data.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-training-data"
      },
      "name" : "AI Training Data Metadata",
      "description" : "Documents the origin, relevant EHDS-related classifications, applicable permit identifiers, secondary-use purposes, and reported quality characteristics of data used to train or develop the AI system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ArtifactAssessment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ArtifactAssessment-sc-04-correction-exp-human-oversight-001.html"
      }],
      "reference" : {
        "reference" : "ArtifactAssessment/sc-04-correction-exp-human-oversight-001"
      },
      "name" : "Assessment: Human Correction of AI Output (4)",
      "description" : "Synthetic human oversight assessment documenting the clinician's review of the AI output.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ArtifactAssessment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ArtifactAssessment-sc-03-override-human-oversight-001.html"
      }],
      "reference" : {
        "reference" : "ArtifactAssessment/sc-03-override-human-oversight-001"
      },
      "name" : "Assessment: Human Override of AI Output (3)",
      "description" : "Synthetic human oversight assessment documenting the clinician's review of the AI output.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ArtifactAssessment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ArtifactAssessment-sc-02-validation-human-oversight-001.html"
      }],
      "reference" : {
        "reference" : "ArtifactAssessment/sc-02-validation-human-oversight-001"
      },
      "name" : "Assessment: Human Validation of AI Output (2)",
      "description" : "Synthetic human oversight assessment documenting the clinician's review of the AI output.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AuditEvent-sc-01-ai-only-audit-event-ai-execution-001.html"
      }],
      "reference" : {
        "reference" : "AuditEvent/sc-01-ai-only-audit-event-ai-execution-001"
      },
      "name" : "Audit Log: AI Execution Trace (1)",
      "description" : "Synthetic audit event documenting the AI execution for PoC traceability.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AuditEvent-sc-02-validation-audit-event-ai-execution-001.html"
      }],
      "reference" : {
        "reference" : "AuditEvent/sc-02-validation-audit-event-ai-execution-001"
      },
      "name" : "Audit Log: AI Execution Trace (2)",
      "description" : "Synthetic audit event documenting the AI execution for PoC traceability.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AuditEvent-sc-03-override-audit-event-ai-execution-001.html"
      }],
      "reference" : {
        "reference" : "AuditEvent/sc-03-override-audit-event-ai-execution-001"
      },
      "name" : "Audit Log: AI Execution Trace (3)",
      "description" : "Synthetic audit event documenting the AI execution for PoC traceability.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AuditEvent-sc-04-correction-exp-audit-event-ai-execution-001.html"
      }],
      "reference" : {
        "reference" : "AuditEvent/sc-04-correction-exp-audit-event-ai-execution-001"
      },
      "name" : "Audit Log: AI Execution Trace (4)",
      "description" : "Synthetic audit event documenting the AI execution for PoC traceability.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-automated-decision-flag.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/automated-decision-flag"
      },
      "name" : "Automated Decision-Making Flag",
      "description" : "Indicates whether the documented AI-supported processing resulted in a decision made solely by automated means.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-case-specific-indication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/case-specific-indication"
      },
      "name" : "Case-Specific Indication",
      "description" : "Records the clinical indication or case-specific reason for applying the AI system in the documented patient context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Communication-sc-04-correction-exp-patient-explanation-001.html"
      }],
      "reference" : {
        "reference" : "Communication/sc-04-correction-exp-patient-explanation-001"
      },
      "name" : "Communication: Patient-Facing AI Explanation (4)",
      "description" : "Synthetic patient-facing explanation about AI-supported processing and human review.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-04-correction-exp-corrected-clinical-observation-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-04-correction-exp-corrected-clinical-observation-001"
      },
      "name" : "Corrected Clinical Observation: Early Warning Risk Assessment (4)",
      "description" : "Human-corrected clinical result preserving traceability to the original AI-generated output.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-device-riskassist-ai.html"
      }],
      "reference" : {
        "reference" : "Device/device-riskassist-ai"
      },
      "name" : "Device: RiskAssist AI",
      "description" : "Synthetic AI system for NEWS2-inspired early-warning risk assessment.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ehds-data-category-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ehds-data-category-cs"
      },
      "name" : "EHDS Data Category Code System",
      "description" : "Codes representing categories of electronic health data that may be made available for secondary use under the EHDS.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ehds-data-category-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ehds-data-category-vs"
      },
      "name" : "EHDS Data Category Value Set",
      "description" : "Categories of electronic health data that may be documented for secondary-use and AI-development contexts.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ehds-data-permit.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ehds-data-permit"
      },
      "name" : "EHDS Data Permit",
      "description" : "Records the identifier of an EHDS data permit associated with the documented secondary use, where applicable.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ehds-secondary-use-purpose.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ehds-secondary-use-purpose"
      },
      "name" : "EHDS Secondary Use Purpose",
      "description" : "Records the documented purpose for secondary use of electronic health data in the EHDS context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ehds-secondary-use-purpose-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ehds-secondary-use-purpose-cs"
      },
      "name" : "EHDS Secondary-Use Purpose Code System",
      "description" : "Codes representing permitted categories of purpose for the secondary use of electronic health data under the EHDS.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ehds-secondary-use-purpose-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ehds-secondary-use-purpose-vs"
      },
      "name" : "EHDS Secondary-Use Purpose Value Set",
      "description" : "Purpose categories used to document the secondary use of electronic health data under the EHDS.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ehds-usage-category.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ehds-usage-category"
      },
      "name" : "EHDS Usage Category",
      "description" : "Classifies the documented use of electronic health data as primary use or secondary use in the EHDS context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ehds-usage-category-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ehds-usage-category-cs"
      },
      "name" : "EHDS Usage Category Code System",
      "description" : "Codes distinguishing primary use from secondary use of electronic health data in the context of the European Health Data Space.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ehds-usage-category-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ehds-usage-category-vs"
      },
      "name" : "EHDS Usage Category Value Set",
      "description" : "Categories distinguishing primary and secondary use of electronic health data in the EHDS context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-encounter-001.html"
      }],
      "reference" : {
        "reference" : "Encounter/encounter-001"
      },
      "name" : "Encounter: Acute Care Assessment",
      "description" : "Synthetic encounter for suspected infection and early-warning risk assessment.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-model-card.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-model-card"
      },
      "name" : "EU AI Act Model Card",
      "description" : "A DocumentReference profile representing technical documentation about an AI system, such as intended use, limitations, risk-related information, performance-related information, and model documentation.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-artifact-type-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-artifact-type-cs"
      },
      "name" : "EU AI Artifact Type Code System",
      "description" : "Codes identifying AI-related documentation artifacts represented by this implementation guide.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-audit-entity-role.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-audit-entity-role"
      },
      "name" : "EU AI Audit Entity Role Code System",
      "description" : "Roles used to distinguish entities involved in an AI execution audit event.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-eu-ai-audit-entity-role-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-audit-entity-role-vs"
      },
      "name" : "EU AI Audit Entity Role Value Set",
      "description" : "Roles of entities involved in an AI execution audit event.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-case-specific-indication-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-case-specific-indication-cs"
      },
      "name" : "EU AI Case-Specific Indication Code System",
      "description" : "Codes describing the clinical purpose for which an AI system was applied in an individual case.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-eu-ai-case-specific-indication-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-case-specific-indication-vs"
      },
      "name" : "EU AI Case-Specific Indication Value Set",
      "description" : "Clinical purposes for applying an AI system in an individual care context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-clinical-validation-status-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-clinical-validation-status-cs"
      },
      "name" : "EU AI Clinical Validation Status Code System",
      "description" : "Codes indicating the documented clinical validation status of an AI system for its intended clinical use.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-eu-ai-clinical-validation-status-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-clinical-validation-status-vs"
      },
      "name" : "EU AI Clinical Validation Status Value Set",
      "description" : "Clinical validation statuses applicable to an AI system and its documented intended use.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-contact-purpose-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-contact-purpose-cs"
      },
      "name" : "EU AI Contact Purpose Code System",
      "description" : "Codes identifying organizational contact responsibilities relevant to data protection and AI-system governance.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-data-quality-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-data-quality-cs"
      },
      "name" : "EU AI Data Quality Code System",
      "description" : "Codes describing assessed data-quality characteristics relevant to the development, validation, testing, or evaluation of an AI system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-eu-ai-data-quality-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-data-quality-vs"
      },
      "name" : "EU AI Data Quality Value Set",
      "description" : "Assessed data-quality characteristics relevant to AI-system development, validation, testing, or evaluation.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-machine-execution-audit-event.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-machine-execution-audit-event"
      },
      "name" : "EU AI Execution Audit Event",
      "description" : "An AuditEvent profile documenting execution-related metadata of an AI-supported processing event to support retrospective reconstruction and auditability.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-observation"
      },
      "name" : "EU AI Generated Observation",
      "description" : "An Observation profile representing a clinical output generated by an AI system, including AI-related transparency metadata and links to the relevant patient, encounter, and AI system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-eu-ai-human-oversight-action-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-human-oversight-action-vs"
      },
      "name" : "EU AI Human Oversight Action Value Set",
      "description" : "Human oversight actions that may be documented in relation to an AI-generated output or recommendation.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-human-oversight.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-human-oversight"
      },
      "name" : "EU AI Human Oversight Assessment",
      "description" : "An ArtifactAssessment profile documenting professional review of an AI-generated output, including whether the result was accepted, corrected, modified, or overridden.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-human-oversight-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-human-oversight-cs"
      },
      "name" : "EU AI Human Oversight Code System",
      "description" : "Codes describing actions taken by a human reviewer in response to an AI-generated output or recommendation.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-identifier-type-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-identifier-type-cs"
      },
      "name" : "EU AI Identifier Type Code System",
      "description" : "Codes identifying regulatory identifier types associated with an AI system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-involvement-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-involvement-cs"
      },
      "name" : "EU AI Involvement Code System",
      "description" : "Codes indicating the manner in which an AI system contributed to the content represented by a FHIR resource.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-eu-ai-involvement-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-involvement-vs"
      },
      "name" : "EU AI Involvement Value Set",
      "description" : "Codes used to classify how an AI system contributed to the content of a FHIR resource.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-log-integrity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-log-integrity"
      },
      "name" : "EU AI Log Integrity Signature",
      "description" : "Provides a digital signature and associated metadata to support verification of the integrity and origin of the AI execution audit record.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-patient-explanation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-patient-explanation"
      },
      "name" : "EU AI Patient Explanation Communication",
      "description" : "A Communication profile documenting that an explanation regarding an AI-supported clinical decision was provided to a patient. The explanation may describe the role of the AI system, the related human oversight, and the key elements of the resulting clinical decision in accordance with Article 86 of the EU AI Act.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-performance-metric-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-performance-metric-cs"
      },
      "name" : "EU AI Performance Metric Code System",
      "description" : "Codes identifying performance characteristics used to document the evaluation of an AI system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-eu-ai-performance-metric-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-performance-metric-vs"
      },
      "name" : "EU AI Performance Metric Value Set",
      "description" : "Performance characteristics that may be documented for an AI system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-practitionerrole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-practitionerrole"
      },
      "name" : "EU AI Practitioner Role",
      "description" : "A PractitionerRole profile representing the role, qualification context, specialty, and AI-related training information of the human reviewer involved in oversight of an AI-supported workflow.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-provenance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-provenance"
      },
      "name" : "EU AI Provenance",
      "description" : "A Provenance profile linking an AI-generated output to the contributing AI system, source data, and relevant processing or governance context.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-organization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-organization"
      },
      "name" : "EU AI Responsible Organization",
      "description" : "An Organization profile representing an organization involved in manufacturing, providing, deploying, or operating an AI system, including relevant accountability and contact information.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-eu-ai-device.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-device"
      },
      "name" : "EU AI System Device",
      "description" : "A Device profile representing an AI system or software component, including system identification, versioning, intended purpose, and selected regulatory documentation metadata.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-eu-ai-system-property-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/eu-ai-system-property-cs"
      },
      "name" : "EU AI System Property Code System",
      "description" : "Codes identifying structured properties used to describe regulatory and operational characteristics of an AI system in Device.property.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-gdpr-art6-codesystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/gdpr-art6-codesystem"
      },
      "name" : "GDPR Article 6 Legal Basis Code System",
      "description" : "Codes representing the legal bases listed in Article 6(1) GDPR for processing personal data.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-gdpr-art6-legal-basis-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/gdpr-art6-legal-basis-vs"
      },
      "name" : "GDPR Article 6 Legal Basis Value Set",
      "description" : "Legal bases listed in Article 6(1) GDPR for documenting the asserted lawful basis for processing personal data.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-gdpr-art9-codesystem.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/gdpr-art9-codesystem"
      },
      "name" : "GDPR Article 9 Condition Code System",
      "description" : "Codes representing selected conditions in Article 9(2) GDPR under which special categories of personal data may be processed.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-gdpr-art9-condition-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/gdpr-art9-condition-vs"
      },
      "name" : "GDPR Article 9 Condition Value Set",
      "description" : "Selected Article 9(2) GDPR conditions relevant to processing health data and other special categories of personal data in this implementation guide.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-01-ai-only-observation-blood-pressure-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-01-ai-only-observation-blood-pressure-001"
      },
      "name" : "Input Observation: Blood Pressure (1)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-02-validation-observation-blood-pressure-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-blood-pressure-001"
      },
      "name" : "Input Observation: Blood Pressure (2)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-03-override-observation-blood-pressure-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-03-override-observation-blood-pressure-001"
      },
      "name" : "Input Observation: Blood Pressure (3)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-04-correction-exp-observation-blood-pressure-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-04-correction-exp-observation-blood-pressure-001"
      },
      "name" : "Input Observation: Blood Pressure (4)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-01-ai-only-observation-temperature-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-01-ai-only-observation-temperature-001"
      },
      "name" : "Input Observation: Body Temperature (1)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-02-validation-observation-temperature-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-temperature-001"
      },
      "name" : "Input Observation: Body Temperature (2)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-03-override-observation-temperature-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-03-override-observation-temperature-001"
      },
      "name" : "Input Observation: Body Temperature (3)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-04-correction-exp-observation-temperature-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-04-correction-exp-observation-temperature-001"
      },
      "name" : "Input Observation: Body Temperature (4)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-01-ai-only-observation-consciousness-status-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-01-ai-only-observation-consciousness-status-001"
      },
      "name" : "Input Observation: Consciousness Status (1)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-02-validation-observation-consciousness-status-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-consciousness-status-001"
      },
      "name" : "Input Observation: Consciousness Status (2)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-03-override-observation-consciousness-status-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-03-override-observation-consciousness-status-001"
      },
      "name" : "Input Observation: Consciousness Status (3)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-04-correction-exp-observation-consciousness-status-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-04-correction-exp-observation-consciousness-status-001"
      },
      "name" : "Input Observation: Consciousness Status (4)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-01-ai-only-observation-heart-rate-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-01-ai-only-observation-heart-rate-001"
      },
      "name" : "Input Observation: Heart Rate (1)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-02-validation-observation-heart-rate-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-heart-rate-001"
      },
      "name" : "Input Observation: Heart Rate (2)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-03-override-observation-heart-rate-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-03-override-observation-heart-rate-001"
      },
      "name" : "Input Observation: Heart Rate (3)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-04-correction-exp-observation-heart-rate-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-04-correction-exp-observation-heart-rate-001"
      },
      "name" : "Input Observation: Heart Rate (4)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-01-ai-only-observation-oxygen-saturation-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-01-ai-only-observation-oxygen-saturation-001"
      },
      "name" : "Input Observation: Oxygen Saturation (1)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-02-validation-observation-oxygen-saturation-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-oxygen-saturation-001"
      },
      "name" : "Input Observation: Oxygen Saturation (2)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-03-override-observation-oxygen-saturation-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-03-override-observation-oxygen-saturation-001"
      },
      "name" : "Input Observation: Oxygen Saturation (3)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-04-correction-exp-observation-oxygen-saturation-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-04-correction-exp-observation-oxygen-saturation-001"
      },
      "name" : "Input Observation: Oxygen Saturation (4)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-01-ai-only-observation-respiratory-rate-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-01-ai-only-observation-respiratory-rate-001"
      },
      "name" : "Input Observation: Respiratory Rate (1)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-02-validation-observation-respiratory-rate-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-respiratory-rate-001"
      },
      "name" : "Input Observation: Respiratory Rate (2)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-03-override-observation-respiratory-rate-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-03-override-observation-respiratory-rate-001"
      },
      "name" : "Input Observation: Respiratory Rate (3)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-sc-04-correction-exp-observation-respiratory-rate-001.html"
      }],
      "reference" : {
        "reference" : "Observation/sc-04-correction-exp-observation-respiratory-rate-001"
      },
      "name" : "Input Observation: Respiratory Rate (4)",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-organization-examplemed.html"
      }],
      "reference" : {
        "reference" : "Organization/organization-examplemed"
      },
      "name" : "Manufacturer Organization: ExampleMed AI GmbH",
      "description" : "The fictional manufacturer/provider of the RiskAssist AI system.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ext-model-card.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ext-model-card"
      },
      "name" : "Model Card Reference",
      "description" : "References the model card that documents the AI system's intended purpose, limitations, performance, risks, and other relevant technical information.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-modelcard-riskassist-ai.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/modelcard-riskassist-ai"
      },
      "name" : "Model Card: RiskAssist AI v1.0.0",
      "description" : "Synthetic model card for the deterministic AI-output simulation component used in the PoC.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-model-card"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-organization-examplehospital.html"
      }],
      "reference" : {
        "reference" : "Organization/organization-examplehospital"
      },
      "name" : "Operator Organization: Example Hospital",
      "description" : "The fictional healthcare organization operating the AI system.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-patient-001.html"
      }],
      "reference" : {
        "reference" : "Patient/patient-001"
      },
      "name" : "Patient: Synthetic Patient 001",
      "description" : "A fictional female patient used in the NEWS2-inspired PoC scenarios.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-practitioner-001.html"
      }],
      "reference" : {
        "reference" : "Practitioner/practitioner-001"
      },
      "name" : "Practitioner: Human Reviewer",
      "description" : "The fictional clinician responsible for reviewing the AI-generated output.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-practitionerrole-reviewer-001.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/practitionerrole-reviewer-001"
      },
      "name" : "PractitionerRole: Human Reviewer",
      "description" : "Synthetic practitioner role representing a trained internal medicine reviewer.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-practitionerrole"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-sc-01-ai-only-provenance-ai-output-001.html"
      }],
      "reference" : {
        "reference" : "Provenance/sc-01-ai-only-provenance-ai-output-001"
      },
      "name" : "Provenance: AI Output Generation (1)",
      "description" : "Synthetic provenance resource linking the AI output to the AI system, input data, and legal processing context.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-sc-02-validation-provenance-ai-output-001.html"
      }],
      "reference" : {
        "reference" : "Provenance/sc-02-validation-provenance-ai-output-001"
      },
      "name" : "Provenance: AI Output Generation (2)",
      "description" : "Synthetic provenance resource linking the AI output to the AI system, input data, and legal processing context.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-sc-03-override-provenance-ai-output-001.html"
      }],
      "reference" : {
        "reference" : "Provenance/sc-03-override-provenance-ai-output-001"
      },
      "name" : "Provenance: AI Output Generation (3)",
      "description" : "Synthetic provenance resource linking the AI output to the AI system, input data, and legal processing context.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-sc-04-correction-exp-provenance-ai-output-001.html"
      }],
      "reference" : {
        "reference" : "Provenance/sc-04-correction-exp-provenance-ai-output-001"
      },
      "name" : "Provenance: AI Output Generation (4)",
      "description" : "Synthetic provenance resource linking the AI output to the AI system, input data, and legal processing context.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-example-secondary-use-provenance.html"
      }],
      "reference" : {
        "reference" : "Provenance/example-secondary-use-provenance"
      },
      "name" : "Provenance: Secondary Use Example",
      "description" : "Example showing EHDS secondary use purpose and data permit.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-third-country-data-transfer.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/third-country-data-transfer"
      },
      "name" : "Third-Country Data Transfer",
      "description" : "Documents whether use of the AI system involves a transfer of personal data to a third country or an international organisation and identifies the destination country or countries where applicable.",
      "isExample" : false
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "profiles.html",
        "name" : "profiles.html",
        "title" : "Profiles",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "extensions.html",
        "name" : "extensions.html",
        "title" : "Extensions",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "terminology.html",
        "name" : "terminology.html",
        "title" : "Terminology",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "examples.html",
        "name" : "examples.html",
        "title" : "Examples",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "dependencies.html",
        "name" : "dependencies.html",
        "title" : "Dependencies",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "ip-statements.html",
        "name" : "ip-statements.html",
        "title" : "Intellectual Property",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2026+"
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
      "value" : "http://example.org/fhir/eu-ai-transparency/history.html"
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
