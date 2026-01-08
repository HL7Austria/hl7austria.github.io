# ELGA.MOPED\ANWF 28-32 - SV Kostenübernahmevariationen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Überblick & Sunshine Case**](anwendungsfaelle.md)
* **ANWF 28-32 - SV Kostenübernahmevariationen**

## ANWF 28-32 - SV Kostenübernahmevariationen

## Anwendungsfall 28: Positive VAE inkl. Verlängerung

In Arbeit :)

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

## Anwendungsfall 29: Negative VAE

### Betroffene Akteure

| | |
| :--- | :--- |
| KH (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ❌ |
| SV (Sozialversicherung) | ✅ |
| Bund | ❌ |

### Betroffene Behandlungsarten

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

### Beschreibung

Aufgrund der eingelangten Aufnahme-/Ereignisanzeige erfolgt seitens SV eine negative Versichertenanspruchserklärung. Bei einer negativen Versichertenanspruchserklärung wird der jeweilige Ablehnungsgrund (Code) angeführt. Das KH prüft regelmäßig, ob es Ablehnungen der VAE seitens der SV gibt. Diese Fälle müssen bearbeitet werden. Im schlimmsten Fall muss der Patient die Rechnung als Selbstzahler selbst bezahlen. Ablehnungsgründe gibt es jedoch einige, die durchaus durch die Verwaltung im KH behoben werden können, so dass eine positive VAE durch die SV nach erneuter Anfrage in Folge möglich ist.

### Beispiel

* Patient wurde anstelle von selbstversichert als mitversichert gemeldet und umgekehrt (nach Richtigstellung dann positive VAE möglich)
* Versicherung nicht festgestellt, weil nicht versichert
* Versicherung falsch, da andere SV—Träger zuständig ist (positive VAE nach Anfrage bei anderem Träger möglich)

### Technische Hinweise

* VAERequest und Response werden in FHIR durch Profile der Claim Ressource abgebildet.
* Kommentare zum jeweiligen VAE Ablehnungsgrund können in ClaimResponse.processNote.text festgehalten werden.

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
    KH->>MP: Anfrage VAE POST VAERequest 1
    Note over KH: Anfrage auf Versicherungsanspruchserklärung 
    SV->>MP: VAEResponse 1(Status 03 'nicht leistungszuständig')
    Note over SV: Negative VAE
    Note over MP: durch negative Response wird der VAERequest 1 automatisch gecancelled
    alt Erneute Anfrage bei gleichem Träger mit anderen Daten
      KH->>MP: Anfrage VAE POST VAERequest 2
      Note over KH: KH stellt modifizierte Anfrage an ÖGK
    else Patient hat noch einen Anspruch bei einem anderen SV Träger (z.B. SVS)
      KH->>MP: $update mit SVS referenziert in der neuen Coverage
      Note over KH: KH setzt die SVS als zuständige Versicherung
      KH->>MP: Anfrage VAE POST VAERequest 2
      Note over KH: KH stellt neue Anfrage an SVS
    else  Patient wird zum Selbstzahler
      KH->>MP: $update mit Selbstzahler Coverage
      Note over KH: KH meldet Patienten als Selbstzahler 
    end

```

### Relevante Profile

* [Coverage](StructureDefinition-MopedCoverage.md) oder [Selbstzahler Coverage](StructureDefinition-MopedCoverageSelbstzahler.md)
* [VAERequest](StructureDefinition-MopedVAERequest.md)
* [VAEResponse](StructureDefinition-MopedVAEResponse.md)
* [$update Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.md)

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
  * Auslöser: SV
  * Empfänger: KH
  * Beschreibung zusätzlicher Bedingungen: /
  * Relevantes Feld: /
  * Bedingung: /
* Titel: VAE wurde abgelehnt
  * Beschreibung: Das KH möchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde.
  * Trigger Ressource: VAEResponse
  * Interaktion: create
  * Auslöser: KH
  * Empfänger: SV
  * Beschreibung zusätzlicher Bedingungen: Negative VAE
  * Relevantes Feld: VAEResponse.decision
  * Bedingung: != #00 AND != #19

## Anwendungsfall 30: VAE mit Status in Bearbeitung

In Arbeit :)

### Betroffene Akteure

| | |
| :--- | :--- |
| KH (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ❌ |
| SV (Sozialversicherung) | ✅ |
| Bund | ❌ |

### Betroffene Behandlungsarten

| | |
| :--- | :--- |
| Ambulant | ✅ |
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

## Anwendungsfall 31: VAE doch positiv (nach vorheriger negativer VAE)

In Arbeit :)

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
    actor KH as KH (Herz Jesu Krankenhaus)
    end
    box rgb(197, 247, 186)
    participant MP as MP
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

## Anwendungsfall 32: VAE doch negativ (nach vorheriger positiver VAE)

In Arbeit :)

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

