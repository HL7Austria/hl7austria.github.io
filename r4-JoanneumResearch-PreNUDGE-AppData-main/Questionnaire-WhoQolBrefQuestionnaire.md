# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\WHOQOL-BREF Lebensstil Selbsteinschätzung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHOQOL-BREF Lebensstil Selbsteinschätzung**

## Questionnaire: WHOQOL-BREF Lebensstil Selbsteinschätzung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/WhoQolBrefQuestionnaire | *Version*:0.1.0 | |
| Active as of 2026-06-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeQoLByWhoQolBref |
| **Copyright/Legal**: © World Health Organization. Usage with permission from WHO. | | |

 
The WHOQOL-BREF is a 26-item instrument for assessing subjective quality of life in four domains: physical, psychological, social relationships, and environment. Developed by the WHO. 

 
Assessment of subjective quality of life in the general population and in patients. 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "WhoQolBrefQuestionnaire",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaire"]
  },
  "language" : "de-AT",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/Questionnaire/WhoQolBrefQuestionnaire",
  "version" : "0.1.0",
  "name" : "AtPrenudgeQoLByWhoQolBref",
  "title" : "WHOQOL-BREF Lebensstil Selbsteinschätzung",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-06-22T12:35:22+00:00",
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
  "description" : "The WHOQOL-BREF is a 26-item instrument for assessing subjective quality of life in four domains: physical, psychological, social relationships, and environment. Developed by the WHO.",
  "purpose" : "Assessment of subjective quality of life in the general population and in patients.",
  "copyright" : "© World Health Organization. Usage with permission from WHO.",
  "code" : [{
    "system" : "http://snomed.info/sct",
    "code" : "405152002"
  }],
  "item" : [{
    "linkId" : "introduction-text",
    "text" : "In diesem Fragebogen werden Sie danach gefragt, wie Sie Ihre Lebensqualität, Ihre Gesundheit und andere Bereiche Ihres Lebens beurteilen. Bitte beantworten Sie alle Fragen. Wenn Sie sich bei der Beantwortung einer Frage nicht sicher sind, wählen Sie bitte die Antwortkategorie, die Ihrer Meinung nach am ehesten zutrifft. Oft ist dies die Kategorie, die Ihnen als erstes in den Sinn kommt. Bitte beantworten Sie alle Fragen auf der Grundlage Ihrer eigenen Beurteilungskriterien, Hoffnungen, Vorlieben und Interessen. Bitte denken Sie bei der Beantwortung der Fragen an Ihr Leben während der vergangenen zwei Wochen.",
    "type" : "display"
  },
  {
    "linkId" : "general",
    "type" : "group",
    "item" : [{
      "linkId" : "Q1",
      "text" : "Wie würden Sie Ihre Lebensqualität beurteilen?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q1",
          "display" : "Sehr schlecht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q2",
          "display" : "Schlecht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q4",
          "display" : "Gut"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q5",
          "display" : "Sehr gut"
        }
      }]
    },
    {
      "linkId" : "Q2",
      "text" : "Wie zufrieden sind Sie mit Ihrer Gesundheit?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "section-0-comment",
      "text" : "Haben Sie zu diesem Abschnitt noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "section-1",
    "text" : "In den folgenden Fragen geht es darum, wie stark Sie während der vergangenen zwei Wochen bestimmte Dinge erlebt haben.",
    "type" : "group",
    "item" : [{
      "linkId" : "Q3",
      "text" : "Wie stark werden Sie durch Schmerzen daran gehindert, notwendige Dinge zu tun?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I2",
          "display" : "Ein wenig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I4",
          "display" : "Ziemlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I5",
          "display" : "Äußerst"
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
          "description" : "Reverse scoring für Q3",
          "language" : "text/fhirpath",
          "expression" : "6 - %resource.repeat(item).where(linkId='Q3').answer.valueCoding.code.substring(1).toInteger()"
        }
      }],
      "linkId" : "Q3-reversed",
      "text" : "Q3 umkodiert",
      "type" : "integer",
      "readOnly" : true
    },
    {
      "linkId" : "Q4",
      "text" : "Wie sehr sind Sie auf medizinische Behandlung angewiesen, um das tägliche Leben zu meistern?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I2",
          "display" : "Ein wenig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I4",
          "display" : "Ziemlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I5",
          "display" : "Äußerst"
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
          "description" : "Reverse scoring für Q4",
          "language" : "text/fhirpath",
          "expression" : "6 - %resource.repeat(item).where(linkId='Q4').answer.valueCoding.code.substring(1).toInteger()"
        }
      }],
      "linkId" : "Q4-reversed",
      "text" : "Q4 umkodiert",
      "type" : "integer",
      "readOnly" : true
    },
    {
      "linkId" : "Q5",
      "text" : "Wie sehr genießen Sie das Leben?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I2",
          "display" : "Ein wenig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I4",
          "display" : "Ziemlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I5",
          "display" : "Äußerst"
        }
      }]
    },
    {
      "linkId" : "Q6",
      "text" : "In welchem Ausmaß empfinden Sie Ihr Leben als sinnvoll?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I2",
          "display" : "Ein wenig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I4",
          "display" : "Ziemlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I5",
          "display" : "Äußerst"
        }
      }]
    },
    {
      "linkId" : "Q7",
      "text" : "Wie gut können Sie sich konzentrieren?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I2",
          "display" : "Ein wenig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I4",
          "display" : "Ziemlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I5",
          "display" : "Äußerst"
        }
      }]
    },
    {
      "linkId" : "Q8",
      "text" : "Wie sicher fühlen Sie sich in Ihrem täglichen Leben?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I2",
          "display" : "Ein wenig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I4",
          "display" : "Ziemlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I5",
          "display" : "Äußerst"
        }
      }]
    },
    {
      "linkId" : "Q9",
      "text" : "Wie gesund ist Ihre unmittelbare Umgebung?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I2",
          "display" : "Ein wenig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I4",
          "display" : "Ziemlich"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "I5",
          "display" : "Äußerst"
        }
      }]
    },
    {
      "linkId" : "section-1-comment",
      "text" : "Haben Sie zu diesem Abschnitt noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "section-2",
    "text" : "In den folgenden Fragen geht es darum, im welchem Umfang Sie während der vergangenen zwei Wochen bestimmte Dinge erlebt haben oder in der Lage waren, bestimmte Dinge zu tun.",
    "type" : "group",
    "item" : [{
      "linkId" : "Q10",
      "text" : "Haben Sie genug Energie für das tägliche Leben?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C2",
          "display" : "Eher nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C3",
          "display" : "Halbwegs"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C4",
          "display" : "Überwiegend"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C5",
          "display" : "Völlig"
        }
      }]
    },
    {
      "linkId" : "Q11",
      "text" : "Können Sie Ihr Aussehen akzeptieren?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C2",
          "display" : "Eher nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C3",
          "display" : "Halbwegs"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C4",
          "display" : "Überwiegend"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C5",
          "display" : "Völlig"
        }
      }]
    },
    {
      "linkId" : "Q12",
      "text" : "Haben Sie genug Geld, um Ihre Bedürfnisse erfüllen zu können?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C2",
          "display" : "Eher nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C3",
          "display" : "Halbwegs"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C4",
          "display" : "Überwiegend"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C5",
          "display" : "Völlig"
        }
      }]
    },
    {
      "linkId" : "Q13",
      "text" : "Wie verfügbar sind die Informationen für Sie, die Sie im Alltag brauchen?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C2",
          "display" : "Eher nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C3",
          "display" : "Halbwegs"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C4",
          "display" : "Überwiegend"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C5",
          "display" : "Völlig"
        }
      }]
    },
    {
      "linkId" : "Q14",
      "text" : "Haben Sie ausreichend Möglichkeiten zu Freizeitaktivitäten?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C1",
          "display" : "Überhaupt nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C2",
          "display" : "Eher nicht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C3",
          "display" : "Halbwegs"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C4",
          "display" : "Überwiegend"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "C5",
          "display" : "Völlig"
        }
      }]
    },
    {
      "linkId" : "Q15",
      "text" : "Wie gut können Sie sich fortbewegen?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q1",
          "display" : "Sehr schlecht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q2",
          "display" : "Schlecht"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q3",
          "display" : "Mittelmäßig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q4",
          "display" : "Gut"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "Q5",
          "display" : "Sehr gut"
        }
      }]
    },
    {
      "linkId" : "section-2-comment",
      "text" : "Haben Sie zu diesem Abschnitt noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "section-3",
    "text" : "In den folgenden Fragen geht es darum, wie zufrieden, glücklich oder gut Sie sich während der vergangenen zwei Wochen hinsichtlich verschiedener Aspekte Ihres Lebens gefühlt haben.",
    "type" : "group",
    "item" : [{
      "linkId" : "Q16",
      "text" : "Wie zufrieden sind Sie mit Ihrem Schlaf?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q17",
      "text" : "Wie zufrieden sind Sie mit Ihrer Fähigkeit, alltägliche Dinge erledigen zu können?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q18",
      "text" : "Wie zufrieden sind Sie mit Ihrer Arbeitsfähigkeit?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q19",
      "text" : "Wie zufrieden sind Sie mit sich selbst?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q20",
      "text" : "Wie zufrieden sind Sie mit Ihren persönlichen Beziehungen?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q21",
      "text" : "Wie zufrieden sind Sie mit Ihrem Sexualleben?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q22",
      "text" : "Wie zufrieden sind Sie mit der Unterstützung durch Ihre Freunde?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q23",
      "text" : "Wie zufrieden sind Sie mit Ihren Wohnbedingungen?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q24",
      "text" : "Wie zufrieden sind Sie mit Ihren Möglichkeiten, Gesundheitsdienste in Anspruch nehmen zu können?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "Q25",
      "text" : "Wie zufrieden sind Sie mit den Beförderungsmitteln, die Ihnen zur Verfügung stehen?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S1",
          "display" : "Sehr unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S2",
          "display" : "Unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S3",
          "display" : "Weder zufrieden noch unzufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S4",
          "display" : "Zufrieden"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "S5",
          "display" : "Sehr zufrieden"
        }
      }]
    },
    {
      "linkId" : "section-3-comment",
      "text" : "Haben Sie zu diesem Abschnitt noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    }]
  },
  {
    "linkId" : "section-4",
    "text" : "In der folgenden Frage geht es darum, wie oft sich während der vergangenen zwei Wochen bei Ihnen negative Gefühle eingestellt haben, wie zum Beispiel Angst oder Traurigkeit.",
    "type" : "group",
    "item" : [{
      "linkId" : "Q26",
      "text" : "Wie häufig haben Sie negative Gefühle wie Traurigkeit, Verzweiflung, Angst oder Depression?",
      "type" : "choice",
      "required" : true,
      "answerOption" : [{
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "F1",
          "display" : "Niemals"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "F2",
          "display" : "Nicht oft"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "F3",
          "display" : "Zeitweilig"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "F4",
          "display" : "Oftmals"
        }
      },
      {
        "valueCoding" : {
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
          "code" : "F5",
          "display" : "Immer"
        }
      }]
    },
    {
      "linkId" : "section-4-comment",
      "text" : "Haben Sie zu diesem Abschnitt noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Reverse scoring für Q26",
          "language" : "text/fhirpath",
          "expression" : "6 - %resource.repeat(item).where(linkId='Q26').answer.valueCoding.code.substring(1).toInteger()"
        }
      }],
      "linkId" : "Q26-reversed",
      "text" : "Q26 umkodiert",
      "type" : "integer",
      "readOnly" : true
    }]
  },
  {
    "linkId" : "section-5",
    "text" : "Haben Sie irgendwelche Anmerkungen zu diesem Fragebogen?",
    "type" : "group",
    "item" : [{
      "linkId" : "general-comment",
      "text" : "Haben Sie allgemein noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    },
    {
      "linkId" : "domain1-comment",
      "text" : "Haben Sie zu ihrer physischen Gesundheit noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    },
    {
      "linkId" : "domain2-comment",
      "text" : "Haben Sie zu ihrem psychisches Wohlbefinden noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    },
    {
      "linkId" : "domain3-comment",
      "text" : "Haben Sie zu ihren sozialen Beziehungen noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    },
    {
      "linkId" : "domain4-comment",
      "text" : "Haben Sie zu ihrer Umwelt noch einen Kommentar oder etwas hinzuzufügen?",
      "type" : "string"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Summe Q1 + Q2",
          "language" : "text/fhirpath",
          "expression" : "%resource.repeat(item).where(linkId='Q1').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q2').answer.valueCoding.code.substring(1).toInteger()"
        }
      }],
      "linkId" : "general-raw",
      "text" : "Allgemeiner Rohwert",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Transformierter Score: ((Mittelwert - 1) * 25)",
          "language" : "text/fhirpath",
          "expression" : "((%resource.repeat(item).where(linkId='general-raw').answer.valueDecimal / 2) - 1) * 25"
        }
      }],
      "linkId" : "general-score",
      "text" : "Allgemeiner Score (0-100)",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Summe der 7 Items (Q3r, Q4r, Q10, Q15, Q16, Q17, Q18)",
          "language" : "text/fhirpath",
          "expression" : "%resource.repeat(item).where(linkId='Q3-reversed').answer.valueInteger + %resource.repeat(item).where(linkId='Q4-reversed').answer.valueInteger + %resource.repeat(item).where(linkId='Q10').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q15').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q16').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q17').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q18').answer.valueCoding.code.substring(1).toInteger()"
        }
      }],
      "linkId" : "domain1-raw",
      "text" : "Domäne 1 Rohwert",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Transformierter Score: ((Mittelwert - 1) * 25)",
          "language" : "text/fhirpath",
          "expression" : "((%resource.repeat(item).where(linkId='domain1-raw').answer.valueDecimal / 7) - 1) * 25"
        }
      }],
      "linkId" : "domain1-score",
      "text" : "Domäne 1: Physische Gesundheit (0-100)",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Summe der 6 Items (Q5, Q6, Q7, Q11, Q19, Q26r)",
          "language" : "text/fhirpath",
          "expression" : "%resource.repeat(item).where(linkId='Q5').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q6').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q7').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q11').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q19').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q26-reversed').answer.valueInteger"
        }
      }],
      "linkId" : "domain2-raw",
      "text" : "Domäne 2 Rohwert",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Transformierter Score: ((Mittelwert - 1) * 25)",
          "language" : "text/fhirpath",
          "expression" : "((%resource.repeat(item).where(linkId='domain2-raw').answer.valueDecimal / 6) - 1) * 25"
        }
      }],
      "linkId" : "domain2-score",
      "text" : "Domäne 2: Psychisches Wohlbefinden (0-100)",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Summe der 3 Items (Q20, Q21, Q22)",
          "language" : "text/fhirpath",
          "expression" : "%resource.repeat(item).where(linkId='Q20').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q21').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q22').answer.valueCoding.code.substring(1).toInteger()"
        }
      }],
      "linkId" : "domain3-raw",
      "text" : "Domäne 3 Rohwert",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Transformierter Score: ((Mittelwert - 1) * 25)",
          "language" : "text/fhirpath",
          "expression" : "((%resource.repeat(item).where(linkId='domain3-raw').answer.valueDecimal / 3) - 1) * 25"
        }
      }],
      "linkId" : "domain3-score",
      "text" : "Domäne 3: Soziale Beziehungen (0-100)",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Summe der 8 Items (Q8, Q9, Q12, Q13, Q14, Q23, Q24, Q25)",
          "language" : "text/fhirpath",
          "expression" : "%resource.repeat(item).where(linkId='Q8').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q9').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q12').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q13').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q14').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q23').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q24').answer.valueCoding.code.substring(1).toInteger() + %resource.repeat(item).where(linkId='Q25').answer.valueCoding.code.substring(1).toInteger()"
        }
      }],
      "linkId" : "domain4-raw",
      "text" : "Domäne 4 Rohwert",
      "type" : "decimal",
      "readOnly" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
        "valueExpression" : {
          "description" : "Transformierter Score: ((Mittelwert - 1) * 25)",
          "language" : "text/fhirpath",
          "expression" : "((%resource.repeat(item).where(linkId='domain4-raw').answer.valueDecimal / 8) - 1) * 25"
        }
      }],
      "linkId" : "domain4-score",
      "text" : "Domäne 4: Umwelt (0-100)",
      "type" : "decimal",
      "readOnly" : true
    }]
  }]
}

```
