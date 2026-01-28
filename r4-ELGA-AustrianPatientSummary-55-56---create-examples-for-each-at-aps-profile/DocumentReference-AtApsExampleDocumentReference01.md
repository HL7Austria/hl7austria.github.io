# AtApsDocumentReference-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "AtApsExampleDocumentReference01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
    ]
  },
  "masterIdentifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.21367.2005.3.7"
  },
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
    }
  ],
  "status" : "current",
  "docStatus" : "preliminary",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "34108-1",
        "display" : "Outpatient Note"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "date" : "2005-12-24T09:43:41+11:00",
  "author" : [
    {
      "reference" : "Practitioner/at-aps-example-practitioner-01",
      "display" : "Hanna Hausärztin"
    }
  ],
  "authenticator" : {
    "reference" : "Organization/AtApsExampleOrganization01"
  },
  "custodian" : {
    "reference" : "Organization/AtApsExampleOrganization01"
  },
  "description" : "Körperliche Untersuchung",
  "securityLabel" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
          "code" : "V",
          "display" : "very restricted"
        }
      ]
    }
  ],
  "content" : [
    {
      "attachment" : {
        "contentType" : "application/hl7-v3+xml",
        "language" : "de-DE",
        "url" : "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510",
        "size" : 3654,
        "hash" : "2jmj7l5rSw0yVb/vlWAYkK/YBwk=",
        "title" : "Körperliche Untersuchung",
        "creation" : "2005-12-24T09:35:00+11:00"
      }
    }
  ]
}

```
