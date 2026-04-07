# ELGA.MOPED\Moped Fall - Aufnahme - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Aufnahme**

## Moped Fall - Aufnahme

## Teilprozess 1: Planaufnahme

## Teilprozess 2: stationäre Aufnahme

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

Der Patient wird stationär aufgenommen und die Aufnahme wird so früh wie möglich in Moped bereitgestellt.

### Beispiel

### Technische Hinweise

Der Patient wird stationär in das KH aufgenommen und ein Aufenthalt (Encounter) wird angelegt. In diesem Zuge wird auch gleich die Station auf die er aufgenommen wird (TransferEncounter) und die Aufnahmediagnose mit übermittelt. Die zuständige Versicherung kann in Form einer Coverage direkt zur Verfügung gestellt werden, sofern diese bereits bekannt ist. Dies ist aber bei der Aufnahme nicht verpflichtend und kann später durch $update eingebracht werden.

### Ablauf

### Relevante Profile

* [$aufnahme Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* [Patientenressource](TBD)
* [Encounter Stationär](StructureDefinition-MopedEncounterS.md)
* [TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.md)
* [Aufnahmediagnose](StructureDefinition-MopedCondition.md)
* optional: [Coverage](StructureDefinition-MopedCoverage.md) oder [Selbstzahler Coverage](TBD)

### Relevante Invarianten

### Mögliche Notifications

#### SubscriptionTopic: X

#### Tabellarische Übersicht

* Titel: 
  * Beschreibung: 
  * Trigger Ressource: 
  * Interaktion: 
  * Auslöser: 
  * Empfänger: 
  * Beschreibung zusätzlicher Bedingungen: 
  * Relevantes Feld: 
  * Bedingung: 

### Teilprozess 18: Transfer

In Arbeit :)

