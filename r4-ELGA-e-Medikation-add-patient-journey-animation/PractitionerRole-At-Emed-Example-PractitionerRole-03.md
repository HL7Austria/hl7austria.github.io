# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel PractitionerRole Ärztin im Krankenhaus - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel PractitionerRole Ärztin im Krankenhaus**

## Example PractitionerRole: Beispiel PractitionerRole Ärztin im Krankenhaus

Profile: [AT ELGA Core PractitionerRole Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitionerRole.html)

**practitioner**: [Dr. Krankenhaus](Practitioner-At-Emed-Example-Practitioner-03.md)

**organization**: [Krankenhaus](Organization-At-Emed-Example-Organization-03.md)

**code**: Fachärztin/Facharzt für Chirurgie

**specialty**: Internal medicine



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-03",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-03",
    "display" : "Dr. Krankenhaus"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-03",
    "display" : "Krankenhaus"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "107",
      "display" : "Fachärztin/Facharzt für Chirurgie"
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
