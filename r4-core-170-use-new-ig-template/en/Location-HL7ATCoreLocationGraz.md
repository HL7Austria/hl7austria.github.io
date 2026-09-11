# HL7ATCoreLocationGraz - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Location: HL7ATCoreLocationGraz

Profile: [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md)

**identifier**: `urn:oid:1.2.40.0.34.4.10`/K101.1

**name**: Campus Graz

**address**: Graz 8010 AUT 

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 15.4395 | 47.0707 |

**managingOrganization**: [Organization Amadeus Spital](Organization-HL7ATCoreOrganizationExample01.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "HL7ATCoreLocationGraz",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-location"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.2.40.0.34.4.10",
    "value" : "K101.1",
    "assigner" : {
      "display" : "Österreichisches Bundesministerium für Gesundheit"
    }
  }],
  "name" : "Campus Graz",
  "address" : {
    "city" : "Graz",
    "postalCode" : "8010",
    "country" : "AUT"
  },
  "position" : {
    "longitude" : 15.4395,
    "latitude" : 47.0707
  },
  "managingOrganization" : {
    "reference" : "Organization/HL7ATCoreOrganizationExample01"
  }
}

```
