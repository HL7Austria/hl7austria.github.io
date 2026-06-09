# ELGA.MOPED\Moped Fall - Abrechnung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Abrechnung**

## Moped Fall - Abrechnung

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Abrechnen". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| | |
| :--- | :--- |
| KA (Krankenanstalt) | ✅ |
| LGF (Landesgesundheitsfonds) | ❌ |
| SV (Sozialversicherung) | ❌ |
| Bund | ❌ |

### Ablauf - generisch

#### Abrechnung - generisch

#### Gültige Zustände

Folgende Zustände existieren und dienen in weiterer Folge als Vor-/Nachbedingungen:

* es gibt noch keine Abrechnung
* es gibt bereits eine unbeantwortete vorläufige Abrechnung
* es gibt bereits eine genehmigte vorläufige Abrechnung
* es gibt bereits eine abgelehnte vorläufige Abrechnung
* es gibt bereits eine unbeantwortete finale Abrechnung
* es gibt bereits eine genehmigte finale Abrechnung
* es gibt bereits eine abgelehnte finale Abrechnung

zwischen den Zuständen sind folgende Übergänge möglich:

### Relevante Operations

* [$abrechnen](OperationDefinition-MOPED.Encounter.Abrechnen.md)
* [$update](OperationDefinition-MOPED.Daten.Update.md)

### Ablauf - Beispiele zur Anwendung

#### Abrechnung - vorläufige Abrechnung

##### Beschreibung

Eine vorläufige Abrechnung wird entweder initial eingebracht oder ersetzt aufgrund von Änderungen in den Moped-Falldaten eine vorherige Abrechnung. Es kann so lange neu abgerechnet werden, bis eine finale Abrechnung eingebracht wird.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Abrechnung - finale Abrechnung

##### Beschreibung

Eine finale Abrechnung wird entweder initial eingebracht, folgt auf eine vorläufige Abrechnung oder folgt auf eine Ablehnung einer vorherigen Abrechnung. Nach einer finalen Abrechnung kann der Moped-Fall nur mehr im Falle einer Ablehnung des LGF aktualisiert werden, oder wenn der Fall auf Anfrage der KA neu geöffnet wird.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Abrechnung - Leistung ohne Abrechnungsrelevanz

##### Beschreibung

Es werden Kosten für ambulante Besuche /Aufenthalte bzw. einzelne Leistungen durch unterschiedliche Kostenträger übernommen.

##### Beispiele

Vorsorgeuntersuchung Coloskopie, Vorsorgeuntersuchung Brust-Krebs-Früherkennung bzw. Selbstzahlerleistungen (z.B. Tubensterilisation ohne medizinische Indikation im Rahmen einer Geburt) im Rahmen eines fonds-finanzierten Aufenthalts/Besuchs.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Abrechnung - Änderung von Leistungen oder Diagnosen nach Abrechnung

##### Beschreibung

Leistungen, Diagnosen oder andere abrechnungsrelevante Informationen müssen nach einer bereits erfolgten Abrechnung im Moped-Fall geändert oder hinzugefügt werden. Dadurch wird die vorherige Abrechnung ungültig und muss neu eingebracht werden. Updates können nur dann durchgeführt werden, wenn die letzte Abrechnung vom LGF bereits beantwortet wurde.

##### Beispiele

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

### Relevante Profile

* [$abrechnen Bundle](StructureDefinition-AtMopedBundleAbrechnenKA.md)

### Technische Hinweise

Nach $abrechnen muss ein $genehmigen/$ablehnen folgen, bevor das nächste $update und $abrechnen durchgeführt werden kann

