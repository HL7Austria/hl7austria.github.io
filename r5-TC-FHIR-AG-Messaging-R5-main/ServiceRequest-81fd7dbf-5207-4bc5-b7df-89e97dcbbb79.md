# HL7.AT.FHIR.MESSAGING.R5\Lab ServiceRequest - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab ServiceRequest**

## Example ServiceRequest: Lab ServiceRequest

**status**: Active

**intent**: Order

**category**: Laboratory procedure

### Codes

| | |
| :--- | :--- |
| - | **Concept** |
| * | Blood test |

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Bundle-269f4c84-7762-47aa-b872-c4f927301485.md#urn-uuid-1a6ed9fa-9ba7-41fa-9d79-24d669aa3273)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "81fd7dbf-5207-4bc5-b7df-89e97dcbbb79",
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "108252007",
          "display" : "Laboratory procedure"
        }
      ]
    }
  ],
  "code" : {
    "concept" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "396550006",
          "display" : "Blood test"
        }
      ]
    }
  },
  "subject" : {
    "reference" : "urn:uuid:1a6ed9fa-9ba7-41fa-9d79-24d669aa3273"
  }
}

```
