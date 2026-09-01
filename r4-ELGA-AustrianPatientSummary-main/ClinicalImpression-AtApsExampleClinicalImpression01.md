# AtApsClinicalImpression-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsClinicalImpression-Beispiel**

## Example ClinicalImpression: AtApsClinicalImpression-Beispiel

Profile: [AT APS ClinicalImpression](StructureDefinition-at-aps-clinicalimpression.md)

**identifier**: 12345

**status**: Completed

**description**: Dieser 26-jährige männliche Patient wird nach einem Verkehrsunfall mit dem Krankenwagen in die Notaufnahme gebracht.

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**effective**: 2014-12-06 20:00:00+1100 --> 2014-12-06 22:33:00+1100

**date**: 2014-12-06 22:33:00+1100

**assessor**: [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md)

**problem**: MVA

> **investigation****code**: Erstuntersuchung**item**: 
* tiefe Platzwunde an der Kopfhaut
* verminderte Bewusstseinslage
* zeitlich und örtlich desorientiert
* unruhig

**summary**: Vorläufige Diagnosen: Kopfverletzung und traumatische Hirnverletzung



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "AtApsExampleClinicalImpression01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-clinicalimpression"]
  },
  "identifier" : [{
    "value" : "12345"
  }],
  "status" : "completed",
  "description" : "Dieser 26-jährige männliche Patient wird nach einem Verkehrsunfall mit dem Krankenwagen in die Notaufnahme gebracht.",
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectivePeriod" : {
    "start" : "2014-12-06T20:00:00+11:00",
    "end" : "2014-12-06T22:33:00+11:00"
  },
  "date" : "2014-12-06T22:33:00+11:00",
  "assessor" : {
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  },
  "problem" : [{
    "display" : "MVA"
  }],
  "investigation" : [{
    "code" : {
      "text" : "Erstuntersuchung"
    },
    "item" : [{
      "display" : "tiefe Platzwunde an der Kopfhaut"
    },
    {
      "display" : "verminderte Bewusstseinslage"
    },
    {
      "display" : "zeitlich und örtlich desorientiert"
    },
    {
      "display" : "unruhig"
    }]
  }],
  "summary" : "Vorläufige Diagnosen: Kopfverletzung und traumatische Hirnverletzung"
}

```
