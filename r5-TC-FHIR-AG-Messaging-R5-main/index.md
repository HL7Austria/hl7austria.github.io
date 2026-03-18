# HL7.AT.FHIR.MESSAGING.R5\Home - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

# ATMessaging

Feel free to modify this index page with your own awesome content!



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.messaging.r5",
  "url" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/ImplementationGuide/hl7.at.fhir.messaging.r5",
  "version" : "0.1.0",
  "name" : "ATMessaging",
  "title" : "HL7® Austria TC FHIR® Messaging",
  "status" : "draft",
  "date" : "2026-03-18T15:56:08+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    },
    {
      "system" : "email",
      "value" : "tc-fhir@hl7.at"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "tc-fhir@hl7.at"
    }]
  }],
  "description" : "Implementation Guide for Directed FHIR Messaging in Austria",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "version" : "2.0.1",
      "code" : "jurisdiction"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:3166",
        "code" : "AT",
        "display" : "Austria"
      }]
    }
  }],
  "packageId" : "hl7.at.fhir.messaging.r5",
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
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_at_fhir_core_r5",
    "uri" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/ImplementationGuide/hl7.at.fhir.core.r5",
    "packageId" : "hl7.at.fhir.core.r5",
    "version" : "2.0.0"
  },
  {
    "id" : "ihe_iti_mhd",
    "uri" : "https://profiles.ihe.net/ITI/MHD/ImplementationGuide/ihe.iti.mhd",
    "packageId" : "ihe.iti.mhd",
    "version" : "5.0.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.0"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/269f4c84-7762-47aa-b872-c4f927301485"
      },
      "name" : "Ad-hoc message of Doctors note",
      "description" : "Doctors note as ad-hoc submitted message (without previous request).",
      "isExample" : true,
      "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-bundle"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/at-messaging-event-type-vs"
      },
      "name" : "AT Message Event Type ValueSet",
      "description" : "Extensible ValueSet consisting of the Message Event Type Codings.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-messaging-communication"
      },
      "name" : "AT Messaging Communication",
      "description" : "Communication to be used for all communication messages transfered with the AT FHIR messaging.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-messaging-communication-attachment"
      },
      "name" : "AT Messaging Communication Attachment",
      "description" : "Simple Attachment with base64 encoded content for communication over directed messaging.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-messaging-communication-request"
      },
      "name" : "AT Messaging CommunicationRequest",
      "description" : "CommunicationRequest to be used for all communication request messages transfered with the AT FHIR messaging.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-messaging-endpoint"
      },
      "name" : "AT Messaging Endpoint",
      "description" : "Endpoint for use in the Messaging systems for AT FHIR messaging.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-messaging-endpoint-type"
      },
      "name" : "AT Messaging Endpoint Type",
      "description" : "Endpoint Type Coding to encode Messaging Systems the message is transported over.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/at-messaging-endpoint-type-vs"
      },
      "name" : "AT Messaging Endpoint Type ValueSet",
      "description" : "ValueSet of Endpoint Type Codings.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-messaging-event-type"
      },
      "name" : "AT Messaging Event Type",
      "description" : "Event Coding for discriminating messages on the receiver.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-messaging-bundle"
      },
      "name" : "AT Messaging Message Bundle",
      "description" : "MessageBundle to be used for all messages transfered with the AT FHIR messaging.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-messaging-message-header"
      },
      "name" : "AT Messaging Message Header",
      "description" : "MessageHeader to be used for all messages transfered with the AT FHIR messaging.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-messaging-task"
      },
      "name" : "AT Messaging Task",
      "description" : "Task to be used for all service status messages transfered with the AT FHIR messaging.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      }],
      "reference" : {
        "reference" : "Communication/08327a3a-1f52-4ec0-9b90-ac17fd6e06b2"
      },
      "name" : "Communication Example",
      "description" : "Plain text message that kindly rejects a previous communication request.",
      "isExample" : true,
      "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MessageDefinition"
      }],
      "reference" : {
        "reference" : "MessageDefinition/at-messaging-communication-message"
      },
      "name" : "Communication over directed messaging.",
      "description" : "Regulates the resources to be used in a directed message when transferring a Communication.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MessageDefinition"
      }],
      "reference" : {
        "reference" : "MessageDefinition/at-messaging-communicationrequest-message"
      },
      "name" : "Communication request over directed messaging.",
      "description" : "Regulates the resources to be used in a directed message when performing a CommunicationRequest.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CommunicationRequest"
      }],
      "reference" : {
        "reference" : "CommunicationRequest/c7090292-dc27-4d90-a500-7e4110217947"
      },
      "name" : "CommunicationRequest for a consultation document",
      "description" : "Plain Text communication request for a consult document.",
      "isExample" : true,
      "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-communication-request"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/63874621-5550-410a-b893-ca890614cf6e"
      },
      "name" : "Consult communication",
      "description" : "Consultation document rejection as CommunicationRequest message.",
      "isExample" : true,
      "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-bundle"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/6df9d997-d34a-448b-944e-8721c49e0939"
      },
      "name" : "Consult request",
      "description" : "Consult request as CommunicationRequest message.",
      "isExample" : true,
      "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-bundle"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MessageDefinition"
      }],
      "reference" : {
        "reference" : "MessageDefinition/at-messaging-document-message"
      },
      "name" : "Document transfer over directed messaging.",
      "description" : "Regulates the resources to be used in a directed message when transferring a document.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/96beaf3e-6e2f-40f4-b1d3-02b19c984fb1"
      },
      "name" : "Lab request",
      "description" : "Lab request as ServiceRequest message.",
      "isExample" : true,
      "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-bundle"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/81fd7dbf-5207-4bc5-b7df-89e97dcbbb79"
      },
      "name" : "Lab ServiceRequest",
      "description" : "Service Request for a Blood Test.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/ab66186f-9d91-44b9-8459-bdee4e850bac"
      },
      "name" : "Lab status update",
      "description" : "Lab status update as service status update message.",
      "isExample" : true,
      "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-bundle"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MessageHeader"
      }],
      "reference" : {
        "reference" : "MessageHeader/89c89a84-bce7-4c5d-b6f6-49690eea5b06"
      },
      "name" : "MessageHeader of an ad-hoc message sending a document.",
      "description" : "Message header for sending a doctor's note document from a HIS to a GP software without prior request.",
      "isExample" : true,
      "profile" : ["http://fhir.hl7.at/fhir/ATMessaging/0.1.0/StructureDefinition/at-messaging-message-header"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/ReceiverActor"
      },
      "name" : "Receiver Actor",
      "description" : "The actor that receives, parses and disassembles the FHIR message.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/SenderActor"
      },
      "name" : "Sender Actor",
      "description" : "The actor that assembles and submits the FHIR message.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MessageDefinition"
      }],
      "reference" : {
        "reference" : "MessageDefinition/at-messaging-servicerequest-message"
      },
      "name" : "Service request over directed messaging.",
      "description" : "Regulates the resources to be used in a directed message when performing a ServiceRequest.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MessageDefinition"
      }],
      "reference" : {
        "reference" : "MessageDefinition/at-messaging-service-status-message"
      },
      "name" : "Service status update over directed messaging.",
      "description" : "Regulates the resources to be used in a directed message when transferring a task status update of a ServiceRequest.",
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
      "value" : "2026+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "ci-build"
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
      "value" : "http://fhir.hl7.at/fhir/ATMessaging/0.1.0/history.html"
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
