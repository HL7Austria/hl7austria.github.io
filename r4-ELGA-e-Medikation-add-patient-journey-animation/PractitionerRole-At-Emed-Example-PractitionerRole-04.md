# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel PractitionerRole Urlaubsvertretung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel PractitionerRole Urlaubsvertretung**

## Example PractitionerRole: Beispiel PractitionerRole Urlaubsvertretung

Profile: [AT ELGA Core PractitionerRole Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitionerRole.html)

**practitioner**: [Dr. Urlaubsvertretung](Practitioner-At-Emed-Example-Practitioner-04.md)

**organization**: [Ordination Dr. Urlaubsvertretung](Organization-At-Emed-Example-Organization-04.md)

**code**: Ärztin/Arzt



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-04",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-04",
    "display" : "Dr. Urlaubsvertretung"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-04",
    "display" : "Ordination Dr. Urlaubsvertretung"
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
