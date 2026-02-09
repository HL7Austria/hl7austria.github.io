# AT APS Specimen - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-specimen",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips"
    }
  ],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-specimen",
  "version" : "0.2.0",
  "name" : "AtApsSpecimen",
  "title" : "AT APS Specimen",
  "status" : "active",
  "date" : "2026-02-09T07:50:08+00:00",
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
  "description" : "Das AT APS-Profil für die Specimen-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Specimen",
        "path" : "Specimen",
        "short" : "AT APS Specimen"
      },
      {
        "id" : "Specimen.type",
        "path" : "Specimen.type",
        "binding" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "key",
                  "valueId" : "BackwardCompatibilitySpecimenType"
                },
                {
                  "url" : "purpose",
                  "valueCode" : "candidate"
                },
                {
                  "url" : "valueSet",
                  "valueCanonical" : "https://termgit.elga.gv.at/ValueSet/elga-specimentype"
                },
                {
                  "url" : "documentation",
                  "valueMarkdown" : "An additional binding to the ELGA Valueset \"Specimentype\" - retained for backward compatibility."
                }
              ],
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-probenmaterial"
        }
      },
      {
        "id" : "Specimen.subject",
        "path" : "Specimen.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"
            ]
          }
        ]
      },
      {
        "id" : "Specimen.parent",
        "path" : "Specimen.parent",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-specimen"
            ]
          }
        ]
      },
      {
        "id" : "Specimen.collection.collector",
        "path" : "Specimen.collection.collector",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"
            ]
          }
        ]
      },
      {
        "id" : "Specimen.collection.bodySite",
        "path" : "Specimen.collection.bodySite",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "BodySite"
            }
          ],
          "strength" : "extensible",
          "description" : "Codes describing anatomical locations. May include laterality.",
          "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
        }
      },
      {
        "id" : "Specimen.condition",
        "path" : "Specimen.condition",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Specimen.condition:insufficientsample",
        "path" : "Specimen.condition",
        "sliceName" : "insufficientsample",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "281268007",
              "display" : "Insufficient sample (finding)"
            }
          ]
        }
      }
    ]
  }
}

```
