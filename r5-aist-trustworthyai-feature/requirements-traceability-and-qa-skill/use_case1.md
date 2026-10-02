# Use Case 1 - AI-supported Risk evaluation - v0.1.0

* [**Table of Contents**](toc.md)
* **Use Case 1 - AI-supported Risk evaluation**

## Use Case 1 - AI-supported Risk evaluation

## Overview

| | |
| :--- | :--- |
| **Actor** | Central Patient Summary application and the simulated[RiskAssist AI](Device-device-riskassist-ai.md)early warning component |
| **Description** | In this simplified suspected-infection deterioration scenario, a synthetic adult patient's abnormal vital signs are provided to RiskAssist AI. The component generates a synthetic high-risk output and records it together with the input observations, execution trace, provenance and audit information, and any documented human oversight or patient-facing explanation. |
| **Trigger** | The synthetic patient's vital-sign observations are submitted to RiskAssist AI for early warning assessment. |
| **Preconditions** | A synthetic adult patient and encounter have been defined, the relevant vital-sign observations are available as structured clinical data, and the[RiskAssist AI](Device-device-riskassist-ai.md)system and[responsible human reviewer](PractitionerRole-practitionerrole-reviewer-001.md)are configured. |
| **Result** | RiskAssist AI has generated a synthetic high-risk output linked to the relevant observations and execution metadata, including provenance and audit information. |

## Description

Use Case one is framed as a simplified suspected-infection deterioration case. In this scenario, a synthetic adult patient presents with abnormal vital signs, including increased body temperature, increased heart rate, increased respiratory rate, reduced oxygen saturation, and low systolic blood pressure. A simulated AI-supported early warning component, referred to as RiskAssist AI, receives these observations and generates a synthetic high-risk output. The output is not stored as an isolated result. It is accompanied by metadata describing when it was generated, which input observations were used, which provenance and audit information was recorded, and whether human oversight or patient-facing explanation was documented.

The metadata is organized into static scenario metadata and generated execution metadata. Static metadata describes the synthetic patient and encounter context, the clinical scenario, the AI system, responsible organizations, model documentation, legal context, human reviewer, and FHIR-specific mapping values. Generated execution metadata is created later by the simulation step and contains the synthetic AI output, execution trace, audit information, provenance information, and optional human oversight or patient explanation metadata.

The synthetic acute-care scenario is inspired by the [NEWS2](https://www.rcp.ac.uk/media/a4ibkkbf/news2-final-report_0_0.pdf). NEWS2 defines a standardized set of routinely measured physiological parameters for assessing acute-illness severity, including respiratory rate, oxygen saturation, supplemental oxygen, systolic blood pressure, pulse rate, level of consciousness or new confusion, and body temperature. These parameters are suitable for the PoC because they can be represented as structured clinical observations and linked to the generated AI output.

## Related FHIR Resources

The following resources represent Use Case 1 in this IG. The examples are taken from the validation scenario (`sc-02-validation`); the patient explanation is taken from the correction scenario (`sc-04-correction-exp`), because the validation scenario has none.

| | | | |
| :--- | :--- | :--- | :--- |
| Clinical context | Patient | – | [patient-001](Patient-patient-001.md) |
| Clinical context | Encounter | – | [encounter-001](Encounter-encounter-001.md) |
| Clinical context | Input Observations | – | [Body Temperature](Observation-sc-02-validation-observation-temperature-001.md),[Heart Rate](Observation-sc-02-validation-observation-heart-rate-001.md),[Respiratory Rate](Observation-sc-02-validation-observation-respiratory-rate-001.md),[Blood Pressure](Observation-sc-02-validation-observation-blood-pressure-001.md),[Oxygen Saturation](Observation-sc-02-validation-observation-oxygen-saturation-001.md),[Consciousness Status](Observation-sc-02-validation-observation-consciousness-status-001.md) |
| Static System Context | AI System | [Trust_AIDevice](StructureDefinition-trust-ai-device.md) | [device-riskassist-ai](Device-device-riskassist-ai.md) |
| Static System Context | Model Card | [Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md) | [modelcard-riskassist-ai](DocumentReference-modelcard-riskassist-ai.md) |
| Static System Context | Manufacturer | [Trust_AIOrganization](StructureDefinition-trust-ai-organization.md) | [organization-examplemed](Organization-organization-examplemed.md) |
| Static System Context | Operator | [Trust_AIOrganization](StructureDefinition-trust-ai-organization.md) | [organization-examplehospital](Organization-organization-examplehospital.md) |
| AI Output Context | AI Output | [Trust_AIObservation](StructureDefinition-trust-ai-observation.md) | [sc-02-validation-ai-observation-risk-001](Observation-sc-02-validation-ai-observation-risk-001.md) |
| AI Output Context | Execution Trace | [Trust_AIAuditEvent](StructureDefinition-trust-ai-machine-execution-audit-event.md) | [sc-02-validation-audit-event-ai-execution-001](AuditEvent-sc-02-validation-audit-event-ai-execution-001.md) |
| AI Output Context | Provenance | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md) | [sc-02-validation-provenance-ai-output-001](Provenance-sc-02-validation-provenance-ai-output-001.md) |
| Clinical Decision Context | Human Reviewer | [Trust_AIPractitionerRole](StructureDefinition-trust-ai-practitionerrole.md) | [practitionerrole-reviewer-001](PractitionerRole-practitionerrole-reviewer-001.md) |
| Clinical Decision Context | Human Oversight | [Trust_AIHumanOversightAssessment](StructureDefinition-trust-ai-human-oversight.md) | [sc-02-validation-human-oversight-001](ArtifactAssessment-sc-02-validation-human-oversight-001.md) |
| Clinical Decision Context | Patient Explanation | [Trust_AIPatientExplanation](StructureDefinition-trust-ai-patient-explanation.md) | [sc-04-correction-exp-patient-explanation-001](Communication-sc-04-correction-exp-patient-explanation-001.md) |

