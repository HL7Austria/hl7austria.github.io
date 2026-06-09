# ELGA.MOPED\Home - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

Das MOPED-Projekt („Moderne Patient:innenabrechnung und Datenkommunikation on FHIR“) verfolgt das Ziel, die österreichische Gesundheitsdatenkommunikation im administrativen Bereich durch eine standardisierte, zukunftsfähige digitale Infrastruktur zu modernisieren.

Durch den Einsatz des HL7 FHIR Standards werden die Daten zu Patientenbewegungen (Aufnahme, Verlegung, Entlassung) und zur Versicherungs- sowie Leistungsabrechnung strukturiert und sicher erfasst. MOPED unterstützt damit eine einheitliche Datenkommunikation und verbessert die Effizienz und Datenqualität im Gesundheitssystem. Zu den zentralen Zielen gehört die Konzeption einer Lösungsarchitektur, die auf der Nutzung standardisierter Schnittstellen innerhalb der österreichischen Gesundheitstelematikinfrastruktur basiert und langfristig eine nahtlose Integration zukünftiger Anforderungen ermöglicht.

Das Projekt ist eine Kooperation zwischen den Krankenanstaltenträgern, den Landesgesundheitsfonds (LGF), dem Bund und den Sozialversicherungsträgern (SV), während die technische Ausarbeitung von der ELGA GmbH mit Unterstützung der FH OÖ Campus Hagenberg und unter Beteiligung von HL7 Austria durchgeführt wird. Diese Institutionen arbeiten gemeinsam daran, den Implementation Guide kontinuierlich zu erweitern und sicherzustellen, dass alle technischen, rechtlichen und organisatorischen Anforderungen erfüllt werden.

### Disclaimer

Der vorliegende Implementation Guide befindet sich aktuell in aktiver Entwicklung und wird laufend erweitert und aktualisiert. Inhalte, Strukturen und Beispiele können sich bis zur Veröffentlichung einer stabilen Version noch ändern.

Dieser Guide soll eine möglichst frühe Orientierung über die technischen und fachlichen Konzepte von MOPED bieten, erhebt jedoch **keinen Anspruch auf Vollständigkeit oder finale Validität**. Änderungen an Profilen, Terminologien, Abbildungen von Workflows oder Begrifflichkeiten und Designentscheidungen etc. sind weiterhin möglich.

Für Stakeholder und FHIR-Anfänger dient der Inhalt als **verständliche Einführung** in zentrale MOPED-Konzepte und den Aufbau der FHIR-basierten Strukturen. Für FHIR-Implementierer und Systemhersteller stellt der Guide eine **technische Spezifikation mit Beispielressourcen, Profildefinitionen und Vorgaben für Schnittstellen und Operations** dar, die als Grundlage für Implementierungen dienen.

Bitte beachten:

* Teile des IG (z. B. Berechtigungskonzepte, detaillierte Invarianten, Fehlerbehandlung) befinden sich noch in Ausarbeitung. Siehe [Known Issues](known_issues.md) für mehr Details.
* Versionierungen einzelner Ressourcen und Profile können sich im Laufe des Projekts ändern.
* Rückmeldungen zu Unklarheiten oder Verbesserungsvorschläge sind ausdrücklich erwünscht und unterstützen die Weiterentwicklung des Implementation Guides. Die Kontaktmöglichkeiten finden sich [hier](https://fhir.hl7.at/r5-ELGA-MOPED-637-IG-Home-erweitern/authors.html#kontaktaufnahme-und-feedback).

### Bedienungsanleitung für den MOPED Implementation Guide

Diese Bedienungsanleitung unterstützt MOPED-Interessierte dabei, sich im MOPED Implementation Guide zurechtzufinden und die enthaltenen Informationen gezielt zu nutzen. Sie richtet sich sowohl an **FHIR-Anfänger und Stakeholder**, die ein grundlegendes Verständnis des Projekts und seiner Datenstrukturen und Konzepte gewinnen möchten, als auch an **FHIR-Implementierer, Serverhersteller und technische Partner**, die die Spezifikationen praktisch umsetzen werden.

Der MOPED Implementation Guide bildet die technische und fachliche Grundlage für eine einheitliche Datennkommunikation im österreichischen Gesundheitswesen im administrativen Bereich. Er beschreibt, wie durch die Verwendung des internationalen HL7 FHIR Standards die Datenflüsse zu Aufnahme, Verlegung, Entlassung, Leistungsabrechnung und Verwaltungsinformationen strukturiert, standardisiert und sicher abgewickelt werden können.

Diese Einleitung erklärt, **wie der Guide aufgebaut ist**, welche **Konzepte und Begriffe** verwendet werden und **wo welche Informationen zu finden sind**.
 Die folgenden Hauptziele stehen im Vordergrund:

* Orientierung und Verständnis schaffen: Was ist MOPED, wie ist der Implementation Guide strukturiert und wie liest man FHIR-Profile, Operations oder Mappings?

Für Einsteiger empfiehlt es sich, mit **„Wichtige Begriffe & Konzepte“** zu beginnen, während Personen mit FHIR Background direkt mit der Beschreibung des **„Aufbau des IG"** [hier](scope_and_content.md#aufbau-des-ig) starten können.

### Wichtige Begriffe & Konzepte

Dieser Abschnitt schafft die fachliche und technische Grundlage, um den MOPED Implementation Guide besser zu verstehen. Er erklärt zentrale Begriffe aus dem MOPED-Umfeld und führt schrittweise in die wichtigsten FHIR-Konzepte ein.

#### Generelle Begriffe im MOPED Umfeld

Hier wird beschrieben, wie bestimmte Begriffe innerhalb des MOPED-Kontexts verwendet werden. Manche dieser Begriffe haben in ihren jeweiligen Domänen bereits standardisierte Bedeutungen, die sich – je nach organisatorischem und technischem Umfeld – unterscheiden können. Um Missverständnisse zu vermeiden, werden hier einige zentrale Definitionen für MOPED erläutert.

#### (MOPED) Fall

Der MOPED-Fall unterscheidet sich vom Fallbegriff in der Krankenhausdomäne bzw. vom medizinischen Fall.
 In MOPED beschreibt der Fall den **patientenbezogenen administrativen Prozess von Aufnahme bis Abrechnung** – alle Daten, die zu diesem Ablauf gehören, werden als gemeinsame Einheit betrachtet.
 In der FHIR-Welt wird dieser Zusammenhang durch eine **Composition** und alle zugehörigen, auf sie referenzierenden Ressourcen und damit verbundenen Operations abgebildet. Damit bildet die Composition den zentralen Container eines MOPED-Falls.

#### Stammdaten

Unter Stammdaten versteht man im MOPED-Kontext Ressourcen, die **nicht im Rahmen eines konkreten MOPED-Falls** von Stakeholdern eingebracht werden, sondern **systemseitig** in MOPED vorhanden sind.
 Dazu zählen insbesondere Krankenanstalten, deren Zuordnung zu jeweiligen LGFs (Landesgesundheitsfonds) sowie Sozialversicherungsträger.
 Der genaue Prozess wie diese Stammdaten in MOPED bereitgestellt und gepflegt werden, wird noch erarbeitet.

#### LKF - Leistungsorientierte Krankenanstaltenfinanzierung

Siehe [Definition des Bundesministeriums](https://www.sozialministerium.gv.at/Themen/Gesundheit/Gesundheitssystem/Krankenanstalten/Allgemeine-Informationen-zum-LKF-Modell.html)

#### MBDS - Minimum Basic Data Set

LKF Basisdatensatz je Aufenthalt

#### KaOrg - Organisationsbeschreibung Datenaustausch mit Krankenanstalten

Siehe [Informationen des Dachverband der österreichischen Sozialversicherung](https://www.sozialversicherung.at/cdscontent/?contentid=10007.821512&portal=svportal)

#### (FHIR) Konzepte & Begriffe

Dieser Abschnitt vermittelt zentrale FHIR-Grundbegriffe für die Arbeit mit dem MOPED Implementation Guide.

#### Ressource

Eine Ressource ist das grundlegende Datenelement in FHIR. Jede Ressource repräsentiert **eine klar abgegrenzte Informationseinheit** – beispielsweise einen Patient, einen Aufenthalt, eine Diagnose oder eine Organisation.
 Alle FHIR-Ressourcen folgen einem einheitlichen Aufbau: Sie besitzen einen Typ (z. B. **Patient** oder **Encounter**) und bestehen aus einer eindeutigen ID, optionalen Metadaten und zahlreichen Elementen. MOPED definiert auf Basis dieser Ressourcen eigene Profile, mit denen der österreichische Verwaltungs- und Abrechnungskontext präzise beschrieben wird.

#### Profil

Ein FHIR-Profil ist eine **Spezialisierung einer Ressource**. Es beschreibt genau, **welche Felder verpflichtend, optional oder ausgeschlossen sind** und **welche Terminologien zulässig** sind.
 Im MOPED-Kontext legen Profile fest, welche Felder für österreichische Anforderungen erforderlich sind.
 Weitere Informationen finden sich im Abschnitt **Wie liest man ein MOPED Profil**.

#### Operations

Operations sind **vordefinierte, serverseitige Funktionen**, die über REST-Schnittstellen vom Server zur Verfügung gestellt werden. MOPED verwendet sie, um komplexe Geschäftsprozesse abzubilden, z. B. das Erstellen eines Falls, das Übermitteln von Abrechnungsdaten oder das Anfordern einer Versichertenanspruchserklärung.
 Details zur Funktionsweise und Ausführung finden sich im Kapitel **Was sind FHIR Operations**. In den Operations werden außerdem strenge Validierungen der eingebrachten Daten durchgeführt, um Datenintegrität zu ermöglichen.

#### Extension

Extensions erweitern die internationalen FHIR-Basisprofile um **österreichspezifische Felder oder Semantiken**.

#### Composition

Die Composition ist das zentrale Werkzeug im MOPED-Kontext: Sie **stellt den fachlichen Zusammenhang eines Falls her** und verbindet alle zugehörigen Ressourcen miteinander.
 Darüber hinaus spielt sie eine zentrale Rolle im **Berechtigungs- und Zugriffskonzept**, da sie den Rahmen eines Falls definiert.
 Weitere technische Details finden sich im Menüpunkt **Designentscheidungen**.

#### Invariante

Invarianten sind **maschinenlesbare Prüfregeln (Constraints)**, die erlauben, Validierungsbedingungen festzulegen, ohne den zugrundeliegenden Code anpassen zu müssen.
 Sie werden direkt in den Profilen hinterlegt und bei jeder Datenübertragung automatisch überprüft.
 MOPED nutzt Invarianten umfassend, um formale und inhaltliche Korrektheit der eingebrachten Ressourcen sicherzustellen.
 Detaillierte Ausführungen finden sich im Abschnitt **Designentscheidungen**.

#### ValueSets und CodeSystems

#### Questionnaire

Questionnaires werden eingesetzt, wenn komplexe Meldungen in strukturierter, aber nicht vollständig granularer Form vorliegen.
 MOPED nutzt Questionnaires z. B. für LKF-Jahresmeldungen, Registermeldungen und zur Intensivdokumentation.

### Wie liest man ein MOPED Profil?

Dieser Abschnitt beschreibt, wie Profile im MOPED Implementation Guide strukturiert sind und wie sie gelesen und verstanden werden können. Profile sind die wichtigste Grundlage für Implementierungen, da sie festlegen, wie die FHIR-Ressourcen im MOPED-Kontext genutzt werden. Sie geben vor, welche Felder verpflichtend, optional oder ausgeschlossen sind, welche Terminologien verwendet werden dürfen und welche Prüfregeln gelten.

#### FHIR Profile im MOPED Kontext

Ein FHIR-Profil ist eine Spezialisierung einer internationalen FHIR-Basisressource. Es legt fest, wie eine Ressource in einem bestimmten Anwendungskontext (z. B. MOPED) verwendet wird. Im MOPED Implementation Guide werden Profile genutzt, um nationale und organisatorische Anforderungen abzubilden, die über den internationalen FHIR-Standard hinausgehen. FHIR-Profile spezifizieren die Nutzung einer Basisressource. Sie geben vor:

* welche Elemente verpflichtend sind (cardinality),
* welche Terminologien zulässig oder vorgeschrieben sind (ValueSets, verpflichtende Codes),
* welche zusätzlichen Prüfregeln (Invarianten) gelten,
* und welche Extensions eingeführt wurden, um nationale Anforderungen abzudecken.

Im MOPED-Kontext sind diese Profile der verbindliche Referenzpunkt für alle Datenaustauschprozesse. Systemhersteller sollten bei jeder Implementierung prüfen, ob ihr System die Profilspezifikationen vollständig erfüllt.

##### Views: Key Elements vs. Snapshot vs. Differential

* **Key Elements:** Eine übersichtliche Darstellung der wichtigsten, projektrelevanten Felder mit kurzen Beschreibungen. Diese Ansicht ist besonders für fachliche Rollen und Stakeholder geeignet.
* **Snapshot View:** Eine vollständige Darstellung des Profils inklusive aller Basiselemente, abgeleiteten Felder und Constraints. Sie bildet die vollständige Resource-Struktur ab, wie sie im System erscheint.
* **Differential View:** Zeigt nur die Abweichungen gegenüber der zugrundeliegenden Basisressource (z. B. zusätzliche Felder, geänderte Kardinalitäten, entfernte Elemente). Diese Ansicht ist besonders nützlich für technische Implementierer.

#### Obligations

Mittels Obligations werden in HL7 FHIR funktionale Eigenschaften spezifiziert, die definierte Akteure gegenüber den durch Profile festgelegten Datenelementen einhalten müssen (SHALL), können (MAY) oder sollten (SHOULD). In MOPED wird unter anderem die Obligation mit dem code **SHALL:populate** verwendet um anzuzeigen, welcher Akteur das jeweilige Feld befüllen muss. Felder, welche wiederum eine Obligation mit dem code **SHALL:handle** und dem Akteur MOPED beinhalten sind Felder die von MOPED im Laufe des Prozess verändert oder automatisiert befüllt werden können. Hierbei handelt es sich hauptsächlich um das Befüllen von Referenzen oder das Ändern des Status von Ressourcen. Obligations werden in den Profilen durch ein rotes O gekennzeichnet.

### Was sind FHIR Operations und welche Informationen beinhalten diese?

Dieser Abschnitt erläutert, wie FHIR Operations im MOPED-Kontext verwendet werden, um komplexe Geschäftsprozesse abzubilden.
 Während FHIR-Profile beschreiben, wie Daten strukturiert sind, legen Operations fest, **wie** diese Daten systemübergreifend verarbeitet, validiert und übertragen werden.

MOPED nutzt Operations, um den administrativen Austausch zwischen Krankenanstalten, Sozialversicherungsträgern, Landesgesundheitsfonds und weiteren Stakeholdern reproduzierbar und kontrolliert zu gestalten. Beispiele sind das Anlegen eines neuen Falls, das Übermitteln von Leistungsdaten oder das Anfordern einer Versichertenanspruchserklärung.

Jede Operation ist im Implementation Guide im Detail dokumentiert und beschreibt Zweck, Eingabeparameter, Outputparameter, Berechtigungen und Vorbedingungen.

#### FHIR Operations im MOPED Kontext

Typische Bestandteile einer Operation sind:

* Der aufrufende Akteur
* Ein oder mehrere Eingabeparameter (Input Parameters)
* Rückgabeparameter (Output Parameters)
* Beschreibung der geprüften Ressourcen und Validierungen
* zusätzliche Businesslogik
* Bedingungen und Fehlermeldungen, falls Eingaben nicht den Profilen entsprechen

FHIR Operations folgen der Syntax:

* **URL: [base]/$validate**
* **URL: [base]/[Resource]/$validate**
* **URL: [base]/[Resource]/[id]/$validate**

In MOPED wird stark auf Operations gesetzt um die Datenintegrität zwischen den einzelnen Ressourcen sicherzustellen.

### Aufbau des Implementation Guide

Der Aufbau des IG ist im Detail im Abschnitt [Umfang und Inhalt](scope_and_content.md) beschrieben.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "elga.moped",
  "url" : "https://elga.moped.at/ImplementationGuide/elga.moped",
  "version" : "0.1.0",
  "name" : "MOPED",
  "title" : "Moderne Patient:innenabrechnung und Datenkommunikation on FHIR (MOPED)",
  "status" : "draft",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "packageId" : "elga.moped",
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
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_at_fhir_core_r5",
    "uri" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/ImplementationGuide/hl7.at.fhir.core.r5",
    "packageId" : "hl7.at.fhir.core.r5",
    "version" : "current"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "grouping" : [{
      "id" : "VerordnungKA",
      "name" : "Verordnungsrelevant - Datenfelder für die KA",
      "description" : "Verordnungsrelevante Ressourcenprofile für den Akteuer KA"
    },
    {
      "id" : "VerordnungBund",
      "name" : "Verordnungsrelevant - Datenfelder für den Bund",
      "description" : "Verordnungsrelevante Ressourcenprofile für den Akteuer Bund"
    },
    {
      "id" : "VerordnungLGF",
      "name" : "Verordnungsrelevant - Datenfelder für den LGF",
      "description" : "Verordnungsrelevante Ressourcenprofile für den Akteuer LGF"
    },
    {
      "id" : "VerordnungSV",
      "name" : "Verordnungsrelevant - Datenfelder für die SV",
      "description" : "Verordnungsrelevante Ressourcenprofile für den Akteuer SV"
    },
    {
      "id" : "QuestionnairesIntensiv",
      "name" : "Fallbezogene Questionnaires für die Intensivdokumentation",
      "description" : "Questionnaires für die Modellierung von Intensivdokumentation"
    },
    {
      "id" : "QuestionnairesRegistermeldungen",
      "name" : "Questionnaires - Registermeldungen",
      "description" : "Questionnaires zur Definition von Registermeldungen in Moped."
    },
    {
      "id" : "QuestionnairesJahresstatistikmeldung",
      "name" : "Questionnaires - Jahresstatistikmeldung/Monatsstatistikmeldung",
      "description" : "Jahresstatistikmeldungen von der Krankenanstalt für den LGF und Bund."
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/AbgangsartVS"
      },
      "name" : "Abgangsart des Patienten",
      "description" : "ValueSet für die Abgangsart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-diagnoseKnoten"
      },
      "name" : "Abrechnung - Knoten",
      "description" : "Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung"
      },
      "name" : "Abrechnungsart Ausländerverrechnung",
      "description" : "Abrechnungsart Ausländerverrechnung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/AbrechnungsartAuslaenderverrechnungCS"
      },
      "name" : "Abrechnungsart Ausländerverrechnung CodeSystem",
      "description" : "CodeSystem für die Abrechnungsarten in der Ausländerverrechnung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/AbrechnungsartAuslaenderverrechnungVS"
      },
      "name" : "Abrechnungsart Ausländerverrechnung ValueSet",
      "description" : "ValueSet für die Abrechnungsarten in der Ausländerverrechnung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/AbrechnungsRelevanzVS"
      },
      "name" : "Abrechnungsrelevanz der medizinischen Leistung",
      "description" : "Abrechnungsrelevanz der medizinischen Leistung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/AbrechnungsRelevanzCS"
      },
      "name" : "Abrechnungsrelevanz der medizinischen Leistung",
      "description" : "Abrechnungsrelevanz der medizinischen Leistung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/AbteilungHerzJesu1"
      },
      "name" : "AbteilungHerzJesu1",
      "description" : "Hackathon Stammdaten: Abteilung 1 der KA Herz Jesu",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/AbteilungKARied1"
      },
      "name" : "AbteilungKARied1",
      "description" : "Hackathon Stammdaten: Abteilung 1 der KA Ried",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/AbteilungKARied2"
      },
      "name" : "AbteilungKARied2",
      "description" : "Hackathon Stammdaten: Abteilung 2 der KA Ried",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/AbteilungKARied3"
      },
      "name" : "AbteilungKARied3",
      "description" : "Hackathon Stammdaten: Abteilung 3 der KA Ried",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/AbteilungKARied4"
      },
      "name" : "AbteilungKARied4",
      "description" : "Hackathon Stammdaten: Abteilung 4 der KA Ried",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-AddItemCategory"
      },
      "name" : "AddItemCategory",
      "description" : "Benefit classification",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/EWCodes2025VS"
      },
      "name" : "Akzeptierte Errors/Warnings - Codes 2025",
      "description" : "Der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/EWCodes2025CS"
      },
      "name" : "Akzeptierte Errors/Warnings - Codes 2025",
      "description" : "Der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-altersgruppe"
      },
      "name" : "Altersgruppe",
      "description" : "In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/AltersgruppeVS"
      },
      "name" : "Altersgruppe des Patienten",
      "description" : "ValueSet für die Altersgruppe des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/AltersgruppeCS"
      },
      "name" : "Altersgruppe des Patienten",
      "description" : "CodeSystem für die Altersgruppe des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/AnwesenheitsartVS"
      },
      "name" : "Anwesenheitsart",
      "description" : "ValueSet für die Anwesenheitsart",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/AnwesenheitsartCS"
      },
      "name" : "Anwesenheitsart",
      "description" : "CodeSystem für die Anwesenheitsart",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedEncounterTypesVS"
      },
      "name" : "Arten von Moped Encounter",
      "description" : "Arten von Moped Encounter",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedEncounterTypesCS"
      },
      "name" : "Arten von Moped Encounter",
      "description" : "Arten von Moped Encounter",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedPaymentTypesCS"
      },
      "name" : "Arten von Moped Payment Types CS",
      "description" : "Arten von Moped Payment Types CS",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedPaymentTypesVS"
      },
      "name" : "Arten von Moped Payment Types VS",
      "description" : "Arten von Moped Payment Types VS",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-abrechnen-KA"
      },
      "name" : "AT MOPED Bundle $abrechnen KA Profil",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Abrechnen (KA)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-anfragen-KA"
      },
      "name" : "AT MOPED Bundle $anfragen KA Profil",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim $anfragen (KA)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-antworten-SV"
      },
      "name" : "AT MOPED Bundle $antworten SV Profil",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einbringen von Antworten der SV",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-aufnehmen-KA"
      },
      "name" : "AT MOPED Bundle $aufnehmen KA Profil",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Aufnehmen eines Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-entlassen-KA"
      },
      "name" : "AT MOPED Bundle $entlassen KA Profil",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Entlassen eines Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-entscheiden-LGF"
      },
      "name" : "AT MOPED Bundle $entscheiden LGF Profil",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Entscheiden (Bestätigen/Ablehnen) von Punkten/Erorrs/Warnings",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-melden-LGF"
      },
      "name" : "AT MOPED Bundle $melden LGF",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Melden von Informationen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-update-KA"
      },
      "name" : "AT MOPED Bundle $update KA",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Update von Informationen zu einem Fall",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-input-KA"
      },
      "name" : "AT MOPED Bundle Input KA Profil",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Update von Informationen zu einem Fall",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-bundle-questionnaireresponse-einmelden-KA"
      },
      "name" : "AT MOPED Bundle QuestionnaireResponse $einmelden Profil",
      "description" : "MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claim-lkfrequest-basis"
      },
      "name" : "AT MOPED Claim LKFRequest Basis Profil",
      "description" : "MOPED Basis Profil der Claim Ressource für die Leistungsabrechnungsanfrage.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claim-lkfrequest-generisch"
      },
      "name" : "AT MOPED Claim LKFRequest generisches Profil",
      "description" : "MOPED generisches Profil der Claim Ressource die Leistungsabrechnungsanfrage.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claim-vaerequest-basis"
      },
      "name" : "AT MOPED Claim VAERequest Basis Profil",
      "description" : "MOPED Basis Profil der Claim Ressource für die Anfrage der Versichertenanspruchserklärung VAE.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claim-vaerequest-generisch"
      },
      "name" : "AT MOPED Claim VAERequest generisches Profil",
      "description" : "MOPED generisches Profil der Claim Ressource für die Anfrage der Versichertenanspruchserklärung VAE.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claim-VAE-request-initial"
      },
      "name" : "AT MOPED Claim VAERequest Initiales Profil",
      "description" : "MOPED Profile der Claim Ressource für die initiale Anfrage der Versichertenanspruchserklärung (VAE)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claim-vaerequest-verlaengerung"
      },
      "name" : "AT MOPED Claim VAERequest Verlängerungs Profil",
      "description" : "MOPED Profil der Claim Ressource für die Verlängerung der Versichertenanspruchserklärung (VAE)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claimresponse-lkfresponse-basis"
      },
      "name" : "AT MOPED ClaimResponse LKFResponse Basis Profil",
      "description" : "MOPED Basis Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claimresponse-lkfresponse-generisch"
      },
      "name" : "AT MOPED ClaimResponse LKFResponse generisches Profil",
      "description" : "MOPED generisches Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claimresponse-vaeresponse-basis"
      },
      "name" : "AT MOPED ClaimResponse VAEResponse Basis Profil",
      "description" : "MOPED Basis Profil der ClaimResponse Ressource für die Beantwortung der Versichertenanspruchserklärung VAE.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-claimresponse-vaeresponse-generisch"
      },
      "name" : "AT MOPED ClaimResponse VAEResponse generisches Profil",
      "description" : "MOPED generisches Profil der ClaimResponse Ressource für die Beantwortung der Versichertenanspruchserklärung VAE.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-composition-anfragen"
      },
      "name" : "AT MOPED Composition $anfragen Profil",
      "description" : "MOPED Profil der Composition Ressource nach $anfragen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-composition-aufnehmen"
      },
      "name" : "AT MOPED Composition $aufnehmen Profil",
      "description" : "MOPED Profil der Composition Ressource nach $aufnehmen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-composition-beantworten"
      },
      "name" : "AT MOPED Composition $beantworten Profil",
      "description" : "MOPED Profil der Composition Ressource nach $beantworten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-composition-entlassen-aviso"
      },
      "name" : "AT MOPED Composition $entlassen Aviso Profil",
      "description" : "MOPED Profil der Composition Ressource nach $entlassen bei Entlassung Aviso",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-composition-entlassen-vollstaendig"
      },
      "name" : "AT MOPED Composition $entlassen vollständig Profil",
      "description" : "MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-composition-update"
      },
      "name" : "AT MOPED Composition $update Profil",
      "description" : "MOPED Profil der Composition Ressource nach $update",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-composition-basis"
      },
      "name" : "AT MOPED Composition Basis Profil",
      "description" : "MOPED Basis Profil der Composition Ressource in der sich der gesamte Moped Datensatz aufbaut. Diese unterstütz durch ihre Invarianten eine konsistente Datenhaltung.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-composition-generisch"
      },
      "name" : "AT MOPED Composition generisches Profil",
      "description" : "MOPED generisches Profil der Composition Ressource von der alle anderen Compositions ableiten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-condition-basis"
      },
      "name" : "AT MOPED Condition Basis Profil",
      "description" : "MOPED Basis Profil der Condition Ressource für Diagnosen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-condition-generisch"
      },
      "name" : "AT MOPED Condition generisches Profil",
      "description" : "MOPED generisches Profil der Condition Ressource für Diagnosen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-coverage-generisch"
      },
      "name" : "AT MOPED Coverage generisches Profil",
      "description" : "MOPED generisches Profil der Coverage Ressource",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-coverage-selbstzahler"
      },
      "name" : "AT MOPED Coverage Selbstzahler Basis Profil",
      "description" : "MOPED Basis Profil der Coverage Ressource für Personen, welche kein relevantes Versicherungsverhältnis haben und die Behandlung selbst bezahlen müssen.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-coverage-versicherter-basis"
      },
      "name" : "AT MOPED Coverage Versicherter Basis Profil",
      "description" : "MOPED Basis Profil der Coverage Ressource für Personen, welche ein Versicherungsverhältnis mit der Sozialversicherung haben.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-device-generisch"
      },
      "name" : "AT MOPED Device generisches Profil",
      "description" : "MOPED generisches Profil der Device Ressource",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-device-XDok"
      },
      "name" : "AT MOPED Device XDok Profil",
      "description" : "MOPED Profil der Device Ressource für XDok",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-aufenthalt-stationaer-Aufnahme"
      },
      "name" : "AT MOPED Encounter Aufenthalt Stationär Aufnahme Profil",
      "description" : "MOPED Profil der Encounter Ressource für die Aufnahme im stationären Bereich",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-aufenthalt-stationaer-basis"
      },
      "name" : "AT MOPED Encounter Aufenthalt Stationär Basis Profil",
      "description" : "MOPED Basis Profil der Encounter Ressource für den stationären Aufenthalt",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-aufenthalt-stationaer-Entlassung"
      },
      "name" : "AT MOPED Encounter Aufenthalt Stationär Entlassung Profil",
      "description" : "MOPED Profil der Encounter Ressource für die Entlassung im stationären Bereich",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-besuch-ambulant-Bund"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch Ambulant Bund Profil",
      "description" : "TBD",
      "isExample" : false,
      "groupingId" : "VerordnungBund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-besuch-ambulant-KA"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch Ambulant KA Profil",
      "description" : "TBD",
      "isExample" : false,
      "groupingId" : "VerordnungKA"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-besuch-ambulant-LGF"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch Ambulant LGF Profil",
      "description" : "TBD",
      "isExample" : false,
      "groupingId" : "VerordnungLGF"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-besuch-ambulant-SV"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch Ambulant SV Profil",
      "description" : "TBD",
      "isExample" : false,
      "groupingId" : "VerordnungSV"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-aufenthaltbesuch-generisch"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch generisches Profil",
      "description" : "MOPED generisches Profil der Encounter Ressource für ambulante Besuche und stationäre Aufenthaltes",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-aufenthalt-stationaer-Bund"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch Stationär Bund Profil",
      "description" : "TBD",
      "isExample" : false,
      "groupingId" : "VerordnungBund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-aufenthalt-stationaer-KA"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch Stationär KA Profil",
      "description" : "TBD",
      "isExample" : false,
      "groupingId" : "VerordnungKA"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-aufenthalt-stationaer-LGF"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch Stationär LGF Profil",
      "description" : "TBD",
      "isExample" : false,
      "groupingId" : "VerordnungLGF"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-aufenthalt-stationaer-SV"
      },
      "name" : "AT MOPED Encounter Aufenthalt/Besuch Stationär SV Profil",
      "description" : "TBD",
      "isExample" : false,
      "groupingId" : "VerordnungSV"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-besuch-ambulant-basis"
      },
      "name" : "AT MOPED Encounter Besuch Ambulantes Profil",
      "description" : "MOPED Basis Profil der Encounter Ressource für den ambulanten Besuch",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-bewegung-ambulant-basis"
      },
      "name" : "AT MOPED Encounter Bewegung Ambulant Basis Profil",
      "description" : "MOPED Profil der Encounter Ressource für ambulante Kontakte/Bewegungen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-bewegung-generisch"
      },
      "name" : "AT MOPED Encounter Bewegung generisches Profil",
      "description" : "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-bewegung-intensiv-basis"
      },
      "name" : "AT MOPED Encounter Bewegung Intensiv Basis Profil",
      "description" : "MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"
      },
      "name" : "AT MOPED Encounter Bewegung Stationär Basis Profil",
      "description" : "MOPED Profil der Encounter Ressource für eine stationäre Verlegung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-observation-entbindungsart-basis"
      },
      "name" : "AT MOPED Observation Entbindungsart Basis Profil",
      "description" : "MOPED Basis Profil der Observation Ressource für die Entbindungsart",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-observation-geburtenanzahl-basis"
      },
      "name" : "AT MOPED Observation Geburtenanzahl Basis Profil",
      "description" : "MOPED Basis Profil der Observation Ressource für die Anzahl der Geburten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-observation-generisch"
      },
      "name" : "AT MOPED Observation generisches Profil",
      "description" : "MOPED generisches Profil der Observation Ressource",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-organization-bund"
      },
      "name" : "AT MOPED Organization Bund Profil",
      "description" : "MOPED Profil der Organization Ressource für den Bund",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-organization-dachverband"
      },
      "name" : "AT MOPED Organization Dachverband Profil",
      "description" : "MOPED Profil der Organization Ressource für den Dachverband",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-organization-KA"
      },
      "name" : "AT MOPED Organization KA Profil",
      "description" : "MOPED Profil der Organization Ressource für KA Organizations",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-organization-LGF"
      },
      "name" : "AT MOPED Organization LGF Profil",
      "description" : "MOPED Profil der Organization Ressource für den LGF",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-organization-organisationseinheit-KA"
      },
      "name" : "AT MOPED Organization Organisationseinheite KA Profil",
      "description" : "MOPED Profil der Organization Ressource für Organisationseinheiten innerhalb einer Krankenanstalt.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-organization-SV"
      },
      "name" : "AT MOPED Organization SV Profil",
      "description" : "MOPED Profil der Organization Ressource für die SV",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-generisch"
      },
      "name" : "AT MOPED Patient generisches Profil",
      "description" : "MOPED generisches Profil der Patienten Ressource für Moped",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-klarname-basis"
      },
      "name" : "AT MOPED Patient Klarname Basis Profil",
      "description" : "MOPED Basis Profil der Patienten Ressource mit Klarname",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-vbPK-basis"
      },
      "name" : "AT MOPED Patient vbPK Basis Profil",
      "description" : "MOPED Profil der Patienten Ressource mit vbPKs",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-procedure-basis"
      },
      "name" : "AT MOPED Procedure Basis Profil",
      "description" : "MOPED Basis Profil der Procedure Ressource für Leistungen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-procedure-generisch"
      },
      "name" : "AT MOPED Procedure generisches Profil",
      "description" : "MOPED generisches Profil der Procedure Ressource für Leistungen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-questionnaireresponse-fallbezogen"
      },
      "name" : "AT MOPED QuestionnaireResponse fallbezogenes Profil",
      "description" : "MOPED Profil der QuestionnaireResponse Ressource für QuestionnnaireResponses die im Kontext von Moped mit Fallbezug erhoben werden",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-questionnaireresponse-nicht-fallbezogen"
      },
      "name" : "AT MOPED QuestionnaireResponse nicht fallbezogenes Profil",
      "description" : "MOPED Profil der QuestionnaireResponse Ressource für QuestionnaireResponses die im Kontext von Moped ohne Fallbezug erhoben werden",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-relatedperson-hauptversicherter-generisch"
      },
      "name" : "AT MOPED RelatedPerson generisches Profil",
      "description" : "MOPED generisches Profil der RelatedPerson Ressource",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-relatedperson-hauptversicherter-basis"
      },
      "name" : "AT MOPED RelatedPerson Hauptversicherter Basis Profil",
      "description" : "MOPED generisches Profil der RelatedPerson Ressource für Daten zum Hauptversicherten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-aufnahmeart"
      },
      "name" : "Aufnahmeart",
      "description" : "MOPED Extension für die Aufnahmeart.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/AufnahmeartVS"
      },
      "name" : "Aufnahmeart des Patienten",
      "description" : "ValueSet für die Aufnahmeart des Patienten (LKF + Ka-Org)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/Aufnahmeart2VS"
      },
      "name" : "Aufnahmeart2 des Patienten",
      "description" : "ValueSet für die Aufnahmeart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/Aufnahmeart2CS"
      },
      "name" : "Aufnahmeart2 des Patienten",
      "description" : "CodeSystem für die Aufnahmeart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VerpflegskostenBeitragsbefreiungVS"
      },
      "name" : "Befreiung für den Verpflegskostenbeitrag",
      "description" : "Befreiung für den Verpflegskostenbeitrag",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/VerpflegskostenBeitragsbefreiungCS"
      },
      "name" : "Befreiung für den Verpflegskostenbeitrag",
      "description" : "CodeSystem für die Befreiung für den Verpflegskostenbeitrag",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/BehandlungsartVS"
      },
      "name" : "Behandlungsart",
      "description" : "ValueSet für die Behandlungsart",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/BehandlungsartCS"
      },
      "name" : "Behandlungsart",
      "description" : "CodeSystem für die Behandlungsart",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-Beihilfenaequivalent"
      },
      "name" : "Beihilfenaequivalent",
      "description" : "MOPED Extension für das Beihilfenaequivalent",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-Betreuungsschein"
      },
      "name" : "Betreuungsschein bei Ausländerverrechnung",
      "description" : "MOPED Extension für den Betreuungsschein bei Ausländerverrechnung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/BewegungsEncounter42.1"
      },
      "name" : "BewegungsEncounter42.1",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/BewegungsEncounter42.2"
      },
      "name" : "BewegungsEncounter42.2",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedClaimSubTypeCS"
      },
      "name" : "Claim Subtype CodeSystem",
      "description" : "CodeSystem für die Arten der Claims/ClaimResponses",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedClaimTypeCS"
      },
      "name" : "Claim Type CodeSystem",
      "description" : "CodeSystem für die Arten der Claims/ClaimResponses",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedClaimTypeVS"
      },
      "name" : "Claim Type ValueSet",
      "description" : "ValueSet für die Arten der Claims/ClaimResponses",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/ZahlungskennzeichenAuslaenderverrechnungCS"
      },
      "name" : "CodeSystem Zahlungskennzeichen Auslaenderverrechnung",
      "description" : "CodeSystem Zahlungskennzeichen Auslaenderverrechnung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/ZahlungskennzeichenRegressCS"
      },
      "name" : "CodeSystem Zahlungskennzeichen Regress",
      "description" : "CodeSystem Zahlungskennzeichen Regress",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/Condition42.1"
      },
      "name" : "Condition42.1",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-Diagnosetyp"
      },
      "name" : "Diagnosetyp",
      "description" : "Diagnosetyp",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedEncounterStatusAufnahmeVS"
      },
      "name" : "Encounter Status bei der Aufnahme",
      "description" : "Varianten des Encounter Status bei der Aufnahme",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedEncounterStatusEntlassungVS"
      },
      "name" : "Encounter Status bei Entlassung",
      "description" : "Varianten des Encounter Status bei Entlassung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedEncounterStatusVS"
      },
      "name" : "Encounter Status in Moped",
      "description" : "Varianten des Encounter Status bei Aufenthalten in Moped",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/Encounter42"
      },
      "name" : "Encounter42",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/EntlassungsartCS"
      },
      "name" : "Entlassungsart des Patienten",
      "description" : "CodeSystem für die Entlassungsart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/EntlassungsartAVS"
      },
      "name" : "Entlassungsart des Patienten ambulant",
      "description" : "ValueSet für die ambulante Entlassungsart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/EntlassungsartVS"
      },
      "name" : "Entlassungsart des Patienten ambulant + stationär",
      "description" : "ValueSet für die Entlassungsart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/EntlassungsartSVS"
      },
      "name" : "Entlassungsart des Patienten stationär",
      "description" : "ValueSet für die stationäre Entlassungsart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-fehlerWarnung"
      },
      "name" : "Error/Warning",
      "description" : "MOPED Extension für akzeptierte Errors und Warnings",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-fondsrelevanz"
      },
      "name" : "Fondsrelevanz",
      "description" : "Hier ist anzugeben, ob der stationäre Aufenthalt/ambulante Besuch gegenüber dem Landesgesundheitsfonds/PRIKRAF abzurechnen ist.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/FondsrelevanzVS"
      },
      "name" : "Fondsrelevanz",
      "description" : "ValueSet für die Fondsrelevanz",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/FondsrelevanzCS"
      },
      "name" : "Fondsrelevanz",
      "description" : "CodeSystem für die Fondsrelevanz",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-ReasonForNonPayment"
      },
      "name" : "Grund warum keine Zahlung erfolgte",
      "description" : "Grund warum keine Zahlung erfolgte",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/HTTPVerbInsertOnlyVS"
      },
      "name" : "HTTP Verb Insert Only",
      "description" : "HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/HTTPVerbInsertUpdateDeleteVS"
      },
      "name" : "HTTP Verb Insert Update Delete",
      "description" : "HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/HTTPVerbUpdateOnlyVS"
      },
      "name" : "HTTP Verb Update Only",
      "description" : "HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/HTTPVerbInsertUpdateVS"
      },
      "name" : "HTTP Verb Update Only",
      "description" : "HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/LKFTISSAQuestionnaire"
      },
      "name" : "I12 Questionnaire für TISS-A-Daten",
      "isExample" : true,
      "groupingId" : "QuestionnairesIntensiv"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/TISSAQuestionnaireResponse"
      },
      "name" : "I12 QuestionnaireResponse für TISS-A-Daten",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-questionnaireresponse-fallbezogen"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ICD10ATVS"
      },
      "name" : "ICD-10 AT",
      "description" : "ICD-10 BMSGPK 2025+",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/KAK999"
      },
      "name" : "KAK999",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/KAK999ABT11111100"
      },
      "name" : "KAK999ABT11111100",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/KAK999ABT12111100"
      },
      "name" : "KAK999ABT12111100",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/KAK999ABT12118102"
      },
      "name" : "KAK999ABT12118102",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/KAK999ABT16075000"
      },
      "name" : "KAK999ABT16075000",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/KAK999ABT16111111"
      },
      "name" : "KAK999ABT16111111",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/KAK999ABT16111112"
      },
      "name" : "KAK999ABT16111112",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/KAK999ABT16211100"
      },
      "name" : "KAK999ABT16211100",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/KAK999ABT16518011"
      },
      "name" : "KAK999ABT16518011",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/KostenmeldungARKVS"
      },
      "name" : "Kostenmeldung für (A/R/K)",
      "description" : "ValueSet für die Art der Kostenmeldung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-Kostenstelle"
      },
      "name" : "Kostenstelle",
      "description" : "MOPED Extension für akzeptierte Errors und Warnings",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-Leistungsanzahl"
      },
      "name" : "Leistung - Anzahl",
      "description" : "MOPED Extension für die Anzahl der zu einem Zeitpunkt erbrachten Leistungen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFAbrechnungsGruppeVS"
      },
      "name" : "LKF Abrechnungsgruppe",
      "description" : "LKF Abrechnungsgruppe",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/LKFAbrechnungsGruppeAndereCS"
      },
      "name" : "LKF Abrechnungsgruppe Andere",
      "description" : "LKF Abrechnungsgruppe Andere",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFAbrechnungsKnotenVS"
      },
      "name" : "LKF Abrechnungsknoten",
      "description" : "LKF Abrechnungsknoten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/LKFAbrechnungsKnotenCS"
      },
      "name" : "LKF Abrechnungsknoten",
      "description" : "LKF Abrechnungsknoten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFAmbulantenMELGruppenVS"
      },
      "name" : "LKF Ambulante MEL-Gruppen",
      "description" : "LKF Ambulante MEL-Gruppen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/LKFAmbulantenMELGruppenCS"
      },
      "name" : "LKF Ambulante MEL-Gruppen",
      "description" : "LKF Ambulante MEL-Gruppen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFAmbulantePauschalGruppenVS"
      },
      "name" : "LKF Ambulante Pauschal-Gruppen",
      "description" : "LKF Ambulante Pauschal-Gruppen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/LKFAmbulantePauschalGruppenCS"
      },
      "name" : "LKF Ambulante Pauschal-Gruppen",
      "description" : "LKF Ambulante Pauschal-Gruppen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedLKFRequestSubTypeVS"
      },
      "name" : "LKF ClaimResponse Subtype ValueSet",
      "description" : "ValueSet für die Art der ClaimResponses",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFDiagnoseTypVS"
      },
      "name" : "LKF Diagnosetyp ValueSet",
      "description" : "LKF Diganosetyp",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFHauptdiagnosegruppenVS"
      },
      "name" : "LKF Hauptdiagnosegruppen",
      "description" : "LKF Hauptdiagnosegruppen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/LKFHauptdiagnosegruppenCS"
      },
      "name" : "LKF Hauptdiagnosegruppen",
      "description" : "LKF Hauptdiagnosegruppen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/LKFJahresstatistikmeldung"
      },
      "name" : "LKF Jahresstatistikmeldung",
      "description" : "LKF Jahresstatistikmeldung",
      "isExample" : true,
      "groupingId" : "QuestionnairesJahresstatistikmeldung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFLeistungskatalogVS"
      },
      "name" : "LKF Leistungskatalog BMSGPK",
      "description" : "LKF Hauptdiagnosegruppen",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFmedizinischeEinzelleistungenVS"
      },
      "name" : "LKF medizinische Einzelleistungen (MEL)",
      "description" : "LKF medizinische Einzelleistungen (MEL)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/LKFmedizinischeEinzelleistungenCS"
      },
      "name" : "LKF medizinische Einzelleistungen (MEL)",
      "description" : "LKF medizinische Einzelleistungen (MEL)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/LKFMonatsstatistikmeldung"
      },
      "name" : "LKF Monatsstatistikmeldung",
      "description" : "LKF Monatsstatistikmeldung",
      "isExample" : true,
      "groupingId" : "QuestionnairesJahresstatistikmeldung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFSeitenlokalisationVS"
      },
      "name" : "LKF Seitenlokalisation ValueSet",
      "description" : "LKF Seitenlokalisation",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/Composition42"
      },
      "name" : "LKF Testdaten Fall",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      }],
      "reference" : {
        "reference" : "Claim/LKFRequest42"
      },
      "name" : "LKFRequest42",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/LocationKAHerzJesu"
      },
      "name" : "LocationKAHerzJesu",
      "description" : "Stammdaten: Location der KA Herz Jesu",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/LocationKAK999"
      },
      "name" : "LocationKAK999",
      "isExample" : true,
      "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-location"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/LocationKARied"
      },
      "name" : "LocationKARied",
      "description" : "Stammdaten: Location der KA Ried",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-AbrechnungsRelevanz"
      },
      "name" : "Medizinische Leistung - Abrechnungsrelevanz",
      "description" : "Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MopedARKStatusUpdate"
      },
      "name" : "MOPED ARK Status Update - PaymentReconciliation",
      "description" : "MOPED Profil für Statusupdates zur Ausländerverrechnung oder zum Regress",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MopedARKRequest"
      },
      "name" : "MOPED ARKRequest",
      "description" : "MOPED Profil der Claim Ressource für die Kostenmeldung für Ausländerverrechnung und Regresse.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MopedARKResponse"
      },
      "name" : "MOPED ARKResponse",
      "description" : "MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.Auf.Request.Antworten"
      },
      "name" : "MOPED auf VAERequest oder ARKRequest $antworten",
      "description" : "Die $antworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung oder eine Kosteninformation beantwortet wird.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/AbgangsartCS"
      },
      "name" : "Moped Aufnahmeart des Patienten",
      "description" : "Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/AufnahmeartCS"
      },
      "name" : "Moped Aufnahmeart des Patienten",
      "description" : "Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/MopedBundActor"
      },
      "name" : "Moped Bund Actor",
      "description" : "Moped ActorDefnition für den Bund",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedClaimItemCategoryCS"
      },
      "name" : "Moped Claim Item Category CodeSystem",
      "description" : "CodeSystem für die Arten von Claim Item Kategorien",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedClaimItemCategoryVS"
      },
      "name" : "Moped Claim Item Category ValueSet",
      "description" : "ValueSet für die Arten von Claim Item Kategorien",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.ClaimResponse.Entscheiden"
      },
      "name" : "MOPED ClaimResponse $entscheiden",
      "description" : "Die $entscheiden Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedEntbindungsartCS"
      },
      "name" : "Moped CodeSystem für die KaOrg Arten der Entbindung",
      "description" : "KaOrg Varianten der Art der Entbindung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/CompositionSectionsCS"
      },
      "name" : "Moped Composition Sections",
      "description" : "CodeSystem für die Moped Sections der Composition Ressource",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/CompositionSectionsVS"
      },
      "name" : "Moped Composition Sections ValueSet",
      "description" : "ValueSet für die Moped Sections der Composition Ressource",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.Daten.Update"
      },
      "name" : "MOPED Daten $update",
      "description" : "Die $update Operation wird aufgerufen, wenn zusätzliche Informationen zu einem Fall eingebracht/abgeändert werden.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/MopedDeviceActor"
      },
      "name" : "Moped Device Actor",
      "description" : "Moped ActorDefnition für Moped selbst",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedDeviceTypesCS"
      },
      "name" : "Moped Device Types CodeSystem",
      "description" : "CodeSystem für die Moped Device Types",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedDeviceTypesVS"
      },
      "name" : "Moped Device Types ValueSet",
      "description" : "Types von Moped Devices",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.Encounter.Abrechnen"
      },
      "name" : "MOPED Encounter $abrechnen",
      "description" : "Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden soll.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedEncounterParticipantTypesCS"
      },
      "name" : "Moped Encounter Participant Type CodeSystem",
      "description" : "CodeSystem für die Moped Encounter Participant Types",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedEncounterParticipantTypesVS"
      },
      "name" : "Moped Encounter Participant Type ValueSet",
      "description" : "ValueSet für die Moped Encounter Participant Types",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/MopedKAActor"
      },
      "name" : "Moped KA Actor",
      "description" : "Moped ActorDefnition für Krankenanstalten in Österreich",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.Claim.Melden"
      },
      "name" : "MOPED Kosteninformation $melden",
      "description" : "Die $melden Operation wird aufgerufen, wenn eine Kosteninformation an die SV gemeldet werden soll.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/MopedLGFActor"
      },
      "name" : "Moped LGF Actor",
      "description" : "Moped ActorDefnition für LGFs in Österreich",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/LKFSupportingInformationCategoryVS"
      },
      "name" : "MOPED LKFSupportingInformationCategory",
      "description" : "Arten von zusätzlichen Informationen im LKFRequest",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.Patient.Aufnehmen"
      },
      "name" : "MOPED Patient $aufnehmen",
      "description" : "Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in die Krankenanstalt aufgenommen wird.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.Patient.Entlassen"
      },
      "name" : "MOPED Patient $entlassen",
      "description" : "Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-klarname-bund"
      },
      "name" : "MOPED Patient mit Klarname Bund",
      "description" : "MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: Bund",
      "isExample" : false,
      "groupingId" : "VerordnungBund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-klarname-KA"
      },
      "name" : "MOPED Patient mit Klarname KA",
      "description" : "MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: KA",
      "isExample" : false,
      "groupingId" : "VerordnungKA"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-klarname-LGF"
      },
      "name" : "MOPED Patient mit Klarname LGF",
      "description" : "MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: LGF",
      "isExample" : false,
      "groupingId" : "VerordnungLGF"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-klarname-SV"
      },
      "name" : "MOPED Patient mit Klarname SV",
      "description" : "MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: SV",
      "isExample" : false,
      "groupingId" : "VerordnungSV"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/PJ1CompositionAufnehmen"
      },
      "name" : "MOPED PJ1 Composition nach $aufnehmen",
      "description" : "PJ1 Beispiel der Composition Ressource nach $aufnehmen",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-composition-aufnehmen"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/PJ1Composition"
      },
      "name" : "MOPED PJ1 Composition nach $aufnehmen",
      "description" : "PJ1 Beispiel der Composition Ressource nach $aufnehmen",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-composition-generisch"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.QuestionnaireResponse.Einmelden"
      },
      "name" : "MOPED QuestionnaireResponse $einmelden",
      "description" : "Die $einmelden Operation wird aufgerufen, wenn eine (nicht fallbezogene) QuestionnaireResponse eingemeldet werden soll.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/MopedSVActor"
      },
      "name" : "Moped SV Actor",
      "description" : "Moped ActorDefnition für eine SV in Österreich",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ClaimSupportingInformationCategoryVS"
      },
      "name" : "MOPED VAESupportingInformationCategory",
      "description" : "Arten von zusätzlichen Informationen in der VAE",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VAESupportingInformationCategoryVS"
      },
      "name" : "MOPED VAESupportingInformationCategory",
      "description" : "Arten von zusätzlichen Informationen in der VAE",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/ClaimSupportingInformationCategoryCS"
      },
      "name" : "MOPED VAESupportingInformationCategory",
      "description" : "Arten von zusätzlichen Informationen in der VAE",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedEntbindungsartVS"
      },
      "name" : "Moped ValueSet für die Art der Entbindung",
      "description" : "KaOrg Varianten der Art der Entbindung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/MopedObservationArtCS"
      },
      "name" : "Moped ValueSet für die Art der Observation",
      "description" : "Varianten der Art der Observation",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-vbPK-bund"
      },
      "name" : "MOPED vbPK Patient Bund",
      "description" : "MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: Bund",
      "isExample" : false,
      "groupingId" : "VerordnungBund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-vbPK-KA"
      },
      "name" : "MOPED vbPK Patient KA",
      "description" : "MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: KA",
      "isExample" : false,
      "groupingId" : "VerordnungKA"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-vbPK-LGF"
      },
      "name" : "MOPED vbPK Patient LGF",
      "description" : "MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: LGF",
      "isExample" : false,
      "groupingId" : "VerordnungLGF"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-moped-patient-vbPK-SV"
      },
      "name" : "MOPED vbPK Patient SV",
      "description" : "MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: SV",
      "isExample" : false,
      "groupingId" : "VerordnungSV"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/MOPED.VAERequest.Anfragen"
      },
      "name" : "MOPED Versichertenanspruchserklärung $anfragen",
      "description" : "Die $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OrganizationAffiliation"
      }],
      "reference" : {
        "reference" : "OrganizationAffiliation/OrganizationAffiliationWgfHerzJesu"
      },
      "name" : "OrganizationAffiliationWgfHerzJesu",
      "description" : "Hackathon Stammdaten: Organization Affiliation zwischen LGF und KA Herz Jesu",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
      },
      "name" : "OrganizationHerzJesuKrankenhaus",
      "description" : "Hackathon Stammdaten: KA Herz Jesu",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/OrganizationKrankenhausRied"
      },
      "name" : "OrganizationKrankenhausRied",
      "description" : "Hackathon Stammdaten: KA Ried",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/OrganizationLGF"
      },
      "name" : "OrganizationLGF",
      "description" : "Hackathon Stammdaten: LGF Wien",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-LGF"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/OrganizationUeberweisendeOrganization1"
      },
      "name" : "OrganizationUeberweisendeOrganization1",
      "description" : "Hackathon Stammdaten: Überweisende Organisation 1",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/OrganizationUeberweisendeOrganization2"
      },
      "name" : "OrganizationUeberweisendeOrganization2",
      "description" : "Hackathon Stammdaten: Überweisende Organisation 2",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/Patient42"
      },
      "name" : "Patient42",
      "isExample" : true,
      "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ1BewegungsEncounter1"
      },
      "name" : "PJ1BewegungsEncounter1",
      "description" : "Hackathon Patient Journey 1 Beispiel: BewegungsEncounter 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ1BewegungsEncounter1Aufnahme"
      },
      "name" : "PJ1BewegungsEncounter1Aufnahme",
      "description" : "Hackathon Patient Journey 1 Beispiel: BewegungsEncounter 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/PJ1Condition1"
      },
      "name" : "PJ1Condition1",
      "description" : "Hackathon Patient Journey 1 Beispiel: Condition 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-condition-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      }],
      "reference" : {
        "reference" : "Coverage/PJ1Coverage"
      },
      "name" : "PJ1Coverage",
      "description" : "Hackathon Patient Journey 1 Beispiel: Coverage",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-coverage-versicherter-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ1Encounter"
      },
      "name" : "PJ1Encounter",
      "description" : "Hackathon Patient Journey 1 Beispiel: Encounter",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthaltbesuch-generisch"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ1EncounterAufnahme"
      },
      "name" : "PJ1EncounterAufnahme",
      "description" : "Hackathon Patient Journey 1 Beispiel: Encounter",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthaltbesuch-generisch"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ1EncounterBasis"
      },
      "name" : "PJ1EncounterBasis",
      "description" : "Maskierung Patient Journey 1 Beispiel: Encounter",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ1EncounterBund"
      },
      "name" : "PJ1EncounterBund",
      "description" : "Maskierung Patient Journey 1 Beispiel: EncounterBund",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-Bund"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ1EncounterLGF"
      },
      "name" : "PJ1EncounterLGF",
      "description" : "Maskierung Patient Journey 1 Beispiel: EncounterLGF",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-LGF"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ1EncounterSV"
      },
      "name" : "PJ1EncounterSV",
      "description" : "Maskierung Patient Journey 1 Beispiel: EncounterSV",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      }],
      "reference" : {
        "reference" : "Claim/PJ1LKFRequest1"
      },
      "name" : "PJ1LKFRequest1",
      "description" : "Hackathon Patient Journey 1 Beispiel: LKFRequest 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-lkfrequest-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      }],
      "reference" : {
        "reference" : "ClaimResponse/PJ1LKFResponse1"
      },
      "name" : "PJ1LKFResponse1",
      "description" : "Hackathon Patient Journey 1 Beispiel: LKFResponse 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/PJ1Patient"
      },
      "name" : "PJ1Patient",
      "description" : "Hackathon Patient Journey 1 Beispiel: Patient",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/PJ1Procedure1"
      },
      "name" : "PJ1Procedure1",
      "description" : "Hackathon Patient Journey 1 Beispiel: Procedure 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-procedure-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      }],
      "reference" : {
        "reference" : "Claim/PJ1VAERequest1"
      },
      "name" : "PJ1VAERequest1",
      "description" : "Hackathon Patient Journey 1 Beispiel: VAERequest 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-generisch"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      }],
      "reference" : {
        "reference" : "ClaimResponse/PJ1VAEResponse1"
      },
      "name" : "PJ1VAEResponse1",
      "description" : "Hackathon Patient Journey 1 Beispiel: VAEResponse 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claimresponse-vaeresponse-generisch"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ2BewegungsEncounter1"
      },
      "name" : "PJ2BewegungsEncounter1",
      "description" : "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ2BewegungsEncounter2"
      },
      "name" : "PJ2BewegungsEncounter2",
      "description" : "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 2",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ2BewegungsEncounter3"
      },
      "name" : "PJ2BewegungsEncounter3",
      "description" : "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 3",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ2BewegungsEncounter4"
      },
      "name" : "PJ2BewegungsEncounter4",
      "description" : "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 4",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ2BewegungsEncounter5"
      },
      "name" : "PJ2BewegungsEncounter5",
      "description" : "Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 5",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/PJ2Condition1"
      },
      "name" : "PJ2Condition1",
      "description" : "Hackathon Patient Journey 2 Beispiel: Condition 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-condition-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/PJ2Condition2"
      },
      "name" : "PJ2Condition2",
      "description" : "Hackathon Patient Journey 2 Beispiel: Condition 2",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-condition-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      }],
      "reference" : {
        "reference" : "Coverage/PJ2Coverage"
      },
      "name" : "PJ2Coverage",
      "description" : "Hackathon Patient Journey 2 Beispiel: Coverage",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-coverage-versicherter-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/PJ2Encounter"
      },
      "name" : "PJ2Encounter",
      "description" : "Hackathon Patient Journey 2 Beispiel: Encounter",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthaltbesuch-generisch"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      }],
      "reference" : {
        "reference" : "Claim/PJ2LKFRequest1"
      },
      "name" : "PJ2LKFRequest1",
      "description" : "Hackathon Patient Journey 2 Beispiel: LKFRequest 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-lkfrequest-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      }],
      "reference" : {
        "reference" : "ClaimResponse/PJ2LKFResponse1"
      },
      "name" : "PJ2LKFResponse1",
      "description" : "Hackathon Patient Journey 2 Beispiel: LKFResponse 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/PJ2Patient"
      },
      "name" : "PJ2Patient",
      "description" : "Hackathon Patient Journey 2 Beispiel: Patient",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/PJ2Procedure1"
      },
      "name" : "PJ2Procedure1",
      "description" : "Hackathon Patient Journey 2 Beispiel: Procedure 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-procedure-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/PJ2Procedure2"
      },
      "name" : "PJ2Procedure2",
      "description" : "Hackathon Patient Journey 2 Beispiel: Procedure 2",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-procedure-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      }],
      "reference" : {
        "reference" : "Claim/PJ2VAERequest1"
      },
      "name" : "PJ2VAERequest1",
      "description" : "Hackathon Patient Journey 2 Beispiel: VAERequest 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-generisch"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      }],
      "reference" : {
        "reference" : "ClaimResponse/PJ2VAEResponse1"
      },
      "name" : "PJ2VAEResponse1",
      "description" : "Hackathon Patient Journey 2 Beispiel: VAEResponse 1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claimresponse-vaeresponse-generisch"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-PaymentPercentage"
      },
      "name" : "Prozentsatz der Zahlung",
      "description" : "Prozentsatz der Zahlung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-RechnungsnummerKALGF"
      },
      "name" : "Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds",
      "description" : "MOPED Extension für die Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/register-questionnaire"
      },
      "name" : "register-questionnaire",
      "isExample" : true,
      "groupingId" : "QuestionnairesRegistermeldungen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/LKFSAPS3Questionnaire"
      },
      "name" : "SAPS3 Questionnaire",
      "description" : "A questionnaire for collecting SAPS3 data",
      "isExample" : true,
      "groupingId" : "QuestionnairesIntensiv"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/SAPS42.1"
      },
      "name" : "SAPS42.1",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/SonderklasseCS"
      },
      "name" : "Sonderklasse CodeSystem",
      "description" : "CodeSystem für die Klasse (KaOrg)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/SonderklasseVS"
      },
      "name" : "Sonderklasse ValueSet",
      "description" : "ValueSet für die Klasse (KaOrg)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/SpezielleBetriebsformenCS"
      },
      "name" : "Spezielle Betriebsform",
      "description" : "Spezielle Betriebsformen (gemäß ÖSG bzw. KAKuG)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/SpezielleOrganisationsformVS"
      },
      "name" : "Spezielle Organisationsform",
      "description" : "Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan \nzusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/SpezielleOrganisationsformenCS"
      },
      "name" : "Spezielle Organisationsformen",
      "description" : "Spezielle Organisationsformen (gemäß ÖSG bzw. KAKuG)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VAEStatusVS"
      },
      "name" : "Status der Versichertenanspruchserklärung",
      "description" : "Status der Versichertenanspruchserklärung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/VAEStatusCS"
      },
      "name" : "Status der Versichertenanspruchserklärung",
      "description" : "Status der Versichertenanspruchserklärung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/strokeunit-questionnaire"
      },
      "name" : "Stroke Unit Registermeldung – Patientendaten",
      "description" : "Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/StrokeUnitQuestionnaire2025"
      },
      "name" : "Stroke Unit Registermeldung – Patientendaten",
      "description" : "Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten",
      "isExample" : true,
      "groupingId" : "QuestionnairesRegistermeldungen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/strokeunit-questionnaire-response-1"
      },
      "name" : "strokeunit-questionnaire-response-1",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SubscriptionTopic"
      }],
      "reference" : {
        "reference" : "SubscriptionTopic/neueVAE"
      },
      "name" : "Subscription Topic neue VAE",
      "description" : "SubscriptionTopic für die SV, um bei neuen VAEs benachrichtigt zu werden.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SubscriptionTopic"
      }],
      "reference" : {
        "reference" : "SubscriptionTopic/vaeAbgelehnt"
      },
      "name" : "Subscription Topic VAE abgelehnt",
      "description" : "SubscriptionTopic für die KA, um bei abgelehnten VAEs benachrichtigt zu werden.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MopedSupportingInfo"
      },
      "name" : "Supporting Info Extension for ClaimResponse",
      "description" : "Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MopedSupportingInfoFREMDRE"
      },
      "name" : "Supporting Info Extension for ClaimResponse - FREMDRE Slice",
      "description" : "Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MopedSupportingInfoOEGKELBNR"
      },
      "name" : "Supporting Info Extension for ClaimResponse - OEGKELBNR Slice",
      "description" : "Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag"
      },
      "name" : "Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag",
      "description" : "Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV11"
      },
      "name" : "SV11",
      "description" : "Hackathon Stammdaten: ÖGK Wien",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV12"
      },
      "name" : "SV12",
      "description" : "Hackathon Stammdaten: ÖGK Niederösterreich",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV13"
      },
      "name" : "SV13",
      "description" : "Hackathon Stammdaten: ÖGK Burgenland",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV14"
      },
      "name" : "SV14",
      "description" : "Hackathon Stammdaten: ÖGK Oberösterreich",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV15"
      },
      "name" : "SV15",
      "description" : "Hackathon Stammdaten: ÖGK Steiermark",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV16"
      },
      "name" : "SV16",
      "description" : "Hackathon Stammdaten: ÖGK Kärnten",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV17"
      },
      "name" : "SV17",
      "description" : "Hackathon Stammdaten: ÖGK Salzburg",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV18"
      },
      "name" : "SV18",
      "description" : "Hackathon Stammdaten: ÖGK Tirol",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/SV19"
      },
      "name" : "SV19",
      "description" : "Hackathon Stammdaten: ÖGK Vorarlberg",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-TageOhneKostenbeitrag"
      },
      "name" : "Tage ohne Einhebung des Kostenbeitrags",
      "description" : "Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/Test1PatientBund"
      },
      "name" : "Test1PatientBund",
      "description" : "Maskierung Beispiel Patient Bund",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-bund"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/Test1PatientLGF"
      },
      "name" : "Test1PatientLGF",
      "description" : "Maskierung Beispiel PatientLGF",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-LGF"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/Test1PatientOhneMaskierung"
      },
      "name" : "Test1PatientOhneMaskierung",
      "description" : "Maskierung Beispiel Patient",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/Test1PatientSV"
      },
      "name" : "Test1PatientSV",
      "description" : "Maskierung Beispiel PatientSV",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-SV"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/Test2SAPS3QuestionnaireResponse1"
      },
      "name" : "Test2SAPS3QuestionnaireResponse1",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-questionnaireresponse-fallbezogen"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/TISS42.1"
      },
      "name" : "TISS42.1",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/TISS42.2"
      },
      "name" : "TISS42.2",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/TISS42.3"
      },
      "name" : "TISS42.3",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/TransportartVS"
      },
      "name" : "Transportart",
      "description" : "ValueSet für die Transportart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/TransportartCS"
      },
      "name" : "Transportart",
      "description" : "CodeSystem für die Transportart des Patienten",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/UrsacheVS"
      },
      "name" : "Ursache für Behandlung",
      "description" : "ValueSet für die Ursache der Behandlung laut Ka-Org",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/UrsacheCS"
      },
      "name" : "Ursache für Behandlung",
      "description" : "CodeSystem für die Ursache der Behandlung laut Ka-Org",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/MopedVAERequestSubTypeVS"
      },
      "name" : "VAE Claim Subtype ValueSet",
      "description" : "ValueSet für die Art der Claims",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/GeburtenanzahlVS"
      },
      "name" : "Valueset für die Art der Geburtenanzahl",
      "description" : "Valueset für die Art der Geburtenanzahl in MOPED",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/ZahlungskennzeichenVS"
      },
      "name" : "ValueSet Zahlungskennzeichen ARK",
      "description" : "ValueSet für das Zahlungskennzeichen ARK",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VBPKValueSet"
      },
      "name" : "vbPK ValueSet",
      "description" : "ValueSet für die vbPKs",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-vdasid"
      },
      "name" : "VDAS-ID - VersichertenDatenAbfrageService",
      "description" : "Es handelt sich um eine ID, welche bei der VDAS-Abfrage durch die Krankenanstalt vom e-card System vergeben wird und von der Krankenanstalt in der Aufnahme-/Ereignisanzeige mitgeliefert werden kann. Dadurch kann das Abfrageergebnis eindeutig nachvollzogen werden.\nDas Ergebnis der VDAS-Abfrage ist im ambulanten Bereich für den Krankenversicherungsträger verbindlich. Eine Ablehnung aus versicherungsrechtlichen Gründen ist nicht möglich, sofern die Ereignisanzeige jenem Träger aus der VDAS-Abfrage (inkl. VDAS-ID) übermittelt wurde.\nUm eine zwischenstaatliche Verrechnung zu ermöglichen ist bei zwischenstaatlichen Fällen eine Ablehnung zulässig.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/VerdachtArbeitsSchuelerunfallCS"
      },
      "name" : "Verdacht auf Arbeits- oder Schuelerunfall CodeSystem",
      "description" : "CodeSystem für den Verdacht auf einen Arbeits- oder Schuelerunfall",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/VerdachtArbeitsSchuelerunfallVS"
      },
      "name" : "Verdacht auf Arbeits- oder Schuelerunfall ValueSet",
      "description" : "ValueSet für den Verdacht auf einen Arbeits- oder Schuelerunfall",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung"
      },
      "name" : "VerpflegskostenBeitragsbefreiung",
      "description" : "VKBEFR – Verpflegskosten-Beitragsbefreiung",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/WorkflowStatusVS"
      },
      "name" : "Workflow Status eines Falls",
      "description" : "ValueSet für die Statusoptionen in denen sich ein Fall befinden kann.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/WorkflowStatusCS"
      },
      "name" : "Workflow Status eines Falls",
      "description" : "CodeSystem für die Statusoptionen in denen sich ein Fall befinden kann.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      }],
      "reference" : {
        "reference" : "Device/XDokExampleDevice"
      },
      "name" : "XDokExampleDevice",
      "description" : "Moped Example XDok Device",
      "isExample" : true,
      "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-device-XDok"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/moped-ext-Zahlungskennzeichen"
      },
      "name" : "Zahlungskennzeichen",
      "description" : "MOPED Extension für die Kostenmeldung. Konstenmeldung für A = Ausländerverrechnung, R = Regressangelegenheiten oder K = Kosteninformation",
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
      },
      {
        "sourceUrl" : "scope_and_content.html",
        "name" : "scope_and_content.html",
        "title" : "Umfang und Inhalt",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "background.html",
        "name" : "background.html",
        "title" : "Hintergrund",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "challenges.html",
        "name" : "challenges.html",
        "title" : "Herausforderungen",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "moped_konzepte.html",
        "name" : "moped_konzepte.html",
        "title" : "Grundlegende Konzepte und Design-Entscheidungen",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "actors.html",
        "name" : "actors.html",
        "title" : "Akteure",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "workflowmanagement.html",
        "name" : "workflowmanagement.html",
        "title" : "Workflowmanagement",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "obligations.html",
        "name" : "obligations.html",
        "title" : "Obligations",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_plattform_ueberblick.html",
        "name" : "AF_moped_plattform_ueberblick.html",
        "title" : "Moped Plattform - Überblick",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_ueberblick.html",
        "name" : "AF_moped_fall_ueberblick.html",
        "title" : "Moped Fall - Überblick",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_aufnahme.html",
        "name" : "AF_moped_fall_aufnahme.html",
        "title" : "Moped Fall - Aufnahme",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_administration.html",
        "name" : "AF_moped_fall_administration.html",
        "title" : "Moped Fall - Administration",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_patientenversorgung.html",
        "name" : "AF_moped_fall_patientenversorgung.html",
        "title" : "Moped Fall - Patientversorgung",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_entlassung.html",
        "name" : "AF_moped_fall_entlassung.html",
        "title" : "Moped Fall - Entlassung",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_vae.html",
        "name" : "AF_moped_fall_vae.html",
        "title" : "Moped Fall - Versichertenanspruchserklärung",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_abrechnung.html",
        "name" : "AF_moped_fall_abrechnung.html",
        "title" : "Moped Fall - Abrechnung",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_ablehnung_genehmigung.html",
        "name" : "AF_moped_fall_ablehnung_genehmigung.html",
        "title" : "Moped Fall - Genehmigung/Ablehnung",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_kostenmeldung.html",
        "name" : "AF_moped_fall_kostenmeldung.html",
        "title" : "Moped Fall - Kostenmeldung",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_jahres_quartals_meldung.html",
        "name" : "AF_moped_fall_jahres_quartals_meldung.html",
        "title" : "Moped Fall - Jahres-/Quartalsmeldung",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_kommunikation.html",
        "name" : "AF_moped_fall_kommunikation.html",
        "title" : "Moped Fall - Kommunikation",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_moped_fall_prozessuebergreifend.html",
        "name" : "AF_moped_fall_prozessuebergreifend.html",
        "title" : "Moped Fall - Prozessübergreifend",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_lkf_jahresstatistikmeldung.html",
        "name" : "AF_lkf_jahresstatistikmeldung.html",
        "title" : "LKF Jahresstatistikmeldung",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_medizinische_register.html",
        "name" : "AF_medizinische_register.html",
        "title" : "Medizinische Register",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "AF_ems.html",
        "name" : "AF_ems.html",
        "title" : "EMS",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "mappings.html",
        "name" : "mappings.html",
        "title" : "Mappings",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "ka-org_mapping.html",
          "name" : "ka-org_mapping.html",
          "title" : "Ka-Org Mapping",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "lkf_mapping.html",
          "name" : "lkf_mapping.html",
          "title" : "MBDS Mapping",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "jahresmeldungen_mapping.html",
          "name" : "jahresmeldungen_mapping.html",
          "title" : "LKF Jahresmeldung",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "stammdaten_mapping.html",
          "name" : "stammdaten_mapping.html",
          "title" : "Stammdaten",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "imprint.html",
        "name" : "imprint.html",
        "title" : "Impressum",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "authors.html",
        "name" : "authors.html",
        "title" : "Mitwirkende",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "downloads.html",
        "name" : "downloads.html",
        "title" : "Downloads",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "dependencies.html",
        "name" : "dependencies.html",
        "title" : "Dependencies",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "copyright.html",
        "name" : "copyright.html",
        "title" : "Copyright",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "known_issues.html",
        "name" : "known_issues.html",
        "title" : "Known Issues",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "artifacts_manuell.html",
        "name" : "artifacts_manuell.html",
        "title" : "Artifacts Summary",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2024+"
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
        "code" : "suppress-mappings"
      },
      "value" : "http://hl7.org/fhir/workflow"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://hl7.org/fhir/fivews"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://hl7.org/v3"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://hl7.org/v2"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://www.cda-adc.ca/en/services/cdanet/"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://www.pharmacists.ca/"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://hl7.org/fhir/interface"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://hl7.org/v3/cda"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://hl7.org/fhir/documentreference"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://snomed.info/conceptdomain"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://snomed.org/attributebinding"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "http://loinc.org"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "suppress-mappings"
      },
      "value" : "https://wiki.hl7.at/index.php?title=ILF:Allgemeiner_Implementierungsleitfaden_(Version_3)"
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
      "value" : "https://elga.moped.at/history.html"
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
