# HL7.AT.FHIR.ELGA.EMED.R4\Start - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Start**

## Start

# e-Medikation (R4)

Der vorliegende **FHIR Implementation Guide e‑Medikation R4** ersetzt die bestehende, auf CDA basierende Version 2 der e‑Medikation.

* Mit Version 4 wird die bestehende Umsetzung der e‑Medikation um die Funktionalität des e‑Medikationsplans ergänzt.
* Darüber hinaus sollen alle geplanten und durchgeführten Abgaben von Medikamenten in der e-Abgabe als Teil von e-Medikation abgebildet werden.

Der **e‑Medikationsplan** bietet Behandler:innen und Patient:innen eine vollständige, strukturierte Übersicht über die aktuelle sowie die historische Medikation. Zentrales Element ist die Verordnung, welche im jeweiligen e‑Medikationsplaneintrag mit sämtlichen relevanten Einnahmedetails digital abgebildet wird. Diese Verordnung bildet die Grundlage für die Folgeprozesse Weiterverordnung, Rezeptierung und Abgabe. Die Einsicht in geplante und durchgeführte Abgaben (mit und ohne Medikationsplanbezug) in **e-Abgabe** soll die Vollständigkeit der Information zur Medikation gewährleisten.

Die Einführung des E-Medikationsplans gewährleistet, dass alle für die Therapieentscheidung relevanten Informationen verfügbar sind, Doppelverordnungen vermieden werden und die Patient:innensicherheit erhöht wird. Darüber hinaus fungiert der e‑Medikationsplan als Datengrundlage für die automatisierte Übernahme relevanter Medikationsinformationen in die ELGA Patient Summary.

Die technische Umsetzung des E-Medikationsplans sowie der e-Abgabe erfolgt auf Basis des HL7® FHIR®-Standards, um eine nachhaltige, interoperable und kosteneffiziente Lösung zu gewährleisten. Die vorliegende Implementierung leistet einen Beitrag zur Weiterentwicklung sowohl der österreichischen eHealth-Strategie als auch der Anforderungen des European Health Data Space (EHDS). In Anbetracht der ab 2029 vorgesehenen Sekundärnutzung medizinischer Daten im EHDS werden durch dieses Implementation Guide die technischen Grundlagen geschaffen, um eine datenschutzkonforme Nutzung von Medikationsdaten für gemeinwohlorientierte Forschung und gesundheitspolitische Steuerung zu ermöglichen.

Das Implementation Guide umfasst zudem die Definition der FHIR-APIs für die Integration der e-Medikation in die ELGA-Infrastruktur.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.elga.emed.r4",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ImplementationGuide/hl7.at.fhir.elga.emed.r4",
  "version" : "0.1.1",
  "name" : "ELGAeMedikationR4",
  "title" : "ELGA e-Medikation (R4) ENTWURF",
  "status" : "draft",
  "date" : "2026-03-03T08:59:33+00:00",
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
    "version" : "7.0.1"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_fhir_eu_mpd",
    "uri" : "http://hl7.eu/fhir/mpd/ImplementationGuide/hl7.fhir.eu.mpd",
    "packageId" : "hl7.fhir.eu.mpd",
    "version" : "0.1.0-ballot"
  },
  {
    "id" : "hl7_at_fhir_core_r4",
    "uri" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ImplementationGuide/hl7.at.fhir.core.r4",
    "packageId" : "hl7.at.fhir.core.r4",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_at_fhir_elga_aps_r4",
    "uri" : "https://fhir.hl7.at/elga/aps/r4/ImplementationGuide/hl7.at.fhir.elga.aps.r4",
    "packageId" : "hl7.at.fhir.elga.aps.r4",
    "version" : "current"
  },
  {
    "id" : "ihe_pharm_mpd_r4",
    "uri" : "https://profiles.ihe.net/PHARM/MPD",
    "packageId" : "ihe.pharm.mpd.r4",
    "version" : "1.0.0-comment-2"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
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
        "valueString" : "autoload-resources"
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
        "valueString" : "path-liquid"
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
        "valueString" : "path-liquid"
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
        "valueString" : "path-qa"
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
        "valueString" : "path-temp"
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
        "valueString" : "path-output"
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
        "valueString" : "path-suppressed-warnings"
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
        "valueString" : "path-history"
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
        "valueString" : "template-html"
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
        "valueString" : "template-md"
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
        "valueString" : "apply-contact"
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
        "valueString" : "apply-context"
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
        "valueString" : "apply-copyright"
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
        "valueString" : "apply-jurisdiction"
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
        "valueString" : "apply-license"
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
        "valueString" : "apply-publisher"
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
        "valueString" : "apply-version"
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
        "valueString" : "apply-wg"
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
        "valueString" : "active-tables"
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
        "valueString" : "fmm-definition"
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
        "valueString" : "propagate-status"
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
        "valueString" : "excludelogbinaryformat"
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
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#0.9.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2025+"
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
        "valueCode" : "path-liquid"
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
        "valueCode" : "path-liquid"
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
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/At-Emed-Example-Durchgefuehrte-Abgabe-01"
      },
      "name" : "Beispiel Durchgeführte Abgabe 1",
      "description" : "Beispiel Durchgeführte Abgabe 1",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-md-durchgefuehrte-abgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Example-Mr-Planeintrag"
      },
      "name" : "Beispiel Example Medikationsplaneintrag",
      "description" : "Bildet einen Medikationsplaneintrag mit dem Medikament EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Substance"
      }],
      "reference" : {
        "reference" : "Substance/At-Emed-Example-Substance-Clotrimazol"
      },
      "name" : "Beispiel Example: Substance Clotrimazol",
      "description" : "Beispiel einer Substance Clotrimazol.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Substance"
      }],
      "reference" : {
        "reference" : "Substance/At-Emed-Example-Substance-Hydrocortison"
      },
      "name" : "Beispiel Example: Substance Hydrocortison",
      "description" : "Beispiel einer Substance Hydrocortison.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-01-Bundle-Medikationsplan"
      },
      "name" : "Beispiel Journey 01: Collection Bundle",
      "description" : "Beispiel eines Collection Bundles, mit leerem Mediaktionsplan (referenziert List-Ressource ohne Einträge).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      }],
      "reference" : {
        "reference" : "Device/At-Emed-Example-Device-01"
      },
      "name" : "Beispiel Journey 01: e-Med Fachanwendung",
      "description" : "Beispiel der e-Med Fachanwendung, die den Mediaktionsplan initial erstellt.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      }],
      "reference" : {
        "reference" : "List/At-Emed-Journey-01-List-Medikationsplan"
      },
      "name" : "Beispiel Journey 01: Leerer Medikationsplan",
      "description" : "Beispiel eines leeren Mediaktionsplans (List-Ressource ohne Einträge)",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-01-Bundle-Tx-Medikationsplan"
      },
      "name" : "Beispiel Journey 01: Transaction Bundle",
      "description" : "Beispiel eines Transaction Bundles, mit leerem Mediaktionsplan (referenziert List-Ressource ohne Einträge).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-tx-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-02-Bundle-Medikationsplan"
      },
      "name" : "Beispiel Journey 02: Collection Bundle",
      "description" : "Beispiel eines Collection Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) referenziert.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/At-Emed-Example-Medication-Magistral-01"
      },
      "name" : "Beispiel Journey 02: Magistrale Zubereitung",
      "description" : "Beispiel einer magistralen Zubereitung (Medication) - Salbe.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      }],
      "reference" : {
        "reference" : "List/At-Emed-Journey-02-List-Medikationsplan"
      },
      "name" : "Beispiel Journey 02: Medikationsplan",
      "description" : "Beispiel eines Medikationsplans (List), der 2 Planeinträge (MedicationReqeusts) referenziert und Informationen über Reihenfolge und Änderungsstatus speichert.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-01"
      },
      "name" : "Beispiel Journey 02: Medikationsplaneintrag 1",
      "description" : "Bildet einen Medikationsplaneintrag mit dem Medikament EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-02"
      },
      "name" : "Beispiel Journey 02: Medikationsplaneintrag 2",
      "description" : "Bildet einen Medikationsplaneintrag mit einer Referenz auf eine magistrale Zubereitung und zugehörigen Dosierungsanweisungen ab (MedicationRequest).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-02-Bundle-Tx-Medikationsplan"
      },
      "name" : "Beispiel Journey 02: Transaction Bundle",
      "description" : "Beispiel eines Transaction Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) beinhaltet.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-tx-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Journey-03-Mr-Geplante-Abgabe"
      },
      "name" : "Beispiel Journey 03: Geplante Abgabe",
      "description" : "Bildet eine geplante Abgabe des Medikaments EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-geplante-abgabe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-05-a-Bundle-Medikationsplan"
      },
      "name" : "Beispiel Journey 05-a: Collection Bundle mit geänderter Reihenfolge der Planeinträge.",
      "description" : "Beispiel eines Collection Bundles, mit geänderter Reihenfolge der Medikationsplaneinträge (referenziert List-Ressource mit Einträgen).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      }],
      "reference" : {
        "reference" : "List/At-Emed-Journey-05-a-List-Reihenfolge"
      },
      "name" : "Beispiel Journey 05-a: Reihenfolge der Planeinträge ändern",
      "description" : "Beispiel Änderung der Reihenfolge der Medikationsplaneinträge (MedicationReqeusts) durch den Patienten.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-05-a-Bundle-Medikationsplan-Tx"
      },
      "name" : "Beispiel Journey 05-a: Transaction Bundle zur Änderung der Reihenfolge der Medikationsplaneinträge.",
      "description" : "Beispiel eines Transaction Bundles, zur Änderung der Reihenfolge der Medikationsplaneinträge (referenziert List-Ressource mit MedicationRequests.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-tx-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-05-b-Bundle-Medikationsplan"
      },
      "name" : "Beispiel Journey 05-b: Collection Bundle",
      "description" : "Beispiel eines Collection Bundles mit geändertem und abgesetztem Planeintrag.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Journey-05-b-Mr-Planeintrag-01"
      },
      "name" : "Beispiel Journey 05-b: Medikationsplaneintrag 1",
      "description" : "Geänderter Medikationsplaneintrag mit dem Medikament EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest).",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      }],
      "reference" : {
        "reference" : "List/At-Emed-Journey-05-b-List-Aenderung"
      },
      "name" : "Beispiel Journey 05-b: Reihenfolge der Planeinträge ändern",
      "description" : "Beispiel: Medikation absetzen und ändern durch einen anderen GDA.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/At-Emed-Journey-05-b-Bundle-Tx-Medikationsplan"
      },
      "name" : "Beispiel Journey 05-b: Transaction Bundle",
      "description" : "Beispiel eines Transaction Bundles mit geändertem und abgesetztem Planeintrag.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-tx-medikationsplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-1010"
      },
      "name" : "Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema",
      "description" : "Medikationsplaneintrag mit Dosierung im Tageszeitenschema (morgens, mittags, abends, nachts): 1-0-1-0.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Zeit-1tg"
      },
      "name" : "Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema",
      "description" : "Medikationsplaneintrag mit Dosierung im Tageszeitenschema (morgens, mittags, abends, nachts): 1-0-1-0.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/At-Emed-Example-Organization-Apo-01"
      },
      "name" : "Beispiel Organisation Apotheke 01",
      "description" : "Beispiel einer Apotheke als Organisation.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "name" : "Beispiel Patient 01",
      "description" : "Beispiel eines Patienten.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "name" : "Beispiel Ärztin 01",
      "description" : "Beispiel einer behandelnden Ärztin.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-02"
      },
      "name" : "Beispiel Ärztin 02",
      "description" : "Beispiel einer ursprünglich eine Medikation verordnenden Ärztin (Fremdmedikation).",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-dosage"
      },
      "name" : "ELGA e-Med Dosage",
      "description" : "Dosage",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-md-durchgefuehrte-abgabe"
      },
      "name" : "ELGA e-Med Durchgeführte Abgabe",
      "description" : "Dokumentiert eine durchgeführte Abgabe eines Arzneimittels (\"MedicationDispense\"-Ressource). \nSofern eine zugehörige geplante Abgabe vorliegt, können Abweichungen hinsichtlich der Dosierung oder einer möglichen\nSubstitution des Medikaments in der durchgeführten Abgabe dokumentiert werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-mr-geplante-abgabe"
      },
      "name" : "ELGA e-Med Geplante Abgabe",
      "description" : "Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab (\"MedicationRequest\"-Ressource).\nSie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation.\nAls groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird.\nWerden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/GeplanteAbgabeStatusVS"
      },
      "name" : "ELGA e-Med Geplante Abgabe Status ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen eines Status einer geplanten Abgabe (MedicationRequest).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MedicationRequestCategoryCS"
      },
      "name" : "ELGA e-Med MedicationRequest Kategorie CodeSystem",
      "description" : "Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MedicationRequestCategoryVS"
      },
      "name" : "ELGA e-Med MedicationRequest Kategorie ValueSet",
      "description" : "ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-medication"
      },
      "name" : "ELGA e-Med Medikation",
      "description" : "Bildet ein Arzneimittel in der \"Medication\"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, geplante Abgabe und durchgeführte Abgabe. Aktuell nur geprüft im Kontext Planeintrag.\nUnterschieden werden folgende Fälle:\n1. Arzneimittel besitzt eine PZN und wird über diese identifiziert, die weiteren Informationen werden durch die Fachanwendung angereichert.\n    a. Identifikation nur über PZN: eine Befüllung jener Felder, die über die ASP-Liste angereichert werden können, durch den GDA wird technisch verhindert (Invariante oder eigene Medication Ressource).\n    b. Identifikation über PZN und Handelsname: damit eine Prüfung auf Übereinstimmung durchgeführt werden kann. TODO: Juristisch zu prüfen. \n3. Arzneimittel besitzt keine PZN, alle benötigten Informationen sind verpflichtend vom GDA zu befüllen:\n    a. Bei Verschreibung von Wirkstoffen\n    b. Bei magistraler Anwendung, Infusionen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-list-medikationsplan"
      },
      "name" : "ELGA e-Med Medikationsplan",
      "description" : "Bildet den Medikationsplan eines ELGA-Teilnehmers ab (\"List\"-Ressource). \nDie Liste beinhaltet Referenzen auf 0..* Medikationsplaneinträge (MedicationRequests), die alle verordneten Arzneimittel und deren Dosierung abbilden.\nDie Reihenfolge der Listenelemente kann duch den User festgelegt werden. Jedes Listenelement enthält einen Änderungsstatus (weitere Elemente sind noch zu klären).\n\nTODO: Invariante, dass überall in der List der gleiche Patient enthalten sein muss",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-bundle-medikationsplan"
      },
      "name" : "ELGA e-Med Medikationsplan Collection Bundle",
      "description" : "Das Bundle vom Typ Collection bestehend aus: \n- 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus) \n- 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MedikationsplanEmptyReasonVS"
      },
      "name" : "ELGA e-Med Medikationsplan Empty Reason Value Set",
      "description" : "ValueSet für zulässige Ausprägungen des elements emptyReason Status eines Medikationsplaneintrags (MedicationRequest).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-bundle-tx-medikationsplan"
      },
      "name" : "ELGA e-Med Medikationsplan Transaction Bundle",
      "description" : "Das Bundle vom Typ Transaction dient dem schreibenden Zugriff auf den ELGA Medikationsplan bestehend aus: \n- 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus) \n- 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MedikationsplaneintragStatusVS"
      },
      "name" : "ELGA e-Med Medikationsplaneintrag Status Value Set",
      "description" : "ValueSet für zulässige Ausprägungen eines Status eines Medikationsplaneintrags (MedicationRequest).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-mr-planeintrag"
      },
      "name" : "ELGA e-Med Planeintrag",
      "description" : "Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA-Teilnehmers ab (\"MedicationRequest\"-Ressource).\nEr enthält genau ein Arzneimittel und dessen Dosierung.\nKann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen. Verwendet R5 Backport Extensions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-substance"
      },
      "name" : "ELGA e-Med Substanz",
      "description" : "Dokumentation der Substanz eines Inhaltsstoffes eines Arzneimittels, sofern es nicht kodiert vorliegt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-emed-timing"
      },
      "name" : "ELGA e-Med Timing",
      "description" : "ELGA e-Med Timing",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Freitext"
      },
      "name" : "Medikationsplaneintrag mit Freitext-Dosierung",
      "description" : "Medikationsplaneintrag mit Dosierung im Tageszeitenschema (morgens, mittags, abends, nachts): 1-0-1-0.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"
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
        "title" : "Start",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "requirements.html"
        }],
        "nameUrl" : "requirements.html",
        "title" : "Die \"e-Medikation\"",
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
          "valueUrl" : "anwendungsfaelle.html"
        }],
        "nameUrl" : "anwendungsfaelle.html",
        "title" : "Überblick Anwendungsfälle",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "UC_eMed_05.html"
          }],
          "nameUrl" : "UC_eMed_05.html",
          "title" : "UC_eMed_05 - Medikationsplan lesen",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "UC_eMed_06.html"
          }],
          "nameUrl" : "UC_eMed_06.html",
          "title" : "UC_eMed_06 - Medikationsplan schreiben",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "UC_eMed_07.html"
          }],
          "nameUrl" : "UC_eMed_07.html",
          "title" : "UC_eMed_07 - Geplante und durchgeführte Abgaben lesen",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "UC_eMed_08.html"
          }],
          "nameUrl" : "UC_eMed_08.html",
          "title" : "UC_eMed_08 - Geplante Abgabe schreiben",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "UC_eMed_09.html"
          }],
          "nameUrl" : "UC_eMed_09.html",
          "title" : "UC_eMed_09 - Durchgeführte Abgabe schreiben",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "mapping.html"
          }],
          "nameUrl" : "mapping.html",
          "title" : "Mappings",
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
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
