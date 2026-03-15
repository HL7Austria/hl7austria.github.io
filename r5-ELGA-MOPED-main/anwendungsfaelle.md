# ELGA.MOPED\Überblick & Sunshine Case - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Überblick & Sunshine Case**

## Überblick & Sunshine Case

## Anwendungsfälle

In diesem Abschnitt werden typische und exemplarische Abläufe im Rahmen des MOPED-Prozesses beschrieben. Die Anwendungsszenarien dienen der Veranschaulichung konkreter Anwendungsfälle auf Basis der in diesem Leitfaden definierten Rollen, Profile und Operationen. Die Szenarien zeigen sowohl durchgängige End-to-End-Prozesse als auch fokussierte Teilprozesse. Jedes Beispiel illustriert, wie die in MOPED definierten Schnittstellen in realen Fällen eingesetzt werden können. Dabei wird besonderer Wert auf die fachliche Nachvollziehbarkeit sowie die technische Umsetzung (Ressourcen, Statusübergänge, Operations) gelegt.

Ziel dieser Szenarien ist es ein gemeinsames Verständnis über typische Abläufe und deren Abbildung im FHIR-Moped-Kontext zu vermitteln.

### Liste der Anwendungsfälle

Die folgenden Anwendungsfälle werden beschrieben:

* [Überblick & Sunshine Case ✅](anwendungsfaelle.md)
* [ANWF 1 - Planaufnahme 🔄](AF1.md)
* [ANWF 2 - Stationäre Aufnahme ✅](AF2.md)
* [ANWF 3 - Ambulante Aufnahme 🔄](AF3.md)
* [ANWF 4,5 - Fallartwechsel 🔄](AF4u5.md)
* [ANWF 6 - Mehrmalige Aufnahme an einem Tag 🔄](AF6.md)
* [ANWF 7 - Behandlungsabbruch 🔄](AF7.md)
* [ANWF 8,9,47 - Stammdatenabgleich 🔄](AF8u9u47.md)
* [ANWF 10 - Klassenwechsel ✅](AF10.md)
* [ANWF 11 - Versicherungswechsel 🔄](AF11.md)
* [ANWF 12,13,15,35-37 - Ausländerverrechnung und Regress 🔄](AF12.md)
* [ANWF 14 - Selbstzahler ✅](AF14.md)
* [ANWF 17 - Zwischenbetriebliche Leistungserbringung ✅](AF17.md)
* [ANWF 18 - Transfer 🔄](AF18.md)
* [ANWF 19 - Interne Verlegung ✅](AF19.md)
* [ANWF 20 - Urlaub ✅](AF20.md)
* [ANWF 21,22 - Neugeborene 🔄](AF21u22.md)
* [ANWF 23-25 - Entlassung & Hauptdiagnose ✅](AF23bis25.md)
* [ANWF 26 - Überlieger 🔄](AF26.md)
* [ANWF 27 - Leistungen ohne Abrechnungsrelevanz ✅](AF27.md)
* [ANWF 28-32 - SV Kostenübernahmevariationen 🔄](AF28bis32.md)
* [ANWF 33-34 - Kostenmeldungen? 🔄](AF33u34.md)
* [ANWF 38-44 - LKF Daten 🔄](AF38bis44.md)
* [ANWF 45 - Jahresmeldung 🔄](AF45.md)
* [ANWF 46 - VDAS Rückmeldung (Patient verstorben) 🔄](AF46.md)
* [ANWF 48 - Mehrere aktive Fälle in MOPED 🔄](AF48.md)
* [ANWF 49 - Aufrollung nach Speicherfrist 🔄](AF49.md)
* [ANWF 50 - Urgenz 🔄](AF50.md)
* [ANWF 51-52 - Asylierung 🔄](AF51u52.md)
* [ANWF 53 - Intensivaufenthalt 🔄](AF53.md)
* [ANWF 54 - Stammdatenänderung 🔄](AF54.md)

## Anwendungsfall: Standardablauf im Sunshine Case

### Betroffene Akteure

| | |
| :--- | :--- |
| KH (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ✅ |
| SV (Sozialversicherung) | ✅ |
| Bund | ✅ |

### Betroffene Behandlungsarten

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

### Beschreibung: Susi Sonnenschein

Die Patientin Susi Sonnenschein wird stationär aufgenommen. Im Verlauf ihres Aufenthalts wird sie verlegt, der zuständige Versicherer wird festgelegt und angefragt und Diagnosen sowie Leistungen werden dokumentiert. Nach Entlassung erfolgt die Abrechnung und Freigabe der Fallakte zur Einsicht durch den Bund sowie die Meldung der Kosteninformation an die SV.

### Beispiel

### Technische Hinweise

### Ablauf

### Relevante Profile

* [$aufnahme Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* [$update Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* TBD

### Relevante Invarianten

### Mögliche Notifications

#### SubscriptionTopic: neue VAE wurde angefragt

Die SV möchte benachrichtigt werden, wenn ein neuer VAERequest für sie bereitgestellt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-neueVAE.md) definiert.

#### SubscriptionTopic: VAE wurde abgelehnt

Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-VAEabgelehnt.json.md) definiert.

#### Tabellarische Übersicht

* Titel: neue VAE wurde angefragt
  * Beschreibung: Die SV möchte benachrichtigt werden, wenn ein neuer VAERequest für sie bereitgestellt wurde.
  * Trigger Ressource: VAERequest
  * Interaktion: create
  * Auslöser: KH
  * Empfänger: SV
  * Beschreibung zusätzlicher Bedingungen: /
  * Relevantes Feld: /
  * Bedingung: /
* Titel: VAE wurde abgelehnt
  * Beschreibung: Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde.
  * Trigger Ressource: VAEResponse
  * Interaktion: create
  * Auslöser: SV
  * Empfänger: KH
  * Beschreibung zusätzlicher Bedingungen: Negative VAE
  * Relevantes Feld: VAEResponse.decision
  * Bedingung: != #00 AND != #19

