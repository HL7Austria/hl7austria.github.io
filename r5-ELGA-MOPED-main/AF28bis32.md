# ELGA.MOPED\ANWF 28-32 - SV Kostenübernahmevariationen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Überblick & Sunshine Case**](anwendungsfaelle.md)
* **ANWF 28-32 - SV Kostenübernahmevariationen**

## ANWF 28-32 - SV Kostenübernahmevariationen

## Anwendungsfall 28: Positive VAE inkl. Verlängerung

### Betroffene Akteure

| | |
| :--- | :--- |
| KH (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ✅ |
| SV (Sozialversicherung) | ✅ |
| Bund | ✅ |

### Betroffene Behandlungsarten

#### Positive VAE

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Verlängerung der VAE

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

### Beschreibung

Aufgrund der eingelangten VAE (Versichertenanspruchserklärung) Anfrage erfolgt seitens der SV die positive VAE Rückmeldung. Die positive Entscheidung wird in der Rückmeldung durch "00" (stationär) oder "19" (ambulant) ausgedrückt.

#### Ambulant

Zukünftig gibt es anstatt einer Quartalszusage pro [Moped Fall](TBD-LINK-BEGRIFFSDEFINITION) eine Anfrage und eine Rückmeldung.

#### Stationär

Die SV hat die Möglichkeit die VAE unbefristet oder befristet abzugeben. Gibt es eine Befristung, so wird ein Enddatum angegeben. Falls der stationäre Aufenthalt länger dauert als das angegebene Enddatum so muss das KH um eine Verlängerung ansuchen. In der Verlängerung wird das Enddatum als Verlängerungsdatum angegeben und zusätzlich auf die initiale Anfrage verwiesen. Die positive VAE für den ursprünglichen Zeitraum bleibt weiterhin gültig (außer sie wird aus anderen Gründen nachträglich storniert -> siehe [Anwendungsfall 32: VAE doch negativ](AF28bis32.md#anwendungsfall-32-vae-doch-negativ-nach-vorheriger-positiver-vae)). Die VAE kann nach Ablauf der Frist der letzten positiven VAE immer wieder verlängert werden solange sich der Patient immer noch in Behandlung befindet. Gibt es kein Fristende so kann die VAE auch nicht verlängert werden.

### Beispiel

#### Beispiel 1: ambulant

#### Beispiel 2: stationär ohne Fristende

#### Beispiel 3: stationär mit Fristende und Verlängerung

### Technische Hinweise

Die initiale VAE und die VAE zur Verlängerung entsprechen unterschiedlichen Profilen mit unterschiedlichen Subtypen. In der Verlängerung muss verpflichtend die initiale VAE verlinkt werden.

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

    KH->>MP: POST VAERequest 1
    Note over KH: Anfrage VAE (ab 1.09.2025)
    SV->>MP: POST VAEResponse 1
    Note over SV: Bestätigung VAE (01.09.2025-16.09.2025)

    KH->>MP: POST VAERequest 2
    Note over KH: Anfrage Verlängerungmit Claim.related.claim zu VAERequest 1 und  Claim.related.relationship = 'Verlängerung'(16.09.2025-21.09.2025 = Verlängerungstage)
    Note over MP: Moped behält die gültige Übernahme (VAEResponse 1)

    SV->>MP: POST VAEResponse 2
    Note over SV: Bestätigung Verlängerung(16.09.2025-21.09.2025)
    Note over MP: Moped behält die gültigen Übernahmen für beide Zeiträume(VAEResponse 1 & VAEResponse 2)


```

### Relevante Profile

* [Coverage](StructureDefinition-MopedCoverage.md)
* [VAERequestInitial](StructureDefinition-MopedVAERequestInitial.md)
* [VAERequestVerlaengerung](StructureDefinition-MopedVAERequestVerlaengerung.md)
* [VAEResponse](StructureDefinition-MopedVAEResponse.md)
* [$update Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.md)
* [$antworten Bundle](StructureDefinition-MopedAntwortenBundleSV.md)

### Relevante Invarianten

* Es kann zu keinem Zeitpunkt zwei aktive initiale VAEs an den selben Träger geben.

### Mögliche Notifications

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

