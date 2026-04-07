# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\HL7® AT Scheduling Client ActorDefinition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Scheduling Client ActorDefinition**

## ActorDefinition: HL7® AT Scheduling Client ActorDefinition 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ActorDefinition/at-scheduling-actor-scheduling-client | *Version*:0.2.0 | |
| Draft as of 2026-04-07 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*: |

 
A system consuming the FHIR API provided by a Scheduling Server 



## Resource Content

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "at-scheduling-actor-scheduling-client",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ActorDefinition/at-scheduling-actor-scheduling-client",
  "version" : "0.2.0",
  "title" : "HL7® AT Scheduling Client ActorDefinition",
  "status" : "draft",
  "date" : "2026-04-07T09:41:46+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "A system consuming the FHIR API provided by a Scheduling Server",
  "type" : "system",
  "documentation" : "A Scheduling Client requests data relevant to appointment scheduling (Healthcare Service Providers, Healthcare Services, available time slots, etc.) using parameters from a Scheduling Server and books/edits/cancels appointments for a specific patient."
}

```
