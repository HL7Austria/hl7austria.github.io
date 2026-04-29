# ELGA.MOPED\Moped Fall - Patientversorgung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Patientversorgung**

## Moped Fall - Patientversorgung

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Patientenversorgung". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| | |
| :--- | :--- |
| KA (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ❌ |
| SV (Sozialversicherung) | ❌ |
| Bund | ❌ |

### Ablauf - generisch

#### Patientenversorgung (generisch)

### Ablauf - Beispiele zur Anwendung

#### Neue Verlegung (stationär) bzw. Kontakt (ambulant)

##### Beschreibung

Ein Patient wird auf eine Organisationseinheit verlegt bzw. kommt in eine Ambulanz. Ein Patient kann nicht auf mehreren Organisationseinheiten / in mehreren Ambulanzen gleichzeitig behandelt werden.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Aktualisierte Verlegung (stationär) bzw. Kontakt (ambulant)

##### Beschreibung

Eine zuvor eingebrachte Verlegung / Kontakt wird aktualisiert.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Aufnahmediagnose nachreichen

##### Beschreibung

Die Aufnahmediagnose war zum Zeitpunkt der administrativen Aufnahme noch unbekannt und wird nachgereicht.

| | |
| :--- | :--- |
| Ambulant | ❓ |
| Stationär | ✅ |

TBD: ist eine Aufnahmediagnose für ambulant relevant?

#### Erbrachte Leistung einbringen

##### Beschreibung

Eine neue Leistung wird erfasst die im Zuge der Patientenversorgung erbracht wurde.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Gestellte Diagnose einbringen

##### Beschreibung

Während der Patientenbehandlung wird eine Diagnose gestellt. Diese kann entweder eine Zusatz- oder Hauptdiagnose sein. In manchen Fällen ist sie auch gleichzeitig die Aufnahmediagnose.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Veränderung von Falldetails

##### Beschreibung

Manche Details zum Aufenthalt können verwendert werden. Als unveränderbar gelten jedenfalls die Bestandteile der Schlüsselkombination eines Moped-Falls.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Einbringen der Intensivdokumentation

##### Beschreibung

Der Aufenthalt auf Intensivstationen (identifiziert durch bestimmte Funktionscodes) erfordert eine Einmeldung der Intensivdokumentation.

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

#### Einbringen der Stroke-Unit Registermeldung

##### Beschreibung

TBD: gibt es einen Teil der Registermeldung die bei ambulanter Nachbehandlung eingebracht wird?

| | |
| :--- | :--- |
| Ambulant | ❓ |
| Stationär | ✅ |

### Relevante Profile

* [$update Bundle](StructureDefinition-MopedUpdateBundleKA.md)
* [SAPS3 Questionnaire](Questionnaire-LKFSAPS3Questionnaire.md)
* [TISS-A Questionnaire](Questionnaire-LKFTISSAQuestionnaire.md)

### Technische Hinweise

