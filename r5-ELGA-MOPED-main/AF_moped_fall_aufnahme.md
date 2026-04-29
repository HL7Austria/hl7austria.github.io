# ELGA.MOPED\Moped Fall - Aufnahme - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Aufnahme**

## Moped Fall - Aufnahme

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess "Aufnahme". Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| | |
| :--- | :--- |
| KA (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ❌ |
| SV (Sozialversicherung) | ❌ |
| Bund | ❌ |

### Ablauf - generisch

#### Aufnahme (generisch)

### Ablauf - Beispiele zur Anwendung

#### Aufnahme - bPK des Patienten bekannt

##### Beschreibung

Wenn das bPK bekannt ist, dann ist eine datenminimierte Version der Patienten-Ressource im Zuge der Aufnahme einzumelden.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Aufnahme - bPK des Patienten nicht bekannt

##### Beschreibung

Wenn das bPK des Patienten nicht bekannt ist bzw. nicht exisiert, dann ist eine Klarnamen-Version Patienten-Ressource im Zuge der Aufnahme einzumelden.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Aufnahme - Versicherungsdetails bekannt

##### Beschreibung

Sind die Versicherungsdetails bereits bei der Aufnahme bekannt, können diese direkt in $aufnehmen eingebracht werden. Hinweis: auch die Markierung eines Falls als "Selbstzahler" wird in diesem Sinn als Versicherungsdetails verstanden.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Aufnahme - Selbstzahler

##### Beschreibung

Ist bereits bei der Aufnahme bekannt, dass der Patient ein Selbstzahler ist, kann diese Information direkt in $aufnehmen eingebracht werden. Hinweis: auch die Markierung eines Falls als "Selbstzahler" wird in diesem Sinn als Versicherungsdetails verstanden.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Aufnahme - Versicherungsdetails noch nicht bekannt

##### Beschreibung

Die Versicherungsdetails sind bei der Aufnahme optional. Wenn sie erst nach Ausführen von $aufnehmen bekannt sind, können sie mit Hilfe von einem anschließenden $update nachgereicht werden. Hinweis: auch die Markierung eines Falls als "Selbstzahler" wird in diesem Sinn als Versicherungsdetails verstanden.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Aufnahme - Neugeborenes

##### Beschreibung

TBD - ein Neugeborenes hat oft noch kein bPK und keine Versicherungsdaten. Hat es bereits einen fixen Vornamen (ich denke, da hat man mehrere Tage Zeit)

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Aufnahme - Durch Überweisung

##### Beschreibung

Kommt ein Patient durch eine Überweisung in die Krankenanstalt, so muss der Überweiser mit angegeben werden. GDAs aus Österreich sind in Moped als Stammdaten hinterlegt und können referenziert werden. Für ausländische GDAs muss eine neue Organization-Ressource mit den Details mitgeliefert werden.

| | |
| :--- | :--- |
| Ambulant | ❓ |
| Stationär | ✅ |

TBD: wird die überweisende Organization auch für ambulante Fälle mitgegeben?

#### Aufnahme - Durch Transfer

##### Beschreibung

TBD: Es muss die richtige Aufnahmeart vergeben werden und die überweisende Organization befüllt

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

### Relevante Profile

* [$aufnahme Bundle](StructureDefinition-MopedUpdateBundleKA.md)
* [Patientenressource](TBD)
* [Encounter Stationär](StructureDefinition-MopedEncounterS.md)
* [Encounter Ambulant](TBD)
* [TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.md)
* [TransferEncounter Ambulant](TBD)
* [TransferEncounter Intensiv](TBD)
* [Aufnahmediagnose](StructureDefinition-MopedCondition.md)
* optional: [Coverage](StructureDefinition-MopedCoverage.md) oder [Selbstzahler Coverage](TBD)
* optional: [RelatedPerson Hauptversicherter](TBD)
* optional: [Überweisende Organization](TBD)

### Technische Hinweise

