# HL7.AT.FHIR.CORE.R4\HL7® AT Core TestScript - Patient Create - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core TestScript - Patient Create**

## TestScript: HL7® AT Core TestScript - Patient Create 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r4/TestScript/testscript-patient-create-at-core | *Version*:2.1.0 | |
| Active as of 2026-09-15 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:TestScriptATCorePatientCreate |
| **Copyright/Legal**: This FHIR Test Script is licensed under Creative Commons (CC0) 'No Rights Reserved'. Learn more at https://creativecommons.org/licenses | | |

 
TestScript creating a patient resource conformant to the AT Core Patient profile on a FHIR Server. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientCreateTestExample. Expected Result: the server accepts creation of a Patient resource that is conformant to the AT Core Patient profile. The server-assigned logical id is captured in the patientResourceId variable so it can be fed into the AT Core Patient Update test script. 

**url**: [TestScript HL7® AT Core TestScript - Patient Create](TestScript-testscript-patient-create-at-core.md)

**version**: 2.1.0

**name**: TestScriptATCorePatientCreate

**title**: HL7® AT Core TestScript - Patient Create

**status**: Active

**experimental**: false

**date**: 2026-09-15

**publisher**: HL7® Austria, TC FHIR®

**contact**: HL7® Austria, TC FHIR®: [https://hl7.at/technische-komitees/tc-fhir/](https://hl7.at/technische-komitees/tc-fhir/), Technical Committee for FHIR® at HL7® Austria: [mailto:tc-fhir@hl7.at](mailto:mailto:tc-fhir@hl7.at)

**description**: 

TestScript creating a patient resource conformant to the AT Core Patient profile on a FHIR Server. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientCreateTestExample. Expected Result: the server accepts creation of a Patient resource that is conformant to the AT Core Patient profile. The server-assigned logical id is captured in the patientResourceId variable so it can be fed into the AT Core Patient Update test script.

**copyright**: 

This FHIR Test Script is licensed under Creative Commons (CC0) 'No Rights Reserved'. Learn more at https://creativecommons.org/licenses

> **fixture**
> **id**patient-create
**autocreate**: false**autodelete**: false**resource**: [Andreas Bucher Male, DoB: 1961-12-24 ( Social Security Number: 1111241261 (use: official))](Patient-HL7ATCorePatientCreateTestExample.md)

**profile**: [http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient)

### Variables

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Name** | **Description** | **Expression** | **SourceId** |
| * | patientResourceId | The server-assigned logical id of the Patient created by this test script. It is read from the create response body, which is why the operation asks for 'Prefer: return=representation'. | Patient.id | create-response |

> **test**
> **id**Step1-RegisterNewPatient
**name**: RegisterNewPatient**description**: Create a new patient conformant to the AT Core Patient profile. The server assigns the resource id.
> **action**
> **operation****type**: [Test script operation code: create](http://terminology.hl7.org/7.4.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-create) (Create)**resource**: Patient**description**: POST the Patient fixture to [base]/Patient. The server assigns the resource id.**accept**: application/fhir+json**contentType**: application/fhir+json**destination**: 1**encodeRequestUrl**: true**origin**: 1

### RequestHeaders

| | | |
| :--- | :--- | :--- |
| - | **Field** | **Value** |
| * | Prefer | return=representation |

**responseId**: create-response**sourceId**: patient-create

> **action**

### Asserts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Direction** | **Operator** | **ResponseCode** | **WarningOnly** |
| * | Confirm that the returned HTTP status is 200(OK) or 201(Created). | response | in | 200,201 | false |


> **action**

### Asserts

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Direction** | **ValidateProfileId** | **WarningOnly** |
| * | Validate that the returned resource conforms to the HL7 AT Core Patient profile. | response | at-core-patient-profile | false |





## Resource Content

```json
{
  "resourceType" : "TestScript",
  "id" : "testscript-patient-create-at-core",
  "url" : "https://fhir.hl7.at/core/r4/TestScript/testscript-patient-create-at-core",
  "version" : "2.1.0",
  "name" : "TestScriptATCorePatientCreate",
  "title" : "HL7® AT Core TestScript - Patient Create",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-15",
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
  "description" : "TestScript creating a patient resource conformant to the AT Core Patient profile on a FHIR Server. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientCreateTestExample. Expected Result: the server accepts creation of a Patient resource that is conformant to the AT Core Patient profile. The server-assigned logical id is captured in the patientResourceId variable so it can be fed into the AT Core Patient Update test script.",
  "copyright" : "This FHIR Test Script is licensed under Creative Commons (CC0) 'No Rights Reserved'. Learn more at https://creativecommons.org/licenses",
  "fixture" : [{
    "id" : "patient-create",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "Patient/HL7ATCorePatientCreateTestExample"
    }
  }],
  "profile" : [{
    "id" : "at-core-patient-profile",
    "reference" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"
  }],
  "variable" : [{
    "name" : "patientResourceId",
    "description" : "The server-assigned logical id of the Patient created by this test script. It is read from the create response body, which is why the operation asks for 'Prefer: return=representation'.",
    "expression" : "Patient.id",
    "sourceId" : "create-response"
  }],
  "test" : [{
    "id" : "Step1-RegisterNewPatient",
    "name" : "RegisterNewPatient",
    "description" : "Create a new patient conformant to the AT Core Patient profile. The server assigns the resource id.",
    "action" : [{
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "create"
        },
        "resource" : "Patient",
        "description" : "POST the Patient fixture to [base]/Patient. The server assigns the resource id.",
        "accept" : "application/fhir+json",
        "contentType" : "application/fhir+json",
        "destination" : 1,
        "encodeRequestUrl" : true,
        "origin" : 1,
        "requestHeader" : [{
          "field" : "Prefer",
          "value" : "return=representation"
        }],
        "responseId" : "create-response",
        "sourceId" : "patient-create"
      }
    },
    {
      "assert" : {
        "description" : "Confirm that the returned HTTP status is 200(OK) or 201(Created).",
        "direction" : "response",
        "operator" : "in",
        "responseCode" : "200,201",
        "warningOnly" : false
      }
    },
    {
      "assert" : {
        "description" : "Validate that the returned resource conforms to the HL7 AT Core Patient profile.",
        "direction" : "response",
        "validateProfileId" : "at-core-patient-profile",
        "warningOnly" : false
      }
    }]
  }]
}

```
