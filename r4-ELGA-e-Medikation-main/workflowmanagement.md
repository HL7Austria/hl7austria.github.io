# HL7.AT.FHIR.ELGA.EMED.R4\Workflowmanagement - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Workflowmanagement**

## Workflowmanagement

### Überblick der Statusänderungen der e-Medikation Ressourcen

#### Status-Änderungen der List-Flag (Medikationsplan)

Das **flag**-Element eines Entries in der List-Ressource beschreibt die Art der Änderung eines Planeintrags auf Listenebene und kann folgende Status einnehmen:

| | |
| :--- | :--- |
| **New** | Neuer Planeintrag wird der Liste hinzugefügt |
| **Unchanged** | Bestehender Planeintrag wird beibehalten/zur Kenntnis genommen |
| **Changed** | Bestehender Planeintrag geändert |
| **Removed** | Bestehender Planeintrag entfernt |

#### Status-Änderungen des MedicationRequests im Medikationsplaneintrag

Das **status**-Element kann in Planeinträgen fogende Zustände annehmen:

| | |
| :--- | :--- |
| **active** | Planeintrag ist aktiv/gültig |
| **on-hold** | Planeintrag ist pausiert |
| **completed** | Planeintrag ist beendet (automatisch durch Ablauf des Behandlungszeitraums,wenn keine erneute Verordnung) TODO: zu prüfen, ob dieser Status benötigt wird |
| **stopped** | Planeintrag ist abgesetzt (vor Ablauf des Behandlungszeitraums) |
| **entered-in-error** | Storno/falscher Planeintrag |

##### Planeintrag-Status in Abhängigkeit des Flag-Status des Medikationsplans

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Neuen Planeintrag zum Medikationsplan hinzufügen | **New** | **active** | Neuer Planeintrag wird erstellt und ist aktiv- der Behandlungszeitraum kann in der Zukunft liegen- Bereits bestehender Planeintrag kann wieder reaktiviert werden (Client-SW) |   |
|   |   | **on-hold** | Neuer Planeintrag wird erstellt, wird aber pausiert |   |
| Bestehenden Planeintrag im Medikationsplan beibehalten/zur Kenntnis nehmen | **Unchanged** | **active** | Bestehender Planeintrag bleibt unverändert- der Behandlungszeitraum darf noch nicht abgelaufen sein |   |
|   |   | **on-hold** | Bestehender Planeintrag bleibt unverändert, wird aber pausiert- der Behandlungszeitraum darf noch nicht abgelaufen sein |   |
| Bestehenden Planeintrag im Medikationsplan ändern | **Changed** | **active** | Bestehender Planeintrag wird geändert |   |
|   |   | **on-hold** | Bestehender Planeintrag wird geändert, wird aber pausiert |   |
| Bestehenden Planeintrag aus Medikationsplan entfernen | **Removed** | **completed** | Bestehender Planeintrag wird beendet (durch Ablauf des Behandlungszeitraums,wenn keine erneute Verordnung) TODO: fachlich prüfen, ob dieser Status benötigt wird |   |
|   |   | **stopped** | Bestehender Planeintrag wird vor Ablauf des Behandlungszeitraums abgesetzt |   |
|   |   | **entered-in-error** | Bestehender Planeintrag wird storniert, aufgrund falscher Eingabe |   |

#### Status-Änderungen des MedicationRequests in der geplanten Abgabe

TODO

#### Status-Änderungen des MedicationDispense (durchgeführte Abgabe)

TODO

