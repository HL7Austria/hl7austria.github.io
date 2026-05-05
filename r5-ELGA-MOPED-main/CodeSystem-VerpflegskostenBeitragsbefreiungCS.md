# ELGA.MOPED\Befreiung für den Verpflegskostenbeitrag - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Befreiung für den Verpflegskostenbeitrag**

## CodeSystem: Befreiung für den Verpflegskostenbeitrag (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/VerpflegskostenBeitragsbefreiungCS | *Version*:0.1.0 | |
| Active as of 2026-05-05 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:VerpflegskostenBeitragsbefreiungCS |

 
CodeSystem für die Befreiung für den Verpflegskostenbeitrag 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VerpflegskostenBeitragsbefreiungVS](ValueSet-VerpflegskostenBeitragsbefreiungVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "VerpflegskostenBeitragsbefreiungCS",
  "url" : "https://elga.moped.at/CodeSystem/VerpflegskostenBeitragsbefreiungCS",
  "version" : "0.1.0",
  "name" : "VerpflegskostenBeitragsbefreiungCS",
  "title" : "Befreiung für den Verpflegskostenbeitrag",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-05T07:22:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Befreiung für den Verpflegskostenbeitrag",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "J",
    "display" : "Es liegt eine Befreiung vom Verpflegskostenbeitrag aufgrund einer bundes- oder landesgesetzlichen Gesetzesbestimmung bzw. eines Arbeitsunfalls oder einer Rezeptgebührenbefreiung vor."
  },
  {
    "code" : "N",
    "display" : "Es liegt keine Befreiung vom Verpflegskostenbeitrag vor."
  },
  {
    "code" : "S",
    "display" : "Es liegt eine Befreiung vom Verpflegskostenbeitrag aufgrund eines gemeldeten Aufenthaltes von\nPatienten in der Sonderklasse vor (BVAEB-EB, SVS-GW, BVAEB-OEB)."
  }]
}

```
