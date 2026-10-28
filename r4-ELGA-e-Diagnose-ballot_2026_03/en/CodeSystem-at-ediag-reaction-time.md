# AT e-Diagnose Reaktionszeit CS - ELGA e-Diagnose R4 v0.1.1

## CodeSystem: AT e-Diagnose Reaktionszeit CS 

* Die Inhalte dieses Codesystems basieren auf den [Vorarbeiten im Rahmen der MIOs](https://hub.kbv.de/spaces/ALDOK1X0X0/pages/375456332/Weitere+m%C3%B6gliche+Inhalte#Weiterem%C3%B6glicheInhalte-ArtderReaktion%2FzeitlicherVerlaufderReaktion) in Deutschland. Eine Übersetzung der hier dargestellten Konzepte auf eine internationale Terminologie (z. B. SNOMED CT) ist in Vorbereitung.
* Dieses Codesystem wurde für die e-Diagnose entworfen und wird auf den [österreichischen e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.

This Code system is referenced in the definition of the following value sets:

* [AT e-Diagnose Reaktionszeit VS](ValueSet-at-ediag-reaction-time.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-ediag-reaction-time",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-reaction-time",
  "version" : "0.1.1",
  "name" : "AtEdiagReactionTimeCS",
  "title" : "AT e-Diagnose Reaktionszeit CS",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-28T08:57:40+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Zeitlicher Verlauf der Manifestation",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "lt6h",
    "display" : "<6 Stunden"
  },
  {
    "code" : "btw6_24h",
    "display" : "6-24 Stunden"
  },
  {
    "code" : "gt24h",
    "display" : ">24 Stunden"
  },
  {
    "code" : "unknown",
    "display" : "Unbekannt"
  }]
}

```
