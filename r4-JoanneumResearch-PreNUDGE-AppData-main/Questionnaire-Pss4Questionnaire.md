# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Perceived Stress Scale (PSS-4) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perceived Stress Scale (PSS-4)**

## Questionnaire: Perceived Stress Scale (PSS-4) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/Pss4Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:Pss4Questionnaire |
| **Copyright/Legal**: PSS items reproduced from Cohen, S., Kamarck, T., & Mermelstein, R. (1983). A global measure of perceived stress. Journal of Health and Social Behavior, 24(4), 385–396. The PSS-4 is in the public domain. | | |

 
4-item short version of the Perceived Stress Scale (PSS-4) measuring subjective experience of stress over the past month. Scoring: items pss4-q2 and pss4-q3 are positive items reversed (4 – ordinal); items pss4-q1 and pss4-q4 are used as-is. Total score range 0–16; higher scores indicate greater perceived stress. 

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
  "id" : "Pss4Questionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "language" : "de",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/Pss4Questionnaire",
  "version" : "0.1.0",
  "name" : "Pss4Questionnaire",
  "title" : "Perceived Stress Scale (PSS-4)",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-08-26T07:22:28+00:00",
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
  "description" : "4-item short version of the Perceived Stress Scale (PSS-4) measuring subjective experience of stress over the past month. Scoring: items pss4-q2 and pss4-q3 are positive items reversed (4 – ordinal); items pss4-q1 and pss4-q4 are used as-is. Total score range 0–16; higher scores indicate greater perceived stress.",
  "copyright" : "PSS items reproduced from Cohen, S., Kamarck, T., & Mermelstein, R. (1983). A global measure of perceived stress. Journal of Health and Social Behavior, 24(4), 385–396. The PSS-4 is in the public domain.",
  "code" : [{
    "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
    "code" : "pss4",
    "display" : "PSS-4 Perceived Stress Scale (4-item)"
  }],
  "item" : [{
    "linkId" : "pss4-intro",
    "text" : "Diese Fragen beziehen sich auf Ihre Gefühle und Gedanken während des letzten Monats. Wählen Sie aus, WIE HÄUFIG Sie eine bestimmte Art von Gefühlen oder Gedanken hatten.",
    "type" : "display"
  },
  {
    "linkId" : "pss4",
    "type" : "group",
    "item" : [{
      "linkId" : "pss4-q1",
      "text" : "Wie oft hatten Sie sich im letzten Monat das Gefühl, wichtige Dinge in Ihrem Leben nicht beeinflussen zu können?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "never",
          "display" : "Nie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "rarely",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "sometimes",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "often",
          "display" : "Häufig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "very-often",
          "display" : "Sehr oft"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "iif(%resource.repeat(item).where(linkId='pss4-q1').answer.valueCoding.code='never',0,iif(%resource.repeat(item).where(linkId='pss4-q1').answer.valueCoding.code='rarely',1,iif(%resource.repeat(item).where(linkId='pss4-q1').answer.valueCoding.code='sometimes',2,iif(%resource.repeat(item).where(linkId='pss4-q1').answer.valueCoding.code='often',3,4))))"
        }
      }],
      "linkId" : "pss4-q1-ordinal",
      "text" : "PSS-4 Item 1 Ordinalwert",
      "type" : "integer",
      "readOnly" : true
    },
    {
      "linkId" : "pss4-q2",
      "text" : "Wie oft hatten Sie sich im letzten Monat sicher im Umgang mit persönlichen Aufgaben und Problemen gefühlt?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "never",
          "display" : "Nie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "rarely",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "sometimes",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "often",
          "display" : "Häufig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "very-often",
          "display" : "Sehr oft"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "iif(%resource.repeat(item).where(linkId='pss4-q2').answer.valueCoding.code='never',0,iif(%resource.repeat(item).where(linkId='pss4-q2').answer.valueCoding.code='rarely',1,iif(%resource.repeat(item).where(linkId='pss4-q2').answer.valueCoding.code='sometimes',2,iif(%resource.repeat(item).where(linkId='pss4-q2').answer.valueCoding.code='often',3,4))))"
        }
      }],
      "linkId" : "pss4-q2-ordinal",
      "text" : "PSS-4 Item 2 Ordinalwert",
      "type" : "integer",
      "readOnly" : true
    },
    {
      "linkId" : "pss4-q3",
      "text" : "Wie oft hatten Sie im letzten Monat das Gefühl, dass sich die Dinge nach Ihren Vorstellungen entwickeln?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "never",
          "display" : "Nie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "rarely",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "sometimes",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "often",
          "display" : "Häufig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "very-often",
          "display" : "Sehr oft"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "iif(%resource.repeat(item).where(linkId='pss4-q3').answer.valueCoding.code='never',0,iif(%resource.repeat(item).where(linkId='pss4-q3').answer.valueCoding.code='rarely',1,iif(%resource.repeat(item).where(linkId='pss4-q3').answer.valueCoding.code='sometimes',2,iif(%resource.repeat(item).where(linkId='pss4-q3').answer.valueCoding.code='often',3,4))))"
        }
      }],
      "linkId" : "pss4-q3-ordinal",
      "text" : "PSS-4 Item 3 Ordinalwert",
      "type" : "integer",
      "readOnly" : true
    },
    {
      "linkId" : "pss4-q4",
      "text" : "Wie oft hatten Sie im letzten Monat das Gefühl, dass sich die Probleme so aufgestaut haben, dass Sie diese nicht mehr bewältigen können?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "never",
          "display" : "Nie"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "rarely",
          "display" : "Selten"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "sometimes",
          "display" : "Manchmal"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "often",
          "display" : "Häufig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-frequency-codesystem",
          "code" : "very-often",
          "display" : "Sehr oft"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "language" : "text/fhirpath",
          "expression" : "iif(%resource.repeat(item).where(linkId='pss4-q4').answer.valueCoding.code='never',0,iif(%resource.repeat(item).where(linkId='pss4-q4').answer.valueCoding.code='rarely',1,iif(%resource.repeat(item).where(linkId='pss4-q4').answer.valueCoding.code='sometimes',2,iif(%resource.repeat(item).where(linkId='pss4-q4').answer.valueCoding.code='often',3,4))))"
        }
      }],
      "linkId" : "pss4-q4-ordinal",
      "text" : "PSS-4 Item 4 Ordinalwert",
      "type" : "integer",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "PSS-4 Gesamtscore: q1 + (4-q2) + (4-q3) + q4",
          "language" : "text/fhirpath",
          "expression" : "%resource.repeat(item).where(linkId='pss4-q1-ordinal').answer.valueInteger.first()+(4-%resource.repeat(item).where(linkId='pss4-q2-ordinal').answer.valueInteger.first())+(4-%resource.repeat(item).where(linkId='pss4-q3-ordinal').answer.valueInteger.first())+%resource.repeat(item).where(linkId='pss4-q4-ordinal').answer.valueInteger.first()"
        }
      }],
      "linkId" : "pss4-total-score",
      "text" : "PSS-4 Gesamtscore (0–16)",
      "type" : "integer",
      "readOnly" : true
    },
    {
      "linkId" : "pss4-comment",
      "text" : "Haben Sie zu Ihren Antworten noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  }]
}

```
