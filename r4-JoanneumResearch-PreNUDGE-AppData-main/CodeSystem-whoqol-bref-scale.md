# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE WHOQOL-BREF Answer Scales - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE WHOQOL-BREF Answer Scales**

## CodeSystem: AT PreNUDGE WHOQOL-BREF Answer Scales 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale | *Version*:0.1.0 | |
| Active as of 2026-05-18 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:WHOQOLBrefScale |

 
Consolidated CodeSystem for all answer scales of the WHOQOL-BREF questionnaire. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "whoqol-bref-scale",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/whoqol-bref-scale",
  "version" : "0.1.0",
  "name" : "WHOQOLBrefScale",
  "title" : "AT PreNUDGE WHOQOL-BREF Answer Scales",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-18T10:23:40+00:00",
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
  "description" : "Consolidated CodeSystem for all answer scales of the WHOQOL-BREF questionnaire.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 30,
  "property" : [{
    "code" : "scale",
    "description" : "The answer scale this code belongs to.",
    "type" : "string"
  },
  {
    "code" : "score",
    "description" : "The numeric score value for calculation.",
    "type" : "integer"
  }],
  "concept" : [{
    "code" : "Q",
    "display" : "Quality",
    "definition" : "Antwortskala: Qualität",
    "concept" : [{
      "code" : "Q1",
      "display" : "Sehr schlecht",
      "property" : [{
        "code" : "scale",
        "valueString" : "quality"
      },
      {
        "code" : "score",
        "valueInteger" : 1
      }]
    },
    {
      "code" : "Q2",
      "display" : "Schlecht",
      "property" : [{
        "code" : "scale",
        "valueString" : "quality"
      },
      {
        "code" : "score",
        "valueInteger" : 2
      }]
    },
    {
      "code" : "Q3",
      "display" : "Mittelmäßig",
      "property" : [{
        "code" : "scale",
        "valueString" : "quality"
      },
      {
        "code" : "score",
        "valueInteger" : 3
      }]
    },
    {
      "code" : "Q4",
      "display" : "Gut",
      "property" : [{
        "code" : "scale",
        "valueString" : "quality"
      },
      {
        "code" : "score",
        "valueInteger" : 4
      }]
    },
    {
      "code" : "Q5",
      "display" : "Sehr gut",
      "property" : [{
        "code" : "scale",
        "valueString" : "quality"
      },
      {
        "code" : "score",
        "valueInteger" : 5
      }]
    }]
  },
  {
    "code" : "S",
    "display" : "Satisfaction",
    "definition" : "Antwortskala: Zufriedenheit",
    "concept" : [{
      "code" : "S1",
      "display" : "Sehr unzufrieden",
      "property" : [{
        "code" : "scale",
        "valueString" : "satisfaction"
      },
      {
        "code" : "score",
        "valueInteger" : 1
      }]
    },
    {
      "code" : "S2",
      "display" : "Unzufrieden",
      "property" : [{
        "code" : "scale",
        "valueString" : "satisfaction"
      },
      {
        "code" : "score",
        "valueInteger" : 2
      }]
    },
    {
      "code" : "S3",
      "display" : "Weder zufrieden noch unzufrieden",
      "property" : [{
        "code" : "scale",
        "valueString" : "satisfaction"
      },
      {
        "code" : "score",
        "valueInteger" : 3
      }]
    },
    {
      "code" : "S4",
      "display" : "Zufrieden",
      "property" : [{
        "code" : "scale",
        "valueString" : "satisfaction"
      },
      {
        "code" : "score",
        "valueInteger" : 4
      }]
    },
    {
      "code" : "S5",
      "display" : "Sehr zufrieden",
      "property" : [{
        "code" : "scale",
        "valueString" : "satisfaction"
      },
      {
        "code" : "score",
        "valueInteger" : 5
      }]
    }]
  },
  {
    "code" : "I",
    "display" : "Intensity",
    "definition" : "Antwortskala: Intensität",
    "concept" : [{
      "code" : "I1",
      "display" : "Überhaupt nicht",
      "property" : [{
        "code" : "scale",
        "valueString" : "intensity"
      },
      {
        "code" : "score",
        "valueInteger" : 1
      }]
    },
    {
      "code" : "I2",
      "display" : "Ein wenig",
      "property" : [{
        "code" : "scale",
        "valueString" : "intensity"
      },
      {
        "code" : "score",
        "valueInteger" : 2
      }]
    },
    {
      "code" : "I3",
      "display" : "Mittelmäßig",
      "property" : [{
        "code" : "scale",
        "valueString" : "intensity"
      },
      {
        "code" : "score",
        "valueInteger" : 3
      }]
    },
    {
      "code" : "I4",
      "display" : "Ziemlich",
      "property" : [{
        "code" : "scale",
        "valueString" : "intensity"
      },
      {
        "code" : "score",
        "valueInteger" : 4
      }]
    },
    {
      "code" : "I5",
      "display" : "Äußerst",
      "property" : [{
        "code" : "scale",
        "valueString" : "intensity"
      },
      {
        "code" : "score",
        "valueInteger" : 5
      }]
    }]
  },
  {
    "code" : "C",
    "display" : "Capacity",
    "definition" : "Antwortskala: Kapazität",
    "concept" : [{
      "code" : "C1",
      "display" : "Überhaupt nicht",
      "property" : [{
        "code" : "scale",
        "valueString" : "capacity"
      },
      {
        "code" : "score",
        "valueInteger" : 1
      }]
    },
    {
      "code" : "C2",
      "display" : "Eher nicht",
      "property" : [{
        "code" : "scale",
        "valueString" : "capacity"
      },
      {
        "code" : "score",
        "valueInteger" : 2
      }]
    },
    {
      "code" : "C3",
      "display" : "Halbwegs",
      "property" : [{
        "code" : "scale",
        "valueString" : "capacity"
      },
      {
        "code" : "score",
        "valueInteger" : 3
      }]
    },
    {
      "code" : "C4",
      "display" : "Überwiegend",
      "property" : [{
        "code" : "scale",
        "valueString" : "capacity"
      },
      {
        "code" : "score",
        "valueInteger" : 4
      }]
    },
    {
      "code" : "C5",
      "display" : "Völlig",
      "property" : [{
        "code" : "scale",
        "valueString" : "capacity"
      },
      {
        "code" : "score",
        "valueInteger" : 5
      }]
    }]
  },
  {
    "code" : "F",
    "display" : "Frequency",
    "definition" : "Antwortskala: Häufigkeit",
    "concept" : [{
      "code" : "F1",
      "display" : "Niemals",
      "property" : [{
        "code" : "scale",
        "valueString" : "frequency"
      },
      {
        "code" : "score",
        "valueInteger" : 1
      }]
    },
    {
      "code" : "F2",
      "display" : "Nicht oft",
      "property" : [{
        "code" : "scale",
        "valueString" : "frequency"
      },
      {
        "code" : "score",
        "valueInteger" : 2
      }]
    },
    {
      "code" : "F3",
      "display" : "Zeitweilig",
      "property" : [{
        "code" : "scale",
        "valueString" : "frequency"
      },
      {
        "code" : "score",
        "valueInteger" : 3
      }]
    },
    {
      "code" : "F4",
      "display" : "Oftmals",
      "property" : [{
        "code" : "scale",
        "valueString" : "frequency"
      },
      {
        "code" : "score",
        "valueInteger" : 4
      }]
    },
    {
      "code" : "F5",
      "display" : "Immer",
      "property" : [{
        "code" : "scale",
        "valueString" : "frequency"
      },
      {
        "code" : "score",
        "valueInteger" : 5
      }]
    }]
  }]
}

```
