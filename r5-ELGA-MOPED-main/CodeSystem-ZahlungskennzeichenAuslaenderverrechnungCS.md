# ELGA.MOPED\CodeSystem Zahlungskennzeichen Auslaenderverrechnung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CodeSystem Zahlungskennzeichen Auslaenderverrechnung**

## CodeSystem: CodeSystem Zahlungskennzeichen Auslaenderverrechnung (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/ZahlungskennzeichenAuslaenderverrechnungCS | *Version*:0.1.0 | |
| Active as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:ZahlungskennzeichenAuslaenderverrechnungCS |

 
CodeSystem Zahlungskennzeichen Auslaenderverrechnung 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ZahlungskennzeichenVS](ValueSet-ZahlungskennzeichenVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ZahlungskennzeichenAuslaenderverrechnungCS",
  "url" : "https://elga.moped.at/CodeSystem/ZahlungskennzeichenAuslaenderverrechnungCS",
  "version" : "0.1.0",
  "name" : "ZahlungskennzeichenAuslaenderverrechnungCS",
  "title" : "CodeSystem Zahlungskennzeichen Auslaenderverrechnung",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem Zahlungskennzeichen Auslaenderverrechnung",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "A",
    "display" : "Akontierung"
  },
  {
    "code" : "K",
    "display" : "keine ausländische Verrechnung möglich (letzte Meldung)"
  },
  {
    "code" : "E",
    "display" : "Endzahlung"
  },
  {
    "code" : "R",
    "display" : "Rücküberweisung an ausländischen Träger Rechnung wurde bereits bezahlt und das Geld dem Landesfond weitergegeben. Im Nachhinein wurde diese Rechnung vom ausländischen Träger begründet beanstandet. Dem ausländischen Träger wurde der Rechnungsbetrag von der ÖGK rücküberwiesen. Der Betrag im Feld BETRAV ist deshalb vom Landesgesundheitsfonds an die Österreichische Gesundheitskasse zu erstatten."
  }]
}

```
