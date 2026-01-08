# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\slot-hold - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **slot-hold**

## OperationDefinition: slot-hold 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/OperationDefinition/slot-hold | *Version*:0.2.0 | |
| Active as of 2025-11-18 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:Hold_Slot_Operation |

 
Request for a hold on a selected Slot in order for the user to complete entering data for booking an appointment. This operation precedes the booking and follows the appointment availability interaction. The server determines if the nominated slot is still available (i.e., all the required actors and physical assets needed for the appointment are still available) and either accepts or rejects the hold request and updates the resource status accordingly. 

URL: [base]/Slot/$hold

### Parameters

* **Use**: IN
  * **Name**: slot-reference
  * **Scope**: 
  * **Cardinality**: 0..1
  * **Type**: [Reference](http://hl7.org/fhir/R5/references.html#Reference)([HL7® AT Scheduling Slot Profile](StructureDefinition-at-scheduling-slot.md))
  * **Binding**: 
  * **Documentation**: A resource id for one of proposed Slots returned by a prior $find operation (e.g., Resource/1234). References can be to an absolute URL, but servers only perform this operation on their own slots.
* **Use**: IN
  * **Name**: slot-identifier
  * **Scope**: 
  * **Cardinality**: 0..*
  * **Type**: [Identifier](http://hl7.org/fhir/R5/datatypes.html#Identifier)
  * **Binding**: 
  * **Documentation**: When slot-identifiers are provided, the server is expected to perform an internal lookup to identify the corresponding slot instance. The server SHALL reject the request if the provided identifiers do not resolve to a single slot instance.
* **Use**: IN
  * **Name**: slot-status
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [code](http://hl7.org/fhir/R5/datatypes.html#code)
  * **Binding**: [Slot Status](http://hl7.org/fhir/R5/valueset-slotstatus.html)(Required)
  * **Documentation**: To create a hold on the slot this parameter needs to have the value `busy-tentative` or `free` to release it.
* **Use**: OUT
  * **Name**: return
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Parameters](http://hl7.org/fhir/R5/parameters.html)
  * **Binding**: 
  * **Documentation**: The response will be a Parameters resource consisting of the requested held Slot resource, an OperationOutcome with errors, warnings or information as a result of processing the operation and in upon successful creation of a hold a dateTime `held-until`, which signals when the hold is automatically released. The Appointment resource will have an updated `status` of "busy-tentative" if the hold is approved or "busy-unavailable" if the hold is rejected.

### Notes:

This operation is used by the Scheduling Client and Scheduling Server Actors. The Hold Slot operation is used to request that a specific appointment-slot (selected from one of the available potential slots returned with the response of a preceding query) is held by the Scheduling Server, until the appointment is booked, cancelled, or the hold on the slot is released or expires.

The Scheduling Server is expected to hold the necessary time slots and resources for the potential appointment to take place at the given time and for the given duration.

Note that it is possible that between the time the Find Potential Appointments response was received, and the time the Hold Slot request is issued, the requested slot is no longer available. In such case, the server SHALL respond with an OperationOutcome that describes the issue.

####  Examples 

#####  Request Hold 

```
POST: [baseURL]/Slot/$hold

<Parameters xmlns="http://hl7.org/fhir">
  <parameter>
    <name value="slot-reference" />
    <valueReference>
      <reference value="Slot/HL7ATSchedulingSlotExample01-free" />
    </valueReference>
  </parameter>
  <parameter>
    <name value="slot-status" />
    <valueCode value="busy-tentative" />
  </parameter>
</Parameters>

```

Response to the hold request:

```
HTTP 200 OK
[& other headers]

<Parameters xmlns="http://hl7.org/fhir">
  <parameter>
    <name value="slot" />
    <resource>
        <Slot xmlns="http://hl7.org/fhir">
            <id value="HL7ATSchedulingSlotExample01-free"/>
            <meta>
                <profile value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-slot"/>
            </meta>
            <extension url="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/slot-encounter-class">
                <valueCodeableConcept>
                    <coding>
                        <system value="http://terminology.hl7.org/CodeSystem/v3-ActCode"/>
                        <code value="AMB"/>
                        <display value="ambulatory"/>
                    </coding>
                </valueCodeableConcept>
            </extension>
            <serviceType>
                <concept>
                    <coding>
                        <system value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType"/>
                        <code value="65"/>
                        <display value="Physiotherapy"/>
                    </coding>
                </concept>
            </serviceType>
            <schedule>
                <reference value="Schedule/HL7ATSchedulingScheduleExample01"/>
            </schedule>
            <status value="busy-tentative"/>
            <start value="2025-09-15T08:00:00Z"/>
            <end value="2025-09-15T09:00:00Z"/>
        </Slot>
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
                <text value="Slot hold completed successfully" />
            </details>
        </issue>
      </OperationOutcome>
    </resource>
</Parameters>

```

#####  Release Hold 

```
POST: [baseURL]/Slot/$hold

<Parameters xmlns="http://hl7.org/fhir">
  <parameter>
    <name value="slot-reference" />
    <valueReference>
      <reference value="Slt/HL7ATSchedulingSlotExample01-free" />
    </valueReference>
  </parameter>
  <parameter>
    <name value="slot-status" />
    <code value="free" />
  </parameter>
</Parameters>

```

Response to the hold release request:

```
HTTP 200 OK
[& other headers]

<Parameters xmlns="http://hl7.org/fhir">
  <parameter>
    <name value="slot" />
    <resource>
        <Slot xmlns="http://hl7.org/fhir">
            <id value="HL7ATSchedulingSlotExample01-free"/>
            <meta>
                <profile value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-slot"/>
            </meta>
            <extension url="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/slot-encounter-class">
                <valueCodeableConcept>
                    <coding>
                        <system value="http://terminology.hl7.org/CodeSystem/v3-ActCode"/>
                        <code value="AMB"/>
                        <display value="ambulatory"/>
                    </coding>
                </valueCodeableConcept>
            </extension>
            <serviceType>
                <concept>
                    <coding>
                        <system value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType"/>
                        <code value="65"/>
                        <display value="Physiotherapy"/>
                    </coding>
                </concept>
            </serviceType>
            <schedule>🔗 
                <reference value="Schedule/HL7ATSchedulingScheduleExample01"/>
            </schedule>
            <status value="free"/>
            <start value="2025-09-15T08:00:00Z"/>
            <end value="2025-09-15T09:00:00Z"/>
        </Slot>
    </resource>
  </parameter>
  <parameter>
    <name value="outcome" />
    <resource>
      <OperationOutcome>
        <id value="Outcome2"/>
        <issue>
            <severity value="information" />
            <code value="success"/> 
            <details>
                <text value="Slot hold released successfully" />
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
  "id" : "slot-hold",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/OperationDefinition/slot-hold",
  "version" : "0.2.0",
  "name" : "Hold_Slot_Operation",
  "status" : "active",
  "kind" : "operation",
  "date" : "2025-11-18T18:56:10+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "Request for a hold on a selected Slot in order for the user to complete entering data for booking an appointment.  This operation precedes the booking and follows the appointment availability interaction.  The server determines if the nominated slot is still available (i.e., all the required actors and physical assets needed for the appointment are still available) and either accepts or rejects the hold request and updates the resource status accordingly. ",
  "affectsState" : true,
  "code" : "hold",
  "resource" : ["Slot"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [
    {
      "name" : "slot-reference",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "A resource id for one of proposed Slots returned by a prior $find operation (e.g., Resource/1234).  References can be to an absolute URL, but servers only perform this operation on their own slots.",
      "type" : "Reference",
      "targetProfile" : [
        "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-slot"
      ]
    },
    {
      "name" : "slot-identifier",
      "use" : "in",
      "min" : 0,
      "max" : "*",
      "documentation" : "When slot-identifiers are provided, the server is expected to perform an internal lookup to identify the corresponding slot instance. The server SHALL reject the request if the provided identifiers do not resolve to a single slot instance.",
      "type" : "Identifier"
    },
    {
      "name" : "slot-status",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "To create a hold on the slot this parameter needs to have the value `busy-tentative` or `free` to release it.",
      "type" : "code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/slotstatus"
      }
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "The response will be a Parameters resource consisting of the requested held Slot resource, an OperationOutcome with errors, warnings or information as a result of processing the operation and in upon successful creation of a hold a dateTime `held-until`, which signals when the hold is automatically released. The Appointment resource will have an updated `status` of \"busy-tentative\" if the hold is approved or  \"busy-unavailable\" if the hold is rejected.",
      "type" : "Parameters"
    }
  ]
}

```
