# ELGA.MOPED\Ursache für Behandlung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ursache für Behandlung**

## CodeSystem: Ursache für Behandlung (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/UrsacheCS | *Version*:0.1.0 | |
| Active as of 2026-01-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:UrsacheCS |

 
CodeSystem für die Ursache der Behandlung laut Ka-Org 

 This Code system is referenced in the content logical definition of the following value sets: 

* [UrsacheVS](ValueSet-UrsacheVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "UrsacheCS",
  "url" : "https://elga.moped.at/CodeSystem/UrsacheCS",
  "version" : "0.1.0",
  "name" : "UrsacheCS",
  "title" : "Ursache für Behandlung",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-01-07T10:11:40+00:00",
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
  "description" : "CodeSystem für die Ursache der Behandlung laut Ka-Org",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 29,
  "concept" : [
    {
      "code" : "00",
      "display" : "Überweisung"
    },
    {
      "code" : "01",
      "display" : "Arbeitsunfall oder Berufskrankheit"
    },
    {
      "code" : "02",
      "display" : "Wehrdienstbeschädigung"
    },
    {
      "code" : "03",
      "display" : "Strom/Blitz"
    },
    {
      "code" : "04",
      "display" : "Beschädigung nach dem KOVG, HVB, etc."
    },
    {
      "code" : "05",
      "display" : "Raufhandel"
    },
    {
      "code" : "06",
      "display" : "Trunkenheit"
    },
    {
      "code" : "07",
      "display" : "Arbeitsunfall in der Land- und Forstwirtschaft"
    },
    {
      "code" : "08",
      "display" : "Verkehrsunfall"
    },
    {
      "code" : "09",
      "display" : "Erste Hilfe"
    },
    {
      "code" : "10",
      "display" : "Mutter-Kind-Pass-Untersuchung"
    },
    {
      "code" : "11",
      "display" : "Mutter-Kind-Pass-Untersuchung für Nichtversicherte"
    },
    {
      "code" : "12",
      "display" : "Behandlung in Folge einer Schwangerschaft"
    },
    {
      "code" : "13",
      "display" : "Gesundenuntersuchung"
    },
    {
      "code" : "14",
      "display" : "Vergewaltigung"
    },
    {
      "code" : "15",
      "display" : "Verbrennung"
    },
    {
      "code" : "16",
      "display" : "Tierbiss"
    },
    {
      "code" : "17",
      "display" : "Routineuntersuchung Neugeborenes"
    },
    {
      "code" : "19",
      "display" : "Telemedizinische Leistungen"
    },
    {
      "code" : "30",
      "display" : "Nachbehandlung nach stationärer Pflege in einer Anstalt"
    },
    {
      "code" : "32",
      "display" : "Prästationäre Untersuchung/Behandlung vor stationärer Anstaltspflege"
    },
    {
      "code" : "35",
      "display" : "Nichtanwesenheit des Patienten in der Ambulanz (Laborprobe, Untersuchung einer Gewebeprobe)"
    },
    {
      "code" : "40",
      "display" : "ambulante Chemotherapie"
    },
    {
      "code" : "45",
      "display" : "Diabetesbehandlung im Rahmen von Therapie Aktiv"
    },
    {
      "code" : "50",
      "display" : "Dialyse"
    },
    {
      "code" : "60",
      "display" : "Spende von Körperteilen"
    },
    {
      "code" : "70",
      "display" : "Anzeigepflichtige übertragbare Krankheit (meldepflichtige Diagnose)"
    },
    {
      "code" : "80",
      "display" : "Humangenetische Untersuchung"
    },
    {
      "code" : "99",
      "display" : "Sonstige Ursache"
    }
  ]
}

```
