# AT APS Composition - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-composition",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
    }
  ],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition",
  "version" : "1.0.0",
  "name" : "AtApsComposition",
  "title" : "AT APS Composition",
  "status" : "active",
  "date" : "2026-02-16T15:08:31+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    },
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Das AT APS-Profil für die Composition-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "AT"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition",
        "short" : "AT APS Composition",
        "constraint" : [
          {
            "key" : "aps-comp-1",
            "severity" : "error",
            "human" : "For automatically generated APS an attester is not allowed",
            "expression" : "(author.resolve().ofType(Device).count() != author.count() or attester.count() = 0)",
            "source" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
          }
        ]
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "short" : "The person the Austrian Patient Summary is about.",
        "definition" : "Patientendaten, inkl. Angabe von Kontaktpersonen, Hausarzt bzw. primäre Ansprechpartner.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"
            ]
          }
        ]
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "short" : "Autor der Austrian Patient Summary",
        "definition" : "Autor der Austrian Patient Summary. Ggf. Angabe eines Devices z.B. bei automatischer Erstellung der Patient Summary durch die zentrale Anwendung.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
            ]
          }
        ]
      },
      {
        "id" : "Composition.attester",
        "path" : "Composition.attester",
        "short" : "Person, die die Richtigkeit der Zusammenstellung bestätigt.",
        "definition" : "Person, die die Richtigkeit der Zusammenstellung bestätigt. Darf bei automatischer Erstellung durch ein Device nicht angegeben werden."
      },
      {
        "id" : "Composition.attester.party",
        "path" : "Composition.attester.party",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
            ]
          }
        ]
      },
      {
        "id" : "Composition.custodian",
        "path" : "Composition.custodian",
        "short" : "Organisation, die die Patient Summary verwaltet (z.b. zentrale Anwendung).",
        "definition" : "Organisation, die die Patient Summary verwaltet (z.B. zentrale Anwendung).",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
            ]
          }
        ]
      },
      {
        "id" : "Composition.relatesTo.target[x]",
        "path" : "Composition.relatesTo.target[x]",
        "type" : [
          {
            "code" : "Identifier"
          },
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 5
      },
      {
        "id" : "Composition.section.author",
        "path" : "Composition.section.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionProblems",
        "path" : "Composition.section",
        "sliceName" : "sectionProblems",
        "short" : "Gesundheitsprobleme und Risiken (Problems)",
        "definition" : "Diese Sektion listet und beschreibt klinische Probleme oder Erkrankungen (kodierte Diagnosen), die derzeit für den Patienten relevant sind bzw. liefert Information über das Nichtvorhandensein.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionProblems.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11450-4"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionProblems.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionProblems.entry:problem",
        "path" : "Composition.section.entry",
        "sliceName" : "problem",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionProblems.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAllergies",
        "path" : "Composition.section",
        "sliceName" : "sectionAllergies",
        "short" : "Allergien und Intoleranzen (Allergies and Intolerances)",
        "definition" : "In dieser Sektion werden die relevanten Allergien oder Unverträglichkeiten des Patienten dokumentiert, wobei die Art der Reaktion (z.B. Ausschlag, Anaphylaxie usw.), vorzugsweise die auslösenden Stoffe, sowie optional die Kritikalität und die Bestimmtheit der Allergie beschrieben werden. Zumindest sollten die derzeit aktiven und alle relevanten früheren Allergien und Nebenwirkungen aufgeführt werden. Liegen keine Informationen über Allergien vor oder sind keine Allergien bekannt, sollte dies ebenfalls dokumentiert werden.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionAllergies.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "48765-2"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionAllergies.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-allergyintolerance",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAllergies.entry:allergyOrIntolerance",
        "path" : "Composition.section.entry",
        "sliceName" : "allergyOrIntolerance",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-allergyintolerance"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAllergies.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedications",
        "path" : "Composition.section",
        "sliceName" : "sectionMedications",
        "short" : "Medikationsliste (Medication Summary)",
        "definition" : "Diese Sektion enthält eine Beschreibung der aktuell relevanten Medikamente des Patienten bzw. liefert Information über das Nichtvorhandensein. Dabei werden nur rezeptpflichtige Medikamente und wechselwirkungsrelevante OTCs berücksichtigt.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionMedications.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "10160-0"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionMedications.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationdispense",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedications.entry:medicationStatement",
        "path" : "Composition.section.entry",
        "sliceName" : "medicationStatement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedications.entry:medicationRequest",
        "path" : "Composition.section.entry",
        "sliceName" : "medicationRequest",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedications.entry:medicationAdministration",
        "path" : "Composition.section.entry",
        "sliceName" : "medicationAdministration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedications.entry:medicationDispense",
        "path" : "Composition.section.entry",
        "sliceName" : "medicationDispense",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationdispense"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedications.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionProceduresHx",
        "path" : "Composition.section",
        "sliceName" : "sectionProceduresHx",
        "short" : "Eingriffe und Therapien (History of Procedures)",
        "definition" : "Diese Sektion enthält eine Beschreibung früherer Eingriffe und Therapien. Darunter fallen zum Beispiel invasive diagnostische Verfahren (z.B. Herzkatheteruntersuchung), therapeutische Verfahren (z.B. Dialyse) und chirurgische Eingriffe (z.B. Appendektomie). Befunde und Dokumentation von z.B. im Rahmen von Disease-Management-Programmen durchgeführten Schulungen und Beratungen werden ebenfalls in dieser Sektion aufgenommen. Die Dokumentation der Information kann am Beispiel der Integrierten Versorgung z.B. der Fallkoordinator übernehmen.",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "ips-comp-1",
            "severity" : "error",
            "human" : "Either section.entry or emptyReason are present",
            "expression" : "(entry.reference.exists() or emptyReason.exists())",
            "source" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
          }
        ]
      },
      {
        "id" : "Composition.section:sectionProceduresHx.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "47519-4"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionProceduresHx.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionProceduresHx.entry:procedure",
        "path" : "Composition.section.entry",
        "sliceName" : "procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionProceduresHx.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedicalDevices",
        "path" : "Composition.section",
        "sliceName" : "sectionMedicalDevices",
        "short" : "Implantate, medizinische Geräte (Medical Devices)",
        "definition" : "Diese Sektion enthält Informationen und kodierte Einträge, die den Gebrauch von Medizinprodukten in der Krankengeschichte beschreiben, z.B. Insulinpumpen oder Herzschrittmacher.",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "ips-comp-1",
            "severity" : "error",
            "human" : "Either section.entry or emptyReason are present",
            "expression" : "(entry.reference.exists() or emptyReason.exists())",
            "source" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedicalDevices.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "46264-8"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionMedicalDevices.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-deviceusestatement",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedicalDevices.entry:deviceStatement",
        "path" : "Composition.section.entry",
        "sliceName" : "deviceStatement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-deviceusestatement"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionMedicalDevices.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionImmunizations",
        "path" : "Composition.section",
        "sliceName" : "sectionImmunizations",
        "short" : "Impfungen (Immunizations)",
        "definition" : "Die Sektion beschreibt den aktuellen Impfstatus des Patienten und die dazugehörige Impfhistorie.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionImmunizations.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11369-6"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionImmunizations.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionImmunizations.entry:immunization",
        "path" : "Composition.section.entry",
        "sliceName" : "immunization",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionImmunizations.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionResults",
        "path" : "Composition.section",
        "sliceName" : "sectionResults",
        "short" : "Diagnostische Resultate (Results)",
        "definition" : "Die Sektion fasst Untersuchungsergebnisse zusammen, die am Patienten erhoben oder anhand von biologischen In-vitro-Proben erstellt wurden. Dabei kann es sich um Laborergebnisse, Ergebnisse der anatomischen Pathologie oder um radiologische Ergebnisse handeln.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionResults.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "30954-2"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionResults.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resolve()"
            },
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionResults.entry:resultsObservationLaboratoryPathology",
        "path" : "Composition.section.entry",
        "sliceName" : "resultsObservationLaboratoryPathology",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionResults.entry:resultsObservationRadiology",
        "path" : "Composition.section.entry",
        "sliceName" : "resultsObservationRadiology",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultsradiology"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionResults.entry:resultsDiagnosticReport",
        "path" : "Composition.section.entry",
        "sliceName" : "resultsDiagnosticReport",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionResults.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAdvanceDirectives",
        "path" : "Composition.section",
        "sliceName" : "sectionAdvanceDirectives",
        "short" : "Willenserklärungen und andere juridische Dokumente (Advance Directives)",
        "definition" : "Die Sektion kann aktuelle Verfügungen von Patienten beinhalten.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionAdvanceDirectives.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "42348-3"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionAdvanceDirectives.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-consent",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAdvanceDirectives.entry:advanceDirectivesConsent",
        "path" : "Composition.section.entry",
        "sliceName" : "advanceDirectivesConsent",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-consent"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAdvanceDirectives.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAlerts",
        "path" : "Composition.section",
        "sliceName" : "sectionAlerts",
        "short" : "Warnungen (Alerts)",
        "definition" : "Die Sektion ermöglicht Warnmeldungen, wenn bestimmte Umstände eintreten (z.B. wenn Grenzwerte für Blutdruck, Gewicht oder subjektives Befinden einen gewissen Zeitraum überschritten werden).",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionAlerts.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "104605-1"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionAlerts.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-flagalert",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAlerts.entry:alertsFlag",
        "path" : "Composition.section.entry",
        "sliceName" : "alertsFlag",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-flagalert"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionAlerts.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionFunctionalStatus",
        "path" : "Composition.section",
        "sliceName" : "sectionFunctionalStatus",
        "short" : "Beeinträchtigungen (Functional Status)",
        "definition" : "Diese Sektion enthält eine Beschreibung der Mobilität bzw. Fähigkeit der Patientin oder des Patienten, Handlungen des täglichen Lebens auszuführen, einschließlich möglicher Bedürfnisse. Hier könnte auch die Pflegestufe dokumentiert werden.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionFunctionalStatus.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "47420-5"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionFunctionalStatus.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-clinicalimpression",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionFunctionalStatus.entry:disability",
        "path" : "Composition.section.entry",
        "sliceName" : "disability",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionFunctionalStatus.entry:functionalAssessment",
        "path" : "Composition.section.entry",
        "sliceName" : "functionalAssessment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-clinicalimpression"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionFunctionalStatus.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPastIllnessHx",
        "path" : "Composition.section",
        "sliceName" : "sectionPastIllnessHx",
        "short" : "Vergangene Gesundheitsprobleme und Risiken (History of Past Problems)",
        "definition" : "Die Sektion enthält eine Beschreibung der historischen klinischen Probleme oder Erkrankungen, die für die Patientin oder den Patienten in der Vergangenheit diagnostiziert wurden.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionPastIllnessHx.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11348-0"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionPastIllnessHx.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPastIllnessHx.entry:pastProblem",
        "path" : "Composition.section.entry",
        "sliceName" : "pastProblem",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPastIllnessHx.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPregnancyHx",
        "path" : "Composition.section",
        "sliceName" : "sectionPregnancyHx",
        "short" : "Schwangerschaftshistorie (History of Pregnancy)",
        "definition" : "Die Sektion ermöglicht die Dokumentation eines Schwangerschaftsstatus inkl. geplantem Entbindungstermin und eine kurze Zusammenfassung von vergangenen Schwangerschaften.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionPregnancyHx.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "10162-6"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionPregnancyHx.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancystatus",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancyoutcome",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPregnancyHx.entry:pregnancyStatus",
        "path" : "Composition.section.entry",
        "sliceName" : "pregnancyStatus",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancystatus"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPregnancyHx.entry:pregnancyOutcomeSummary",
        "path" : "Composition.section.entry",
        "sliceName" : "pregnancyOutcomeSummary",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancyoutcome"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPregnancyHx.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPatientStory",
        "path" : "Composition.section",
        "sliceName" : "sectionPatientStory",
        "short" : "Patientenbericht (Patient Story)",
        "definition" : "Die Sektion enthält narrativen Text sowie optionale Ressourcen, die zum Ausdruck bringen, was für den Patienten wichtig ist. Dazu können Bedürfnisse, Stärken, Werte, Bedenken und Präferenzen gehören, die für Personen relevant sind, die Unterstützung und Pflege anbieten.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionPatientStory.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "81338-6"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionPlanOfCare",
        "path" : "Composition.section",
        "sliceName" : "sectionPlanOfCare",
        "short" : "Behandlungsplan (Plan of Care)",
        "definition" : "Die Sektion enthält den Behandlungsplan inkl. Vorschlägen, Zielen und Anordnungen zur Kontrolle oder Verbesserung des Zustands des Patienten, zur Planung der nächsten empfohlenen oder vereinbarten Untersuchungen, Kontrolltermine und Schulungen. Durchgeführte Maßnahmen wie Untersuchungen oder Schulungen können in der Sektion \"History of Procedures\" dokumentiert werden.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionPlanOfCare.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "18776-5"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionPlanOfCare.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunizationrecommendation",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPlanOfCare.entry:carePlan",
        "path" : "Composition.section.entry",
        "sliceName" : "carePlan",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPlanOfCare.entry:immunizationRecommendation",
        "path" : "Composition.section.entry",
        "sliceName" : "immunizationRecommendation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunizationrecommendation"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionPlanOfCare.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionSocialHistory",
        "path" : "Composition.section",
        "sliceName" : "sectionSocialHistory",
        "short" : "Lebensstil / Soziale Umstände und Verhalten (Social History)",
        "definition" : "Diese Sektion erfasst den aktuellen Lebensstil einer Person. Angaben zum Rauchverhalten sowie zum Alkoholkonsum werden in den hierfür vorgesehenen spezifischen Ressourcen abgebildet. Weitere relevante Aspekte, wie z.B. körperliche Aktivität, Ernährungsgewohnheiten oder sonstige Verhaltensweisen, werden mithilfe der AtApsObservation-Ressource dokumentiert.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionSocialHistory.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "29762-2"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionSocialHistory.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionSocialHistory.entry:smokingTobaccoUse",
        "path" : "Composition.section.entry",
        "sliceName" : "smokingTobaccoUse",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationtobaccouse"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionSocialHistory.entry:alcoholUse",
        "path" : "Composition.section.entry",
        "sliceName" : "alcoholUse",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationalcoholuse"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionSocialHistory.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionVitalSigns",
        "path" : "Composition.section",
        "sliceName" : "sectionVitalSigns",
        "short" : "Vitalparameter (Vital Signs)",
        "definition" : "Die Sektion umfasst Informationen wie Blutdruck, Körpertemperatur, Herzfrequenz, Atemfrequenz, Größe, Gewicht, Body-Mass-Index, Kopfumfang oder Pulsoximetrie. Insbesondere können auffällige Vitalparameter oder körperliche Befunde wie der letzte, maximale und/oder minimale Wert, der Ausgangswert oder relevante Trends angegeben werden.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Composition.section:sectionVitalSigns.code",
        "path" : "Composition.section.code",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8716-3"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:sectionVitalSigns.entry",
        "path" : "Composition.section.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionVitalSigns.entry:vitalSign",
        "path" : "Composition.section.entry",
        "sliceName" : "vitalSign",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
            ]
          }
        ]
      },
      {
        "id" : "Composition.section:sectionVitalSigns.entry:document",
        "path" : "Composition.section.entry",
        "sliceName" : "document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      }
    ]
  }
}

```
