# Terminology - v0.1.0

* [**Table of Contents**](toc.md)
* **Terminology**

## Terminology

# Terminology

The Implementation Guide defines custom terminology where existing FHIR terminologies do not sufficiently represent AI transparency concepts. It contains 16 CodeSystems and 12 ValueSets.

## AI Transparency and Documentation

| | | | |
| :--- | :--- | :--- | :--- |
| [Trust AI Involvement](CodeSystem-trust-ai-involvement-cs.md) | `ai-generated`,`ai-assisted`,`ai-reported`,`ai-asserted` | [Trust AI Involvement](ValueSet-trust-ai-involvement-vs.md)(required) | [TrustAIData](StructureDefinition-trust-ai-data.md)`meta.security`,[Trust_AIObservation](StructureDefinition-trust-ai-observation.md)`interpretation` |
| [Trust AI Performance Metric](CodeSystem-trust-ai-performance-metric-cs.md) | `accuracy`,`sensitivity`,`specificity`,`robustness` | [Trust AI Performance Metric](ValueSet-trust-ai-performance-metric-vs.md)(extensible) | [AI Performance Metrics](StructureDefinition-ai-performance-metrics.md) |
| [Trust AI Clinical Validation Status](CodeSystem-trust-ai-clinical-validation-status-cs.md) | `clinically-validated`,`not-clinically-validated`,`validation-in-progress`,`technical-validation-only` | [Trust AI Clinical Validation Status](ValueSet-trust-ai-clinical-validation-status-vs.md)(required) | [AI Clinical Validation Status](StructureDefinition-ai-clinical-validation-status.md) |
| [Trust AI Data Quality](CodeSystem-trust-ai-data-quality-cs.md) | `representative`,`error-free`,`complete`,`relevant` | [Trust AI Data Quality](ValueSet-trust-ai-data-quality-vs.md)(extensible) | [AI Training Data Metadata](StructureDefinition-ai-training-data.md) |
| [Trust AI Case-Specific Indication](CodeSystem-trust-ai-case-specific-indication-cs.md) | `triage`,`screening`,`second-opinion`,`diagnostic-support`,`treatment-planning`,`prognosis` | [Trust AI Case-Specific Indication](ValueSet-trust-ai-case-specific-indication-vs.md)(extensible) | [Case-Specific Indication](StructureDefinition-case-specific-indication.md) |

## Human Oversight

| | | | |
| :--- | :--- | :--- | :--- |
| [Trust AI Human Oversight](CodeSystem-trust-ai-human-oversight-cs.md) | `human-validation`,`human-override`,`human-correction` | [Trust AI Human Oversight Action](ValueSet-trust-ai-human-oversight-action-vs.md)(extensible) | [Trust_AIHumanOversightAssessment](StructureDefinition-trust-ai-human-oversight.md)`content.classifier` |

## GDPR

| | | | |
| :--- | :--- | :--- | :--- |
| [GDPR Article 6 Legal Basis](CodeSystem-gdpr-art6-codesystem.md) | Art. 6(1)(a) to (f) | [GDPR Article 6 Legal Basis](ValueSet-gdpr-art6-legal-basis-vs.md)(required) | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md)`authorization` |
| [GDPR Article 9 Condition](CodeSystem-gdpr-art9-codesystem.md) | Art. 9(2)(a), (c), (g), (h), (i), (j) | [GDPR Article 9 Condition](ValueSet-gdpr-art9-condition-vs.md)(required) | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md)`authorization` |

## European Health Data Space (EHDS)

| | | | |
| :--- | :--- | :--- | :--- |
| [Usage Category](CodeSystem-usage-category-cs.md) | `primary-use`,`secondary-use` | [Usage Category](ValueSet-usage-category-vs.md)(required) | [Usage Category](StructureDefinition-usage-category.md) |
| [Data Category](CodeSystem-data-category-cs.md) | 17 categories of electronic health data for secondary use | [Data Category](ValueSet-data-category-vs.md)(extensible) | [AI Training Data Metadata](StructureDefinition-ai-training-data.md) |
| [Secondary-Use Purpose](CodeSystem-secondary-use-purpose-cs.md) | 8 permitted purposes of secondary use | [Secondary-Use Purpose](ValueSet-secondary-use-purpose-vs.md)(required in[Secondary Use Purpose](StructureDefinition-secondary-use-purpose.md), extensible in[AI Training Data Metadata](StructureDefinition-ai-training-data.md)) | [Secondary Use Purpose](StructureDefinition-secondary-use-purpose.md),[AI Training Data Metadata](StructureDefinition-ai-training-data.md) |

## Structural Codes

These code systems provide fixed codes that identify slices and document types within the profiles.

| | | | |
| :--- | :--- | :--- | :--- |
| [Trust AI Contact Purpose](CodeSystem-trust-ai-contact-purpose-cs.md) | `dpo`,`ai-incident-reporting` | – | [Trust_AIOrganization](StructureDefinition-trust-ai-organization.md)`contact.purpose` |
| [Trust AI Artifact Type](CodeSystem-trust-ai-artifact-type-cs.md) | `model-card` | – | [Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md)`type` |
| [Trust AI Identifier Type](CodeSystem-trust-ai-identifier-type-cs.md) | `trust-ai-registration-number` | – | [Trust_AIDevice](StructureDefinition-trust-ai-device.md)`identifier.type` |
| [Trust AI System Property](CodeSystem-trust-ai-system-property-cs.md) | `ce-mark`,`notified-body-id`,`expected-lifetime`,`intended-purpose`,`target-population` | – | [Trust_AIDevice](StructureDefinition-trust-ai-device.md)`property.type` |
| [Trust AI Audit Entity Role](CodeSystem-trust-ai-audit-entity-role.md) | `reference-database`,`ai-output` | [Trust AI Audit Entity Role](ValueSet-trust-ai-audit-entity-role-vs.md) | [Trust_AIAuditEvent](StructureDefinition-trust-ai-machine-execution-audit-event.md)`entity.role` |

