# HL7® AT Core TestScript - Patient Create - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## TestScript: HL7® AT Core TestScript - Patient Create 



## Resource Content

```json
{
  "resourceType" : "TestScript",
  "id" : "testscript-patient-create-at-core",
  "url" : "https://fhir.hl7.at/core/r5/TestScript/testscript-patient-create-at-core",
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
  "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"],
  "_profile" : [{
    "id" : "at-core-patient-profile"
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
        "stopTestOnFail" : true,
        "warningOnly" : false
      }
    },
    {
      "assert" : {
        "description" : "Validate that the returned resource conforms to the HL7 AT Core Patient profile.",
        "direction" : "response",
        "stopTestOnFail" : true,
        "validateProfileId" : "at-core-patient-profile",
        "warningOnly" : false
      }
    }]
  }]
}

```
