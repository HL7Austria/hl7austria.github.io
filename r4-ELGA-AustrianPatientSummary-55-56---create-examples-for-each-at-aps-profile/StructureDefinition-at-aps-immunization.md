# AT APS Immunization - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-immunization",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
    }
  ],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization",
  "version" : "0.2.0",
  "name" : "AtApsImmunization",
  "title" : "AT APS Immunization",
  "status" : "active",
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
  "description" : "Das AT APS-Profil für die Immunization-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Immunization",
        "path" : "Immunization",
        "short" : "AT APS Immunization"
      },
      {
        "id" : "Immunization.extension",
        "path" : "Immunization.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Immunization.extension:basedOn",
        "path" : "Immunization.extension",
        "sliceName" : "basedOn",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-ext-immunization-basedOn"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.vaccineCode",
        "path" : "Immunization.vaccineCode",
        "binding" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "key",
                  "valueId" : "HistoricVaccines"
                },
                {
                  "url" : "purpose",
                  "valueCode" : "candidate"
                },
                {
                  "url" : "valueSet",
                  "valueCanonical" : "https://termgit.elga.gv.at/ValueSet/eimpf-historischeimpfstoffe"
                }
              ],
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
            }
          ],
          "strength" : "extensible",
          "valueSet" : "https://fhir.hl7.at/elga/aps/r4/ValueSet/at-aps-immunization-vaccine-codes"
        }
      },
      {
        "id" : "Immunization.patient",
        "path" : "Immunization.patient",
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
        "id" : "Immunization.route",
        "path" : "Immunization.route",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/eimpf-medikationartanwendung"
        }
      },
      {
        "id" : "Immunization.protocolApplied",
        "path" : "Immunization.protocolApplied",
        "min" : 1
      },
      {
        "id" : "Immunization.protocolApplied.targetDisease",
        "path" : "Immunization.protocolApplied.targetDisease",
        "min" : 1,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/eimpf-immunizationtarget"
        }
      }
    ]
  }
}

```
