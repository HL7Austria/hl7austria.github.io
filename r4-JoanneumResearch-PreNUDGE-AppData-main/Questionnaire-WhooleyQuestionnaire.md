# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\PHQ-2; "Whooley Questions" - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PHQ-2; "Whooley Questions"**

## Questionnaire: PHQ-2; "Whooley Questions" 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/WhooleyQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:WhooleyQuestionnaire |
| **Copyright/Legal**: Based on the Nationale VersorgungsLeitlinie (NVL) Depression, AWMF nvl-005. https://register.awmf.org/de/leitlinien/detail/nvl-005 | | |

 
Short screening for emotional burden and depressive disorders (Whooley Questions / PHQ-2 Yes/No version) as referenced in the Nationale VersorgungsLeitlinie (NVL) Depression (AWMF nvl-005, https://register.awmf.org/de/leitlinien/detail/nvl-005). Reference period: last month (deviating from the standard PHQ-2 period of two weeks). When both questions are answered 'Yes', the instrument identifies depressive disorders with a sensitivity of 96% and a specificity of 57%. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-26

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "WhooleyQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "language" : "de-AT",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/WhooleyQuestionnaire",
  "version" : "0.1.0",
  "name" : "WhooleyQuestionnaire",
  "title" : "PHQ-2; \"Whooley Questions\"",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2026-08-26T07:06:07+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "Short screening for emotional burden and depressive disorders (Whooley Questions / PHQ-2 Yes/No version) as referenced in the Nationale VersorgungsLeitlinie (NVL) Depression (AWMF nvl-005, https://register.awmf.org/de/leitlinien/detail/nvl-005). Reference period: last month (deviating from the standard PHQ-2 period of two weeks). When both questions are answered 'Yes', the instrument identifies depressive disorders with a sensitivity of 96% and a specificity of 57%.",
  "copyright" : "Based on the Nationale VersorgungsLeitlinie (NVL) Depression, AWMF nvl-005. https://register.awmf.org/de/leitlinien/detail/nvl-005",
  "item" : [{
    "linkId" : "whooley",
    "text" : "PHQ-2; \"Whooley Questions\"",
    "type" : "group",
    "item" : [{
      "linkId" : "/whooley-q1",
      "text" : "Fühlten Sie sich im letzten Monat häufig niedergeschlagen, traurig, bedrückt oder hoffnungslos?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "/whooley-q2",
      "text" : "Hatten Sie im letzten Monat deutlich weniger Lust und Freude an Dingen, die Sie sonst gerne tun?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Ja"
        }
      },
      {
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "whooley-comment",
      "text" : "Haben Sie zu Ihren Antworten noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
