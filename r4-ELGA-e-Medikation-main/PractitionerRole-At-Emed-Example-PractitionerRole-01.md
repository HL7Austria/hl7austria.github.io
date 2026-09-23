# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel PractitionerRole Allgemeinmedizinerin 01 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel PractitionerRole Allgemeinmedizinerin 01**

## Example PractitionerRole: Beispiel PractitionerRole Allgemeinmedizinerin 01

Profile: [AT ELGA Core PractitionerRole Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitionerRole.html)

**practitioner**: [Dr. Hausärztin](Practitioner-At-Emed-Example-Practitioner-01.md)

**organization**: [Ordination Dr. Hausärztin](Organization-At-Emed-Example-Organization-01.md)

**code**: Ärztin/Arzt



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01",
    "display" : "Dr. Hausärztin"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-01",
    "display" : "Ordination Dr. Hausärztin"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "1000",
      "display" : "Ärztin/Arzt"
    }]
  }]
}

```
