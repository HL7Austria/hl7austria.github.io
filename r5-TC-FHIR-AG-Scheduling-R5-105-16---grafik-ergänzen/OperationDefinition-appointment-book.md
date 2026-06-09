# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\appointment-book - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **appointment-book**

## OperationDefinition: appointment-book 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/OperationDefinition/appointment-book | *Version*:0.2.0 | |
| Active as of 2026-06-09 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:Book_Appointment_Operation |

 
Request to book a selected Appointment. This operation follows the appointment availability and optional hold interactions. This operation completes the booking of an appointment. The server determines if the nominated appointment is still available (i.e., all the required actors and physical assets needed for the appointment are still available) and either accepts or rejects the book request and updates the resource status accordingly. 

### Notes:

####  Book a New Appointment 

This operation is used by the Scheduling Client to request the booking of an appointment from a Scheduling Server. The Scheduling Client provides a full Appointment resource that SHALL have the status `proposed`.

If the appointment `$book` operation was successful the Scheduling Server returns an Appointment resource with the the value of `Appointment.status` set to `booked`. If the Appointment needs to be manually confirmed, the Scheduling Server `Appointment.status` of the returned Appointment is set to `pending`.

The Scheduling Client is expected to convey the outcome to the user who requested the creation of the appointment, and to record the current state of the appointment in the corresponding system(s), including any error conditions..

#####  Pre-Conditions 

The following pre-conditions must be fullfilled for the $book operation to be successful:

* The referenced patient in `Appointment.subject` SHALL already exist on, or must be known to the Scheduling Server
* If a HealthcareService is provided in `Appointment.serviceType` it SHALL already exist on or must be known to and supported by the Scheduling Server
* If a Slot is provided in `Appointment.slot` the Slot SHALL exist and must be available for booking on the Scheduling Server

If any of those pre-conditions are not met, the Scheduling Server SHALL reject the operation and provide a corresponding explanation in the OperationOutcome.

#####  Examples 

#####  Request the booking of an appointment 

```
POST: [baseURL]/Appointment/$book

<Parameters xmlns="http://hl7.org/fhir">
  <parameter>
    <name value="appointment-resource" />
    <resource>
        <Appointment xmlns="http://hl7.org/fhir">
            <id value="HL7ATSchedulingAppointmentExample01"/>
            <meta>
                <profile value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment"/>
            </meta>
            <status value="proposed"/>
            <serviceType>
                <concept>
                    <coding>
                        <system value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType"/>
                        <code value="65"/>
                        <display value="Physiotherapy"/>
                    </coding>
                </concept>
            </serviceType>
            <appointmentType>
                <coding>
                    <system value="http://terminology.hl7.org/CodeSystem/v2-0276"/>
                    <code value="CHECKUP"/>
                    <display value="A routine check-up, such as an annual physical"/>
                </coding>
            </appointmentType>
            <description value="Physiotherapie - Einzelbehandlung 30 Minuten"/>
            <start value="2025-06-01T09:00:00+02:00"/>
            <end value="2025-06-01T09:30:00+02:00"/>
            <minutesDuration value="30"/>
            <created value="2025-05-10T14:23:00+02:00"/>
            <slot>
                <reference value="Slot/HL7ATSchedulingSlotExample01-free"/>
            </slot>
            <subject>
                <reference value="Patient/HL7ATCorePatientExample01"/>
            </subject>
            <participant>
                <actor>
                    <reference value="Patient/HL7ATCorePatientExample01"/>
                    <display value="Max Mustermann"/>
                </actor>
                <required value="true"/>
                <status value="accepted"/>
            </participant>
            <participant>
                <actor>
                    <reference value="Practitioner/HL7ATCorePractitionerExample01"/>
                    <display value="Melanie Musterärztin"/>
                </actor>
                <required value="true"/>
                <status value="accepted"/>
            </participant>
        </Appointment>
    </resource>
  </parameter>
</Parameters>

```

Response to the book request:

```
HTTP 200 OK
[& other headers]

<Parameters xmlns="http://hl7.org/fhir">
  <parameter>
    <name value="appointment" />
    <resource>
        <Appointment xmlns="http://hl7.org/fhir">
            <id value="HL7ATSchedulingAppointmentIdFromServer"/>
            <meta>
                <profile value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment"/>
            </meta>
            <status value="booked"/>
            <serviceType>
                <concept>
                    <coding>
                        <system value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType"/>
                        <code value="65"/>
                        <display value="Physiotherapy"/>
                    </coding>
                </concept>
            </serviceType>
            <appointmentType>
                <coding>
                    <system value="http://terminology.hl7.org/CodeSystem/v2-0276"/>
                    <code value="CHECKUP"/>
                    <display value="A routine check-up, such as an annual physical"/>
                </coding>
            </appointmentType>
            <description value="Physiotherapie - Einzelbehandlung 30 Minuten"/>
            <start value="2025-06-01T09:00:00+02:00"/>
            <end value="2025-06-01T09:30:00+02:00"/>
            <minutesDuration value="30"/>
            <created value="2025-05-10T14:23:00+02:00"/>
            <slot>
                <reference value="Slot/HL7ATSchedulingSlotExample01-free"/>
            </slot>
            <subject>
                <reference value="Patient/HL7ATCorePatientExample01"/>
            </subject>
            <participant>
                <actor>
                    <reference value="Patient/HL7ATCorePatientExample01"/>
                    <display value="Max Mustermann"/>
                </actor>
                <required value="true"/>
                <status value="accepted"/>
            </participant>
            <participant>
                <actor>
                    <reference value="Practitioner/HL7ATCorePractitionerExample01"/>
                    <display value="Melanie Musterärztin"/>
                </actor>
                <required value="true"/>
                <status value="accepted"/>
            </participant>
        </Appointment>
    </resource>
  </parameter>
  <parameter>
    <name value="outcome" />
    <resource>
      <OperationOutcome>
        <id value="Outcome1"/>
        <issue>
            <severity value="information" />
            <code value="success"/> 
            <details>
                <text value="The appointment was booked successfully." />
            </details>
        </issue>
      </OperationOutcome>
    </resource>
</Parameters>

```



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "appointment-book",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/OperationDefinition/appointment-book",
  "version" : "0.2.0",
  "name" : "Book_Appointment_Operation",
  "status" : "active",
  "kind" : "operation",
  "date" : "2026-06-09T10:57:01+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "Request to book a selected Appointment. This operation follows the appointment availability and optional hold interactions. This operation completes the booking of an appointment. The server determines if the nominated appointment is still available (i.e., all the required actors and physical assets needed for the appointment are still available) and either accepts or rejects the book request and updates the resource status accordingly. ",
  "affectsState" : true,
  "code" : "book",
  "resource" : ["Appointment"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "appointment-resource",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "The full appointment resource is needed for this operation. The appointment SHALL have the status ```proposed```.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-appointment"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "The response will be a Parameters resource consisting of the requested Appointment resource and an OperationOutcome with errors, warnings or information as a result of processing the operation. The Appointment resource will have an updated `status` of ```booked``` if the request is approved, ```pending``` if it needs to be manually confirmed or  ```cancelled``` if it is rejected.",
    "type" : "Parameters"
  }]
}

```
