# Use Cases & Examples - v0.1.0

* [**Table of Contents**](toc.md)
* **Use Cases & Examples**

## Use Cases & Examples

# Use Cases & Examples

## Use Cases

| | |
| :--- | :--- |
| [Use Case 1](use_case1.md) | AI-supported Risk evaluation |
| [Use Case 2](use_case2.md) | AI-generated Diagnostic Report |

## Examples

The example instances of this IG are grouped into two example sets. All example resources are listed on the [Artifacts](artifacts.md) page.

| | | | |
| :--- | :--- | :--- | :--- |
| [Specialized AI Output Scenario](artifacts.md#2) | [RiskAssist AI](Device-device-riskassist-ai.md) | [Trust_AIObservation](StructureDefinition-trust-ai-observation.md) | [Use Case 1](use_case1.md) |
| [Generalized AI Output Scenario](artifacts.md#1) | [DiagnosticAssist AI](Device-dr-ai-device.md) | [DiagnosticReport](DiagnosticReport-dr-ai-diagnostic-report.md) | [Use Case 2](use_case2.md) |

### Specialized AI Output Scenario

The specialized example set contains four scenarios based on the same synthetic patient and AI system:

| | | |
| :--- | :--- | :--- |
| `sc-01-ai-only` | Core AI execution and traceability only | [sc-01-ai-only-ai-observation-risk-001](Observation-sc-01-ai-only-ai-observation-risk-001.md) |
| `sc-02-validation` | AI output accepted by human reviewer | [sc-02-validation-ai-observation-risk-001](Observation-sc-02-validation-ai-observation-risk-001.md) |
| `sc-03-override` | AI output overridden by human reviewer | [sc-03-override-ai-observation-risk-001](Observation-sc-03-override-ai-observation-risk-001.md) |
| `sc-04-correction-exp` | AI output corrected and explained to patient | [sc-04-correction-exp-ai-observation-risk-001](Observation-sc-04-correction-exp-ai-observation-risk-001.md) |

### Generalized AI Output Scenario

The generalized example set shows how the IG can be used for AI outputs without a dedicated profile. DiagnosticAssist AI generates a draft [DiagnosticReport](DiagnosticReport-dr-ai-diagnostic-report.md) from a lab result, which is validated by a human reviewer before it is shared with the patient. See [Use Case 2](use_case2.md).

