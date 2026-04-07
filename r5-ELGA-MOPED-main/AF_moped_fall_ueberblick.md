# ELGA.MOPED\Moped Fall - Überblick - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Überblick**

## Moped Fall - Überblick

Diese Seite beschreibt die technische Umsetzung der in MOPED abgebildeten Prozesse rund um die Abwicklung eines MOPED-Falls – von der Aufnahme über die Versorgung bis hin zu Abrechnung und Meldung. Ziel ist es, die Abläufe transparent und nachvollziehbar darzustellen sowie aufzuzeigen, wie einzelne Teilprozesse modular zusammengesetzt werden können, um unterschiedliche Szenarien des MOPED-Falls abzubilden.

Die Übersichtsgrafik unten veranschaulicht den generellen Ablauf eines MOPED-Falls. Darauf aufbauend werden die spezifischen Prozesse im stationären, ambulanten und selbstzahlenden Bereich im Standardablauf erläutert. Jeder dieser Standardabläufe wird in weiterer Folge in klar definierte Teilprozesse zerlegt, die mit ihren jeweiligen Vor- und Nachbedingungen beschrieben sind.

Dieses Vorgehen erlaubt eine flexible Modellierung realer Prozessvarianten: Die Teilprozesse können – je nach Fallkonstellation – „puzzleartig“ miteinander kombiniert werden. So wird ersichtlich, an welchen Stellen innerhalb des Gesamtprozesses bestimmte Abläufe greifen und welche Abhängigkeiten zwischen ihnen bestehen.

![](MOPED_Fall_Ueberblick.svg)

Die folgenden Prozesse in ihrem Standardablauf werden im Detail beschrieben:

* [Moped Fall Stationär](AF_moped_fall_ueberblick.md#anwendungsfall-standardablauf-im-sunshine-case)
* [Moped Fall Ambulant](AF_moped_fall_ueberblick.md#anwendungsfall-3-ambulanter-fall)
* [Moped Fall Selbstzahler](AF_moped_fall_ueberblick.md#anwendungsfall-14-selbstzahler)

Die einzelnen Schritte dieser Standardabläufe sowie mögliche Abweichungen werden als „puzzleartig“ zusammensetzbare Teilprozesse beschrieben – jeweils mit ihren jeweiligen Vor- und Nachbedingungen. Dadurch wird nachvollziehbar, an welchen Stellen innerhalb des Gesamtprozesses die einzelnen Teilprozesse zur Anwendung kommen können.

Eine Übersicht aller Teilprozesse findet sich [hier](#liste-der-teilprozesse).

### Standardablauf Moped-Fall stationär

#### Betroffene Akteure

| | |
| :--- | :--- |
| KH (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ✅ |
| SV (Sozialversicherung) | ✅ |
| Bund | ✅ |

#### Betroffene Behandlungsarten

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Beschreibung: Susi Sonnenschein

Die Patientin Susi Sonnenschein wird stationär aufgenommen. Im Verlauf ihres Aufenthalts wird sie verlegt, der zuständige Versicherer wird festgelegt und angefragt und Diagnosen sowie Leistungen werden dokumentiert. Nach Entlassung erfolgt die Abrechnung und Freigabe der Fallakte zur Einsicht durch den Bund sowie die Meldung der Kosteninformation an die SV.

#### Beispiel

#### Technische Hinweise

#### Vorbedingung

#### Ablauf

#### Relevante Profile

* [$aufnahme Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* [$update Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* TBD

#### Relevante Invarianten

#### Mögliche Notifications

##### SubscriptionTopic: neue VAE wurde angefragt

Die SV möchte benachrichtigt werden, wenn ein neuer VAERequest für sie bereitgestellt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-neueVAE.md) definiert.

##### SubscriptionTopic: VAE wurde abgelehnt

Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-VAEabgelehnt.json.md) definiert.

##### Tabellarische Übersicht

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

In Arbeit :)

### Standardablauf Moped-Fall Selbstzahler

### Betroffene Akteure

| | |
| :--- | :--- |
| KH (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ✅ |
| SV (Sozialversicherung) | ❌ |
| Bund | ✅ |

### Betroffene Behandlungsarten

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

### Beschreibung: Selbstzahler

Vorgehensweise für Patienten, die nicht über die Sozialversicherungsschiene gemeldet werden, da sie Selbstzahler sind, jedoch im LKF aufscheinen.

### Beispiel

Nicht-EU Ausländer (z.B. US -Bürger), Patienten die über die Sozialhilfe oder Justizanstalten abgerechnet werden 

### Technische Hinweise

Die Composition Section zustaendigeSV bleibt in diesem Fall leer, was Auswirkungen auf die Berechtigungen und den weiteren Ablauf hat. Die Operation $melden ist z.B. in diesem Fall nicht erlaubt und würde fehlschlagen.

### Ablauf

### Relevante Profile

* Selbstzahler Coverage (TBD Link)

### Relevante Invarianten

### Mögliche Notifications

Keine relevanten Notifications für diesen Standardablauf identifiziert.

### Liste der Teilprozesse:

#### Moped Fall - Aufnahme:

* [ANWF 1 - Planaufnahme 🔄](AF_moped_fall_aufnahme.md#anwendungsfall-1-planaufnahme)
* [ANWF 2 - Stationäre Aufnahme ✅](AF_moped_fall_aufnahme.md#anwendungsfall-2-stationäre-aufnahme)
* [ANWF 18 - Transfer 🔄](AF_moped_fall_aufnahme.md#anwendungsfall-18-transfer)

#### Moped Fall - Patientversorgung:

* [ANWF 7 - Behandlungsabbruch 🔄](AF_moped_fall_patientenversorgung.md#anwendungsfall-7-behandlungsabbruch-vor-erbrachter-leistung)
* [ANWF 17 - Zwischenbetriebliche Leistungserbringung ✅](AF_moped_fall_patientenversorgung.md#anwendungsfall-17-zwischenbetriebliche-leistungserbringung)
* [ANWF 19 - Interne Verlegung ✅](AF_moped_fall_patientenversorgung.md#anwendungsfall-19-interne-verlegung)
* [ANWF 20 - Urlaub ✅](AF_moped_fall_patientenversorgung.md#anwendungsfall-20-beurlaubung)
* [ANWF 21 - gesundes Neugeborenes 🔄](AF_moped_fall_patientenversorgung.md#anwendungsfall-21-gesundes-neugeborenes)
* [ANWF 22 - krankes Neugeborenes 🔄](AF_moped_fall_patientenversorgung.md#anwendungsfall-22-krankes-neugeborenes)
* [ANWF 26 - Überlieger 🔄](AF_moped_fall_patientenversorgung.md#anwendungsfall-26-überlieger)
* [ANWF 53 - Intensivaufenthalt 🔄](AF_moped_fall_patientenversorgung.md#anwendungsfall-53-intensivaufenthalt-mit-intensivdaten)

#### Moped Fall - Entlassung:

* [ANWF 23-25 - Entlassung & Hauptdiagnose ✅](AF_moped_fall_entlassung.md#anwendungsfall-23-entlassung-mit-hauptdiagnose)
* [ANWF 50 - Urgenz 🔄](AF_moped_fall_entlassung.md#anwendungsfall-50-urgenz)

#### Moped Fall - Versichertenanspruchserklärung:

* [ANWF 10 - Klassenwechsel ✅](AF_moped_fall_vae.md#anwendungsfall-10-klassenwechsel)
* [ANWF 11 - Versicherungswechsel 🔄](AF_moped_fall_vae.md#anwendungsfall-11-versicherungswechsel)
* [ANWF 28-32 - SV Kostenübernahmevariationen 🔄](AF_moped_fall_vae.md#anwendungsfall-28-positive-vae-inkl-verlängerung)

#### Moped Fall - Abrechnung:

* [ANWF 27 - Leistungen ohne Abrechnungsrelevanz ✅](AF_moped_fall_abrechnung.md#anwendungsfall-27-leistung-ohne-abrechnungsrelevanz)
* [ANWF 38 - Laufende Generierung der LKF-Daten](AF_moped_fall_abrechnung.md#anwendungsfall-38-laufende-generierung-der-lkf-daten)

#### Moped Fall - Ablehnung/Genehmigung:

* [ANWF 39-41 - medizinische und qualitative Rückmeldungen](AF_moped_fall_ablehnung_genehmigung.md#anwendungsfall-39-qualitative-anmerkung-der-lkf-daten)
* [ANWF 43 - Freigabe der LKF-Daten](AF_moped_fall_ablehnung_genehmigung.md#anwendungsfall-43-freigabe-der-lkf-daten)

#### Moped Fall - Kostenmeldung:

* [ANWF 12,13,15,35-37 - Ausländerverrechnung und Regress 🔄](AF_moped_fall_kostenmeldung.md#anwendungsfall-12-dauerbetreute)
* [ANWF 33-34 - Kostenmeldungen? 🔄](AF_moped_fall_kostenmeldung.md#anwendungsfall-33-kostenmeldung---korrekte-zuordnung)

#### Moped Fall - Jahres-/Quartalsmeldung:

* [ANWF 42 - Quartalsmeldung 🔄](AF_moped_fall_jahres_quartals_meldung.md#anwendungsfall-42-quartalsmäßige-bereitstellung-der-lkf-daten)
* [ANWF 44 - Jahresmeldung 🔄](AF_moped_fall_jahres_quartals_meldung.md#anwendungsfall-42-jährliche-bereitstellung-der-lkf-daten)

#### Moped Fall - Prozessübergreifend:

* [ANWF 4,5 - Fallartwechsel 🔄](AF_moped_fall_prozessuebergreifend.md#anwendungsfall-4-fallartwechsel-ambulant---stationär)
* [ANWF 6 - Mehrmalige Aufnahme an einem Tag 🔄](AF_moped_fall_prozessuebergreifend.md#anwendungsfall-6-abgeschlossene-ambulante-behandlung-und-stationäre-aufnahme-am-gleichen-tag-innerhalb-eines-khs)
* [ANWF 8,9,47 - Stammdatenabgleich 🔄](AF_moped_fall_prozessuebergreifend.md#anwendungsfall-8-patientenverwechslung-vor-leistungserbringung)
* [ANWF 48 - Mehrere aktive Fälle in MOPED 🔄](AF_moped_fall_prozessuebergreifend.md#anwendungsfall-48-mehrere-aktive-fälle-in-moped)
* [ANWF 49 - Aufrollung nach Speicherfrist 🔄](AF_moped_fall_prozessuebergreifend.md#anwendungsfall-49-aufrollung-nach-speicherfrist)
* [ANWF 54 - Stammdatenänderung 🔄](AF_moped_fall_prozessuebergreifend.md#anwendungsfall-54-stammdatenänderung)

#### Noch zuzuordnen:

* [ANWF 51-52 - Asylierung 🔄](TBD)

