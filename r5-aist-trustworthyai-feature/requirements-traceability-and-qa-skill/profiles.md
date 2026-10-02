# Profiles - v0.1.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

The Implementation Guide defines profiles covering the complete lifecycle of AI-supported clinical decision making. They are organized into three architectural layers, plus one resource-independent profile for marking AI-generated content. Each profile page lists the [regulatory requirements](requirements.md) it implements.

| | | |
| :--- | :--- | :--- |
| Static System Context | [Trust_AIDevice](StructureDefinition-trust-ai-device.md) | Device |
| Static System Context | [Trust_AIOrganization](StructureDefinition-trust-ai-organization.md) | Organization |
| Static System Context | [Trust_AIModelCard](StructureDefinition-trust-ai-model-card.md) | DocumentReference |
| AI Output Context | [Trust_AIObservation](StructureDefinition-trust-ai-observation.md) | Observation |
| AI Output Context | [Trust_AIProvenance](StructureDefinition-trust-ai-provenance.md) | Provenance |
| AI Output Context | [Trust_AIAuditEvent](StructureDefinition-trust-ai-machine-execution-audit-event.md) | AuditEvent |
| Clinical Decision Context | [Trust_AIHumanOversightAssessment](StructureDefinition-trust-ai-human-oversight.md) | ArtifactAssessment |
| Clinical Decision Context | [Trust_AIPractitionerRole](StructureDefinition-trust-ai-practitionerrole.md) | PractitionerRole |
| Clinical Decision Context | [Trust_AIPatientExplanation](StructureDefinition-trust-ai-patient-explanation.md) | Communication |
| AI Involvement Marking | [TrustAIData](StructureDefinition-trust-ai-data.md) | any Resource |

## Static System Context

These profiles describe the AI system, responsible organizations, and technical documentation independently of a specific clinical execution.

### Trust_AIDevice (Device)

Represents the AI system as an identifiable and versioned system component.

It includes metadata such as:

* system name and version
* manufacturer and owning organization
* EU database registration number
* CE marking and notified body
* intended purpose and target population
* expected lifetime
* applicable standards and QMS certification
* references to the model card and the EU Declaration of Conformity
* third-country data transfer

### Trust_AIOrganization (Organization)

Represents organizations involved in the AI lifecycle, including manufacturers, deployers, and healthcare providers.

It contains the official contact of the legal entity and may also contain:

* the Data Protection Officer contact
* the AI incident reporting contact
* a reference to the Data Protection Impact Assessment (DPIA)

### Trust_AIModelCard (DocumentReference)

Represents model-card documentation and technical documentation.

It references the full technical documentation and instructions for use, and contains structured metadata regarding:

* performance metrics and bias disclosure
* training data provenance, EHDS data category, data permit, and data quality
* data retention
* clinical validation status

-------

## AI Output Context

These profiles document the AI-generated output, its execution, and its legal traceability.

### Trust_AIObservation (Observation)

Represents an AI-generated clinical finding. It references the patient and the AI system that generated it, records the time of generation, and carries a mandatory flag indicating AI origin.

AI outputs that are not Observations can be represented by any FHIR resource that is marked according to [TrustAIData](StructureDefinition-trust-ai-data.md), as shown in [Use Case 2](use_case2.md).

### Trust_AIProvenance (Provenance)

Documents the data lineage and the legal processing context of an AI output:

* the input data used and the AI system as agent
* the period of the AI processing activity
* the GDPR Art. 6 legal basis and the GDPR Art. 9 condition for processing health data
* the EHDS usage category (primary or secondary use) and, for secondary use, the purpose and the data permit
* the case-specific indication for using the AI system
* whether the decision was made solely by automated means (GDPR Art. 22)

### Trust_AIAuditEvent (AuditEvent)

Documents the technical execution of the AI system: the execution period, the AI system as source and agent, the generated output, any reference databases used, and an optional integrity signature of the log entry.

-------

## Clinical Decision Context

These profiles document human oversight and patient communication.

### Trust_AIHumanOversightAssessment (ArtifactAssessment)

Represents the human review of an AI-generated output. It documents the reviewer, the oversight action (validation, override, or correction), the rationale, and any evidence shown to the reviewer.

### Trust_AIPractitionerRole (PractitionerRole)

Represents the reviewing healthcare professional, the organization in which they perform the oversight role, their specialty, and whether they have completed training specific to the AI system.

### Trust_AIPatientExplanation (Communication)

Documents the patient-facing explanation of an AI-supported clinical decision (AI Act Art. 86): the decision that is explained, the explanation content, when it was provided, and whether the patient was informed about the use of AI.

-------

## AI Involvement Marking

### TrustAIData (Resource)

A resource-independent profile that marks any FHIR resource as AI-involved through a `meta.security` label from the [Trust AI Involvement Code System](CodeSystem-trust-ai-involvement-cs.md) (`ai-generated`, `ai-assisted`, `ai-reported`, `ai-asserted`). AI outputs without a dedicated profile, such as a DiagnosticReport, can thereby be documented with the same transparency pattern.

