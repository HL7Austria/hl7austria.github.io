# AT APS Observation Results Laboratory Pathology - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-observationresultslaboratorypathology",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips"
    }
  ],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology",
  "version" : "0.2.0",
  "name" : "AtApsObservationResultsLaboratoryPathology",
  "title" : "AT APS Observation Results Laboratory Pathology",
  "status" : "active",
  "date" : "2025-11-18T10:23:29+00:00",
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
  "description" : "Das AT APS-Profil für die Observation-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "short" : "AT APS Observation Results Laboratory Pathology"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-laborstruktur"
        }
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "type" : [
          {
            "code" : "CodeableConcept",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips"
            ]
          }
        ],
        "binding" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "key",
                  "valueId" : "Antibiogram"
                },
                {
                  "url" : "purpose",
                  "valueCode" : "extensible"
                },
                {
                  "url" : "valueSet",
                  "valueCanonical" : "https://termgit.elga.gv.at/ValueSet/elga-antibiogramm"
                },
                {
                  "url" : "documentation",
                  "valueMarkdown" : "Additional binding in case of antibiotic susceptibility testing."
                }
              ],
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-laborparameter"
        }
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.value[x]:valueString",
        "path" : "Observation.value[x]",
        "sliceName" : "valueString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Observation.value[x]:valueQuantity",
        "path" : "Observation.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.value[x]:valueCodeableConcept",
        "path" : "Observation.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "key",
                  "valueId" : "ProofValue"
                },
                {
                  "url" : "purpose",
                  "valueCode" : "candidate"
                },
                {
                  "url" : "valueSet",
                  "valueCanonical" : "https://termgit.elga.gv.at/ValueSet/elga-nachweisergebnis"
                },
                {
                  "url" : "documentation",
                  "valueMarkdown" : "An additional binding to the ELGA Valueset \"Nachweisergebnis\" - to include missing values of the IPS ValueSet."
                }
              ],
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
            }
          ],
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/results-coded-values-laboratory-pathology-uv-ips"
        }
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://fhir.hl7.at/elga/aps/r4/ValueSet/at-aps-observationinterpretation"
        }
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
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
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
            ]
          }
        ]
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "type" : [
          {
            "code" : "CodeableConcept",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips"
            ]
          }
        ],
        "binding" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "key",
                  "valueId" : "ComponentAntibiogram"
                },
                {
                  "url" : "purpose",
                  "valueCode" : "extensible"
                },
                {
                  "url" : "valueSet",
                  "valueCanonical" : "https://termgit.elga.gv.at/ValueSet/elga-antibiogramm"
                },
                {
                  "url" : "documentation",
                  "valueMarkdown" : "Additional binding in case of antibiotic susceptibility testing."
                }
              ],
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-laborparameter"
        }
      },
      {
        "id" : "Observation.component.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component.value[x]:valueCodeableConcept",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "key",
                  "valueId" : "ComponentProofValue"
                },
                {
                  "url" : "purpose",
                  "valueCode" : "candidate"
                },
                {
                  "url" : "valueSet",
                  "valueCanonical" : "https://termgit.elga.gv.at/ValueSet/elga-nachweisergebnis"
                },
                {
                  "url" : "documentation",
                  "valueMarkdown" : "An additional binding to the ELGA Valueset \"Nachweisergebnis\" - to include missing values of the IPS ValueSet."
                }
              ],
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
            }
          ],
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/results-coded-values-laboratory-pathology-uv-ips"
        }
      },
      {
        "id" : "Observation.component.interpretation",
        "path" : "Observation.component.interpretation",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://fhir.hl7.at/elga/aps/r4/ValueSet/at-aps-observationinterpretation"
        }
      }
    ]
  }
}

```
