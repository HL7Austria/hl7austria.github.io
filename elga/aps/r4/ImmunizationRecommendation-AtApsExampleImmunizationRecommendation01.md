# ImmunizationRecommendation-Beispiel 1 - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "ImmunizationRecommendation",
  "id" : "AtApsExampleImmunizationRecommendation01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunizationrecommendation"
    ]
  },
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "date" : "2026-10-10",
  "recommendation" : [
    {
      "vaccineCode" : [
        {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/eimpf-impfstoffe",
              "code" : "2457324",
              "display" : "BOOSTRIX POLIO FSPR 0,5ML"
            }
          ]
        }
      ],
      "forecastStatus" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "723620004"
          }
        ]
      }
    }
  ]
}

```
