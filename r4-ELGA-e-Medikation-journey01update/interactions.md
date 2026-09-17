# HL7.AT.FHIR.ELGA.EMED.R4\Transaktionen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Transaktionen**

## Transaktionen

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **POST** | `/` | `$groupidentifier-create` | Erzeugen eines neuen e-Med GroupIdentifiers für Geplante Abgaben | GDA |
| **POST** | `/` | `$groupidentifier-search` | Geplante und durchgeführte Abgaben mittels e-Med GroupIdentifier lesen | GDA |
| **POST** | `/Patient/[id]/List` | `$plan-read` | Aktuelle Medikationsplanversion lesen | GDA, PAT |
| **POST** | `/Patient/[id]/List` | `$plan-write` | Neue Version eines Medikationsplans schreiben | GDA |
| **POST** | `/Patient/[id]/List` | `$patient-plan-write` | Medikationsplaneinträge löschen | PAT |
| **POST** | `/Patient/[id]/List` | `$plan-delete` | Aktuelle oder historische Medikationsplanversion löschen | PAT |
| **GET** | `/Patient/[id]/List` | `plan-history-search` | Historische Medikationsplanversion(en) lesen(`_history?_include=*`bzw.`_include=*&item=MedicationRequest/[id]&subject=Patient/[id]&date=...`) | GDA, PAT |
| **GET** | `/Patient/[id]/List` | `plan-history-directory-search` | Verzeichnis historischer Medikationspläne abrufen(`_history?_elements=date,source`) | GDA, PAT |
| **POST** | `/Patient/[id]/MedicationRequest` | `$prescription-write` | Geplante Abgabe schreiben | GDA |
| **POST** | `/Patient/[id]/MedicationRequest` | `$prescription-discard` | Eigene geplante Abgabe verwerfen | GDA |
| **GET** | `/Patient/[id]/MedicationRequest` | `prescription-search` | Geplante Abgaben suchen (`?category=GeplAbgabe`) | GDA, PAT |
| **GET** | `/Patient/[id]/MedicationRequest` | `planentry-search` | Medikationsplaneinträge suchen (`?category=Planeintrag`) | GDA, PAT |
| **DELETE** | `/Patient/[id]/MedicationRequest` | `prescription-delete` | Geplante Abgabe löschen | PAT |
| **POST** | `/Patient/[id]/MedicationDispense` | `$dispense-write` | Durchgeführte Abgabe schreiben | GDA |
| **POST** | `/Patient/[id]/MedicationDispense` | `$dispense-discard` | Eigene durchgeführte Abgabe verwerfen | GDA |
| **POST** | `/Patient/[id]/MedicationDispense` | `$reference-plan` | Referenz auf Medikationsplan erstellen | GDA |
| **GET** | `/Patient/[id]/MedicationDispense` | `dispense-search` | Durchgeführte Abgaben suchen | GDA, PAT |
| **DELETE** | `/Patient/[id]/MedicationDispense` | `dispense-delete` | Durchgeführte Abgabe löschen | PAT |

