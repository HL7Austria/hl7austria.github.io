# Patient Journey Practitioner - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Journey Practitioner**

## Example PractitionerRole: Patient Journey Practitioner

Profile: [AT APS PractitionerRole](StructureDefinition-at-aps-practitionerrole.md)

**practitioner**: [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md)

**organization**: [Amadeus Spital](Organization-AtApsExampleOrganization01.md)

**code**: Ärztin/Arzt

**specialty**: Internal medicine



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "AtApsExamplePractitionerRole01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  },
  "organization" : {
    "reference" : "Organization/AtApsExampleOrganization01",
    "display" : "Amadeus Spital"
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
