# HL7.AT.FHIR.ELGA.EMED.R4\Workflowmanagement - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Workflowmanagement**

## Workflowmanagement

### Überblick der Statusänderungen der e-Medikation Ressourcen

#### Status des List.entry.flags im Medikationsplan

Ein [Medikationsplaneintrag](design_choices.md#medikationsplaneintrag-bzw-planeintrag-atelgaemedmedicationrequestplaneintrag-medicationrequest) kann, abhängig vom jeweiligen ([Use Case für Medikationsplan schreiben](Sub_UC_eMed_06.md#%E2%80%8Btechnische-use-cases-für-medikationsplan-schreiben-uc_emed_06)), unterschiedliche Status einnehmen. Dieser Status wird sowohl in der MedicationRequest-Ressource selbst als auch auf List-Ebene im Element List.entry.flag dokumentiert.

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

Eine [Geplante Abgabe](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) kann, abhängig vom jeweiligen ([Use Case für Geplante Abgabe schreiben](Sub_UC_eMed_08.md#%E2%80%8Btechnische-use-cases-für-geplante-abgabe-schreiben-uc_emed_08)), unterschiedliche Status einnehmen (Element **status**):


| | |
| :--- | :--- |
| **active** | Geplante Abgabe**offen**: Status beim Erstellen einer Geplanten Abgabe, solange noch (Teil-)Abgaben offen sind (dh. Rezept kann noch eingelöst werden) |
| **completed** | Geplante Abgabe**eingelöst**: Der Status wird durch die Fachwendung**automatisch**gesetzt, wenn alle möglichen Einlösungen durchgeführt wurden. Sonderfall: Sollte im Anschluss eine Durchgeführte Abgabe den Status**entered-in-error**erhalten, setzt die Fachanwendung gegebenfalls die Geplante Abgabe automatisch wieder auf**active**. |
| **stopped** | Geplante Abgabe ist**abgelaufen**, d.h. der Einlösezeitraum für die ausgewählte Rezeptart (**category:recipetype**) ist überschritten; der Status wird**automatisch durch die Fachanwendung**gesetzt. Die Geplante Abgabe ist damit abgeschlossen. |
| **entered-in-error** | Geplante Abgabe wird aufgrund eines Fehlers verworfen. Es wurden noch**keine Abgaben durchgeführt**. Die Geplante Abgabe wird damit abgeschlossen. |
| **cancelled** | Geplante Abgabe erhält automatisch den Status**cancelled**("nicht abgegeben"), wenn alle Durchgeführten Abgaben (jede Einlösung) den Status**cancelled**erhalten haben ("Leerabgabe") |

#### Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Kassenrezept | 1 Monat ab Datum der Verordnung: Beginn des Gültigkeitszeitraums + 1 Monat + 1 Tag | 1× | Im Zuge des "Besorgerprozesses" (Medikament muss erst bestellt werden) wird bei einer gespeicherten Teilabgabe die gesamte Gültigkeitsdauer auf 3 Monate verlängert. | Ein Kassenrezept muss innerhalb von 1 Monat eingelöst werden, sonst erhält das Rezept den Status "abgelaufen" (**stopped**). |
| Privatrezept | 1 Monat ab Datum der Verordnung für die erste Einlösung; mindestens: Beginn des Gültigkeitszeitraums + 1 Monat + 1 Tag; maximal: Beginn des Gültigkeitszeitraums + 1 Jahr (+ 1 Tag?) | Bis zu 6× (durch den Verordner festgelegt) | Keine Verlängerung möglich. | Ein Privatrezept muss innerhalb von 1 Monat eingelöst werden, sonst erhält es den Status (**stopped**). |
| Substitutionsrezept | Angabe eines beliebigen Gültigkeitszeitraums durch den Verordner; Datum frei wählbar, aber später als das Beginndatum | 1× | Keine Verlängerung möglich. | Ein Substitutionsrezept erhält den Status (**stopped**), wenn das "Bis-Datum" erreicht ist. |

[^1] Die Anzahl der Einlösungen gibt an, wie viele Einlösungen auf ein Rezept durchgeführt werden dürfen bis die Verordnung auf dem Rezept und das Rezept den Status eingelöst(**completed**) erhält.
 [^2] Das Einlösen eines Rezepts nach Ablauf der Gültigkeit wird durch e-Medikation nicht verhindert. Die Abgabe wird in diesem Fall ohne Verordnungsbezug in e-Medikation gespeichert. Wird die Gültigkeitsdauer nicht angegeben, kann die Gültigkeitsdauer vom empfangenden System nur mit 1 Monat angenommen werden, gerechnet vom Erstellungsdatum an. 


#### Status des MedicationDispense in der durchgeführten Abgabe

Eine [Durchgeführte Abgabe](design_choices.md#durchgeführte-abgabe-AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe-medicationdispense) kann, abhängig vom jeweiligen [Use Case für Durchgeführte Abgabe schreiben](Sub_UC_eMed_09.md), unterschiedliche Status einnehmen (Element **status**).

| | |
| :--- | :--- |
| **completed** | Einzel- oder Teilabgabe wurde durchgeführt |
| **cancelled** | Durchgeführte Abgabe gecancelt: Der Patient benötigt die Medikation einer geplanten Abgabe nicht (Medikation "abgesetzt") |
| **entered-in-error** | Vorhandene Durchgeführte Abgabe (im Status**complete**oder**cancelled**) wird aufgrund einer falschen Eingabe verworfen (eine mögliche beendete Geplante Abgabe, wird dadurch wieder**aktiv**) |

#### Abhängigkeiten der Geplanten Abgabe und der Durchgeführten Abgaben

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Geplante Abgabe basierend auf Planeintrag erfassen | active | Planeintrag bleibt active, unabhängig von Status der gepanten Abgabe * | active | OFFEN | z.B. 6 Einlösungen bei Privatrezept |   |   | noch keine bzw. noch nicht alle mögl. Einlösungen erfolgt (mit Status complete) |   |
| Geplante Abgabe beenden (durch Fachanwendung) | active | Planeintrag bleibt active, unabhängig von Status der gepanten Abgabe * | completed | EINGELÖST | auf Basis der durchgeführten Abgaben automatisch gesetzt durch Fachanwendung; dh. Alle möglichen Einlösungen sind abgechlossen (entweder completed oder cancelled) | completed | ABGEGEBEN | alle möglichen Einlösungen erfolgt | Durchgeführte Abgabe erfassen |
| Geplante Abgabe verwerfen | active | Planeintrag bleibt active, unabhängig von Status der gepanten Abgabe * | entered-in-error | STORNIERT | bei fehlerhafter Eingabe, wenn noch keine Abgabe durchgeführt |   |   | keine durchgeführten Abgaben vorhanden |   |
| Geplante Abgabe abgelaufen (durch Fachanwendung) | active | Planeintrag bleibt active, unabhängig von Status der gepanten Abgabe * | stopped | ABGELAUFEN | automatisch erkannt durch Fachanwendung | kein relevanter Status | kein relevanter Status | noch keine bzw. noch nicht alle mögl. Einlösungen erfolgtZu abgelaufenen geplanten Abgaben können keine Abgaben mehr gespeichert werden. Die (nachträgliche) Speicherung von Abgaben zu einem abgelaufenen Rezept kann im Anlassfall allerdings ohne Verordnungsbezug erfolgen. |   |
| Geplante Abgabe nicht abgegeben (durch Fachanwendung) | active | Planeintrag bleibt active, unabhängig von Status der gepanten Abgabe * | cancelled | NICHT_ABGEGEBEN | automatisch, wenn alle Einlösungen im MedicationDispense den Status "cancelled" erhalten haben | cancelled | ABGESETZT | Apotheker dokumentiert in der durchgeführten Abgabe, dass der Patient das Medikament in der geplanten Abgabe nicht einnimmt (mit Packungen 0) (entspricht der Leerabgabe).Kann wieder rückgängig gemacht werden (durch Storno) | Durchgeführten Abgabe abgesetzt |
|   |   |   |   |   |   | entered-in-error | STORNIERT | bei fehlerhafter Eingabe | Durchgeführte Abgabe verwerfen |

* solange ein evtl. Behandlungszeitraum nicht überschritten

