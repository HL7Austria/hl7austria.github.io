# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 05-b: Mediationsplan ändern (Einträge absetzen und ändern). - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 05-b: Mediationsplan ändern (Einträge absetzen und ändern).**

## Example List: Beispiel Journey 05-b: Mediationsplan ändern (Einträge absetzen und ändern).

Profile: [ELGA e-Med Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-10 13:20:00+0000 | Mode: Working List | Status: Current | Code: Medication management plan (record artifact) |
| Subject:[Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-At-Emed-Example-Patient-01.md)Source: Order: Sorted by User | | | |

* **Items**: [MedicationRequest: extension = 2026-02-27 --> 2026-03-16,1 täglich auftragen; identifier = 4713_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication: form = Salbe; authoredOn = 2026-02-27 10:20:00+0000](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.md)
  * Date: 2026-03-10 13:20:00+0000
  * Flag: Ceased
* **Items**: [MedicationRequest: extension = (?) --> 2026-03-17,1-0-0-0 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-03-10 13:20:00+0000](MedicationRequest-At-Emed-Journey-05-b-Mr-Planeintrag-01.md)
  * Date: 2026-03-10 13:20:00+0000
  * Flag: Prescribed



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "At-Emed-Journey-05-b-List-Aenderung",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"]
  },
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "736378000",
      "display" : "Medication management plan (record artifact)"
    }]
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "date" : "2026-03-10T13:20:00+00:00",
  "source" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
  },
  "orderedBy" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-order",
      "code" : "user"
    }]
  },
  "entry" : [{
    "flag" : {
      "coding" : [{
        "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
        "code" : "05",
        "display" : "Ceased"
      }]
    },
    "date" : "2026-03-10T13:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-02"
    }
  },
  {
    "flag" : {
      "coding" : [{
        "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
        "code" : "04",
        "display" : "Prescribed"
      }]
    },
    "date" : "2026-03-10T13:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Journey-05-b-Mr-Planeintrag-01"
    }
  }]
}

```
