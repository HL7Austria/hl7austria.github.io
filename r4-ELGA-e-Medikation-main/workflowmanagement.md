# HL7.AT.FHIR.ELGA.EMED.R4\Workflowmanagement - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Workflowmanagement**

## Workflowmanagement

### Überblick der Statusänderungen der e-Medikation Ressourcen

#### Status der List-Flag (Medikationsplan)

Das **flag**-Element eines Entries in der List-Ressource beschreibt die Art der Änderung eines Planeintrags auf Listenebene und kann folgende Status einnehmen:

| | |
| :--- | :--- |
| **New** | Neuer Planeintrag wird der Liste hinzugefügt |
| **Unchanged** | Bestehender Planeintrag wird beibehalten/zur Kenntnis genommen |
| **Changed** | Bestehender Planeintrag geändert |
| **Removed** | Bestehender Planeintrag entfernt |

#### Status der List-Flag (Medikationsplan) in Abhängigkeit von der Zugriffsart

| | | | |
| :--- | :--- | :--- | :--- |
| **New** | - List-Entries, die vom Vorgänger-GDA mit**new**geflaggt wurden, bleiben beim read-only-Zugriff unverändert.- Die neuen MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**new**geflaggt wurden, werden beim lesenden read-to-write-Zugriff von der**Fachanwendung**als****unchanged****geflaggt.- Die betreffenden MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die beim schreibenden read-to-write-Zugriff vom aktuellen GDA mit**new**geflaggt wurden, werden dem Medikationsplan neu hinzugefügt.- Die betreffenden MedicationRequests müssen im Transaction Bundle enthalten sein. |
| **Unchanged** | - List-Entries, die vom Vorgänger-GDA mit**unchanged**geflaggt wurden, bleiben beim read-only-Zugriff unverändert.- Die unveränderten MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA als**unchanged**geflaggt wurden, bleiben beim lesenden read-to-write-Zugriff von der Fachanwendung unverändert.- Die betreffenden MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die beim vom aktuellen GDA nicht verändert wurden, bleiben beim schreibenden read-to-write-Zugriff mit**unchanged**geflaggt. Sie gelten somit als zur Kenntnis genommen.- Die betreffenden MedicationRequests sind nicht im Transaction Bundle enthalten, sondern werden nur in der Liste referenziert. |
| **Changed** | - List-Entries, die vom Vorgänger-GDA mit**changed**geflaggt wurden, bleiben beim read-only-Zugriff unverändert.- Die geänderten MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**changed**geflaggt wurden, werden beim lesenden read-to-write-Zugriff von der**Fachanwendung**als****unchanged****geflaggt.- Die betreffenden MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom aktuellen GDA mit**changed**geflaggt werden, wurden geändert.- Die betreffenden MedicationRequests müssen im Transaction Bundle enthalten sein. |
| **Removed** | - List-Entries, die vom Vorgänger-GDA mit**removed**geflaggt wurden, bleiben beim read-only-Zugriff unverändert.- Die zum Entfernen markierten MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**removed**geflaggt wurden, werden beim lesenden read-to-write-Zugriff von der**Fachanwendung****entfernt**.- Die betreffenden MedicationRequests sind**nicht**im Collection Bundle enthalten. | - List-Entries, die beim schreibenden read-to-write-Zugriff vom aktuellen GDA mit**removed**geflaggt wurden, sollen aus dem Medikationsplan entfernt werden.- Die betreffenden MedicationRequests werden u.a. mit dem Status entsprechenden Statuts geflaggt und müssen im Transaction Bundle mitgeliefert werden. |

#### Status des MedicationRequests im Medikationsplaneintrag

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

