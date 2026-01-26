# ELGA.MOPED\Workflowmanagement - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Workflowmanagement**

## Workflowmanagement

### Überblick der Statusänderungen der unterschiedlichen Ressourcen während des Prozesses

#### Status-Änderungen der Moped Composition

```

    stateDiagram-v2
    [*] --> partial : $aufnehmen (initiale Composition)
    partial --> partial : $update, $anfragen, $antworten, $abrechnen, $entscheiden, etc.
    partial --> final : Freigabe durch LGF
    
    partial --> entered_in_error : $stornieren

```

#### Status-Änderungen des Moped Encounters

```

    stateDiagram-v2
    [*] --> in_progress : $aufnehmen
    in_progress --> on_hold : Beurlaubung / temporäre Unterbrechung
    on_hold --> in_progress : Rückkehr aus Beurlaubung

    in_progress --> discharged : $update 
    discharged --> completed : Hauptdiagnose dokumentiert und $entlassen

    in_progress --> entered_in_error : $stornieren
    on_hold --> entered_in_error : $stornieren
    discharged --> entered_in_error : $stornieren

```

#### Status-Änderungen der Financial Ressourcen (Claim, ClaimResponse)

Diese Status-Änderungen folgen den Definitionen des [ Resource Status Life-cycle](https://build.fhir.org/financial-module.html#resource-status) wie im FHIR Financial Modul dokumentiert.

```

    stateDiagram-v2
    [*] --> active : Ressource wird eingebracht

    active --> cancelled : Stornierung durch KH
    active --> entered_in_error : Fehler erkannt
    active --> [*] : Verarbeitet

```

