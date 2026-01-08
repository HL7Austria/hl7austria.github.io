# ELGA.MOPED\ANWF 3 - Ambulante Aufnahme - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Überblick & Sunshine Case**](anwendungsfaelle.md)
* **ANWF 3 - Ambulante Aufnahme**

## ANWF 3 - Ambulante Aufnahme

## Anwendungsfall 3: Ambulante Aufnahme

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
| Stationär | ❌ |

### Beschreibung

Ein Patient kommt in die Ambulanz und wird behandelt. Ambulanter Besuch (LKF Behandlungsart Ambulant) wird analog der stationären Aufnahme administriert. Es wird aber keine Entlassung erstellt. Da es die Möglichkeit einer Mehrfachversicherung gibt, kann es im ambulanten Bereich zu einem Versicherungsträgerwechsel kommen. Die Vergabe der Aufnahmezahl im ambulanten Bereich dient der Administration im KH und beschreibt nicht zwingend einen medizinischen Fall. Ein medizinischer Fall kann daher mehrere Aufnahmezahlen beinhalten und umgekehrt.

### Beispiel

Ein Patient kommt mit einem gebrochenen Arm in das KH, wird dort behandelt (Röntgen, Gips, etc.) und kann nach ein paar Stunden wieder nach Hause gehen.

### Technische Hinweise

#### Tagesklammer vs. Aufteilung:

Ob die Tagesklammer verwendet wird oder nicht liegt im Ermessen des jeweiligen KH und muss auf Seite des KIS geregelt werden. In Moped werden dann entweder ein Datensatz mit allen Leistungen und Diagnosen des jeweiligen Tages oder mehrere Datensätze mit den aufgeteilten Leistungen und Diagnosen eingemeldet. Dabei ist zu beachten:

* Bei der Nutzung der Tagesklammer gibt es in Moped pro Tag nur eine Composition und eine zugehörige VAE -> $aufnehmen wird nur ein mal ausgeführt.
* Wird die Tagesklammer nicht genutzt so ist es möglich mehrere gültige Compositions für den gleichen Tag und Patienten in Moped zu haben. Hierbei wird $aufnehmen mehrmals ausgeführt (Für jede X01 ein mal). Pro Composition gibt es dann jeweils eine VAE.
* Pro X01 gibt es zukünftig eine VAE. Bei Nutzung der Tagesklammer muss das KIS intern die VAE auf mehrere Aufnahmezahlen aufteilen.
* Die Tagesklammer impliziert immer mehrere Aufnahmezahlen pro Patient, Tag und KA.
* Die Anzahl der Ausführungen von $aufnehmen entspricht der Anzahl der Anzahl der erstellten Compositions (und soll mit der Anzahl der X01 Datensätze übereinstimmen). Unterschiedliche Compositions müssen sich in zumindest einem der folgenden Datenfelder unterscheiden: 
* Aufnahmezahl
* Aufnahme-/Kontaktdatum
* KA-Nummer
 

#### Transferencounter Stationär vs. Ambulant

Der Transferencounter entspricht nicht wie beim stationären Fall der Verlegung/Aufnahme auf eine andere Station sondern einem Kontakt oder einer Bewegung (entspricht einer Behandlungen auf unterschiedlichen Funktionscodes).

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

    KH->> MP: $aufnehmen
    Note over KH: Patientin Amanda Ambulant wird aufgenommen

    KH->>MP: $update
    Note over KH: ÖGK Wien als zuständige Versicherung gesetzt

    KH->>MP: $anfragen
    Note over KH: Anfrage auf Versicherungsanspruchserklärung 

    SV->>MP: $antworten (Status 00)
    Note over SV: Fallübernahme bestätigt (Status 00) 

    KH->>MP: $update
    Note over KH: Kontakt mit der Abteilung für Radiologie (Röntgen)

    KH->>MP: $update
    Note over KH: Diagnose „gebrochenes Schlüsselbein" und eine erbrachte Leistung werden erfasst 

    KH->>MP: $update
    Note over KH: Restliche Falldaten für Amanda Ambulant werden ergänzt
    loop $abrechnen / $entscheiden (vorläufig)
        KH->>MP:$abrechnen 
        Note over KH: Abrechnung aller Leistungen eingereicht
        LGF-->>MP: $entscheiden 
        Note over LGF: Alle Posten genehmigt (keine Änderungen)
    end

    %% Finale Abrechnung und Entscheidung
    KH->>MP: final $abrechnen 
    Note over KH: Finale Abrechnung seitens des KH

    LGF->>MP: final $entscheiden
    Note over LGF: Endgültige Entscheidung zur Abrechnung 
    Note over LGF: Kosteninformation wird übermittelt 

    Bund->>MP: GET Composition?status=final
    Note over Bund: Zugriff auf finale Composition 

    SV->>MP: $antworten
    Note over SV: Rückmeldung zur Kosteninformation

    Note over MP: Fall für Moped abgeschlossen


```

### Relevante Profile

* [$aufnehmen Bundle](StructureDefinition-MopedAufnehmenBundleKH.md)
* [$update Bundle](StructureDefinition-MopedUpdateBundleKH.md)
* [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKH.md)
* [$antworten Bundle](StructureDefinition-MopedAntwortenBundleSV.md)
* [$abrechnen Bundle](StructureDefinition-MopedAbrechnenBundleKH.md)
* [$entscheiden Bundle](StructureDefinition-MopedEntscheidenLGFBundle.md)
* [Ambulanter Encounter](StructureDefinition-MopedEncounterA.md)
* [Ambulanter Transferencounter](StructureDefinition-MopedTransferEncounterA.md)

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

