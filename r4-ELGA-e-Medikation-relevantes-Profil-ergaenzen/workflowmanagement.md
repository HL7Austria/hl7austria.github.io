# HL7.AT.FHIR.ELGA.EMED.R4\Workflowmanagement - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Workflowmanagement**

## Workflowmanagement

### Überblick der Statusänderungen der e-Medikation Ressourcen

#### Status des List.entry.flags (Medikationsplan)

Ein Medikationsplaneintrag kann, abhängig vom jeweiligen Use Case, unterschiedliche Status einnehmen. Dieser Status wird sowohl in der MedicationRequest-Ressource selbst als auch auf List-Ebene im Element List.entry.flag dokumentiert.

Das **flag**-Element eines Entries der List-Ressource beschreibt die **Art der Änderung eines Mediaktionsplaneintrags auf Listenebene** und kann folgende Status einnehmen:

| | |
| :--- | :--- |
| **New** | Neuer Planeintrag wird der Liste hinzugefügt |
| **Unchanged** | Bestehender Planeintrag wird beibehalten/zur Kenntnis genommen |
| **Changed** | Bestehender Planeintrag wird geändert |
| **Removed** | Bestehender Planeintrag wird entfernt |

#### Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte

Je nach Zugriffsart (Read-only, Read-to-Write oder Write) ergeben sich unterschiedliche Auswirkungen auf die Verarbeitung dieser Status sowie auf die enthaltenen Ressourcen in den jeweiligen Bundles (siehe [Zugriffsarten auf den Medikationsplan](interactions.md#zugriffsarten-auf-den-medikationsplan)). 

| | | | |
| :--- | :--- | :--- | :--- |
| **new** | - List-Entries, die vom Vorgänger-GDA mit**new**geflaggt wurden, bleiben beim read-only-Zugriff**unverändert**.- Die neuen MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**new**geflaggt wurden, werden beim Read-to-Write-Zugriff von der**Fachanwendung**als**unchanged**geflaggt.- Die betreffenden MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die beim schreibenden Zugriff vom aktuellen GDA mit**new**geflaggt wurden, werden dem Medikationsplan neu hinzugefügt.- Die betreffenden MedicationRequests müssen im Transaction Bundle**enthalten**sein. |
| **unchanged** | - List-Entries, die vom Vorgänger-GDA mit**unchanged**geflaggt wurden, bleiben beim read-only-Zugriff**unverändert**.- Die unveränderten MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA als**unchanged**geflaggt wurden, bleiben beim Read-to-Write-Zugriff von der Fachanwendung unverändert.- Die betreffenden MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom aktuellen GDA nicht verändert wurden, bleiben beim schreibenden Zugriff mit**unchanged**geflaggt. Sie gelten somit als zur Kenntnis genommen.- Die betreffenden MedicationRequests sind nicht im Transaction Bundle enthalten, sondern werden in der Liste**nur referenziert**. |
| **changed** | - List-Entries, die vom Vorgänger-GDA mit**changed**geflaggt wurden, bleiben beim read-only-Zugriff**unverändert**.- Die geänderten MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**changed**geflaggt wurden, werden beim Read-to-Write-Zugriff von der**Fachanwendung**als**unchanged**geflaggt.- Die betreffenden MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom aktuellen GDA mit**changed**geflaggt werden, wurden geändert.- Die betreffenden MedicationRequests müssen im Transaction Bundle**enthalten**sein. |
| **removed** | - List-Entries, die vom Vorgänger-GDA mit**removed**geflaggt wurden, bleiben beim read-only-Zugriff**unverändert**.- Die zum Entfernen markierten MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**removed**geflaggt wurden, werden beim Read-to-Write-Zugriff von der**Fachanwendung entfernt**.- Die betreffenden MedicationRequests sind im Collection Bundle**nicht enthalten**. | - List-Entries, die beim schreibenden Zugriff vom aktuellen GDA mit**removed**geflaggt wurden, sollen aus dem Medikationsplan entfernt werden.- Die betreffenden MedicationRequests werden u.a. mit dem entsprechenden Status geflaggt und müssen im Transaction Bundle**enthalten**sein. |

#### Status des MedicationRequests im Medikationsplaneintrag

Das **status**-Element der MedicationRequest-Ressource beschreibt den **aktuellen Zustand eines Medikationsplaneintrags**.

Im Kontext des Medikationsplans kann dieses Element folgende Statuswerte annehmen:

| | |
| :--- | :--- |
| **active** | Planeintrag dokumentiert aktive Therapie: Medikation soll aktuell vom Patienten eingenommen werden |
| **on-hold** | Planeintrag ist pausiert: Therapie wurde vorübergehend unterbrochen, Wiederaufnahme ist vorgesehen |
| **completed** | Die im Planeintrag beschriebenen Maßnahmen wurden wie geplant durchgeführt. Der Planeintrag wird damit abgeschlossen. |
| **stopped** | Die im Planeintrag beschriebenen Maßnahmen werden dauerhaft gestoppt, bevor alle geplanten Einnahmen oder Verabreichungen durchgeführt wurden. Der Planeintrag wird damit abgeschlossen. |
| **entered-in-error** | Planeintrag ist storniert: Kennzeichnung eines fehlerhaften Planeintrages. Der Planeintrag wird damit abgeschlossen. |

##### Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status

Da der Status eines Medikationsplaneintrags im Medikationsplan auf **zwei Ebenen** geführt wird (List.entry.flag und MedicationRequest.status), müssen diese beiden Ebenen zur Sicherstellung einer konsistenten Verarbeitung inhaltlich aufeinander abgestimmt sein. Die folgende Tabelle beschreibt die geltenden Konsistenzregeln zwischen List.entry.flag und MedicationRequest.status in Abhängigkeit vom jeweiligen Use Case: 

| | | | |
| :--- | :--- | :--- | :--- |
| Neuen Planeintrag zum Medikationsplan hinzufügen | new | active | Neuer Planeintrag wird erstellt und ist aktiv- der Behandlungszeitraum kann in der Zukunft liegen |
| new | on-hold | Neuer Planeintrag wird erstellt, wird aber pausiert | |
| Bestehenden Planeintrag im Medikationsplan beibehalten/zur Kenntnis nehmen | unchanged | active | Bestehender Planeintrag bleibt unverändert- der Behandlungszeitraum darf noch nicht abgelaufen sein |
| unchanged | on-hold | Bestehender Planeintrag bleibt unverändert pausiert- der Behandlungszeitraum darf noch nicht abgelaufen sein | |
| Bestehenden Planeintrag im Medikationsplan ändern | changed | active | Bestehender Planeintrag wird geändert |
| changed | on-hold | Bestehender Planeintrag wird geändert und pausiert | |
| Bestehenden Planeintrag aus Medikationsplan entfernen | removed | completed | Bestehender Planeintrag wird beendet. Die Therapie wurde wie geplant durchgeführt und ist abgeschlossen. |
| removed | stopped | Bestehender Planeintrag wird vor Ablauf des Behandlungszeitraums dauerhaft gestoppt. Die Medikation wurde, bevor alle geplanten Einnahmen oder Verabreichungen durchgeführt wurden, abgesetzt. | |
| removed | entered-in-error | Bestehender Planeintrag wird storniert, aufgrund falscher Eingabe | |

#### Status des MedicationRequests in der geplanten Abgabe

In Arbeit.

#### Status des MedicationDispense (durchgeführte Abgabe)

In Arbeit.

