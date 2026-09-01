# ImmunizationRecommendation-Beispiel 1 - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ImmunizationRecommendation-Beispiel 1**

## Example ImmunizationRecommendation: ImmunizationRecommendation-Beispiel 1

Profile: [AT APS Immunization](StructureDefinition-at-aps-immunizationrecommendation.md)

**patient**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**date**: 2026-10-10

### Recommendations

| | | |
| :--- | :--- | :--- |
| - | **VaccineCode** | **ForecastStatus** |
| * | BOOSTRIX POLIO FSPR 0,5ML | Requires vaccination |



## Resource Content

```json
{
  "resourceType" : "ImmunizationRecommendation",
  "id" : "AtApsExampleImmunizationRecommendation01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunizationrecommendation"]
  },
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "date" : "2026-10-10",
  "recommendation" : [{
    "vaccineCode" : [{
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/eimpf-impfstoffe",
        "code" : "2457324",
        "display" : "BOOSTRIX POLIO FSPR 0,5ML"
      }]
    }],
    "forecastStatus" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "723620004"
      }]
    }
  }]
}

```
