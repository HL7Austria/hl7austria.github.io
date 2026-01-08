# HL7.AT.FHIR.CORE.R5\HL7ATCoreLocationLinz - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCoreLocationLinz**

## Example Location: HL7ATCoreLocationLinz

Profile: [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md)

**identifier**: `urn:oid:1.2.40.0.34.4.10`/K101.2

**name**: Campus Linz

**address**: Linz 4020 AUT 

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 14.2861 | 48.3064 |

**managingOrganization**: [Organization Amadeus Spital](Organization-HL7ATCoreOrganizationExample01.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "HL7ATCoreLocationLinz",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-location"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:1.2.40.0.34.4.10",
      "value" : "K101.2"
    }
  ],
  "name" : "Campus Linz",
  "address" : {
    "city" : "Linz",
    "postalCode" : "4020",
    "country" : "AUT"
  },
  "position" : {
    "longitude" : 14.2861,
    "latitude" : 48.3064
  },
  "managingOrganization" : {
    "reference" : "Organization/HL7ATCoreOrganizationExample01"
  }
}

```
