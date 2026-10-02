# Extensions - v0.1.0

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

# Extensions

The IG defines custom extensions where the FHIR core specification does not sufficiently represent AI transparency, legal context, or regulatory metadata. The **Requirement** column links to the logical attribute on the [Requirements Traceability](requirements.md) page that the extension implements.

## Static System Context

| | | | |
| :--- | :--- | :--- | :--- |
| [Model Card Reference](StructureDefinition-ext-model-card.md) | [Trust_AIDevice](StructureDefinition-trust-ai-device.md) | Reference to the[Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md) | – |
| [EU Conformity Declaration Reference](StructureDefinition-trust-ai-conformity-reference.md) | [Trust_AIDevice](StructureDefinition-trust-ai-device.md) | Reference to the EU Declaration of Conformity (DocumentReference) | [SYS-03a](requirements.md#sys-03a) |
| [Third-Country Data Transfer](StructureDefinition-third-country-data-transfer.md) | [Trust_AIDevice](StructureDefinition-trust-ai-device.md) | `transferFlag`(boolean),`destinationCountry`(ISO 3166 code) | [LAW-04.1](requirements.md#law-041),[LAW-04.2](requirements.md#law-042) |
| [Trust AI DPIA Reference](StructureDefinition-trust-ai-dpia-reference.md) | [Trust_AIOrganization](StructureDefinition-trust-ai-organization.md) | Reference to the DPIA document (DocumentReference) | [SYS-09](requirements.md#sys-09) |
| [AI Performance Metrics](StructureDefinition-ai-performance-metrics.md) | [Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md) | `metric`(`type`,`value`),`biasDisclosure` | [QUAL-01.1](requirements.md#qual-011),[QUAL-01.2](requirements.md#qual-012),[QUAL-04](requirements.md#qual-04) |
| [AI Training Data Metadata](StructureDefinition-ai-training-data.md) | [Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md) | `provenance`,`Category`,`SecondaryUsePurpose`,`Permit`,`dataQuality` | [QUAL-02a](requirements.md#qual-02a),[QUAL-02b](requirements.md#qual-02b),[QUAL-02c](requirements.md#qual-02c),[QUAL-03](requirements.md#qual-03) |
| [AI Retention Information](StructureDefinition-ai-retention-information.md) | [Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md) | `retention`(Duration) | [LAW-06](requirements.md#law-06) |
| [AI Clinical Validation Status](StructureDefinition-ai-clinical-validation-status.md) | [Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md) | CodeableConcept | – |

## AI Output Context

| | | | |
| :--- | :--- | :--- | :--- |
| [Usage Category](StructureDefinition-usage-category.md) | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md) | CodeableConcept (primary or secondary use) | [LAW-03.1](requirements.md#law-031) |
| [Secondary Use Purpose](StructureDefinition-secondary-use-purpose.md) | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md) | CodeableConcept | [LAW-03.2](requirements.md#law-032) |
| [Data Permit](StructureDefinition-data-permit.md) | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md) | Identifier | [LAW-03.2](requirements.md#law-032) |
| [Case-Specific Indication](StructureDefinition-case-specific-indication.md) | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md) | CodeableConcept | [USE-04](requirements.md#use-04) |
| [Automated Decision-Making Flag](StructureDefinition-automated-decision-flag.md) | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md) | boolean | [LAW-02](requirements.md#law-02) |
| [Trust AI Log Integrity Signature](StructureDefinition-trust-ai-log-integrity.md) | [Trust_AIAuditEvent](StructureDefinition-trust-ai-machine-execution-audit-event.md) | Signature | [LAW-08](requirements.md#law-08) |

## Clinical Decision Context

| | | | |
| :--- | :--- | :--- | :--- |
| [AI System-Specific Training Status](StructureDefinition-ai-system-training-status.md) | [Trust_AIPractitionerRole](StructureDefinition-trust-ai-practitionerrole.md) | boolean | [HL-02.2](requirements.md#hl-022) |
| [Patient AI Info Provided Flag](StructureDefinition-patient-ai-info-provided-flag.md) | [Trust_AIPatientExplanation](StructureDefinition-trust-ai-patient-explanation.md) | boolean | [LAW-01c](requirements.md#law-01c) |

