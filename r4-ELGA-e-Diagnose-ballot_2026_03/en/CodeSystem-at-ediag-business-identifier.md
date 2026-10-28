# AT e-Diagnose Business Identifier CS - ELGA e-Diagnose R4 v0.1.1

## CodeSystem: AT e-Diagnose Business Identifier CS 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-ediag-business-identifier",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
  "version" : "0.1.1",
  "name" : "AtEdiagBusinessIdentifierCS",
  "title" : "AT e-Diagnose Business Identifier CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-28T08:34:30+00:00",
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
  "description" : "Dieses CodeSystem enthält keine Konzepte sondern dient als System für den [Business Identifier einzelner Einträge](design_choices.html#update-entry) in der e-Diagnose. Ein Client kann diesen Identifier nutzen, um einzelne Einträge im Zuge einer Bearbeitung miteinander zu verknüpfen. Sollte dieser Identifier durch den Client nicht gesetzt werden, wird er von der Fachanwendung e-Diagnose vergeben.",
  "caseSensitive" : true,
  "content" : "not-present"
}

```
