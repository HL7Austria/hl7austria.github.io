# AT APS ObservationInterpretation - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-aps-observationinterpretation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://fhir.hl7.at/elga/aps/r4/ValueSet/at-aps-observationinterpretation",
  "version" : "0.2.0",
  "name" : "AtApsObservationInterpretation",
  "title" : "AT APS ObservationInterpretation",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-01-28T12:36:33+00:00",
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
    },
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Dieses Value-Set bildet die in Österreich gebräuchlichen Interpretationen von Untersuchungsergebnissen ab.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "AT"
        }
      ]
    }
  ],
  "immutable" : false,
  "compose" : {
    "include" : [
      {
        "valueSet" : ["http://hl7.org/fhir/ValueSet/observation-interpretation"]
      },
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/elga-ergaenzungsliste"
      },
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/rast-klassen"
      }
    ]
  }
}

```
