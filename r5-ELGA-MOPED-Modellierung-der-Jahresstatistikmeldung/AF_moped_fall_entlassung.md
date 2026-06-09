# ELGA.MOPED\Moped Fall - Entlassung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Entlassung**

## Moped Fall - Entlassung

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Entlassung". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| | |
| :--- | :--- |
| KA (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ❌ |
| SV (Sozialversicherung) | ❌ |
| Bund | ❌ |

### Ablauf - generisch

#### Entlassung (generisch)

### Ablauf - Beispiele zur Anwendung

#### Entlassung - Hauptdiagnose bereits bekannt

##### Beschreibung

Die Patientenversorgung ist abgeschlossen, der Patient wird entlassen und die Hauptdiagnose ist zu diesem Zeitpunkt bereits bekannt.

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

#### Entlassung - Patient verlässt Krankenhaus; Hauptdiagnose noch unbekannt

##### Beschreibung

Die Patientenversorgung ist abgeschlossen, der Patient wird entlassen. Es dauert jedoch noch etwas, bis die Hauptdiagnose bekannt ist.

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

#### Entlassung - Durch Transfer in ein anderes Krankenhaus

##### Beschreibung

TBD

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

### Relevante Profile

* [$entlassen Bundle](StructureDefinition-AtMopedBundleEntlassenKA.md)
* [Encounter Stationär](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-basis.md)
* [BewegungsEncounter Stationär](StructureDefinition-AtMopedEncounterBewegungStationaerBasis.md)
* [Diagnose](StructureDefinition-AtMopedConditionBasis.md)

### Technische Hinweise

