# AT e-Diagnose Procedure Code - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: AT e-Diagnose Procedure Code (Experimental) 

 
Value-Set für die Codierung von Prozeduren. 

 **References** 

* [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

* Dieses Value-Set wurde für die e-Diagnose entworfen und wird auf den [österreichische e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.
* Der IG Publisher baut aktuell auf SNOMED Intl. Version http://snomed.info/sct/900000000000207008/version/20250201 auf, weshalb weniger Konzepte in diesem Value-Set angezeigt werden als in der aktuellen Version von SNOMED CT verfügbar sind. Dieses Problem wird bereinigt, sobald das Value-Set auf den österreichische e-Health Terminologieserver verschoben wird.
* Aktuell werden österreichische Übersetzungen auf Basis der Austrian Extension in dem Value-Set noch nicht aufgelöst. Dieses Problem wird bereinigt, sobald das Value-Set auf den österreichische e-Health Terminologieserver verschoben wird.

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-procedure-code",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-procedure-code",
  "version" : "0.1.0",
  "name" : "AtEDiagProcedureCode",
  "title" : "AT e-Diagnose Procedure Code",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T12:38:12+00:00",
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
  "description" : "Value-Set für die Codierung von Prozeduren.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 416940007 |History of procedure (situation)| . 363589002 |Associated procedure (attribute)|"
      }]
    }]
  }
}

```
