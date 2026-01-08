# ELGA.MOPED\ANWF 2 - Stationäre Aufnahme - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Überblick & Sunshine Case**](anwendungsfaelle.md)
* **ANWF 2 - Stationäre Aufnahme**

## ANWF 2 - Stationäre Aufnahme

## Anwendungsfall 2: stationäre Aufnahme

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

```

    ---
    config:
      theme: 'base'
      themeVariables:
        primaryColor: '#dbdbdb'         
        actorBorder: '#666'
        noteBkgColor: '#f4f4f4'
        noteBorderColor: '#555'
    ---
    sequenceDiagram
    autonumber
    box rgb(245, 229, 153)
    actor KH as KH (Herz Jesu Krankenhaus)
    end
    box rgb(197, 247, 186)
    participant MP as Moped
    end
    box rgb(186, 196, 247)
    actor SV as SV (ÖGK Wien)
    end
    box rgb(247, 208, 186)
    actor LGF as LGF (Landesgesundheitsfonds Wien)
    end
    box rgb(252, 179, 179) 
    actor Bund as Bund 
    end

    KH ->> MP: $aufnehmen
    Note over KH: Patient wird aufgenommen


```

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

