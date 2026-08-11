# HL7.AT.FHIR.CORE.R5\Home - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

### Introduction

> This is the implementation guide for the **Core Profiles (v2.1.0: [STU](https://www.hl7.org/fhir/versions.html) 3)** based on HL7® FHIR® R5. It is a **ballot** implementation guide that is hosted on the [HL7® Austria github project](https://github.com/HL7Austria). The most recent version of this implementation guide can be found at the [HL7® Austria FHIR® Website](https://fhir.hl7.at/).

This implementation guide is provided to support the use of FHIR® in Austria.

This guide is a working specification. We anticipate that it will be implemented and tested by FHIR® system producers whose feedback will help improve its content. With this standard for trial use, we are looking for feedback on whether the following goals have been met:

* The HL7® Austria FHIR® Core Implementation Guide (IG) covers administrative Resources, like Patient, Organization, Practitioner, etc. that can be used on their own with no specific functional requirements for usage or they can be used for other more functional FHIR® IGs in Austria via dependencies. It contains only those Profiles and Extension where adaptions for Austria were necessary.
* This guide defines the minimum constraints on the FHIR® resources to create the Austrian Core Profiles.
* It contains guidance on the [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md). 
* Along with the Patient profile the representation of the common structure of address information within Austrian information systems ([HL7® AT Core Address Profile](StructureDefinition-at-core-address.md)) and the extension to encode the religious confession of a patient (only confessions registered in Austria) ([Patient Religion](StructureDefinition-at-core-ext-patient-religion.md)) have been specified.
 
* Furthermore the codes for gender were extended to allow the usage of all official administrative genders in Austria.
* It defines the requirements for Organization, Practitioner or PractitionerRole to carry information specific to Austria (e.g. identifiers).
* This guide contains no code systems or value sets on its own. Note, that code systems and value sets that are used in the various Profiles or Extensions of this guide will generally be made available via a separate IG on the [Austrian Terminology Server](https://termgit.elga.gv.at/) based on [TerminoloGit](https://gitlab.com/elga-gmbh/termgit). 
* It does contain an Extension and a Profile for the ValueSet Resource, that allows to add the OID of code cystems that are referenced within the ValueSet, not just the URL reference.
* This profile is already used by the Austrian Terminology Server.
 

**Download**: You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Relation to Austrian EHR System (ELGA)

Currently, the Austrian EHR system (ELGA) is mainly based on HL7® CDA®. In order to enable the creation of FHIR® resources that have a similar data structure this Implementation Guide provides mappings to the CDA® based implementation guides (e.g. [Mappings for Allgemeiner Implementierungsleitfaden v3](StructureDefinition-at-core-patient-mappings.md#mappings-for-allgemeiner-implementierungsleitfaden-v3-https-wiki)). Furthermore ELGA is using the HL7® Austria FHIR® Core IG as a basis for their FHIR® Implementation Guides.

### Dependencies

This guide is based on the [FHIR® R5](http://hl7.org/fhir/R5/) specification. In addition, this guide also relies on a number of parent implementation guides:

### Governance

HL7® Austria is an official Affiliate of HL7® International. Within HL7® Austria the technical committee for FHIR® (TC FHIR®) is responsible to promote and disseminate the new upcoming standard HL7® FHIR®. The TC FHIR® deals with the standard-compliant and coordinated usage of HL7® FHIR® based communication solutions. It coordinates and describes necessary localizations and offers concrete help for FHIR®-compliant interfaces.

### License and Legal Terms

HL7®, HEALTH LEVEL SEVEN® and FHIR® are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This Implementation Guide contains and references intellectual property owned by third parties (“Third Party IP”). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.core.r5",
  "url" : "https://fhir.hl7.at/core/r5/ImplementationGuide/hl7.at.fhir.core.r5",
  "version" : "2.1.0",
  "name" : "HL7AustriaImplementationGuide",
  "title" : "HL7® Austria FHIR® Core Implementation Guide",
  "status" : "active",
  "date" : "2026-08-11T21:36:48+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:tc-fhir@hl7.at"
    }]
  }],
  "description" : "An Implementation Guide for the HL7® Austria FHIR® Core Profiles.",
  "packageId" : "hl7.at.fhir.core.r5",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-ext-address-additionalInformation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-ext-address-additionalInformation"
      },
      "name" : "Address Additional Information",
      "description" : "HL7® Austria FHIR® Core Extension for the additional information part of the Austrian address.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-ext-address-municipalityCode.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-ext-address-municipalityCode"
      },
      "name" : "Address Municipality Code",
      "description" : "HL7® Austria FHIR® Core Extension for the municipality code part of the Austrian address",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-ext-gender-administrativeGenderAddition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-ext-gender-administrativeGenderAddition"
      },
      "name" : "Administrative Gender Addition",
      "description" : "HL7® Austria FHIR® Core Extension for the administrative gender of a person (Patient, Practitioner, ...). \r\nThe extension is used to add the missing codes and is applied in case the code for administrative gender itself is set to 'other'.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-at-funktionscode.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-funktionscode"
      },
      "name" : "CodeSystem for Austrian Funktionscodes Excerpt",
      "description" : "CodeSystem for Austrian Funktionscodes Excerpt",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "HealthcareService-ExampleHealthcareService.html"
      }],
      "reference" : {
        "reference" : "HealthcareService/ExampleHealthcareService"
      },
      "name" : "Example HealthcareService with Specialty",
      "description" : "Example of a healthcare service with an Austrian Funktionscode as specialty.",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-HealthcareService"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-HL7ATCoreLocationGraz.html"
      }],
      "reference" : {
        "reference" : "Location/HL7ATCoreLocationGraz"
      },
      "name" : "HL7ATCoreLocationGraz",
      "description" : "The Graz location of the Amadeus Spital with 6-character KA-Nr and geolocation",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-location"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-HL7ATCoreLocationLinz.html"
      }],
      "reference" : {
        "reference" : "Location/HL7ATCoreLocationLinz"
      },
      "name" : "HL7ATCoreLocationLinz",
      "description" : "The Linz location of the Amadeus Spital with 6-character KA-Nr and geolocation",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-location"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-HL7ATCoreOrganizationExample01.html"
      }],
      "reference" : {
        "reference" : "Organization/HL7ATCoreOrganizationExample01"
      },
      "name" : "HL7ATCoreOrganizationExample01",
      "description" : "Example for the usage of the HL7 AT Core Organization Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.html"
      }],
      "reference" : {
        "reference" : "Organization/HL7ATCoreOrganizationExample02-MultipleVPNR"
      },
      "name" : "HL7ATCoreOrganizationExample02-MultipleVPNR",
      "description" : "Example for the usage of the HL7 AT Core Organization Profile with multiple VPNR identifiers",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientExample01.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientExample01"
      },
      "name" : "HL7ATCorePatientExample01",
      "description" : "Example for the usage of the HL7 AT Core Patient Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientExample02-deceasedTime.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientExample02-deceasedTime"
      },
      "name" : "HL7ATCorePatientExample02-deceasedTime",
      "description" : "Example with deceasedTime for the usage of the HL7 AT Core Patient Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientExample03-deceasedBoolean.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientExample03-deceasedBoolean"
      },
      "name" : "HL7ATCorePatientExample03-deceasedBoolean",
      "description" : "Example with deceasedBoolean for the usage of the HL7 AT Core Patient Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientExample04-Full.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientExample04-Full"
      },
      "name" : "HL7ATCorePatientExample04-Full",
      "description" : "Example with all elements for the usage of the HL7 AT Core Patient Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientExample05-FullElga.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientExample05-FullElga"
      },
      "name" : "HL7ATCorePatientExample05-FullElga",
      "description" : "Example with all ELGA header elements in the HL7 AT Core Patient Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientExample06-GenderExtension.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientExample06-GenderExtension"
      },
      "name" : "HL7ATCorePatientExample06-GenderExtension",
      "description" : "Example for the usage of the HL7 AT Core Patient Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientExample07-MunicipalityCode.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientExample07-MunicipalityCode"
      },
      "name" : "HL7ATCorePatientExample07-MunicipalityCode",
      "description" : "Example for the usage of the HL7 AT Core Patient Profile that includes a municipality code",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-HL7ATCorePractitionerExample01.html"
      }],
      "reference" : {
        "reference" : "Practitioner/HL7ATCorePractitionerExample01"
      },
      "name" : "HL7ATCorePractitionerExample01",
      "description" : "Example for the usage of the HL7 AT Core Practitioner Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitioner"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-HL7ATCorePractitionerRoleExample01.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/HL7ATCorePractitionerRoleExample01"
      },
      "name" : "HL7ATCorePractitionerRoleExample01",
      "description" : "Example for the usage of the HL7 AT Core PractitionerRole Profile",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitionerRole"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-address.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-address"
      },
      "name" : "HL7® AT Core Address Profile",
      "description" : "HL7® Austria FHIR® Core Profile for address data in Austria. Note, this extension represents the common structure of address information within Austrian information systems. This extension does not restrict the documented information to Austrian adresses. Address information that does not fit into the given structure may be captured by [Address Additional Information](StructureDefinition-at-core-ext-address-additionalInformation.html).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-extendedContactDetail.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-extendedContactDetail"
      },
      "name" : "HL7® AT Core ExtendedContactDetail Profile",
      "description" : "HL7® Austria FHIR® Core Profile to use the profile for address data in Austria on the datatype ExtendedContactDetail.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-HealthcareService.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-HealthcareService"
      },
      "name" : "HL7® AT Core HealthcareService Profile",
      "description" : "HL7® Austria FHIR® Core Profile for healthcare service data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-location.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-location"
      },
      "name" : "HL7® AT Core Location Profile",
      "description" : "HL7® Austria FHIR® Core Profile for location data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-organization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-organization"
      },
      "name" : "HL7® AT Core Organization Profile",
      "description" : "HL7® Austria FHIR® Core Profile for organization data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-patient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-patient"
      },
      "name" : "HL7® AT Core Patient Profile",
      "description" : "HL7® Austria FHIR® Core Profile for patient data in Austria.\r\nThe HL7® AT Core Patient is based upon the core FHIR® Patient Resource and designed to meet the applicable patient demographic data elements in Austria. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile. Note, this extension represents the common structure of Patient information within Austrian information systems.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-practitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-practitioner"
      },
      "name" : "HL7® AT Core Practitioner Profile",
      "description" : "HL7® Austria FHIR® Core Profile for practitioner data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-practitionerRole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-practitionerRole"
      },
      "name" : "HL7® AT Core PractitionerRole Profile",
      "description" : "HL7® Austria FHIR® Core Profile for practitioner role data in Austria.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-valueset.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-valueset"
      },
      "name" : "HL7® AT Core ValueSet Profile",
      "description" : "HL7® Austria FHIR® Core Profile for valuesets in Austria.\r\nThe HL7® AT Core ValueSet is based upon the core FHIR® ValueSet Resource and defines the use of the OID extension.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-ext-patient-religion.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-ext-patient-religion"
      },
      "name" : "Patient Religion",
      "description" : "**DEPRECATED** HL7® Austria FHIR® Core Extension for the religion (registered in Austria) of a patient.\r\nThe extension is used to encode the religious confession of a patient (only confessions registered in Austria). Furthermore, it uses the official [HL7 AT CodeSystem](https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=HL7 AT ReligionAustria) for religion and is therefore aligned with the ELGA ValueSet, respectively.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-ext-valueset-systemoid.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-ext-valueset-systemoid"
      },
      "name" : "System OID",
      "description" : "HL7® Austria FHIR® Core Extension for the capturing of OID in ValueSets to reference the CodeSystem they come from.\r\nThe extension is used to document the OID of the system of a code referenced in a ValueSet, to align FHIR with the HL7 Austria CDA document guidelines.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-funktionscode-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-funktionscode-vs"
      },
      "name" : "ValueSet for Austrian Funktionscodes Excerpt",
      "description" : "ValueSet for Austrian Funktionscodes Excerpt",
      "isExample" : false
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2020+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "STU3"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "show-inherited-invariants"
      },
      "value" : "false"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "https://fhir.hl7.at/core/r5/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
