# HL7ATCoreLocationLinz - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Location: HL7ATCoreLocationLinz

Profile: [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md)

Campus Linz (urn:oid:1.2.40.0.34.4.10#K101.2)

-------

| | |
| :--- | :--- |
| Address: | Linz 4020 AUT |
| Position: | 48.3064, 14.2861 |
| Managed By: | [Amadeus Spital (Allgemeine Krankenanstalt) (OID:1.2.40.0.34.99.4613.3)](Organization-HL7ATCoreOrganizationExample01.md) |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "HL7ATCoreLocationLinz",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-location"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.2.40.0.34.4.10",
    "value" : "K101.2"
  }],
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
