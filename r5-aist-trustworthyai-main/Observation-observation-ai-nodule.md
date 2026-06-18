# Output: AI-Generated Finding (Pulmonary Nodule) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Output: AI-Generated Finding (Pulmonary Nodule)**

## Example Observation: Output: AI-Generated Finding (Pulmonary Nodule)

Profile: [EU AI Act Observation (Validated Result)](StructureDefinition-eu-ai-observation.md)

**Case-Specific Indication**: Screening

**status**: Preliminary

**code**: Nodule of lung (disorder)

**subject**: [Elias Vance Male, DoB: 1965-04-12](Patient-patient-elias-vance.md)

**effective**: 2026-04-08 08:00:00+0000

**performer**: [Practitioner Aris Thorne ](Practitioner-doctor-aris-thorne.md)

**interpretation**: AI Generated Result

**method**: AuraScan Neural Engine v3.1

**device**: [Device: extension = ->DocumentReference: extension = ,,; status = current; type = AI Model Card; description = Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.,; identifier = EU AI Database Identifier: EU-AI-2042-XJ992; manufacturer = Aetheria HealthTech Systems Corp.; contact = support@aetheria-health.test(Work),ph: +49 000 98765432(Work); note = Maintenance: Hardware calibration required every 12 months.,Security: Software patches are deployed monthly via remote update.](Device-device-aurascan-ai.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-ai-nodule",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/case-specific-indication",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "screening",
        "display" : "Screening"
      }]
    }
  }],
  "status" : "preliminary",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "786838002",
      "display" : "Nodule of lung (disorder)"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-elias-vance"
  },
  "effectiveDateTime" : "2026-04-08T08:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/doctor-aris-thorne"
  }],
  "interpretation" : [{
    "coding" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
      "code" : "ai-generated"
    }]
  }],
  "method" : {
    "text" : "AuraScan Neural Engine v3.1"
  },
  "device" : {
    "reference" : "Device/device-aurascan-ai"
  }
}

```
