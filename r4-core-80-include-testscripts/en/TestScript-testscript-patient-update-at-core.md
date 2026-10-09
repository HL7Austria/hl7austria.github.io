# HL7® AT Core TestScript - Patient Update - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## TestScript: HL7® AT Core TestScript - Patient Update 

**url**: [TestScript HL7® AT Core TestScript - Patient Update](TestScript-testscript-patient-update-at-core.md)

**version**: 2.1.0

**name**: TestScriptATCorePatientUpdate

**title**: HL7® AT Core TestScript - Patient Update

**status**: Active

**experimental**: false

**date**: 2026-09-15

**publisher**: HL7® Austria, TC FHIR®

**contact**: HL7® Austria, TC FHIR®: [https://hl7.at/technische-komitees/tc-fhir/](https://hl7.at/technische-komitees/tc-fhir/), Technical Committee for FHIR® at HL7® Austria: [mailto:tc-fhir@hl7.at](mailto:mailto:tc-fhir@hl7.at)

**description**: 

TestScript updating an existing patient resource conformant to the AT Core Patient profile on a FHIR Server using the JSON format. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientUpdateTestExample with an updated PI value of “11-22-33-44”. Expected Result: the server accepts the update of a Patient resource that is conformant to the AT Core Patient profile. Precondition: the target resource already exists on the server; the setup phase establishes this itself by PUTting the fixture to the same id first, so the test can assert a strict 200 regardless of what ran before it. The patientResourceId variable MUST carry the same value as Patient.id inside the fixture body.

**copyright**: 

This FHIR Test Script is licensed under Creative Commons (CC0) 'No Rights Reserved'. Learn more at https://creativecommons.org/licenses

> **fixture**
> **id**patient-update
**autocreate**: false**autodelete**: false**resource**: [Andreas Bucher Male, DoB: 1961-12-24 ( Social Security Number: 1111241261 (use: official))](Patient-HL7ATCorePatientUpdateTestExample.md)

**profile**: [http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient)

### Variables

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Name** | **DefaultValue** | **Description** | **Hint** |
| * | patientResourceId | HL7ATCorePatientUpdateTestExample | Enter the patient FHIR resource id the FHIR Client will send to the FHIR Server. It MUST be identical to Patient.id inside the fixture body, otherwise the server returns HTTP 400 Bad Request (FHIR R4 RESTful 'update' interaction). | [Resource Id] |

> **setup**
> **action**

### Operations

| | | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Resource** | **Description** | **Accept** | **ContentType** | **Destination** | **EncodeRequestUrl** | **Origin** | **Params** | **ResponseId** | **SourceId** |
| * | [Test script operation code: update](http://terminology.hl7.org/7.4.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-update)(Update) | Patient | PUT the Patient fixture to [base]/Patient/${patientResourceId} so the resource exists before the update test runs. This relies on the FHIR 'update as create' interaction and therefore succeeds whether or not the resource was already present on the server. Without it the test operation would create the resource itself and the server would answer 201 instead of 200. | application/fhir+json | application/fhir+json | 1 | true | 1 | /${patientResourceId} | setup-response | patient-update |


> **action**

### Asserts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Direction** | **Operator** | **ResponseCode** | **WarningOnly** |
| * | Confirm the server accepted the setup resource: 200(OK) if it already existed, 201(Created) if it was created by this setup action. | response | in | 200,201 | false |



> **test**
> **id**Step1-UpdatePatient
**name**: UpdatePatient**description**: Update a patient resource conformant to the AT Core Patient profile.
> **action**
> **operation****type**: [Test script operation code: update](http://terminology.hl7.org/7.4.0/CodeSystem-testscript-operation-codes.html#testscript-operation-codes-update) (Update)**resource**: Patient**description**: PUT the Patient fixture to [base]/Patient/${patientResourceId}.**accept**: application/fhir+json**contentType**: application/fhir+json**destination**: 1**encodeRequestUrl**: true**origin**: 1**params**: /${patientResourceId}

### RequestHeaders

| | | |
| :--- | :--- | :--- |
| - | **Field** | **Value** |
| * | Prefer | return=representation |

**responseId**: update-response**sourceId**: patient-update

> **action**

### Asserts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Description** | **Direction** | **Operator** | **ResponseCode** | **WarningOnly** |
| * | Confirm that the returned HTTP status is 200(OK). | response | equals | 200 | false |


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
  "id" : "testscript-patient-update-at-core",
  "url" : "https://fhir.hl7.at/core/r4/TestScript/testscript-patient-update-at-core",
  "version" : "2.1.0",
  "name" : "TestScriptATCorePatientUpdate",
  "title" : "HL7® AT Core TestScript - Patient Update",
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
  "description" : "TestScript updating an existing patient resource conformant to the AT Core Patient profile on a FHIR Server using the JSON format. The FHIR Client may use any input patient resource, but the script provides an example patient: Andreas Bucher - HL7ATCorePatientUpdateTestExample with an updated PI value of “11-22-33-44”. Expected Result: the server accepts the update of a Patient resource that is conformant to the AT Core Patient profile. Precondition: the target resource already exists on the server; the setup phase establishes this itself by PUTting the fixture to the same id first, so the test can assert a strict 200 regardless of what ran before it. The patientResourceId variable MUST carry the same value as Patient.id inside the fixture body.",
  "copyright" : "This FHIR Test Script is licensed under Creative Commons (CC0) 'No Rights Reserved'. Learn more at https://creativecommons.org/licenses",
  "fixture" : [{
    "id" : "patient-update",
    "autocreate" : false,
    "autodelete" : false,
    "resource" : {
      "reference" : "Patient/HL7ATCorePatientUpdateTestExample"
    }
  }],
  "profile" : [{
    "id" : "at-core-patient-profile",
    "reference" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"
  }],
  "variable" : [{
    "name" : "patientResourceId",
    "defaultValue" : "HL7ATCorePatientUpdateTestExample",
    "description" : "Enter the patient FHIR resource id the FHIR Client will send to the FHIR Server. It MUST be identical to Patient.id inside the fixture body, otherwise the server returns HTTP 400 Bad Request (FHIR R4 RESTful 'update' interaction).",
    "hint" : "[Resource Id]"
  }],
  "setup" : {
    "action" : [{
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "update"
        },
        "resource" : "Patient",
        "description" : "PUT the Patient fixture to [base]/Patient/${patientResourceId} so the resource exists before the update test runs. This relies on the FHIR 'update as create' interaction and therefore succeeds whether or not the resource was already present on the server. Without it the test operation would create the resource itself and the server would answer 201 instead of 200.",
        "accept" : "application/fhir+json",
        "contentType" : "application/fhir+json",
        "destination" : 1,
        "encodeRequestUrl" : true,
        "origin" : 1,
        "params" : "/${patientResourceId}",
        "responseId" : "setup-response",
        "sourceId" : "patient-update"
      }
    },
    {
      "assert" : {
        "description" : "Confirm the server accepted the setup resource: 200(OK) if it already existed, 201(Created) if it was created by this setup action.",
        "direction" : "response",
        "operator" : "in",
        "responseCode" : "200,201",
        "warningOnly" : false
      }
    }]
  },
  "test" : [{
    "id" : "Step1-UpdatePatient",
    "name" : "UpdatePatient",
    "description" : "Update a patient resource conformant to the AT Core Patient profile.",
    "action" : [{
      "operation" : {
        "type" : {
          "system" : "http://terminology.hl7.org/CodeSystem/testscript-operation-codes",
          "code" : "update"
        },
        "resource" : "Patient",
        "description" : "PUT the Patient fixture to [base]/Patient/${patientResourceId}.",
        "accept" : "application/fhir+json",
        "contentType" : "application/fhir+json",
        "destination" : 1,
        "encodeRequestUrl" : true,
        "origin" : 1,
        "params" : "/${patientResourceId}",
        "requestHeader" : [{
          "field" : "Prefer",
          "value" : "return=representation"
        }],
        "responseId" : "update-response",
        "sourceId" : "patient-update"
      }
    },
    {
      "assert" : {
        "description" : "Confirm that the returned HTTP status is 200(OK).",
        "direction" : "response",
        "operator" : "equals",
        "responseCode" : "200",
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
