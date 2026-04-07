# ELGA.MOPED\Status der Versichertenanspruchserklärung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Status der Versichertenanspruchserklärung**

## CodeSystem: Status der Versichertenanspruchserklärung (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/VAEStatusCS | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:VAEStatusCS |

 
Status der Versichertenanspruchserklärung 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VAEStatusVS](ValueSet-VAEStatusVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "VAEStatusCS",
  "url" : "https://elga.moped.at/CodeSystem/VAEStatusCS",
  "version" : "0.1.0",
  "name" : "VAEStatusCS",
  "title" : "Status der Versichertenanspruchserklärung",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-07T11:10:24+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Status der Versichertenanspruchserklärung",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 23,
  "concept" : [{
    "code" : "00",
    "display" : "bewilligt (nur für stationären Bereich)"
  },
  {
    "code" : "01",
    "display" : "Versicherung nicht festgestellt"
  },
  {
    "code" : "02",
    "display" : "Wartezeit für Schutzfrist nicht gegeben"
  },
  {
    "code" : "03",
    "display" : "nicht leistungszuständig"
  },
  {
    "code" : "04",
    "display" : "Angehörigeneigenschaft nicht nachgewiesen"
  },
  {
    "code" : "05",
    "display" : "Änderung der Zuständigkeit"
  },
  {
    "code" : "08",
    "display" : "Anstaltspflege ohne Notwendigkeit ärztlicher Behandlung"
  },
  {
    "code" : "10",
    "display" : "Leistungszuständigkeit durch Nichtbeantwortung einer Anfrage nicht geklärt"
  },
  {
    "code" : "11",
    "display" : "notwendige Unterlagen fehlen"
  },
  {
    "code" : "12",
    "display" : "direkte Verrechnung mit dem Versicherten"
  },
  {
    "code" : "14",
    "display" : "Nichterfüllung der Wartezeit bei Selbstversicherten"
  },
  {
    "code" : "16",
    "display" : "Kostenübernahme vom Chef(Kontroll)arzt abgelehnt"
  },
  {
    "code" : "17",
    "display" : "die weitere Kostenübernahme vom Chef(Kontroll)arzt abgelehnt"
  },
  {
    "code" : "18",
    "display" : "Bearbeitung/Verlängerung erst nach Vorlage der Krankengeschichte möglich"
  },
  {
    "code" : "19",
    "display" : "Versicherung festgestellt (nur für Ambulanzverrechnung inkl. tageschirurgischer Versorgung)"
  },
  {
    "code" : "21",
    "display" : "Pflicht anerkannt, aber zahlungsunfähig X"
  },
  {
    "code" : "22",
    "display" : "Pflicht anerkannt, Kostenübernahme abgelehnt X"
  },
  {
    "code" : "40",
    "display" : "Voraussetzung für Angehörigeneigenschaft nicht mehr gegeben"
  },
  {
    "code" : "42",
    "display" : "Angehöriger ist selber versichert oder anderweitig mitversichert"
  },
  {
    "code" : "49",
    "display" : "Ablehnungsgrund steht im Kommentarsatz (sonstige Ablehnung)"
  },
  {
    "code" : "97",
    "display" : "Urgenz für Entlassungsnachricht (K05)"
  },
  {
    "code" : "98",
    "display" : "in Bearbeitung"
  },
  {
    "code" : "99",
    "display" : "kasseninterne Berichtigung"
  }]
}

```
