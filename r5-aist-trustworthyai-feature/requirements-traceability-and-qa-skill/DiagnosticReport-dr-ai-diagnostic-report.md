# AI Output: Diagnostic Report - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AI Output: Diagnostic Report**

## Example DiagnosticReport: AI Output: Diagnostic Report

Security Label: [AI Generated (Details: Trust AI Involvement Code System code ai-generated = 'AI Generated')](CodeSystem-trust-ai-involvement-cs.md)

## AI-generated diagnostic assessment 

| | |
| :--- | :--- |
| Subject | Anonymous Patient Female, DoB: 1965-06-15 |
| Relevant Time | 2026-03-10 09:05:00+0000 |
| Reported | 2026-03-10 09:05:04+0000 |

**Report Details**

* **Code**: [C-reactive protein concentration](Observation-dr-input-observation.md)
  * **Value**: 148 mg/L
  * **Flags**: Final
  * **Relevant Time**: 2026-03-10 09:00:00+0000

The findings indicate an increased probability of an acute infectious process.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "dr-ai-diagnostic-report",
  "meta" : {
    "security" : [{
      "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-involvement-cs",
      "code" : "ai-generated",
      "display" : "AI Generated"
    }]
  },
  "status" : "final",
  "code" : {
    "text" : "AI-generated diagnostic assessment"
  },
  "subject" : {
    "reference" : "Patient/dr-patient"
  },
  "effectiveDateTime" : "2026-03-10T09:05:00Z",
  "issued" : "2026-03-10T09:05:04Z",
  "result" : [{
    "reference" : "Observation/dr-input-observation"
  }],
  "conclusion" : "The findings indicate an increased probability of an acute infectious process."
}

```
