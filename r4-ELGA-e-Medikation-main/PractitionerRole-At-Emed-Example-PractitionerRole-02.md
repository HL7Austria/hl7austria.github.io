# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel PractitionerRole Apothekerin - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel PractitionerRole Apothekerin**

## Example PractitionerRole: Beispiel PractitionerRole Apothekerin

Profile: [AT ELGA Core PractitionerRole Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitionerRole.html)

**practitioner**: [Dr. Apothekerin](Practitioner-At-Emed-Example-Practitioner-03.md)

**organization**: [Amadeus Apotheke](Organization-At-Emed-Example-Organization-03.md)

**code**: Apothekerin/Apotheker



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-03",
    "display" : "Dr. Apothekerin"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-03",
    "display" : "Amadeus Apotheke"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "222",
      "display" : "Apothekerin/Apotheker"
    }]
  }]
}

```
