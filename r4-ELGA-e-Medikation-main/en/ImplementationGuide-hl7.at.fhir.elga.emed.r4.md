# Resource ELGA e-Medikation (R4) DRAFT



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.elga.emed.r4",
  "language" : "en",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ImplementationGuide/hl7.at.fhir.elga.emed.r4",
  "version" : "0.1.0",
  "name" : "ELGA-e-Medikation-R4",
  "title" : "ELGA e-Medikation (R4) DRAFT",
  "status" : "draft",
  "date" : "2026-10-29T14:20:15+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "The FHIR® implementation guide ELGA e-Medikation (R4)",
  "packageId" : "hl7.at.fhir.elga.emed.r4",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.5.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.4.0"
  },
  {
    "id" : "hl7_at_fhir_core_r4",
    "uri" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ImplementationGuide/hl7.at.fhir.core.r4",
    "packageId" : "hl7.at.fhir.core.r4",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.3.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://termgit.elga.gv.at/CodeSystem/medikationrezeptart"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://termgit.elga.gv.at/ValueSet/elga-medikationrezeptart"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid-template"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid-template"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.hl7.at/elga/emed/r4/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "grouping" : [{
      "id" : "Medikationsplan",
      "name" : "Medikationsplan",
      "description" : "Medikationsplan"
    },
    {
      "id" : "GeplanteAbgabe",
      "name" : "Geplante Abgabe",
      "description" : "Geplante Abgabe"
    },
    {
      "id" : "DurchgefuehrteAbgabe",
      "name" : "Durchgeführte Abgabe",
      "description" : "Durchgeführte Abgabe"
    },
    {
      "id" : "Medikation",
      "name" : "Medikation",
      "description" : "Medikation"
    },
    {
      "id" : "Dosierungen",
      "name" : "Dosierungen",
      "description" : "Dosierungsvarianten"
    },
    {
      "id" : "Stammdaten",
      "name" : "Stammdaten",
      "description" : "Stammdaten"
    },
    {
      "id" : "OpPlanRead",
      "name" : "$plan-read",
      "description" : "Operation $plan-read inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OpPlanWrite",
      "name" : "$plan-write",
      "description" : "Operation $plan-write inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OpReferencePlan",
      "name" : "$reference-plan",
      "description" : "Operation $reference-plan inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OpPrescriptionWrite",
      "name" : "$prescription-write",
      "description" : "Operation $prescription-write inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OpPrescriptionDiscard",
      "name" : "$prescription-discard",
      "description" : "Operation $prescription-discard inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OpDispenseWrite",
      "name" : "$dispense-write",
      "description" : "Operation $dispense-write inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OpDispenseDiscard",
      "name" : "$dispense-discard",
      "description" : "Operation $dispense-discard inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OpGroupidentifierCreate",
      "name" : "$groupidentifier-create",
      "description" : "Operation $groupidentifier-create inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OpGroupidentifierSearch",
      "name" : "$groupidentifier-search",
      "description" : "Operation $groupidentifier-search inkl. Ein- und Ausgabeparameter"
    },
    {
      "id" : "OperationCommon",
      "name" : "Gemeinsame Profile der Operationen",
      "description" : "Profile, die von allen Operationen verwendet werden"
    },
    {
      "id" : "Suchparameter",
      "name" : "Suchparameter",
      "description" : "Suchparameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-at-elga-emed-codesystem-operationoutcome-details-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-elga-emed-codesystem-operationoutcome-details-cs"
      },
      "name" : "At ELGA e-Medikation CodeSystem für OperationOutcome Details",
      "description" : "Dieses Codesystem legt die möglichen Fehlercodes im Rahmen der e-Medikation-Fachanwendung fest.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-device-fachanwendung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-device-fachanwendung"
      },
      "name" : "At ELGA e-Medikation Device Fachanwendung",
      "description" : "Das Device, welches die eMed Fachanwendung abbildet",
      "exampleBoolean" : false,
      "groupingId" : "Stammdaten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-at-elga-emed-codesystem-dosagecategory-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-elga-emed-codesystem-dosagecategory-cs"
      },
      "name" : "At ELGA e-Medikation Dosage Category Status CodeSystem",
      "description" : "Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-dosagecategory-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-dosagecategory-vs"
      },
      "name" : "At ELGA e-Medikation Dosage Category Status ValueSet",
      "description" : "Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-dosage-dosierung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-dosage-dosierung"
      },
      "name" : "AT ELGA e-Medikation Dosage Dosierung",
      "description" : "Basisprofil für alle Dosierungschemata",
      "exampleBoolean" : false,
      "groupingId" : "Dosierungen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-timingwhenstandardadministration-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-timingwhenstandardadministration-vs"
      },
      "name" : "At ELGA e-Medikation Dosierung Timing When ValueSet für Tageszeitenschema",
      "description" : "ValueSet für zulässige Ausprägungen des Elements when eines Timings für eine Dosierung mit Tageszeitenschema.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-extension-dosage-category.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-extension-dosage-category"
      },
      "name" : "AT ELGA e-Medikation Extension Dosierungskategorie",
      "description" : "AT ELGA e-Medikation Extension Dosierungskategorie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-extension-group-identifier.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-extension-group-identifier"
      },
      "name" : "AT ELGA e-Medikation Extension Group Identifier",
      "description" : "AT ELGA e-Medikation Extension, die den e-Med GroupIdentifier beinhaltet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-extension-patient-modified.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-extension-patient-modified"
      },
      "name" : "AT ELGA e-Medikation Extension Patient Modified",
      "description" : "AT ELGA e-Medikation Extension, die Angibt, ob in einer Ressource eine Änderung vom Patienten veranlasst wurde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-extension-rezeptur.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-extension-rezeptur"
      },
      "name" : "AT ELGA e-Medikation Extension Rezeptur",
      "description" : "AT ELGA e-Medikation Extension für die Rezeptur für die Zubereitung einer magistralen Zubereitung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-dosage-freetext-administration.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-dosage-freetext-administration"
      },
      "name" : "AT ELGA e-Medikation Freitext-Dosierschema",
      "description" : "Profil für das Freitext-Dosierschema",
      "exampleBoolean" : false,
      "groupingId" : "Dosierungen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-geplanteabgabestatus-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-geplanteabgabestatus-vs"
      },
      "name" : "At ELGA e-Medikation Geplante Abgabe Status ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen eines Status einer Geplanten Abgabe (MedicationRequest).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-listemptyreason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-listemptyreason-vs"
      },
      "name" : "At ELGA e-Medikation List Empty Reason ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-list-medikationsplan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-list-medikationsplan"
      },
      "name" : "AT ELGA e-Medikation List Medikationsplan",
      "description" : "Profil für einen Medikationsplan.",
      "exampleBoolean" : false,
      "groupingId" : "Medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-at-elga-emed-codesystem-listentryflag-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-elga-emed-codesystem-listentryflag-cs"
      },
      "name" : "At ELGA e-Medikation List.entry.flag CodeSystem",
      "description" : "CodeSystem für zulässige Ausprägungen des Flags eines List.Entries in ELGA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-listentryflag-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-listentryflag-vs"
      },
      "name" : "At ELGA e-Medikation List.entry.flag ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen Ausprägungen des Flags eines List.Entries in ELGA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"
      },
      "name" : "AT ELGA e-Medikation Medication Magistrale Medikation",
      "description" : "Bildet eine Magistrale Zubereitung in der Medication-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe.",
      "exampleBoolean" : false,
      "groupingId" : "Medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-medication-standard-medikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-medication-standard-medikation"
      },
      "name" : "AT ELGA e-Medikation Medication Profil für die Standardmedikation mit PZN",
      "description" : "Bildet ein Arzneimittel in der \"Medication\"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe.",
      "exampleBoolean" : false,
      "groupingId" : "Medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-medication-wirkstoff.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-medication-wirkstoff"
      },
      "name" : "AT ELGA e-Medikation Medication Wirkstoff",
      "description" : "Bildet einen Wirkstoff in der Medication-Ressource ab. Wird grundsätzlich verwendet im Planeintrag.",
      "exampleBoolean" : false,
      "groupingId" : "Medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"
      },
      "name" : "AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe",
      "description" : "Profil einer Durchgeführten Abgabe eines Arzneimittels.",
      "exampleBoolean" : false,
      "groupingId" : "DurchgefuehrteAbgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-at-elga-emed-codesystem-medicationdispense-performer-function-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-elga-emed-codesystem-medicationdispense-performer-function-cs"
      },
      "name" : "At ELGA e-Medikation MedicationDispense Performer Function CodeSystem",
      "description" : "Codesystem für zulässige Ausprägungen der MedicationDispense Performer Function.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-medicationdispense-performer-function-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-medicationdispense-performer-function-vs"
      },
      "name" : "At ELGA e-Medikation MedicationDispense Performer Function ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen der MedicationDispense Performer Function.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-medicationdispense-status-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-medicationdispense-status-vs"
      },
      "name" : "At ELGA e-Medikation MedicationDispense Status ValueSet",
      "description" : "Zulässige Ausprägungen des Status einer MedicationDispense-Ressource in ELGA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-medicationdispense-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-medicationdispense-type-vs"
      },
      "name" : "At ELGA e-Medikation MedicationDispense Type ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen des Elements type einer MedicationDispense.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-medicationrequest-base.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-medicationrequest-base"
      },
      "name" : "At ELGA e-Medikation MedicationRequest Base",
      "description" : "Die Basis für alle in eMed verwendeten MedicationRequests",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-medicationrequest-courseoftherapytype-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-medicationrequest-courseoftherapytype-vs"
      },
      "name" : "At ELGA e-Medikation MedicationRequest courseOfTherapyType ValueSet",
      "description" : "Zulässige Ausprägungen des Elements courseOfTherapyType in ELGA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"
      },
      "name" : "At ELGA e-Medikation MedicationRequest Geplante Abgabe",
      "description" : "Profil einer Geplanten Abgabe eines Arzneimittels aus dem Medikationsplan.",
      "exampleBoolean" : false,
      "groupingId" : "GeplanteAbgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-at-elga-emed-codesystem-medicationrequestcategory-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-elga-emed-codesystem-medicationrequestcategory-cs"
      },
      "name" : "At ELGA e-Medikation MedicationRequest Kategorie CodeSystem",
      "description" : "Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von Geplanten Abgaben und Medikationsplaneinträgen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-medicationrequestcategory-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-medicationrequestcategory-vs"
      },
      "name" : "At ELGA e-Medikation MedicationRequest Kategorie ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von Geplanten Abgaben und Medikationsplaneinträgen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-medicationrequest-planeintrag.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
      },
      "name" : "At ELGA e-Medikation MedicationRequest Planeintrag",
      "description" : "Profil für einen Planeintrag.",
      "exampleBoolean" : false,
      "groupingId" : "Medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-at-elga-emed-codesystem-planeintrag-statusreason-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-elga-emed-codesystem-planeintrag-statusreason-cs"
      },
      "name" : "At ELGA e-Medikation MedicationRequest Planeintrag StatusReason CodeSystem",
      "description" : "Codesystem für zulässige Ausprägungen des StatusReason eines Medikationsplaneintrags (MedicationRequest).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-bundle-medikationsplan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-bundle-medikationsplan"
      },
      "name" : "AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan",
      "description" : "Profil für den Medikationsplan als Ergebnis der $plan-read Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpPlanRead"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-planeintragstatus-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-planeintragstatus-vs"
      },
      "name" : "At ELGA e-Medikation Medikationsplaneintrag Status ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen eines Status eines Medikationsplaneintrags (MedicationRequest).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-planeintrag-statusreason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-planeintrag-statusreason-vs"
      },
      "name" : "At ELGA e-Medikation Medikationsplaneintrag StatusReason ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen des StatusReason eines Medikationsplaneintrags (MedicationRequest).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-operationoutcome.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-operationoutcome"
      },
      "name" : "AT ELGA e-Medikation OperationOutcome",
      "description" : "Dieses Profil gibt vor, welche Details im Rahmen der e-Medikation im Fehlerfall...",
      "exampleBoolean" : false,
      "groupingId" : "OperationCommon"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-organization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-organization"
      },
      "name" : "AT ELGA e-Medikation Organization",
      "description" : "Profil für die Struktur von Organisationen",
      "exampleBoolean" : false,
      "groupingId" : "Stammdaten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-dispense-discard.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-dispense-discard"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $dispense-discard",
      "description" : "Profil für den Rückgabewert der $dispense-discard Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpDispenseDiscard"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-dispense-write.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-dispense-write"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $dispense-write",
      "description" : "Profil für den Rückgabewert der $dispense-write Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpDispenseWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-groupidentifier-create.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-groupidentifier-create"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $groupidentifier-create",
      "description" : "Profil für den Rückgabewert der $groupidentifier-create Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpGroupidentifierCreate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-groupidentifier-search.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-groupidentifier-search"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $groupidentifier-search",
      "description" : "Profil für den Rückgabewert der $groupidentifier-search Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpGroupidentifierSearch"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-plan-read.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-plan-read"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $plan-read",
      "description" : "Profil für den Rückgabewert der $plan-read Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpPlanRead"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-plan-write.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-plan-write"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $plan-write",
      "description" : "Profil für den Rückgabewert der $plan-write Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpPlanWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-prescription-discard.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-prescription-discard"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $prescription-discard",
      "description" : "Profil für den Rückgabewert der $prescription-discard Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpPrescriptionDiscard"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-prescription-write.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-prescription-write"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $prescription-write",
      "description" : "Profil für den Rückgabewert der $prescription-write Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpPrescriptionWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-parameters-out-reference-plan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-parameters-out-reference-plan"
      },
      "name" : "AT ELGA e-Medikation Parameters Out $reference-plan",
      "description" : "Profil für den Rückgabewert der $reference-plan Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpReferencePlan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-patient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-patient"
      },
      "name" : "AT ELGA e-Medikation Patient",
      "description" : "Profil für die Struktur der Patienten Ressource",
      "exampleBoolean" : false,
      "groupingId" : "Stammdaten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-practitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-practitioner"
      },
      "name" : "AT ELGA e-Medikation Practitioner",
      "description" : "Profil für die Struktur der Practitioner Ressource",
      "exampleBoolean" : false,
      "groupingId" : "Stammdaten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-practitionerrole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-practitionerrole"
      },
      "name" : "AT ELGA e-Medikation PractitionerRole",
      "description" : "Profil für die Struktur der PractitionerRole Ressource",
      "exampleBoolean" : false,
      "groupingId" : "Stammdaten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-at-elga-emed-searchparameter-list-mr-medication-code.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/at-elga-emed-searchparameter-list-mr-medication-code"
      },
      "name" : "AT ELGA e-Medikation SearchParameter List Medication Code",
      "description" : "Suchparameter für den Code (PZN) eines Arzneimittels, das in einem MedicationRequest eines Medikationsplans (List) enthalten ist.",
      "exampleBoolean" : false,
      "groupingId" : "Suchparameter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-bundle-groupidentifier-search-result.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-bundle-groupidentifier-search-result"
      },
      "name" : "AT ELGA e-Medikation Searchset Bundle GroupIdentifier-Search",
      "description" : "Profil für das Ergebnis der $groupidentifier-search Operation. Das Bundle enthält die dem e-Med GroupIdentifier zugeordneten Geplanten und Durchgeführten Abgaben sowie die von ihnen referenzierten Patient- und Autoren-Ressourcen.",
      "exampleBoolean" : false,
      "groupingId" : "OpGroupidentifierSearch"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-dosage-standard-administration.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-dosage-standard-administration"
      },
      "name" : "AT ELGA e-Medikation Standard-Tageszeiten-Dosierschema",
      "description" : "Profil für das Standard-Tageszeiten-Dosierschema",
      "exampleBoolean" : false,
      "groupingId" : "Dosierungen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-timing.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-timing"
      },
      "name" : "AT ELGA e-Medikation Timing",
      "description" : "AT ELGA e-Medikation Timing",
      "exampleBoolean" : false,
      "groupingId" : "Dosierungen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-bundle-durchgefuehrteabgaben-tx"
      },
      "name" : "AT ELGA e-Medikation Transaction Bundle Durchgeführte Abgaben",
      "description" : "Profil für das Schreiben der Durchgeführten Abgaben mit der $dispense-write Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpDispenseWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx"
      },
      "name" : "AT ELGA e-Medikation Transaction Bundle Geplante Abgaben",
      "description" : "Profil für das Schreiben der Geplanten Abgaben mit der $prescription-write Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpPrescriptionWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-bundle-medikationsplantx.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-bundle-medikationsplantx"
      },
      "name" : "AT ELGA e-Medikation Transaction Bundle Medikationsplan",
      "description" : "Profil für das Schreiben des Medikationsplans mit der $plan-write Operation.",
      "exampleBoolean" : false,
      "groupingId" : "OpPlanWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-write-response.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-bundle-durchgefuehrteabgaben-write-response"
      },
      "name" : "AT ELGA e-Medikation Transaction-Response Bundle Durchgeführte Abgaben",
      "description" : "Profil für die Antwort des Servers auf das Schreiben von Durchgeführten Abgaben mit der $dispense-write Operation. Das Bundle enthält die persistierten Durchgeführten Abgaben.",
      "exampleBoolean" : false,
      "groupingId" : "OpDispenseWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-bundle-geplanteabgaben-write-response.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-bundle-geplanteabgaben-write-response"
      },
      "name" : "AT ELGA e-Medikation Transaction-Response Bundle Geplante Abgaben",
      "description" : "Profil für die Antwort des Servers auf das Schreiben von Geplanten Abgaben mit der $prescription-write Operation. Das Bundle enthält die persistierten Geplanten Abgaben.",
      "exampleBoolean" : false,
      "groupingId" : "OpPrescriptionWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-emed-bundle-medikationsplan-write-response.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-emed-bundle-medikationsplan-write-response"
      },
      "name" : "AT ELGA e-Medikation Transaction-Response Bundle Medikationsplan",
      "description" : "Profil für die Antwort des Servers auf das Schreiben des Medikationsplans mit der $plan-write Operation. Das Bundle enthält den persistierten Medikationsplan sowie die persistierten Medikationsplaneinträge.",
      "exampleBoolean" : false,
      "groupingId" : "OpPlanWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-operationoutcome-details-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-operationoutcome-details-vs"
      },
      "name" : "At ELGA e-Medikation ValueSet für AT e-Medikation OperationOutcome Details",
      "description" : "Value-Set mit den für e-Medikation zulässigen detaillierten Fehlercodes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-elga-emed-valueset-medikationsplan-http-codes-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-elga-emed-valueset-medikationsplan-http-codes-vs"
      },
      "name" : "At ELGA e-Medikation ValueSet Medikationsplan HTTP Codes",
      "description" : "ValueSet für die zulässigen HTTP Codes beim Medikationsplan schreiben",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-At-Emed-Example-Practitioner-01.html"
      }],
      "reference" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "name" : "Beispiel Allgemeinmedizinerin 01",
      "description" : "Beispiel einer Allgemeinmedizinerin (Dr. Hausärztin).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-At-Emed-Example-Practitioner-02.html"
      }],
      "reference" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-02"
      },
      "name" : "Beispiel Apothekerin 02",
      "description" : "Beispiel einer Apothekerin (Dr. Apothekerin).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-At-Emed-Journey-01-01-01-Parameters-Out-Plan-Read.html"
      }],
      "reference" : {
        "reference" : "Parameters/At-Emed-Journey-01-01-01-Parameters-Out-Plan-Read"
      },
      "name" : "Beispiel Journey 01-01-01: $plan-read Response",
      "description" : "Beispiel einer Response eines $plan-read mit dem initial erstellten, leeren Medikationsplan.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-plan-read"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-01-01-01-Bundle-Medikationsplan.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-01-01-01-Bundle-Medikationsplan"
      },
      "name" : "Beispiel Journey 01-01-01: Medikationsplan-Bundle",
      "description" : "Beispiel eines Medikationsplan-Bundles, mit leerem Medikationsplan (referenziert List-Ressource ohne Einträge).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-at-emed-journey-01-01-02-bundle-geplanteAbgaben.html"
      }],
      "reference" : {
        "reference" : "Bundle/at-emed-journey-01-01-02-bundle-geplanteAbgaben"
      },
      "name" : "Beispiel Journey 01-01-02: Geplante-Abgaben-Bundle",
      "description" : "Beispiel eines leeren Geplante-Abgaben-Bundles.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-at-emed-journey-01-01-03-bundle-durchgefuehrte-abgaben.html"
      }],
      "reference" : {
        "reference" : "Bundle/at-emed-journey-01-01-03-bundle-durchgefuehrte-abgaben"
      },
      "name" : "Beispiel Journey 01-01-03: Durchgeführte Abgaben-Bundle",
      "description" : "Beispiel eines leeren Durchgeführte Abgaben-Bundles.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-At-Emed-Journey-01-02-Parameters-Out-Plan-Read.html"
      }],
      "reference" : {
        "reference" : "Parameters/At-Emed-Journey-01-02-Parameters-Out-Plan-Read"
      },
      "name" : "Beispiel Journey 01-02: $plan-read Response",
      "description" : "Beispiel einer Response eines $plan-read mit dem Medikationsplan und 2 Planeinträgen.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-plan-read"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-At-Emed-Journey-01-02-Parameters-In-Plan-Write.html"
      }],
      "reference" : {
        "reference" : "Parameters/At-Emed-Journey-01-02-Parameters-In-Plan-Write"
      },
      "name" : "Beispiel Journey 01-02: $plan-write Request",
      "description" : "Beispiel eines Request Body eines $plan-write mit dem Medikationsplan-Transaction-Bundle.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-At-Emed-Journey-01-02-Parameters-Out-Plan-Write.html"
      }],
      "reference" : {
        "reference" : "Parameters/At-Emed-Journey-01-02-Parameters-Out-Plan-Write"
      },
      "name" : "Beispiel Journey 01-02: $plan-write Response",
      "description" : "Beispiel einer Response eines $plan-write mit dem persistierten Medikationsplan und 2 neuen Planeinträgen.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-plan-write"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-01-02-Bundle-plan-read-response.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-01-02-Bundle-plan-read-response"
      },
      "name" : "Beispiel Journey 01-02: Medikationsplan-Bundle $plan-read Response",
      "description" : "Beispiel eines Medikationsplan-Bundles, das einen Medikationsplan (List) mit 2 Planeinträgen (MedicationRequests) referenziert.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx"
      },
      "name" : "Beispiel Journey 01-02: Medikationsplan-Transaction-Bundle",
      "description" : "Beispiel eines Transaction Bundles, das einen Medikationsplan (List) mit 2 neuen Planeinträgen (MedicationRequests) enthält.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplantx"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-01-02-Bundle-plan-write-response.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-01-02-Bundle-plan-write-response"
      },
      "name" : "Beispiel Journey 01-02: Plan-Write-Response",
      "description" : "Beispiel einer Response eines plan-write mit 2 neuen Planeinträgen",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan-write-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-6bacfe23-d469-4945-bf3c-90c7e647aa52.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52"
      },
      "name" : "Beispiel Journey 01-02: Planeintrag 1",
      "description" : "Bildet einen Planeintrag mit dem Arzneimittel Ramipril und der Dosierungsanweisung ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-55e4be12-0d10-454c-a85f-cfb5f849e391.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391"
      },
      "name" : "Beispiel Journey 01-02: Planeintrag 2",
      "description" : "Bildet einen Planeintrag mit einer magistralen Zubereitung (Dexpanthenol-Salbe) und der Dosierungsanweisung ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-At-Emed-Journey-01-03-Parameters-Out-GroupIdentifier-Create.html"
      }],
      "reference" : {
        "reference" : "Parameters/At-Emed-Journey-01-03-Parameters-Out-GroupIdentifier-Create"
      },
      "name" : "Beispiel Journey 01-03: $groupidentifier-create Response",
      "description" : "Beispiel einer Response eines $groupidentifier-create mit dem neu erzeugten e-Med GroupIdentifier und dem zugehörigen DataMatrix-Code.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-groupidentifier-create"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-At-Emed-Journey-01-03-Parameters-In-Prescription-Write.html"
      }],
      "reference" : {
        "reference" : "Parameters/At-Emed-Journey-01-03-Parameters-In-Prescription-Write"
      },
      "name" : "Beispiel Journey 01-03: $prescription-write Request",
      "description" : "Beispiel eines Request Body eines $prescription-write mit dem Geplante-Abgaben-Transaction-Bundle.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-At-Emed-Journey-01-03-Parameters-Out-Prescription-Write.html"
      }],
      "reference" : {
        "reference" : "Parameters/At-Emed-Journey-01-03-Parameters-Out-Prescription-Write"
      },
      "name" : "Beispiel Journey 01-03: $prescription-write Response",
      "description" : "Beispiel einer Response eines $prescription-write mit 2 persistierten Geplanten Abgaben.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-prescription-write"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-d9d43746-69ab-4ed8-9200-3a939f7224de.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/d9d43746-69ab-4ed8-9200-3a939f7224de"
      },
      "name" : "Beispiel Journey 01-03: Geplante Abgabe 1",
      "description" : "Bildet eine persistierte Geplante Abgabe des Arzneimittels Ramipril mit Dosierungsanweisungen gemäß zugehörigem Planeintrag ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-f564f377-ef44-4943-9bb2-fccc8a5db24a.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/f564f377-ef44-4943-9bb2-fccc8a5db24a"
      },
      "name" : "Beispiel Journey 01-03: Geplante Abgabe 2",
      "description" : "Bildet eine persistierte Geplante Abgabe mit einer magistralen Zubereitung (Dexpanthenol-Salbe) und den Dosierungsanweisungen gemäß zugehörigem Planeintrag ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx"
      },
      "name" : "Beispiel Journey 01-03: Geplante-Abgaben-Transaction-Bundle",
      "description" : "Beispiel eines Transaction Bundles mit 2 Geplanten Abgaben.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Write-Response.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Write-Response"
      },
      "name" : "Beispiel Journey 01-03: Prescription-Write-Response",
      "description" : "Beispiel einer Response eines prescription-write mit 2 neuen Geplanten Abgaben",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-write-response"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-At-Emed-Example-Device-01.html"
      }],
      "reference" : {
        "reference" : "Device/At-Emed-Example-Device-01"
      },
      "name" : "Beispiel Journey 01: e-Med Fachanwendung",
      "description" : "Beispiel der e-Med Fachanwendung, die den Medikationsplan initial erstellt.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-device-fachanwendung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx"
      },
      "name" : "Beispiel Journey 02-01: Durchgefuehrte-Abgaben-Transaction-Bundle",
      "description" : "Beispiel eines Transaction Bundles mit 2 Durchgeführten Abgaben.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-durchgefuehrteabgaben-tx"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-01.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-01"
      },
      "name" : "Beispiel Journey 02-01: Durchgeführte Abgabe 1",
      "description" : "Bildet eine Durchgeführte Abgabe mit dem Arzneimittel Ramipril gemäß Geplanter Abgabe ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02"
      },
      "name" : "Beispiel Journey 02-01: Durchgeführte Abgabe 2",
      "description" : "Bildet eine Durchgeführte Abgabe mit Besorgerprozess (magistrale Zubereitung Dexpanthenol-Salbe) gemäß Geplanter Abgabe ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Medication-At-Emed-Example-Medication-Magistral-01.html"
      }],
      "reference" : {
        "reference" : "Medication/At-Emed-Example-Medication-Magistral-01"
      },
      "name" : "Beispiel Journey 02: Magistrale Zubereitung",
      "description" : "Beispiel einer magistralen Zubereitung (Dexpanthenol-Salbe).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx"
      },
      "name" : "Beispiel Journey 03-01: Durchgefuehrte-Abgaben-Transaction-Bundle",
      "description" : "Beispiel eines Transaction Bundles mit 1 Durchgeführten Abgaben.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-durchgefuehrteabgaben-tx"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02"
      },
      "name" : "Beispiel Journey 03-01: Durchgeführte Abgabe 1",
      "description" : "Bildet eine Durchgeführte Abgabe mit Beendigung eines Besorgerprozesses (magistrale Zubereitung Dexpanthenol-Salbe) gemäß Geplanter Abgabe ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-05-01-Bundle-plan-read-response.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-05-01-Bundle-plan-read-response"
      },
      "name" : "Beispiel Journey 05-01: Medikationsplan-Bundle $plan-read Response",
      "description" : "Beispiel eines Medikationsplan-Bundles, das einen Medikationsplan (List) mit 2 Planeinträgen (MedicationRequests) referenziert.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-05-01-Bundle-Medikationsplan-Tx.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-05-01-Bundle-Medikationsplan-Tx"
      },
      "name" : "Beispiel Journey 05-01: Medikationsplan-Transaction-Bundle",
      "description" : "Beispiel eines Transaction Bundles, das einen Medikationsplan mit 1 geänderten und 1 unveränderten Planeintrag beinhaltet.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplantx"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-06-02-Bundle-Medikationsplan-Tx.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-06-02-Bundle-Medikationsplan-Tx"
      },
      "name" : "Beispiel Journey 06-02: Medikationsplan-Transaction-Bundle",
      "description" : "Beispiel eines Transaction Bundles, das einen Medikationsplan mit 1 geänderten, 1 unveränderten und 1 neuen Planeintrag beinhaltet.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplantx"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-7128c60c-126d-42b2-b575-dc26a2324b8b.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/7128c60c-126d-42b2-b575-dc26a2324b8b"
      },
      "name" : "Beispiel Journey 06-02: Planeintrag 3",
      "description" : "Bildet einen Planeintrag mit einer Wirkstoffangabe (Metamizol) und Dosierung ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-07-02-Bundle-Medikationsplan-Tx.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-07-02-Bundle-Medikationsplan-Tx"
      },
      "name" : "Beispiel Journey 07-02: Medikationsplan-Transaction-Bundle",
      "description" : "Beispiel eines Transaction Bundles, das einen Medikationsplan mit 1 geänderten, 1 abgelaufenen und 1 neuen Planeintrag beinhaltet.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplantx"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-At-Emed-Journey-07-03-Mr-Geplante-Abgabe-03.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Journey-07-03-Mr-Geplante-Abgabe-03"
      },
      "name" : "Beispiel Journey 07-03: Geplante Abgabe 1",
      "description" : "Bildet eine Geplante Abgabe von Magelan-Tropfen mit Dosierungsanweisungen gemäß zugehörigem Planeintrag ab.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-At-Emed-Journey-07-03-Bundle-Geplante-Abgaben-Tx.html"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-07-03-Bundle-Geplante-Abgaben-Tx"
      },
      "name" : "Beispiel Journey 07-03: Geplante-Abgaben-Transaction-Bundle",
      "description" : "Beispiel eines Transaction Bundles mit 1 Geplanten Abgabe.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-At-Emed-Example-Practitioner-03.html"
      }],
      "reference" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-03"
      },
      "name" : "Beispiel Krankenhausärztin",
      "description" : "Beispiel Ärztin im Krankenhaus (Dr. Krankenhaus).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Medication-at-emed-journey-medication-ramipril.html"
      }],
      "reference" : {
        "reference" : "Medication/at-emed-journey-medication-ramipril"
      },
      "name" : "Beispiel Medikation Ramipril",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-AtEmedExampleDosageStandardAdministration1.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/AtEmedExampleDosageStandardAdministration1"
      },
      "name" : "Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 1",
      "description" : "Medikationsplaneintrag mit Dosierung im Tageszeitenschema (morgens, mittags, abends, nachts): 1-0-1-0.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-AtEmedExampleDosageStandardAdministration2.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/AtEmedExampleDosageStandardAdministration2"
      },
      "name" : "Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 2",
      "description" : "Medikationsplaneintrag mit Dosierung im Tageszeitenschema",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-AtEmedExampleDosageStandardAdministration3.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/AtEmedExampleDosageStandardAdministration3"
      },
      "name" : "Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 3",
      "description" : "Medikationsplaneintrag mit Dosierung im Tageszeitenschema",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-At-Emed-Example-Organization-02.html"
      }],
      "reference" : {
        "reference" : "Organization/At-Emed-Example-Organization-02"
      },
      "name" : "Beispiel Organisation Apotheke",
      "description" : "Beispiel Organisation: Apotheke.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-At-Emed-Example-Organization-01.html"
      }],
      "reference" : {
        "reference" : "Organization/At-Emed-Example-Organization-01"
      },
      "name" : "Beispiel Organisation Hausärztin",
      "description" : "Beispiel Organisation: Ordination einer Hausärztin.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-At-Emed-Example-Organization-03.html"
      }],
      "reference" : {
        "reference" : "Organization/At-Emed-Example-Organization-03"
      },
      "name" : "Beispiel Organisation Krankenhaus",
      "description" : "Beispiel Organisation: Krankenhaus.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-At-Emed-Example-Organization-04.html"
      }],
      "reference" : {
        "reference" : "Organization/At-Emed-Example-Organization-04"
      },
      "name" : "Beispiel Organisation Urlaubsvertretung",
      "description" : "Beispiel Organisation: Ordination der Urlaubsvertretung.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-At-Emed-Example-Patient-01.html"
      }],
      "reference" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "name" : "Beispiel Patient 01",
      "description" : "Beispiel eines Patienten (Anton Mustermann).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-At-Emed-Example-Practitioner-04.html"
      }],
      "reference" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-04"
      },
      "name" : "Beispiel Urlaubsvertreung",
      "description" : "Beispiel einer Allgemeinmedizinerin (Dr. Urlaubsvertreung).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-dispense-discard.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-dispense-discard"
      },
      "name" : "e-Med Operation für $dispense-discard",
      "description" : "Operation für das Stornieren von Durchgeführten Abgaben",
      "exampleBoolean" : false,
      "groupingId" : "OpDispenseDiscard"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-dispense-write.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-dispense-write"
      },
      "name" : "e-Med Operation für $dispense-write",
      "description" : "Die $dispense-write Operation wird aufgerufen, wenn Durchgeführte Abgaben geschrieben werden sollen.",
      "exampleBoolean" : false,
      "groupingId" : "OpDispenseWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-groupidentifier-create.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-groupidentifier-create"
      },
      "name" : "e-Med Operation für $groupidentifier-create",
      "description" : "Die $groupidentifier-create Operation wird aufgerufen, wenn ein neuer GroupIdentifer (ohne Patientenbezug) vom Server angefordert werden soll.",
      "exampleBoolean" : false,
      "groupingId" : "OpGroupidentifierCreate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-groupidentifier-search.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-groupidentifier-search"
      },
      "name" : "e-Med Operation für $groupidentifier-search",
      "description" : "Die $groupidentifier-prescription-search Operation wird aufgerufen, wenn ein Zugriff auf Geplante und Durchgeführte Abgaben mittels e-Med GroupIdentifier erfolgen soll.",
      "exampleBoolean" : false,
      "groupingId" : "OpGroupidentifierSearch"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-plan-read.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-plan-read"
      },
      "name" : "e-Med Operation für $plan-read",
      "description" : "Die $plan-read Operation ruft den aktuellen Medikationsplan eines\nELGA-Teilnehmers in einem für die Bearbeitung durch den GDA aufbereiteten\nZustand ab.",
      "exampleBoolean" : false,
      "groupingId" : "OpPlanRead"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-plan-write.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-plan-write"
      },
      "name" : "e-Med Operation für $plan-write",
      "description" : "Die $plan-write Operation wird aufgerufen, wenn ein Medikationsplan geschrieben wird.",
      "exampleBoolean" : false,
      "groupingId" : "OpPlanWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-prescription-discard.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-prescription-discard"
      },
      "name" : "e-Med Operation für $prescription-discard",
      "description" : "Operation für das Stornieren von Geplanten Abgaben",
      "exampleBoolean" : false,
      "groupingId" : "OpPrescriptionDiscard"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-prescription-write.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-prescription-write"
      },
      "name" : "e-Med Operation für $prescription-write",
      "description" : "Die $prescription-write Operation wird aufgerufen, wenn Geplante Abgaben geschrieben werden sollen.",
      "exampleBoolean" : false,
      "groupingId" : "OpPrescriptionWrite"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-elga-emed-operation-reference-plan.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-elga-emed-operation-reference-plan"
      },
      "name" : "e-Med Operation für $reference-plan",
      "description" : "Operation für das Verknüpfen von durchgeführten Abgaben und Planeinträgen.",
      "exampleBoolean" : false,
      "groupingId" : "OpReferencePlan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-elga-medikationrezeptart.html"
      }],
      "reference" : {
        "reference" : "ValueSet/elga-medikationrezeptart"
      },
      "name" : "ELGA_MedikationRezeptart",
      "description" : "**Description:** ELGA ValueSet for Prescription type\n\n**Beschreibung:** ELGA ValueSet für RezeptArt",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-medikationrezeptart.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/medikationrezeptart"
      },
      "name" : "MedikationRezeptart",
      "description" : "**Description:** ELGA Codelist for Prescription type\n\n**Beschreibung:** ELGA Codeliste für RezeptArt",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "scope_and_content.html"
        }],
        "nameUrl" : "scope_and_content.html",
        "title" : "Umfang und Inhalt",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "background.html"
        }],
        "nameUrl" : "background.html",
        "title" : "Hintergrund",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "challenges.html"
        }],
        "nameUrl" : "challenges.html",
        "title" : "Herausforderungen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "design_choices.html"
        }],
        "nameUrl" : "design_choices.html",
        "title" : "Designentscheidungen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "workflowmanagement.html"
        }],
        "nameUrl" : "workflowmanagement.html",
        "title" : "Workflowmanagement",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "interactions.html"
        }],
        "nameUrl" : "interactions.html",
        "title" : "Transaktionen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "actors.html"
        }],
        "nameUrl" : "actors.html",
        "title" : "Akteure",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dosages.html"
        }],
        "nameUrl" : "dosages.html",
        "title" : "Dosierungen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "medication.html"
        }],
        "nameUrl" : "medication.html",
        "title" : "Medikation - Repräsentation von Arzneimitteln",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "overview_sub_use_case.html"
        }],
        "nameUrl" : "overview_sub_use_case.html",
        "title" : "Use Cases Übersicht (fachlich und technisch)",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "Sub_UC_eMed_01.html"
          }],
          "nameUrl" : "Sub_UC_eMed_01.html",
          "title" : "​Technische Use Cases für Medikationsplan lesen (UC_eMed_01)",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "Sub_UC_eMed_02.html"
          }],
          "nameUrl" : "Sub_UC_eMed_02.html",
          "title" : "​Technische Use Cases für Medikationsplan schreiben (UC_eMed_02)",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "Sub_UC_eMed_03.html"
          }],
          "nameUrl" : "Sub_UC_eMed_03.html",
          "title" : "​Technische Use Cases für Geplante und Durchgeführte Abgaben lesen (UC_eMed_03)",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "Sub_UC_eMed_04.html"
          }],
          "nameUrl" : "Sub_UC_eMed_04.html",
          "title" : "​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_04)",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "Sub_UC_eMed_05.html"
          }],
          "nameUrl" : "Sub_UC_eMed_05.html",
          "title" : "​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_05)",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "patient_journey.html"
          }],
          "nameUrl" : "patient_journey.html",
          "title" : "Patient Journey",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "contributors.html"
          }],
          "nameUrl" : "contributors.html",
          "title" : "Autoren und Mitwirkende",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "downloads.html"
          }],
          "nameUrl" : "downloads.html",
          "title" : "Download",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "publication_info.html"
          }],
          "nameUrl" : "publication_info.html",
          "title" : "Publikationsinformationen",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "dependencies.html"
          }],
          "nameUrl" : "dependencies.html",
          "title" : "Dependencies",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "copyright.html"
          }],
          "nameUrl" : "copyright.html",
          "title" : "Copyright",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "imprint.html"
          }],
          "nameUrl" : "imprint.html",
          "title" : "Impressum",
          "generation" : "markdown"
        }]
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/assets"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
