# AT APS Problems - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-aps-problems",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://fhir.hl7.at/elga/aps/r4/ValueSet/at-aps-problems",
  "version" : "0.2.0",
  "name" : "AtApsProblems",
  "title" : "AT APS Problems",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-11-11T12:31:41+00:00",
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
  "description" : "Dieses Value-Set ist eine Sammlung von möglichen Quellen für die Dokumentation von Problemen/Diagnosen.",
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
  "copyright" : "Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das [Mitglieder-Lizenzierungs- und Distributions-Service](https://mlds.ihtsdotools.org/#/landing/AT?lang=de) (MLDS) direkt beim jeweiligen NRC beantragt werden.",
  "compose" : {
    "include" : [
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/icd-10-bmsgpk-2025"
      },
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/icpc2"
      },
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/icf"
      },
      {
        "system" : "http://snomed.info/sct"
      },
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/lkat-bmsgpk-2025"
      },
      {
        "system" : "http://loinc.org"
      }
    ]
  }
}

```
