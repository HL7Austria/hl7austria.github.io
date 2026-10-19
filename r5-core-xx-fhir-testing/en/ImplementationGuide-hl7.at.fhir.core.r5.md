# Resource HL7® Austria FHIR® Core Implementation Guide



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.core.r5",
  "language" : "en",
  "url" : "https://fhir.hl7.at/core/r5/ImplementationGuide/hl7.at.fhir.core.r5",
  "version" : "2.1.0",
  "name" : "HL7AustriaImplementationGuide",
  "title" : "HL7® Austria FHIR® Core Implementation Guide",
  "status" : "active",
  "date" : "2026-10-19T08:31:12+00:00",
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
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.4.0"
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
      "valueCode" : "hl7.fhir.uv.tools.r5#1.3.0"
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
      "name" : "Address Municipality Code (Gemeindecode)",
      "description" : "HL7® Austria FHIR® Core Extension for the municipality code (Gemeindecode) part of the Austrian address. The municipality code is related to the [municipality key (Gemeindekennziffer)](StructureDefinition-at-core-ext-address-municipalityKey.html). While these two are generally identical, there is one notable exception: in Vienna, the municipality key (Gemeindekennziffer) is consistently 90001, whereas the municipality code (Gemeindecode) varies by district. The current list of values is provided by [Statistik Austria](https://www.statistik.at/verzeichnis/reglisten/gemliste_knz.pdf).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-ext-address-municipalityKey.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-ext-address-municipalityKey"
      },
      "name" : "Address Municipality Key (Gemeindekennziffer)",
      "description" : "HL7® Austria FHIR® Core Extension for the municipality key (Gemeindekennziffer) part of the Austrian address. The municipality key is related to the [municipality code (Gemeindecode)](StructureDefinition-at-core-ext-address-municipalityCode.html). While these two are generally identical, there is one notable exception: in Vienna, the municipality key (Gemeindekennziffer) is consistently 90001, whereas the municipality code (Gemeindecode) varies by district. The current list of values is provided by [Statistik Austria](https://www.statistik.at/verzeichnis/reglisten/gemliste_knz.pdf).",
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
        "valueUri" : "CodeSystem-at-core-funktionscode.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-core-funktionscode"
      },
      "name" : "CodeSystem for Austrian Funktionscodes Excerpt",
      "description" : "CodeSystem for Austrian Funktionscodes Excerpt",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-core-ext-composition-terminologyDate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-ext-composition-terminologyDate"
      },
      "name" : "Composition Terminology Date",
      "description" : "HL7® Austria FHIR® Core Extension for documenting the date of last synchronization of the locally stored value sets for usage by the content creating system with the terminology server.\n\nOnly intended for representing `hl7at:terminologyDate` when transforming CDA documents to FHIR; must not be used in FHIR-native applications.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "HealthcareService-HealthcareServiceRheumatologyExample.html"
      }],
      "reference" : {
        "reference" : "HealthcareService/HealthcareServiceRheumatologyExample"
      },
      "name" : "Example HealthcareService with Specialty",
      "description" : "Example of a healthcare service with an Austrian Funktionscode as specialty.",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-HealthcareService"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-core-vbpk.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-core-vbpk"
      },
      "name" : "HL7AT Core vbPK",
      "description" : "This value set contains the OIDs for the vbPK (Verschlüsseltes bereichsspezifisches Personenkennzeichen) in Austria according to [E-Government-Bereichsabgrenzungsverordnung – E-Gov-BerAbgrV](https://www.ris.bka.gv.at/GeltendeFassung.wxe?Abfrage=Bundesnormen&Gesetzesnummer=20003476).",
      "isExample" : false
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
        "valueUri" : "Patient-HL7ATCorePatientCreateTestExample.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientCreateTestExample"
      },
      "name" : "HL7ATCorePatientCreateTestExample",
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
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-HL7ATCorePatientUpdateTestExample.html"
      }],
      "reference" : {
        "reference" : "Patient/HL7ATCorePatientUpdateTestExample"
      },
      "name" : "HL7ATCorePatientUpdateTestExample",
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
        "valueUri" : "StructureDefinition-at-core-related-person.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-core-related-person"
      },
      "name" : "HL7® AT Core RelatedPerson Profile",
      "description" : "HL7® Austria FHIR® Core Profile for a related person in Austria.\r\nThe HL7® AT Core RelatedPerson is based upon the core FHIR® RelatedPeson Resource and designed to meet the applicable demographic data elements in Austria. Note, this extension represents the common structure of a person information within Austrian information systems.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "TestScript"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "TestScript-testscript-patient-create-at-core.html"
      }],
      "reference" : {
        "reference" : "TestScript/testscript-patient-create-at-core"
      },
      "name" : "HL7® AT Core TestScript - Patient Create",
      "description" : "TestScript creating a patient resource conformant to the AT Core Patient profile on a FHIR Server. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientCreateTestExample. Expected Result: the server accepts creation of a Patient resource that is conformant to the AT Core Patient profile. The server-assigned logical id is captured in the patientResourceId variable so it can be fed into the AT Core Patient Update test script.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "TestScript"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "TestScript-testscript-patient-update-at-core.html"
      }],
      "reference" : {
        "reference" : "TestScript/testscript-patient-update-at-core"
      },
      "name" : "HL7® AT Core TestScript - Patient Update",
      "description" : "TestScript updating an existing patient resource conformant to the AT Core Patient profile on a FHIR Server using the JSON format. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientUpdateTestExample with an updated PI value of “11-22-33-44”. Expected Result: the server accepts the update of a Patient resource that is conformant to the AT Core Patient profile. Precondition: the target resource already exists on the server; the setup phase establishes this itself by PUTting the fixture to the same id first, so the test can assert a strict 200 regardless of what ran before it. The patientResourceId variable MUST carry the same value as Patient.id inside the fixture body.",
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
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PatientFelixGruber.html"
      }],
      "reference" : {
        "reference" : "Patient/PatientFelixGruber"
      },
      "name" : "PatientFelixGruber",
      "description" : "Example of a fictional minor patient living in Vienna, whose father is represented by a RelatedPerson resource.",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-RelatedPersonMartinGruber.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/RelatedPersonMartinGruber"
      },
      "name" : "RelatedPersonMartinGruber",
      "description" : "Example of Martin Gruber, the fictional father and next of kin of the minor patient Felix Gruber.",
      "isExample" : true,
      "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-related-person"]
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
      },
      {
        "sourceUrl" : "tests.html",
        "name" : "tests.html",
        "title" : "Tests",
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
      "value" : "input/assets"
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
        "code" : "path-liquid-template"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid-template"
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
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "i18n-default-lang"
      },
      "value" : "en"
    }]
  }
}

```
