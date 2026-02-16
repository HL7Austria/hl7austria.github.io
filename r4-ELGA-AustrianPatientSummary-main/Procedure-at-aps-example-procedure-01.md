# AtApsProcedure-Beispiel - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "at-aps-example-procedure-01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"
    ]
  },
  "status" : "completed",
  "category" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "387713003",
        "display" : "Chirurgische Prozedur"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "36969009",
        "display" : "Einsetzen eines Stents in Koronararterie"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "233258006",
        "display" : "Durchleuchtungsgeführte Angioplastie einer Arterie mit Kontrastmittel"
      }
    ],
    "text" : "Vorherige Ballonangioplastie bei mittlerer LAD-Stenose mit STENT-Implantation"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "performedPeriod" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "unknown"
      }
    ]
  }
}

```
