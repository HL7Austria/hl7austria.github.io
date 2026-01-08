# ELGA.MOPED\Workflow Status eines Falls - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Workflow Status eines Falls**

## CodeSystem: Workflow Status eines Falls (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/WorkflowStatusCS | *Version*:0.1.0 | |
| Active as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:WorkflowStatusCS |

 
CodeSystem für die Statusoptionen in denen sich ein Fall befinden kann. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [WorkflowStatusVS](ValueSet-WorkflowStatusVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "WorkflowStatusCS",
  "url" : "https://elga.moped.at/CodeSystem/WorkflowStatusCS",
  "version" : "0.1.0",
  "name" : "WorkflowStatusCS",
  "title" : "Workflow Status eines Falls",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-10-15T12:16:02+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "CodeSystem für die Statusoptionen in denen sich ein Fall befinden kann.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [
    {
      "code" : "Aufnahme-in-arbeit",
      "display" : "Aufnahme in Arbeit"
    },
    {
      "code" : "Aufnahme-freigegeben",
      "display" : "Aufnahme freigegeben"
    },
    {
      "code" : "SV-verarbeitet",
      "display" : "SV verarbeitet"
    },
    {
      "code" : "Entlassungs-Aviso",
      "display" : "Entlassungs Aviso"
    },
    {
      "code" : "Entlassung-vollständig",
      "display" : "Entlassung vollständig"
    },
    {
      "code" : "Vorläufige-Meldung",
      "display" : "Vorläufige Meldung"
    },
    {
      "code" : "LGF-Korrekturaufforderung",
      "display" : "LGF Korrekturaufforderung"
    },
    {
      "code" : "Endgueltige-Korrekturaufforderung",
      "display" : "LGF Endgültige Korrekturaufforderung"
    },
    {
      "code" : "Vorlaeufige-Freigabe",
      "display" : "Vorläufige Freigabe"
    },
    {
      "code" : "Endgueltige-Meldung",
      "display" : "Endgültige Meldung"
    },
    {
      "code" : "Endgueltige-Freigabe",
      "display" : "Endgültige Freigabe"
    }
  ]
}

```
