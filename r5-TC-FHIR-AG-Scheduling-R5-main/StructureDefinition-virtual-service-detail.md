# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\VirtualServiceDetail - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VirtualServiceDetail**

## Extension: VirtualServiceDetail 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/virtual-service-detail | *Version*:0.2.0 | |
| Draft as of 2026-03-18 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:VirtualServiceDetailExt |

Represents personalized details for a virtual service. This extension is meant to be used on appointment.participant if personalized Details (e.g. individual links or secrets) per participant exist. If the details are the same for all participants, Appointment.virtualService should be used instead. **Warning! Due to a bug, this extension contains a workaround. Instead of the custom complex data structure defined here, VirtualServiceDetail will be used as an extension on Appointment.participant in the future**

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Scheduling Appointment Profile](StructureDefinition-at-scheduling-appointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.tc.wg.scheduling.r5|current/StructureDefinition/virtual-service-detail)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-virtual-service-detail.csv), [Excel](StructureDefinition-virtual-service-detail.xlsx), [Schematron](StructureDefinition-virtual-service-detail.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "virtual-service-detail",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/virtual-service-detail",
  "version" : "0.2.0",
  "name" : "VirtualServiceDetailExt",
  "title" : "VirtualServiceDetail",
  "status" : "draft",
  "date" : "2026-03-18T07:58:35+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "Represents personalized details for a virtual service. This extension is meant to be used on appointment.participant if personalized Details (e.g. individual links or secrets) per participant exist. If the details are the same for all participants, Appointment.virtualService should be used instead. **Warning! Due to a bug, this extension contains a workaround. Instead of the custom complex data structure defined here, VirtualServiceDetail will be used as an extension on Appointment.participant in the future**",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Appointment.participant"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "VirtualServiceDetail",
      "definition" : "Represents personalized details for a virtual service. This extension is meant to be used on appointment.participant if personalized Details (e.g. individual links or secrets) per participant exist. If the details are the same for all participants, Appointment.virtualService should be used instead. **Warning! Due to a bug, this extension contains a workaround. Instead of the custom complex data structure defined here, VirtualServiceDetail will be used as an extension on Appointment.participant in the future**"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:channelType",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "draft"
      }],
      "path" : "Extension.extension",
      "sliceName" : "channelType",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:channelType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:channelType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "channelType"
    },
    {
      "id" : "Extension.extension:channelType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/virtual-service-type"
      }
    },
    {
      "id" : "Extension.extension:address",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "draft"
      }],
      "path" : "Extension.extension",
      "sliceName" : "address",
      "short" : "contact address/number.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:address.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "address"
    },
    {
      "id" : "Extension.extension:address/addressUrl",
      "path" : "Extension.extension",
      "sliceName" : "address/addressUrl",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:address/addressUrl.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:address/addressUrl.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "Extension.extension:address/addressString",
      "path" : "Extension.extension",
      "sliceName" : "address/addressString",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:address/addressString.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:address/addressString.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:address/addressContactPoint",
      "path" : "Extension.extension",
      "sliceName" : "address/addressContactPoint",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:address/addressContactPoint.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:address/addressContactPoint.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "Extension.extension:address/addressExtendedContactDetail",
      "path" : "Extension.extension",
      "sliceName" : "address/addressExtendedContactDetail",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:address/addressExtendedContactDetail.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:address/addressExtendedContactDetail.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "ExtendedContactDetail"
      }]
    },
    {
      "id" : "Extension.extension:additionalInfoURL",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "draft"
      }],
      "path" : "Extension.extension",
      "sliceName" : "additionalInfoURL",
      "short" : "Address to see alternative connection details",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:additionalInfoURL.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:additionalInfoURL.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "additionalInfoURL"
    },
    {
      "id" : "Extension.extension:additionalInfoURL.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "Extension.extension:maxParticipants",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "draft"
      }],
      "path" : "Extension.extension",
      "sliceName" : "maxParticipants",
      "short" : "Maximum number of participants supported by the virtual service",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:maxParticipants.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:maxParticipants.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "maxParticipants"
    },
    {
      "id" : "Extension.extension:maxParticipants.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "Extension.extension:sessionKey",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "draft"
      }],
      "path" : "Extension.extension",
      "sliceName" : "sessionKey",
      "short" : "Session Key required by the virtual service",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:sessionKey.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:sessionKey.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "sessionKey"
    },
    {
      "id" : "Extension.extension:sessionKey.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/virtual-service-detail"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
