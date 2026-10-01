# AT e-Diagnose Condition Code - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: AT e-Diagnose Condition Code (Experimental) 

 
Value-Set für die Codierung von Diagnosen. 

 **References** 

* [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

Der Inhalt dieses Value-Sets bildet alle SNOMED CT Konzepte ab, die das [e-Health Codierservice](https://codierservice.ehealth.gv.at/) als Ergebnis einer Eingabe haben könnte.

* Aktuell werden **alle** Klinisch relevante Erscheinungen zugelassen. Auf Basis des Codierservice wird diese Menge noch reduziert.
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
  "id" : "at-ediag-condition-code",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-code",
  "version" : "0.1.0",
  "name" : "AtEDiagConditionCode",
  "title" : "AT e-Diagnose Condition Code",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T13:01:54+00:00",
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
  "description" : "Value-Set für die Codierung von Diagnosen.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "404684003"
      }]
    }]
  }
}

```
