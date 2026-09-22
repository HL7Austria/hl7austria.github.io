# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Allgemeinmedizinerin 01 (Dr. Hausärztin + Organisation) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Allgemeinmedizinerin 01 (Dr. Hausärztin + Organisation)**

## Example PractitionerRole: Beispiel Allgemeinmedizinerin 01 (Dr. Hausärztin + Organisation)

Profile: [AT ELGA Core PractitionerRole Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitionerRole.html)

**practitioner**: [Dr. Hausärztin](Practitioner/At-Emed-Example-PractitionerRole-01)

**organization**: [Ordination](Organization-At-Emed-Example-Organization-Hausarzt-01.md)

**code**: Ärztin/Arzt

**specialty**: Internal medicine



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-PractitionerRole-01",
    "display" : "Dr. Hausärztin"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-Hausarzt-01",
    "display" : "Ordination"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "1000",
      "display" : "Ärztin/Arzt"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "419192003",
      "display" : "Internal medicine"
    }]
  }]
}

```
