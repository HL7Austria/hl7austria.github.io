# AT APS Immunitzation Vaccine Codes - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-aps-immunization-vaccine-codes",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://fhir.hl7.at/elga/aps/r4/ValueSet/at-aps-immunization-vaccine-codes",
  "version" : "0.2.0",
  "name" : "AtApsImmunizationVaccineCodes",
  "title" : "AT APS Immunitzation Vaccine Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-04T15:23:17+00:00",
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
  "description" : "Dieses Value-Set erweitert die in Österreich existierenden Impfstoffe um die Möglichkeit, angeben zu können, dass der verimpfte Impfstoff unbekannt ist.",
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
        "valueSet" : ["https://termgit.elga.gv.at/ValueSet/eimpf-impfstoffe"]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "787482006"
          }
        ]
      }
    ]
  }
}

```
