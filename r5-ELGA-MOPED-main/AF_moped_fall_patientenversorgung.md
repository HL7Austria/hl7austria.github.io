# ELGA.MOPED\Moped Fall - Patientversorgung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Patientversorgung**

## Moped Fall - Patientversorgung

### Teilprozess 7: Behandlungsabbruch vor erbrachter Leistung

In Arbeit :)

## Teilprozess 17: Zwischenbetriebliche Leistungserbringung

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
| Ambulant | ❌ |
| Stationär | ✅ |

### Beschreibung

Patient befindet sich stationär in KH A und muss für eine z.B. Diagnostik in das KH B gebracht werden. Der stationäre Fall im KH A läuft weiter. Die Diagnostik/Therapie im KH B wird als ambulanter “zwischenbetrieblicher” Fall in geführt.

### Beispiel

* Ambulante oder tagesklinische Leistung in einem anderen Haus
* Konsiliarleistung durch ein anderes Krankenhaus
* Diagnostik oder Therapie an einem ausgelagerten Standort (z.B. Herzkatheter in einem anderen KH)

### Technische Hinweise

Nur das KH A interagiert in diesem Fall mit Moped.

### Ablauf

### Relevante Profile

* [$update Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* [Procedure](StructureDefinition-MopedProcedure.md)

### Relevante Invarianten

Keine relevanten Invarianten identifiziert.

### Mögliche Notifications

Keine relevanten Notifications identifiziert.

## Teilprozess 19: Interne Verlegung

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
| Ambulant | ❌? |
| Stationär | ✅ |

### Beschreibung

Der Patient wird innerhalb einer Krankenanstalt verlegt. Sobald sich der Funktions(sub)code, egal an welcher Stelle, ändert, kommt es zu einer Änderung in MOPED. Bei jeder Verlegung muss alles übermittelt werden, was in einer X02 enthalten wäre (Interne Verlegung in einer Krankenanstalt ist auch ein Wechsel).

### Beispiel

* Patient wird von Bett/Zimmer zu Bett/Zimmer verlegt, gleiche Station –> keine MOPED Relevanz
* Patient wird von Station zu Station verlegt, ein Primariat (Subcode gleich) —> keine MOPED Relevanz
* Patient wird von Station A zu einer Station B mit anderem Funktionscode verlegt -> Bei Änderung des Funktions(sub)codes muss eine Verlegung in MOPED erfolgen

### Technische Hinweise

Hier ist es wichtig zwischen dem Encounter (Aufenthalt) und dem TransferEncounter (Verlegung/Bewegung) zu unterscheiden.

### Ablauf

### Relevante Profile

* [TransferEncounter Ambulant](StructureDefinition-MopedTransferEncounterA.md)
* [TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.md)

### Relevante Invarianten

### Mögliche Notifications

## Teilprozess 20: Beurlaubung

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
| Ambulant | ❌ |
| Stationär | ✅ |

### Beschreibung

Eine Patient unterbricht seinen stationären Aufenthalt und kommt an einem späteren Tag wieder. Bezeichnung: Urlaub bzw. Abwesenheit

### Beispiel

* TBD

### Technische Hinweise

Hier ist es wichtig zwischen dem Encounter (Aufenthalt) und dem TransferEncounter (Verlegung/Bewegung) zu unterscheiden.

### Ablauf

### Relevante Profile

* [TransferEncounter Stationär (Bewegung)](StructureDefinition-MopedTransferEncounterS.md)
* [Encounter Stationär (Aufenthalt)](StructureDefinition-MopedEncounterS.md)

### Relevante Invarianten

### Mögliche Notifications

### Teilprozess 21: gesundes Neugeborenes

### Teilprozess 22: krankes Neugeborenes

In Arbeit :)

### Teilprozess 26: Überlieger

In Arbeit :)

### Teilprozess 53: Intensivaufenthalt mit Intensivdaten

In Arbeit :)

