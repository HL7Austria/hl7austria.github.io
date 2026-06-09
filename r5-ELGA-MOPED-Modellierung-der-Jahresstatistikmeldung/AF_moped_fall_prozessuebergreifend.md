# ELGA.MOPED\Moped Fall - Prozessübergreifend - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Prozessübergreifend**

## Moped Fall - Prozessübergreifend

### Teilprozess 4: Fallartwechsel Ambulant -> Stationär

In Arbeit :)

### Teilprozess 6: Abgeschlossene ambulante Behandlung und stationäre Aufnahme am gleichen Tag innerhalb einer KA

In Arbeit :)

### Betroffene Akteure

| | |
| :--- | :--- |
| KA (Krankenhaus) | ✅ / ❌ |
| LGF (Landesgesundheitsfonds) | ✅ / ❌ |
| SV (Sozialversicherung) | ✅ / ❌ |
| Bund | ✅ / ❌ |

### Betroffene Behandlungsarten

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

### Beschreibung

### Beispiel

### Technische Hinweise

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
    actor KA as KA (Herz Jesu Krankenhaus)
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


```

### Relevante Profile

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

### Teilprozess 8: Patientenverwechslung vor Leistungserbringung

### Teilprozess 9: Patientenverwechslung nach Leistungserbringung

### Teilprozess 47: Stammdatenabgleich der Patienten

In Arbeit :)

### Teilprozess 48: Mehrere aktive Fälle in Moped

In Arbeit :)

### Teilprozess 49: Aufrollung nach Speicherfrist

In Arbeit :)

### Teilprozess 54: Stammdatenänderung

In Arbeit :)

