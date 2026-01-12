# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\healthcareService-provider-find - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **healthcareService-provider-find**

## OperationDefinition: healthcareService-provider-find 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/OperationDefinition/healthcareService-provider-find | *Version*:0.2.0 | |
| Active as of 2026-01-12 | *Responsible:*HL7® Austria, TC FHIR® | *Computable Name*:Find_HealthcareService_Provider |

 
A query operation that allows to search for healthcare service providers that offer a specific healthcare service. The general information about the HealthcareService identification itself is already available in advance, either as resource or via codes. 

### Notes:

* For input parameters that are codes, the simple FHIR [token](https://hl7.org/fhir/R5/search.html#token) search parameter type is used instead of the complex `CodeableConcept` datatype. This allows either the 'GET' or the 'POST' syntax to be used to initiate the interaction in many cases. The `Reference` datatype is used for resources references, which allows the requester to use either a reference to an existing resource, or an identifier ([logical reference](https://hl7.org/fhir/R5/references-definitions.html#Reference.identifier)).
* To set the upper limit on the total number of results to return, use the standard [`_count`](https://hl7.org/fhir/R5/search.html#count) search parameter.

####  For the Scheduling Client 

This query operation is used by the Scheduling Client to find healthcare service providers that offer a specific healthcare service. This can be achieved by:

* using a HealthcareService instance (as full resource) as search input
* identifying the healthcare service via a code (`HealthcareService.category`, `HealthcareService.type` or `HealthcareService.specialty`)

In addition to that a Scheduling Client can provide further filter criteria in its search like:

* a region where a healthcare service should ideally be offered with either a Location reference or a zip code
* the desired availablity time of a healthcare service

#####  Pre-Conditions 

The following pre-conditions must be fulfilled for the `$findHSP` operation to be successful:

* The general information about the HealthcareService identification itself is already available in advance
* This means that either the client has already searched for the healthcare service and has fetched the corresponding HealthcareService resource instance or the client is aware of the codes for category, type or specialty of it.

If a healthcare service information is not provided by the client in this query operation, the Scheduling Server SHALL reject the operation and provide a corresponding explanation in the OperationOutcome.

####  For the Scheduling Server 

Based on the search input the Scheduling Server has to look up the corresponding healthcare service as well as the healthcare service providers that offer it. Depending on the implementation and the supported scenarios for the scheduling workflow, the server has to do this internally and/or with its connected systems. It SHALL respond to the client with a Bundle containing the HealthcareService resource and a list of healthcare service providers (Organization, Practitioner, PractitionerRole) that offer the requested service. Furthermore it SHALL contain an OperationOutcome with errors, warnings or information as a result of processing the operation.

####  Examples 

#####  Search for healthcare service provider via service type

furthermore, the district and the availability were added as search criteria

```
POST: [baseURL]/HealthcareService/$findHSP

<Parameters xmlns="http://hl7.org/fhir">
    <parameter>
        <name value="healthcareService-type" />
        <valueString value="healthcareService-type=http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType|65" />
    </parameter>
    <parameter>
        <name value="healthcareService-zipCodeArea" />
        <valueString value="5350" />
    </parameter>
    <parameter>
        <name value="healthcareService-availability" />
        <valueAvailability>
            <availableTime>
                <daysOfWeek value="mon"/>
                <availableStartTime value="08:00:00"/>
                <availableEndTime value="10:00:00"/>
            </availableTime>
            <availableTime>
                <daysOfWeek value="tue"/>
                <availableStartTime value="08:00:00"/>
                <availableEndTime value="10:00:00"/>
            </availableTime>
        </valueAvailability>
    </parameter>
</Parameters>

```

Response to the search request:

```
HTTP 200 OK
[& other headers]

<Bundle xmlns="http://hl7.org/fhir">
    <id value="bundle-example"/> 
    <meta> 
        <lastUpdated value="2014-08-18T01:43:30Z"/> 
    </meta>  
    <type value="searchset"/>   
    <total value="3"/> 
    <entry>
        <fullUrl value="[baseURL]/HealthcareService/HL7ATSchedulingHealthcareServiceExample01"/> 
        <resource> 
            <HealthcareService xmlns="http://hl7.org/fhir">
                <id value="HL7ATSchedulingHealthcareServiceExample01"/>
                <meta>
                    <profile value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-healthcareservice"/>
                </meta>
                <active value="true"/>
                <type>
                    <coding>
                        <system value="http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/ValueSet/AtSchedulingServiceType"/>
                        <code value="65"/>
                        <display value="Physiotherapy"/>
                    </coding>
                </type>
            </HealthcareService>
        </resource>
    </entry>
    <entry> 
        <fullUrl value="[baseURL]/PractitionerRole/HL7ATCorePractitionerRoleExample01"/> 
        <resource> 
            <PractitionerRole xmlns="http://hl7.org/fhir">
                <id value="HL7ATCorePractitionerRoleExample01"/>
                <meta>
                    <profile
                            value="http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitionerRole"/>
                </meta>
                <active value="true"/>
                <practitioner>
                    <reference value="Practitioner/HL7ATCorePractitionerExample01"/>
                </practitioner>
                <code>
                    <coding>
                    <system
                            value="https://termgit.elga.gv.at/ValueSet/hl7-at-practitionerrole"/>
                    <code value="100"/>
                    <display value="Ärztin/Arzt für Allgemeinmedizin"/>
                    </coding>
                </code>
                <specialty>
                    <coding>
                    <system value="http://snomed.info/sct"/>
                    <code value="419772000"/>
                    <display value="Family practice"/>
                    </coding>
                </specialty>
                <specialty>
                    <coding>
                    <system value="http://snomed.info/sct"/>
                    <code value="410005002"/>
                    <display value="Dive medicine"/>
                    </coding>
                </specialty>
                <healthcareService>
                    <reference value="HealthcareService/HL7ATSchedulingHealthcareServiceExample01"/>
                </healthcareService>
                <availability>
                    <availableTime>
                        <daysOfWeek value="mon"/>
                        <availableStartTime value="07:00:00"/>
                        <availableEndTime value="12:00:00"/>
                    </availableTime>
                    <availableTime>
                        <daysOfWeek value="tue"/>
                        <availableStartTime value="07:30:00"/>
                        <availableEndTime value="12:30:00"/>
                    </availableTime>
                    <availableTime>
                        <daysOfWeek value="thu"/>
                        <allDay value="true"/>
                    </availableTime>
                    <notAvailableTime>
                        <description value="Urlaub"/>
                        <during>
                            <start value="2024-08-01"/>
                            <end value="2024-08-31"/>
                        </during>
                    </notAvailableTime>
                    <notAvailableTime>
                        <description value="Zwischen den Feiertagen geschlossen."/>
                        <during>
                            <start value="2024-12-24"/>
                            <end value="2025-01-06"/>
                        </during>
                    </notAvailableTime>
                </availability>
            </PractitionerRole> 
        </resource> 
    </entry> 
    <entry> 
        <fullUrl value="[baseURL]/Practitioner/HL7ATCorePractitionerExample01"/> 
        <resource> 
            <Practitioner xmlns="http://hl7.org/fhir">
                <id value="HL7ATCorePractitionerExample01"/>
                <meta>
                    <profile value="http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitioner"/>
                </meta>
                <identifier>
                    <system value="urn:ietf:rfc:3986"/>
                    <value value="urn:oid:1.2.40.0.34.99.4613.4"/>
                    <assigner>
                        <display value="Bundesministerium für Gesundheit"/>
                    </assigner>
                </identifier>
                <identifier>
                    <system value="urn:oid:1.2.40.0.10.1.4.3.2"/>
                    <value value="987654321"/>
                    <assigner>
                        <display value="Dachverband der österreichischen Sozialversicherungsträger"/>
                    </assigner>
                </identifier>
                <active value="true"/>
                <name>
                    <family value="Musterärztin"/>
                    <given value="Melanie"/>
                    <prefix value="Prof. Dr."/>
                </name>
                <telecom>
                    <system value="email"/>
                    <value value="office@musterpraxis.at"/>
                    <use value="work"/>
                </telecom>
                <telecom>
                    <system value="phone"/>
                    <value value="+436500987654321"/>
                    <use value="work"/>
                </telecom>
                <gender value="female"/>
                <address>
                    <use value="work"/>
                    <type value="both"/>
                    <line value="Mozartgasse 8 Stiege 2">
                    <extension url="http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName">
                        <valueString value="Mozartgasse"/>
                    </extension>
                    <extension url="http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber">
                        <valueString value="8"/>
                    </extension>
                    <extension url="http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator">
                        <valueString value="Stiege 2"/>
                    </extension>
                    <extension url="http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-additionalInformation">
                        <valueString value="Barrierefreier Zugang"/>
                    </extension>
                    </line>
                    <city value="St. Wolfgang"/>
                    <state value="Salzburg"/>
                    <postalCode value="5350"/>
                    <country value="AUT"/>
                </address>
            </Practitioner> 
        </resource> 
    </entry> 
</Bundle> 

```



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "healthcareService-provider-find",
  "url" : "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/OperationDefinition/healthcareService-provider-find",
  "version" : "0.2.0",
  "name" : "Find_HealthcareService_Provider",
  "status" : "active",
  "kind" : "operation",
  "date" : "2026-01-12T10:38:50+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "description" : "A query operation that allows to search for healthcare service providers that offer a specific healthcare service. The general information about the HealthcareService identification itself is already available in advance, either as resource or via codes. ",
  "affectsState" : false,
  "code" : "findHSP",
  "resource" : ["HealthcareService"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [
    {
      "name" : "healthcareService-reference",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "The full HealthcareService resource can be provided for this operation. The HealthcareService SHALL be active (HealthcareService.active=true). ",
      "type" : "Reference",
      "targetProfile" : [
        "http://hl7.at/fhir/TC-FHIR-AG-Scheduling-R5/R5/StructureDefinition/at-scheduling-healthcareservice"
      ]
    },
    {
      "name" : "healthcareService-category",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "The code of the category of the healthcare service. Each parameter value SHALL contain *both* the system property and the code property for a code using the general syntax `healthcareService-category=[system]|[code]`. See the examples below for how this is implemented.",
      "type" : "string",
      "searchType" : "token"
    },
    {
      "name" : "healthcareService-type",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "The code of the type of the healthcare service. Each parameter value SHALL contain *both* the system property and the code property for a code using the general syntax `healthcareService-type=[system]|[code]`. See the examples below for how this is implemented.",
      "type" : "string",
      "searchType" : "token"
    },
    {
      "name" : "healthcareService-specialty",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "The code of the specialty of the healthcare service. Each parameter value SHALL contain *both* the system property and the code property for a code using the general syntax `healthcareService-specialty=[system]|[code]`. See the examples below for how this is implemented.",
      "type" : "string",
      "searchType" : "token"
    },
    {
      "name" : "healthcareService-location",
      "use" : "in",
      "min" : 0,
      "max" : "*",
      "documentation" : "The (physical) location where a healthcare service should be provided can be used as a search parameter.",
      "type" : "Reference",
      "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
    },
    {
      "name" : "healthcareService-zipCodeArea",
      "use" : "in",
      "min" : 0,
      "max" : "*",
      "documentation" : "The aera in which a healthcare service should be offered can be provided as search parameter. For that purpose the zip code(s) shall be used.",
      "type" : "string",
      "searchType" : "string"
    },
    {
      "name" : "healthcareService-availability",
      "use" : "in",
      "min" : 0,
      "max" : "*",
      "documentation" : "The desired availabilities for the healthcare service. ",
      "type" : "Availability"
    },
    {
      "name" : "result",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "The response will be a Bundle consisting of the HealthcareService resource and a list of healthcare service providers (Organization, Practitioner, PractitionerRole) that offer the requested service and an OperationOutcome with errors, warnings or information as a result of processing the operation.",
      "type" : "Bundle"
    }
  ]
}

```
