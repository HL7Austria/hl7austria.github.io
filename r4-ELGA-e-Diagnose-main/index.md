# HL7.AT.FHIR.ELGA.EDIAG.R4\Home - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Home**

## Home

# e-Diagnose (DRAFT)

Dieser Leitfaden beschreibt die Einführung der ELGA-Anwendung **e-Diagnose**, die eine standardisierte Erfassung, Dokumentation und Verwaltung von Diagnosen, Prozeduren, Allergien und Intoleranzen in Österreich ermöglicht.

Ziel der Anwendung ist es, einen schnellen Zugriff auf die bestehenden Informationen zu ermöglichen, Doppeluntersuchungen zu vermeiden und die Behandlungsqualität nachhaltig zu verbessern.

Mit der **e-Diagnose** wird der Informationsaustausch zu Diagnosen, Prozeduren, Allergien und Intoleranzen im intra- und extramuralen Bereich deutlich vereinfacht.

Die Anwendung bietet eine **vollständige, gemeinsame Dokumentation in ELGA** und bildet gleichzeitig die **Grundlage für die Patient Summary**.

Die technische Umsetzung der e-Diagnose erfolgt auf Basis des HL7® FHIR®-Standards, um eine nachhaltige, interoperable und kosteneffiziente Lösung zu gewährleisten. Die vorliegende Implementierung leistet einen Beitrag zur Weiterentwicklung sowohl der österreichischen eHealth-Strategie als auch der Anforderungen des European Health Data Space (EHDS). In Anbetracht der ab 2029 vorgesehenen Sekundärnutzung medizinischer Daten im EHDS werden durch diesen Implementation Guide die technischen Grundlagen geschaffen, um eine datenschutzkonforme Nutzung strukturierter klinischer Informationen – insbesondere Diagnosen, Prozeduren, Allergien und Intoleranzen – für gemeinwohlorientierte Forschung, Qualitätssicherung und gesundheitspolitische Steuerung zu ermöglichen.

Der Implementation Guide umfasst zudem die Definition der FHIR-APIs für die Integration der e-Diagnose in die ELGA-Infrastruktur sowie den standardisierten Austausch, die Speicherung und die Verarbeitung von Diagnosen, Prozeduren, Allergien und Intoleranzen zwischen den beteiligten Gesundheitssystemen. Dadurch wird eine semantisch interoperable und sektorenübergreifende Verfügbarkeit dieser Informationen unterstützt.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.elga.ediag.r4",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ImplementationGuide/hl7.at.fhir.elga.ediag.r4",
  "version" : "0.1.0",
  "name" : "ELGAeDiagnoseR4",
  "title" : "ELGA e-Diagnose R4 (Draft)",
  "status" : "draft",
  "date" : "2026-09-09T14:48:33+00:00",
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
  "description" : "The FHIR® implementation guide ELGA e-Diagnose (R4)",
  "packageId" : "hl7.at.fhir.elga.ediag.r4",
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
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_at_fhir_core_r4",
    "uri" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ImplementationGuide/hl7.at.fhir.core.r4",
    "packageId" : "hl7.at.fhir.core.r4",
    "version" : "2.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
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
        "valueString" : "display-warnings"
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
        "valueString" : "https://fhir.hl7.at/elga/ediag/r4/history.html"
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
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
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
        "valueCode" : "display-warnings"
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
        "valueString" : "https://fhir.hl7.at/elga/ediag/r4/history.html"
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
        "valueString" : "List"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "List-ListAllergyExample1.html"
      }],
      "reference" : {
        "reference" : "List/ListAllergyExample1"
      },
      "name" : "Allergie Summary-Liste mit einem Summary-Eintrag",
      "description" : "Beispiel einer Summary-Liste mit einem Eintrag, der auf eine Allergie verweist.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-ediag-allergyintolerance-codes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-ediag-allergyintolerance-codes"
      },
      "name" : "AT e-Diagnose AllergyIntolerance Value Set",
      "description" : "ValueSet mit Codes für Substanzen und Stoffe, die als Auslöser von Allergien oder Intoleranzen erfasst werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-ediag-diagnosen-codes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-ediag-diagnosen-codes"
      },
      "name" : "AT e-Diagnose Diagnosen Value Set",
      "description" : "Value-Set für die Codierung von Diagnosen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-ediag-procedure-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-ediag-procedure-status"
      },
      "name" : "AT e-Diagnose Procedure Status Value Set",
      "description" : "ValueSet zur Kennzeichnung, ob eine Prozedur durchgeführt oder irrtümlich dokumentiert wurde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-ediag-prozeduren-codes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-ediag-prozeduren-codes"
      },
      "name" : "AT e-Diagnose Procedures Value Set",
      "description" : "ValueSet mit SNOMED CT Prozeduren (is-a Procedure). Dient als vollständige Alternative zum eingeschränkten IPS ValueSet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-ediag-reaction-time-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-ediag-reaction-time-vs"
      },
      "name" : "AT e-Diagnose Reaction Time Value Set",
      "description" : "ValueSet mit zulässigen Ausprägungen der Reaktionszeit einer allergischen Reaktion.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-ediag-allergyintolerance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-ediag-allergyintolerance"
      },
      "name" : "AT ELGA e-Diagnose AllergyIntolerance",
      "description" : "Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-ediag-condition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-ediag-condition"
      },
      "name" : "AT ELGA e-Diagnose Condition",
      "description" : "Das AT e-Diagnose Condition-Profil leitet sich vom Condition-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-ediag-list.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-ediag-list"
      },
      "name" : "AT ELGA e-Diagnose List",
      "description" : "Das AT e-Diagnose List-Profil dient der strukturierten Listung von Einträgen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-ediag-procedure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-ediag-procedure"
      },
      "name" : "AT ELGA e-Diagnose Procedure",
      "description" : "Das AT e-Diagnose Procedure-Profil leitet sich vom Procedure-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-ediag-ext-entered-in-error.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-ediag-ext-entered-in-error"
      },
      "name" : "AT ELGA Entered In Error",
      "description" : "Kennzeichnet, ob eine Information fehlerhaft eingegeben wurde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-ediag-reaction-time.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-ediag-reaction-time"
      },
      "name" : "AT ELGA Reaktionszeit",
      "description" : "Zeitlicher Verlauf der Manifestation (<6h, 6-24h, >24h, unknown)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-at-elga-ediag-reported.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-elga-ediag-reported"
      },
      "name" : "AT ELGA Reported (Fremdangabe)",
      "description" : "Kennzeichnet, ob eine Information fremdberichtet ist (z. B. vom Patienten oder Dritten).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-DeviceExample.html"
      }],
      "reference" : {
        "reference" : "Device/DeviceExample"
      },
      "name" : "Beispiel Device",
      "description" : "Beispielinstanz eines Devices dass die Fachanwendung initial erstellt",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "List-ListExample01.html"
      }],
      "reference" : {
        "reference" : "List/ListExample01"
      },
      "name" : "Beispiel einer leeren Summary-Liste",
      "description" : "Initiale Summary-Liste ohne Summary-Einträge.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PatientExample.html"
      }],
      "reference" : {
        "reference" : "Patient/PatientExample"
      },
      "name" : "Beispiel Patient",
      "description" : "Beispielinstanz eines Patienten",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-PractitionerExample.html"
      }],
      "reference" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "name" : "Beispiel Practitioner",
      "description" : "Beispielinstanz eines Arztes",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-DiagnoseEnteredInErrorExample.html"
      }],
      "reference" : {
        "reference" : "Condition/DiagnoseEnteredInErrorExample"
      },
      "name" : "Beispiel stornierte Diagnose",
      "description" : "Beispielinstanz einer stornierten Diagnose",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AllergyIntolerance-AllergySummaryExample1.html"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergySummaryExample1"
      },
      "name" : "Beispielinstanz einer Allergie für die Summary-Liste",
      "description" : "Beispiel einer bestätigten Allergie",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ConditionGesamtlisteExample1.html"
      }],
      "reference" : {
        "reference" : "Condition/ConditionGesamtlisteExample1"
      },
      "name" : "Beispielinstanz einer Diagnose für die Gesamtliste",
      "description" : "Beispiel Diagnose, aktuelle Beschwerden des Patienten",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ConditionGesamtlisteExample2.html"
      }],
      "reference" : {
        "reference" : "Condition/ConditionGesamtlisteExample2"
      },
      "name" : "Beispielinstanz einer Diagnose für die Gesamtliste",
      "description" : "Beispiel Diagnose, aktuelle Beschwerden des Patienten",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ConditionGesamtlisteExample3.html"
      }],
      "reference" : {
        "reference" : "Condition/ConditionGesamtlisteExample3"
      },
      "name" : "Beispielinstanz einer Diagnose für die Gesamtliste",
      "description" : "Beispiel Diagnose, aktuelle Beschwerden des Patienten",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ConditionGesamtlisteExample4.html"
      }],
      "reference" : {
        "reference" : "Condition/ConditionGesamtlisteExample4"
      },
      "name" : "Beispielinstanz einer Diagnose für die Summary",
      "description" : "Beispiel Diagnose, aktuelle Beschwerden des Patienten",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ConditionSummaryExample1.html"
      }],
      "reference" : {
        "reference" : "Condition/ConditionSummaryExample1"
      },
      "name" : "Beispielinstanz einer Diagnose für die Summary-Liste",
      "description" : "Beispiel einer dauerhaften Diagnose",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-ProcedureExample1.html"
      }],
      "reference" : {
        "reference" : "Procedure/ProcedureExample1"
      },
      "name" : "Beispielinstanz einer Prozedur für die Summary-Liste",
      "description" : "Beispiel einer Prozedur",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "List-ListConditionExample1.html"
      }],
      "reference" : {
        "reference" : "List/ListConditionExample1"
      },
      "name" : "Condition Summary-Liste mit einem Summary-Eintrag",
      "description" : "Beispiel einer Summary-Liste mit einem Eintrag, der auf eine Diagnose verweist.",
      "exampleCanonical" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-ediag-operation-diagnose-delete.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-ediag-operation-diagnose-delete"
      },
      "name" : "e-Diagnose Operation $delete",
      "description" : "Die `$delete`-Operation löscht eine bestimmte Diagnose aus der e-Diagnose Fachanwendung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-ediag-operation-diagnose-entered-in-error.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-ediag-operation-diagnose-entered-in-error"
      },
      "name" : "e-Diagnose Operation $entered-in-error",
      "description" : "Die `$entered-in-error`-Operation storniert eine bestimmte Diagnose in der e-Diagnose Fachanwendung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationDefinition-at-ediag-operation-list-write.html"
      }],
      "reference" : {
        "reference" : "OperationDefinition/at-ediag-operation-list-write"
      },
      "name" : "e-Diagnose Operation $write",
      "description" : "Die `$write`-Operation wird aufgerufen, wenn eine Summary-Liste geschrieben wird.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-ediag-list-code-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-ediag-list-code-vs"
      },
      "name" : "ELGA AT e-Diagnose List Entry Code Value Set",
      "description" : "ValueSet mit zulässigen Codes für das Flag eines List-Entries in ELGA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-at-ediag-list-emptyreason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/at-ediag-list-emptyreason-vs"
      },
      "name" : "ELGA List Empty Reason Value Set",
      "description" : "ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-at-ediag-codesystem-reaction-time-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-ediag-codesystem-reaction-time-cs"
      },
      "name" : "Reaktionszeit Codes",
      "description" : "Zeitlicher Verlauf der Manifestation",
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
          "valueUrl" : "transaction.html"
        }],
        "nameUrl" : "transaction.html",
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
          "valueUrl" : "technische_use_cases.html"
        }],
        "nameUrl" : "technische_use_cases.html",
        "title" : "Technische Use Cases",
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
          "valueUrl" : "uc_ediag_01_lesen.html"
        }],
        "nameUrl" : "uc_ediag_01_lesen.html",
        "title" : "Lesen",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "uc_ediag_02_schreiben.html"
        }],
        "nameUrl" : "uc_ediag_02_schreiben.html",
        "title" : "Schreiben",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "uc_ediag_03_teilnehmer.html"
        }],
        "nameUrl" : "uc_ediag_03_teilnehmer.html",
        "title" : "Teilnehmerrechte ausüben",
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
          "valueUrl" : "download.html"
        }],
        "nameUrl" : "download.html",
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
