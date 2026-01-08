# HL7.AT.FHIR.CORE.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md) | HL7® Austria FHIR® Core Profile for location data in Austria. |
| [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md) | HL7® Austria FHIR® Core Profile for organization data in Austria. |
| [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md) | HL7® Austria FHIR® Core Profile for patient data in Austria. The HL7® AT Core Patient is based upon the core FHIR® Patient Resource and designed to meet the applicable patient demographic data elements in Austria. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile. Note, this extension represents the common structure of Patient information within Austrian information systems. |
| [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md) | HL7® Austria FHIR® Core Profile for practitioner data in Austria. |
| [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md) | HL7® Austria FHIR® Core Profile for practitioner role data in Austria. |
| [HL7® AT Core ValueSet Profile](StructureDefinition-at-core-valueset.md) | HL7® Austria FHIR® Core Profile for valuesets in Austria. The HL7® AT Core ValueSet is based upon the core FHIR® ValueSet Resource and defines the use of the OID extension. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [HL7® AT Core Address Profile](StructureDefinition-at-core-address.md) | HL7® Austria FHIR® Core Profile for address data in Austria. Note, this extension represents the common structure of address information within Austrian information systems. This extension does not restrict the documented information to Austrian adresses. Address information that does not fit into the given structure may be captured by[Address Additional Information](StructureDefinition-at-core-ext-address-additionalInformation.md). |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Address Additional Information](StructureDefinition-at-core-ext-address-additionalInformation.md) | HL7® Austria FHIR® Core Extension for the additional information part of the Austrian address. |
| [Address Municipality Code](StructureDefinition-at-core-ext-address-municipalityCode.md) | HL7® Austria FHIR® Core Extension for the municipality code part of the Austrian address |
| [Administrative Gender Addition](StructureDefinition-at-core-ext-gender-administrativeGenderAddition.md) | HL7® Austria FHIR® Core Extension for the administrative gender of a person (Patient, Practitioner, …). The extension is used to add the missing codes and is applied in case the code for administrative gender itself is set to 'other'. |
| [Patient Religion](StructureDefinition-at-core-ext-patient-religion.md) | **DEPRECATED**HL7® Austria FHIR® Core Extension for the religion (registered in Austria) of a patient. The extension is used to encode the religious confession of a patient (only confessions registered in Austria). Furthermore, it uses the official[HL7 AT CodeSystem](https://termpub.gesundheit.gv.at:443/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=HL7 AT ReligionAustria)for religion and is therefore aligned with the ELGA ValueSet, respectively. |
| [System OID](StructureDefinition-at-core-ext-valueset-systemoid.md) | HL7® Austria FHIR® Core Extension for the capturing of OID in ValueSets to reference the CodeSystem they come from. The extension is used to document the OID of the system of a code referenced in a ValueSet, to align FHIR with the HL7 Austria CDA document guidelines. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [HL7ATCoreLocationGraz](Location-HL7ATCoreLocationGraz.md) | The Graz location of the Amadeus Spital with 6-character KA-Nr and geolocation |
| [HL7ATCoreLocationLinz](Location-HL7ATCoreLocationLinz.md) | The Linz location of the Amadeus Spital with 6-character KA-Nr and geolocation |
| [HL7ATCoreOrganizationExample01](Organization-HL7ATCoreOrganizationExample01.md) | Example for the usage of the HL7 AT Core Organization Profile |
| [HL7ATCoreOrganizationExample02-MultipleVPNR](Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.md) | Example for the usage of the HL7 AT Core Organization Profile with multiple VPNR identifiers |
| [HL7ATCorePatientExample01](Patient-HL7ATCorePatientExample01.md) | Example for the usage of the HL7 AT Core Patient Profile |
| [HL7ATCorePatientExample02-deceasedTime](Patient-HL7ATCorePatientExample02-deceasedTime.md) | Example with deceasedTime for the usage of the HL7 AT Core Patient Profile |
| [HL7ATCorePatientExample03-deceasedBoolean](Patient-HL7ATCorePatientExample03-deceasedBoolean.md) | Example with deceasedBoolean for the usage of the HL7 AT Core Patient Profile |
| [HL7ATCorePatientExample04-Full](Patient-HL7ATCorePatientExample04-Full.md) | Example with all elements for the usage of the HL7 AT Core Patient Profile |
| [HL7ATCorePatientExample05-FullElga](Patient-HL7ATCorePatientExample05-FullElga.md) | Example with all ELGA header elements in the HL7 AT Core Patient Profile |
| [HL7ATCorePatientExample06-GenderExtension](Patient-HL7ATCorePatientExample06-GenderExtension.md) | Example for the usage of the HL7 AT Core Patient Profile |
| [HL7ATCorePatientExample07-MunicipalityCode](Patient-HL7ATCorePatientExample07-MunicipalityCode.md) | Example for the usage of the HL7 AT Core Patient Profile that includes a municipality code |
| [HL7ATCorePractitionerExample01](Practitioner-HL7ATCorePractitionerExample01.md) | Example for the usage of the HL7 AT Core Practitioner Profile |
| [HL7ATCorePractitionerRoleExample01](PractitionerRole-HL7ATCorePractitionerRoleExample01.md) | Example for the usage of the HL7 AT Core PractitionerRole Profile |

