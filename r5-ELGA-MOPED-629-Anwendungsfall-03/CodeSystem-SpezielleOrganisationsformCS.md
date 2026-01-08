# ELGA.MOPED\Spezielle Organisationsform - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Spezielle Organisationsform**

## CodeSystem: Spezielle Organisationsform (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/SpezielleOrganisationsformCS | *Version*:0.1.0 | |
| Active as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SpezielleOrganisationsformCS |

 
Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpezielleOrganisationsformVS](ValueSet-SpezielleOrganisationsformVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "SpezielleOrganisationsformCS",
  "url" : "https://elga.moped.at/CodeSystem/SpezielleOrganisationsformCS",
  "version" : "0.1.0",
  "name" : "SpezielleOrganisationsformCS",
  "title" : "Spezielle Organisationsform",
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
  "description" : "Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan \nzusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [
    {
      "code" : "A",
      "display" : "Abteilung"
    },
    {
      "code" : "R",
      "display" : "Referenzzentrum – ohne Versorgungsstufengliederung"
    },
    {
      "code" : "Z",
      "display" : "Referenzzentrum – höchste Versorgungsstufe"
    },
    {
      "code" : "S",
      "display" : "Referenzzentrum – 2. Versorgungsstufe"
    },
    {
      "code" : "V",
      "display" : "Spezialzentrum – ausgewählte Versorgungsbereiche"
    },
    {
      "code" : "D",
      "display" : "Department"
    },
    {
      "code" : "F",
      "display" : "Fachschwerpunkt"
    },
    {
      "code" : "T",
      "display" : "Dislozierte Tagesklinik"
    },
    {
      "code" : "W",
      "display" : "Dislozierte Wochenklinik"
    },
    {
      "code" : "K",
      "display" : "Tagesstation als Teil einer vollstationären Organisationsform (für einmalige Aufenthalte über Tag oder über Nacht)"
    },
    {
      "code" : "H",
      "display" : "Spezielle ambulante Bereiche (ambulante Tagesbehandlung und ambulante tagesstrukturierende Behandlung)"
    },
    {
      "code" : "M",
      "display" : "Fachspezifische Wochenklinik"
    },
    {
      "code" : "X",
      "display" : "Ohne fachlich eindeutige Zuordnung"
    }
  ]
}

```
