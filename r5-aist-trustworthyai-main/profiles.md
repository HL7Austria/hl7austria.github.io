# Profiles - v0.1.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

The Implementation Guide defines profiles covering the complete lifecycle of AI-supported clinical decision making.

## Static System Context

These profiles describe the AI system, responsible organizations, and technical documentation independently of a specific clinical execution.

### EU_AIDevice (Device)

Represents the AI system as an identifiable and versioned system component.

It includes metadata such as:

* system name
* version
* manufacturer
* owner
* CE marking information
* intended purpose
* target population
* expected lifetime
* EU AI database identifier

### EU_AIOrganization (Organization)

Represents organizations involved in the AI lifecycle, including manufacturers, deployers, and healthcare providers.

It may also contain contact information for:

* Data Protection Officers
* Incident reporting
* Responsible organizations

### EU_AIModelCard (DocumentReference)

Represents model-card documentation and technical documentation.

It references supporting documentation and contains structured metadata regarding:

* performance
* training data
* privacy
* clinical validation

-------

## AI Output and Execution Context

These profiles document AI execution and legal traceability.

### EU_AIObservation (Observation)

Represents AI-generated clinical findings.

### EU_AIAuditEvent (AuditEvent)

Documents technical execution logs and integrity information.

### EU_AIProvenance (Provenance)

Documents data lineage, legal basis, source data, and execution context.

### EU_AIConsent (Consent)

Documents patient consent and AI-related transparency information.

-------

## Clinical Decision and Patient-Facing Context

These profiles document human oversight and patient communication.

### EU_AIHumanOversightAssessment (ArtifactAssessment)

Represents human validation, override, correction, and review of AI-generated outputs.

### EU_AIPractitionerRole (PractitionerRole)

Represents the reviewing healthcare professional and associated AI-specific competencies.

### EU_AIPatientExplanation (Communication)

Documents patient-facing explanations regarding AI-supported clinical decisions.

