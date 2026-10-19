# Transaktionen - ELGA e-Medikation (R4) DRAFT v0.1.0

## Transaktionen

Die Umsetzung des Patientenkontakts in den Transaktionen ist nicht Teil des Ballots. Der konkrete Zugriff wird in der Lösungsarchitektur beschrieben.

In diesem IG werden daher alle Requests ab dem `/[type]` dargestellt.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **POST** | `/` | `$groupidentifier-create` | Erzeugen eines neuen e-Med GroupIdentifiers für Geplante Abgaben | GDA |  |
| **POST** | `/` | `$groupidentifier-search` | Geplante und durchgeführte Abgaben mittels e-Med GroupIdentifier lesen | GDA |  |
| **POST** | `/List` | `$plan-read` | Aktuelle Medikationsplanversion lesen | GDA, PAT |  |
| **POST** | `/List` | `$plan-write` | Neue Version eines Medikationsplans schreiben | GDA |  |
| **POST** | `/List` | `$patient-plan-write` | Medikationsplaneinträge löschen | PAT |  |
| **POST** | `/List` | `$plan-delete` | Aktuelle oder historische Medikationsplanversion löschen | PAT |  |
| **GET** | `/List/_history` | `history-type` | plan-history-search & plan-history-directory-search:In historischen Medikationsplanversion(en) suchen und alle referenzierten Ressourcen inkludierenz.B. (`_include=*&item=MedicationRequest/[id]&date=...`)Directory-Search wenn include nicht verwendet wird. | GDA, PAT | [List (Search-) parameters](StructureDefinition-at-elga-emed-list-medikationsplan.md#search-parameters) |
| **GET** | `/List/[id]/_history` | `history-instance` | Die gesamte Historie des Medikationsplan abrufen | GDA, PAT |  |
| **GET** | `/List/[id]/_history/[vid]` | `vread` | Historische Medikationsplanversion(en) lesenStandardabfrage mit _include | GDA, PAT |  |
| **POST** | `/MedicationRequest` | `$prescription-write` | Geplante Abgabe schreiben | GDA |  |
| **POST** | `/MedicationRequest` | `$prescription-discard` | Eigene Geplante Abgabe stornieren | GDA |  |
| **POST** | `/MedicationRequest` | `$plan-entry-delete` | Planeintrag löschen | GDA |  |
| **GET** | `/MedicationRequest?category=GeplAbgabe` | `search-type` | Geplante Abgaben suchen (`?category=GeplAbgabe`) | GDA, PAT | [Geplante Abgabe (Search-) parameters](StructureDefinition-at-elga-emed-medicationrequest-geplanteAbgabe.md#search-parameters) |
| **GET** | `/MedicationRequest?category=Planeintrag` | `search-type` | Planeinträge suchen (`?category=Planeintrag`) | GDA, PAT | [Planeintrag (Search-) parameters](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md#search-parameters) |
| **GET** | `/MedicationRequest/_history?category=Planeintrag` | `history-type` | In historischen Planeintragsversion(en) suchen und alle referenzierten Ressourcen inkludierenz.B. (`_include=*&category=Planeintrag&autor=Practitioner/[id]&medication-code=...&date=...&...`)Directory-Search wenn include nicht verwendet wird. | GDA, PAT | [Planeintrag (Search-) parameters](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md#search-parameters) |
| **GET** | `/MedicationRequest/[id]/_history` | `history-instance` | Die gesamte Historie eines Medikationsplaneintrags abrufen | GDA, PAT |  |
| **GET** | `/MedicationRequest/[id]/_history/[vid]` | `vread` | eine historische Planeintragsversion lesenOptionale Abfrage mit _include | GDA, PAT |  |
| **DELETE** | `/MedicationRequest` | `prescription-delete` | Geplante Abgabe löschen | PAT |  |
| **POST** | `/MedicationDispense` | `$dispense-write` | Durchgeführte Abgabe schreiben | GDA |  |
| **POST** | `/MedicationDispense` | `$dispense-discard` | Eigene durchgeführte Abgabe stornieren | GDA |  |
| **POST** | `/MedicationDispense` | `$reference-plan` | Referenz auf Medikationsplan erstellen | GDA |  |
| **GET** | `/MedicationDispense` | `search-type` | dispense-search: Durchgeführte Abgaben suchen | GDA, PAT | [MedicationDispense (Search-) parameters](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md#search-parameters) |
| **DELETE** | `/MedicationDispense` | `dispense-delete` | Durchgeführte Abgabe löschen | PAT |  |

#### Suchparameter Überblick

![](searchparameter_overview.png)

