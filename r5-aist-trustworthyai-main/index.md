# Home - v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ImplementationGuide/fhir.ig.eu.aitransparency | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EUAITransparencyIG |

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

* AI system identification and system-level metadata,
* organizational accountability and contact information,
* model-card and technical-documentation metadata,
* training-data and data-quality context,
* privacy and data-use metadata,
* AI-generated clinical outputs,
* execution traceability and audit metadata,
* provenance and legal-context documentation,
* human oversight actions,
* patient-facing information and explanation documentation.

The IG does not replace clinical validation, conformity assessment, data protection assessment, national legal review, or organization-specific governance processes.

## Architectural Structure

The IG organizes the profiles into three main contexts.

### 1. Static System Context

These profiles describe the AI system, responsible organizations, and technical documentation independently of a specific clinical execution.

* **EU_AIDevice** (`Device`): Represents the AI system as an identifiable and versioned system component. It includes metadata such as system name, version, manufacturer, owner, CE marking information, intended purpose, target population, expected lifetime, and EU AI database identifier where applicable.
* **EU_AIOrganization** (`Organization`): Represents organizations involved in the AI system context, such as the manufacturer, deployer, or healthcare provider. It can document relevant contact points such as data protection or incident-reporting contacts.
* **EU_AIModelCard** (`DocumentReference`): Represents model-card and technical-documentation metadata. It can reference documentation artifacts and includes structured extensions for performance information, training-data context, privacy metadata, and clinical validation status.

### 2. AI Output and Execution Context

These profiles document AI-generated outputs, execution events, provenance, and selected legal-context metadata.

* **EU_AIObservation** (`Observation`): Represents an AI-generated clinical output, such as a risk classification, recommendation, or other clinical result. It documents the case-specific indication and whether the output was used in a solely automated decision-making context.
* **EU_AIAuditEvent** (`AuditEvent`): Records the technical execution trace, including references to input data, output data, the AI system, and log-integrity metadata.
* **EU_AIProvenance** (`Provenance`): Links the AI-generated output to the AI system, source data, execution context, and selected legal-context metadata, including GDPR Article 6 and Article 9 documentation.
* **EU_AIConsent** (`Consent`): Documents patient-facing processing context, including whether AI-related information was provided and whether the documented processing context is permitted or denied, for example in relation to an opt-out. It is not used as the sole GDPR legal basis.

### 3. Clinical Decision and Patient-Facing Context

These profiles document human oversight and patient-facing explanation.

* **EU_AIHumanOversightAssessment** (`ArtifactAssessment`): Documents the human review of an AI-generated output. It can represent validation, override, or correction by a human reviewer without overwriting the original AI output.
* **EU_AIPractitionerRole** (`PractitionerRole`): Represents the reviewer in their clinical and organizational role, including whether AI-specific training was completed.
* **EU_AIPatientExplanation** (`Communication`): Documents patient-facing explanation related to the AI-supported process, where such an explanation is requested or provided.

## Validated Clinical Use Case (Instances)

To demonstrate the practical application and interoperability of these profiles, this IG includes a fully validated example instance graph.

The scenario follows a fictitious patient (Elias Vance) undergoing a Thorax CT scan evaluated by the **AuraScan Pulmo-Net v3** AI system at **St. Chronos Medical Center**. It demonstrates the complete lifecycle of AI compliance:

1. Recording the patient's processing consent and EHDS opt-out preferences (`EU_AIConsent`).
1. The AI's preliminary (false-positive) finding of a pulmonary nodule (`EU_AIObservation`).
1. The cryptographic audit logging and data lineage of the execution (`EU_AIAuditEvent`&`EU_AIProvenance`).
1. The final clinical override by a specially trained human radiologist, Dr. Thorne, based on an explainability heatmap (`EU_AIHumanOversightAssessment`).
1. The subsequent communication of the human-AI decision workflow to the patient (`EU_AIPatientExplanation`).

## Terminology

The IG defines custom terminology where existing FHIR or clinical terminologies do not directly represent the required AI transparency and legal-context concepts.

The terminology includes:

* EU AI transparency and human-oversight codes,
* case-specific AI indication codes,
* AI performance and clinical-validation status codes,
* EHDS usage and data-category codes,
* EHDS secondary-use purpose codes,
* GDPR Article 6 legal-basis codes,
* GDPR Article 9 exception codes.

These codes are used to support structured bindings in the profiles and to make the selected metadata explicit and machine-readable.

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
  "date" : "2026-06-18T12:04:51+00:00",
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
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-clinical-validation-status"
      },
      "name" : "AI Clinical Validation Status",
      "description" : "Documents whether the AI system is clinically validated, not clinically validated, under validation, or only technically validated.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-clinical-validation-status-vs"
      },
      "name" : "AI Clinical Validation Status ValueSet",
      "description" : "Codes describing the clinical validation status of an AI system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-data-quality-vs"
      },
      "name" : "AI Data Quality ValueSet",
      "description" : "Codes describing data-quality characteristics relevant for training-data documentation (Art. 10 AI Act).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-ai-observation-risk-001"
      },
      "name" : "AI Output: Early Warning Risk Assessment",
      "description" : "AI-generated early warning risk assessment output.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-performance-metric-vs"
      },
      "name" : "AI Performance Metric ValueSet",
      "description" : "Codes for technical quality and performance metrics (QUAL-01).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-performance-metrics"
      },
      "name" : "AI Performance Metrics",
      "description" : "Captures quantitative metrics and bias disclosures.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-privacy-metadata"
      },
      "name" : "AI Privacy Metadata",
      "description" : "GDPR and AI Act privacy parameters. Third country transfer flags and data retention policies at the model level.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-system-training-status"
      },
      "name" : "AI System Specific Training",
      "description" : "Mandatory flag indicating whether the human actor has received specific training for the utilized AI tool.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ai-training-data"
      },
      "name" : "AI Training Data Metadata",
      "description" : "Details regarding provenance, EHDS categories, and data quality.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ArtifactAssessment"
      }],
      "reference" : {
        "reference" : "ArtifactAssessment/sc-02-validation-human-oversight-001"
      },
      "name" : "Assessment: Human Validation of AI Output",
      "description" : "Human oversight assessment documenting validation of the AI output.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/sc-02-validation-audit-event-ai-execution-001"
      },
      "name" : "Audit Log: AI Execution Trace",
      "description" : "Audit event documenting the simulated AI execution.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-machine-execution-audit-event"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/automated-decision-flag"
      },
      "name" : "Automated Decision-Making Flag",
      "description" : "Indicates whether the AI-generated output was used as part of a solely automated decision-making process within the meaning of GDPR Article 22.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/case-specific-indication"
      },
      "name" : "Case-Specific Indication",
      "description" : "The clinical reason why the AI was used for this specific patient.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      }],
      "reference" : {
        "reference" : "Communication/Communication-sc-02-patient-explanation-001"
      },
      "name" : "Communication: Patient-Facing AI Explanation",
      "description" : "Synthetic patient-facing explanation about AI-supported processing.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Consent"
      }],
      "reference" : {
        "reference" : "Consent/sc-02-validation-consent-ai-use-001"
      },
      "name" : "Consent: AI Use for PoC Scenario sc-02-validation",
      "description" : "Consent and patient information context for AI-related processing.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-consent"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      }],
      "reference" : {
        "reference" : "Device/device-riskassist-ai"
      },
      "name" : "Device: RiskAssist AI",
      "description" : "Example AI system used for the NEWS2-inspired PoC scenario.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ehds-data-category-vs"
      },
      "name" : "EHDS Data Category ValueSet",
      "description" : "Categories of electronic health data relevant for secondary-use documentation under the EHDS (EHDS Art. 51).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ehds-data-permit"
      },
      "name" : "EHDS Data Permit",
      "description" : "The unique ID of the Health Data Access Body permit (required if secondary use).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ehds-secondary-use-purpose"
      },
      "name" : "EHDS Secondary Use Purpose",
      "description" : "Documents the permitted purpose for secondary use of electronic health data under the EHDS.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/ehds-purpose-codesystem"
      },
      "name" : "EHDS Secondary Use Purpose CodeSystem",
      "description" : "Code system defining permitted EHDS secondary-use purposes relevant for documenting secondary use of electronic health data.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ehds-secondary-use-purpose-vs"
      },
      "name" : "EHDS Secondary Use Purpose ValueSet",
      "description" : "Permitted purposes for secondary use of electronic health data under the EHDS.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ehds-usage-category"
      },
      "name" : "EHDS Usage Category",
      "description" : "Categorizes the data processing as Primary Care or Secondary Use according to the EHDS.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ehds-usage-category-vs"
      },
      "name" : "EHDS Usage Category ValueSet",
      "description" : "Codes defining whether data usage is documented as primary use or secondary use (LAW-03.1).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
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
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-explanation-requested"
      },
      "name" : "EU AI Act Explanation Requested Flag",
      "description" : "Flag indicating if the patient (data subject) explicitly requested a clear and meaningful explanation of the AI's role and the clinical decision.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-log-integrity"
      },
      "name" : "EU AI Act Log Integrity Signature",
      "description" : "Cryptographic signature or verification hash to ensure the integrity, accountability, and non-repudiation of the AI execution audit log.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
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
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-case-specific-indication-vs"
      },
      "name" : "EU AI Case-Specific Indication ValueSet",
      "description" : "Clinical and administrative reasons for applying an AI system in a specific case (USE-04).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-consent"
      },
      "name" : "EU AI Consent and Processing Context",
      "description" : "A Consent profile documenting patient-facing information, permission status, and opt-out preferences for AI-supported processing where applicable.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
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
        "valueString" : "StructureDefinition:resource"
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
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/eu-ai-patient-explanation"
      },
      "name" : "EU AI Patient Explanation Communication",
      "description" : "A Communication profile documenting patient-facing information about the AI-supported workflow, including the role of the AI system and the related clinical review where applicable.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
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
      }],
      "reference" : {
        "reference" : "CodeSystem/EUAIActCodeSystem"
      },
      "name" : "EU AI Transparency Custom Codes",
      "description" : "Custom codes used in this IG to represent AI transparency, data-use, provenance, technical documentation, data-quality, and human-oversight documentation concepts.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/gdpr-art6-codesystem"
      },
      "name" : "GDPR Article 6 Legal Basis CodeSystem",
      "description" : "Code system defining GDPR Article 6 legal bases relevant for documenting legal-basis metadata in AI-supported processing contexts.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/gdpr-art6-legal-basis-vs"
      },
      "name" : "GDPR Article 6 Legal Basis ValueSet",
      "description" : "Value set including GDPR Article 6 legal bases relevant for documenting the lawful processing of personal data.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/gdpr-art9-codesystem"
      },
      "name" : "GDPR Article 9 Exception CodeSystem",
      "description" : "Code system defining GDPR Article 9 exceptions relevant for documenting the processing context of special categories of personal data, including health data.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/gdpr-art9-exception-vs"
      },
      "name" : "GDPR Article 9 Exception ValueSet",
      "description" : "Value set including GDPR Article 9 exceptions relevant for documenting the processing of special categories of personal data, including health data.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/eu-ai-intervention-vs"
      },
      "name" : "Human Intervention Type ValueSet",
      "description" : "Codes representing the type of human oversight or intervention (HL-03.1).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-temperature-001"
      },
      "name" : "Input Observation: Body Temperature",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-consciousness-status-001"
      },
      "name" : "Input Observation: Consciousness Status",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-heart-rate-001"
      },
      "name" : "Input Observation: Heart Rate",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-oxygen-saturation-001"
      },
      "name" : "Input Observation: Oxygen Saturation",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-respiratory-rate-001"
      },
      "name" : "Input Observation: Respiratory Rate",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sc-02-validation-observation-blood-pressure-001"
      },
      "name" : "Input Observation: Systolic Blood Pressure",
      "description" : "Synthetic NEWS2-inspired input parameter.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/organization-examplemed"
      },
      "name" : "Manufacturer Organization: ExampleMed AI GmbH",
      "description" : "Manufacturer organization for the synthetic AI system.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ext-model-card"
      },
      "name" : "Model Card Reference",
      "description" : "A reference to the DocumentReference resource that acts as the Model Card, containing detailed documentation, intended purpose, and risk assessments.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/modelcard-riskassist-ai"
      },
      "name" : "Model Card: RiskAssist AI v1.0.0",
      "description" : "Synthetic model card for the RiskAssist AI PoC system.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-model-card"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/organization-examplehospital"
      },
      "name" : "Operator Organization: Example Hospital",
      "description" : "Healthcare organization operating the synthetic AI system.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/patient-ai-info-provided"
      },
      "name" : "Patient AI Info Provided Flag",
      "description" : "Confirmation that the patient was informed about the use of AI systems according to AI Act transparency rules.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/patient-001"
      },
      "name" : "Patient: Synthetic Patient 001",
      "description" : "A fictional female patient used in the NEWS2-inspired PoC scenario.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
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
      }],
      "reference" : {
        "reference" : "PractitionerRole/practitionerrole-reviewer-001"
      },
      "name" : "PractitionerRole: Human Reviewer",
      "description" : "Human reviewer role used for AI output validation.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-practitionerrole"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      }],
      "reference" : {
        "reference" : "Provenance/sc-02-validation-provenance-ai-output-001"
      },
      "name" : "Provenance: AI Output Generation",
      "description" : "Provenance linking the AI-generated output to the AI system and input observations.",
      "isExample" : true,
      "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/third-country-data-transfer"
      },
      "name" : "Third-Country Data Transfer",
      "description" : "Captures if patient data is transferred outside the EU by this device.",
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
