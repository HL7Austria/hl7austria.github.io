# Document: Patient AI Explanation Letter - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document: Patient AI Explanation Letter**

## Example DocumentReference: Document: Patient AI Explanation Letter

**status**: Current

**type**: Laboratory report

**subject**: [Elias Vance Male, DoB: 1965-04-12](Patient-patient-elias-vance.md)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | application/pdf | [http://chronos-medical.test/docs/vance-ai-info.pdf](http://chronos-medical.test/docs/vance-ai-info.pdf) |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "doc-patient-explanation",
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11502-2",
      "display" : "Laboratory report"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-elias-vance"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "http://chronos-medical.test/docs/vance-ai-info.pdf"
    }
  }]
}

```
