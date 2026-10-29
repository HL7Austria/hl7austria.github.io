# Workflowmanagement - ELGA e-Medikation (R4) DRAFT v0.1.0

## Workflowmanagement

### Überblick der Statusänderungen der e-Medikation Ressourcen

![](Workflowmanagement_status_abhaengigkeiten.svg) 

#### Status des List.entry.flags im Medikationsplan

Ein **Medikationsplaneintrag** kann, abhängig vom jeweiligen ([Use Case für Medikationsplan schreiben](Sub_UC_eMed_02.md)), unterschiedliche Status einnehmen. Dieser Status wird sowohl in der MedicationRequest-Ressource selbst als auch auf **List-Ebene** im **List.entry.flag** dokumentiert.

Das **List.entry.flag** kann folgende Status einnehmen (siehe [CodeSystem-at-elga-emed-codesystem-listentryflag-cs](CodeSystem-at-elga-emed-codesystem-listentryflag-cs.md)): 


| | |
| :--- | :--- |
| **New** | Neuer Planeintrag wird der Liste hinzugefügt |
| **Unchanged** | Bestehender Planeintrag wird beibehalten/zur Kenntnis genommen |
| **Changed** | Bestehender Planeintrag wird geändert |
| **Removed** | Bestehender Planeintrag wird entfernt |

#### Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte

Je nach Zugriffsart (Plan-History-Search, Plan-Read oder Write) ergeben sich unterschiedliche Auswirkungen auf die Verarbeitung dieser Status sowie auf die enthaltenen Ressourcen in den jeweiligen Bundles (siehe [Transaktionen](interactions.md)). 
 

| | | | |
| :--- | :--- | :--- | :--- |
| **new** | - List-Entries, die vom Vorgänger-GDA mit**new**geflaggt wurden, bleiben beim Plan-History-Search**unverändert**.- Die neuen MedicationRequests sind im Medikationsplan-Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**new**geflaggt wurden, werden beim Plan-Read von der**Fachanwendung**als**unchanged**geflaggt.- Die betreffenden MedicationRequests sind im Medikationsplan-Bundle enthalten. | - List-Entries, die beim schreibenden Zugriff vom aktuellen GDA mit**new**geflaggt wurden, werden dem Medikationsplan neu hinzugefügt.- Die betreffenden MedicationRequests müssen im Transaction Bundle**enthalten**sein. |
| **unchanged** | - List-Entries, die vom Vorgänger-GDA mit**unchanged**geflaggt wurden, bleiben beim Plan-History-Search**unverändert**.- Die unveränderten MedicationRequests sind im Medikationsplan-Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA als**unchanged**geflaggt wurden, bleiben beim Plan-Read von der Fachanwendung unverändert.- Die betreffenden MedicationRequests sind im Medikationsplan-Bundle enthalten. | - List-Entries, die vom aktuellen GDA nicht verändert wurden, bleiben beim schreibenden Zugriff mit**unchanged**geflaggt. Sie gelten somit als zur Kenntnis genommen.- Die betreffenden MedicationRequests sind nicht im Transaction Bundle enthalten, sondern werden in der Liste**nur referenziert**. |
| **changed** | - List-Entries, die vom Vorgänger-GDA mit**changed**geflaggt wurden, bleiben beim Plan-History-Search**unverändert**.- Die geänderten MedicationRequests sind im Medikationsplan-Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**changed**geflaggt wurden, werden beim Plan-Read von der**Fachanwendung**als**unchanged**geflaggt.- Die betreffenden MedicationRequests sind im Medikationsplan-Bundle enthalten. | - List-Entries, die vom aktuellen GDA mit**changed**geflaggt werden, wurden geändert.- Die betreffenden MedicationRequests müssen im Transaction Bundle**enthalten**sein. |
| **removed** | - List-Entries, die vom Vorgänger-GDA mit**removed**geflaggt wurden, bleiben beim Plan-History-Search**unverändert**.- Die zum Entfernen markierten MedicationRequests sind im Medikationsplan-Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**removed**geflaggt wurden, werden beim Plan-Read von der**Fachanwendung entfernt**.- Die betreffenden MedicationRequests sind im Medikationsplan-Bundle**nicht enthalten**. | - List-Entries, die beim schreibenden Zugriff vom aktuellen GDA mit**removed**geflaggt wurden, sollen aus dem Medikationsplan entfernt werden.- Die betreffenden MedicationRequests werden u.a. mit dem entsprechenden Status geflaggt und müssen im Transaction Bundle**enthalten**sein. |

#### Status des Medikationsplaneintrags (MedicationRequest)

Das **status**-Element der MedicationRequest-Ressource beschreibt den **aktuellen Zustand eines Medikationsplaneintrags**.

Im Kontext des Medikationsplans kann dieses Element folgende Statuswerte annehmen (siehe [CodeSystem-at-elga-emed-codesystem-listentryflag-cs](CodeSystem-at-elga-emed-codesystem-listentryflag-cs.md)): 


| | |
| :--- | :--- |
| **active** | Der Planeintrag dokumentiert eine aktuell einzunehmende Medikation. |
| **on-hold** | Der Planeintrag dokumentiert ein pausierte Medikation (aktuell nicht einzunehmen). |
| **stopped** | Der Planeintrag ist nicht länger aktiv. Die Medikation wird nicht weiter verordnet. Dies gilt unabhängig davon, ob der Einnahmezeitraum abgelaufen ist oder die Medikation vorzeitig abgesetzt wurde. Der Planeintrag wird damit abgeschlossen (Endzustand). (*) |
| **entered-in-error** | Der Planeintrag ist storniert. Der Planeintrag wird damit abgeschlossen (Endzustand). |

(*) Abweichung vom verpflichtenden Value-Set [medicationrequest-status](https://hl7.org/fhir/R4/valueset-medicationrequest-status.html): Der Status **stopped** vereint die Defintionen von **completed** und **stopped** und entspricht dem Stataus **ended** aus FHIR R6.

##### Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status

Da der Status eines Medikationsplaneintrags im Medikationsplan auf **zwei Ebenen** geführt wird (List.entry.flag und MedicationRequest.status), müssen diese beiden Ebenen zur Sicherstellung einer konsistenten Verarbeitung inhaltlich aufeinander abgestimmt sein. Die folgende Tabelle beschreibt die geltenden Konsistenzregeln zwischen List.entry.flag und MedicationRequest.status in Abhängigkeit vom jeweiligen Use Case: 


* **removed**: Neuen Planeintrag zum Medikationsplan hinzufügen
  * **entered-in-error**: **new**
  * Bestehender Planeintrag wird aufgrund eines Fehlers storniert.: **active**
  * ?: Neuer Planeintrag wird erstellt und ist aktiv. Der Einnahmezeitraum kann in der Zukunft liegen.
* **removed**: Bestehenden Planeintrag im Medikationsplan beibehalten/zur Kenntnis nehmen
  * **entered-in-error**: **unchanged**
  * Bestehender Planeintrag wird aufgrund eines Fehlers storniert.: **active**
  * ?: Bestehender Planeintrag bleibt unverändert. Der Einnahmezeitraum darf noch nicht abgelaufen sein.
* **removed**: Bestehenden Planeintrag im Medikationsplan ändern
  * **entered-in-error**: **changed**
  * Bestehender Planeintrag wird aufgrund eines Fehlers storniert.: **active**
  * ?: Bestehender Planeintrag wird geändert.
* **removed**: Bestehenden Planeintrag aus Medikationsplan entfernen
  * **entered-in-error**: **removed**
  * Bestehender Planeintrag wird aufgrund eines Fehlers storniert.: **stopped**
  * ?: Bestehender Planeintrag wird dauerhaft gestoppt. Die Medikation wird nicht weiter verordnet.

#### Status der Geplanten Abgabe (MedicationRequest)

Eine [Geplante Abgabe](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) kann, abhängig vom jeweiligen ([Use Case für Geplante Abgabe schreiben](Sub_UC_eMed_04.md)), unterschiedliche Status einnehmen (Element **status**):


| | |
| :--- | :--- |
| **active** | **Geplante Abgabe****offen**: Status beim Erstellen einer Geplanten Abgabe, solange noch (Teil-)Abgaben offen sind (dh. Rezept kann noch eingelöst werden) |
| **completed** | **Geplante Abgabe****abgeschlossen**: Der Status wird durch die Fachwendung**automatisch**gesetzt, wenn alle möglichen Einlösungen erfolgt und die entsprechenden**Durchgeführten Abgaben**erstellt wurden. Sonderfall: Sollte im Anschluss eine**Durchgeführte Abgabe**den Status**entered-in-error**erhalten, setzt die Fachanwendung gegebenfalls die**Geplante Abgabe**automatisch wieder auf**active**. |
| **stopped** | **Geplante Abgabe**ist**abgelaufen**, d.h. der Einlösezeitraum für die ausgewählte Rezeptart (**category:recipetype**) ist überschritten; der Status wird**automatisch durch die Fachanwendung**gesetzt. Die**Geplante Abgabe**ist damit abgeschlossen. |
| **entered-in-error** | **Geplante Abgabe**wird aufgrund eines Fehlers storniert. Es wurden noch**keine Abgaben durchgeführt**. Die**Geplante Abgabe**wird damit abgeschlossen. |
| **cancelled** | **Geplante Abgabe**erhält automatisch den Status**cancelled**("nicht abgegeben"), wenn alle**Durchgeführten Abgaben**den Status**cancelled**erhalten haben. Wird eine gecancelte**Durchgeführte Abgabe**storniert, wird die**Geplante Abgabe**automatisch wieder aktiviert. |

#### Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart

| | | | |
| :--- | :--- | :--- | :--- |
| Kassenrezept | * 1 Monat ab Beginn des Gültigkeitszeitraums (ab Datum der Verordnung)
z.B: Rezept wurde am 15.5. ausgestellt und kann bis inkl. 15.6. eingelöst werden. | 1× (kann nur in 1 Apotheke eingelöst werden) | Im Zuge des „Besorgerprozesses“ (Medikament muss erst bestellt werden) wird bei einer gespeicherten Teilabgabe die gesamte Gültigkeitsdauer auf 3 Monate verlängert. |
| Privatrezept | Gültigkeit festgelegt durch verordnenden GDA:* Mindestens: 1 Monat ab Beginn des Gültigkeitszeitraums
*  Maximal: 1 Jahr ab Beginn des Gültigkeitszeitraums (1. Einlösung muss innerhalb eines Monats ab Datum der Verordnung erfolgen) 
 | Bis zu 6× (durch den Verordner festgelegt); kann in mehreren Apotheken eingelöst werden (je nach Anzahl der Einlösemöglichkeiten) | Keine Verlängerung möglich. |
| Substitutionsrezept | Gültigkeit festgelegt durch verordnenden GDA:* Beliebige Dauer ab Beginn des Gültigkeitszeitraums
*  Wenn kein Datum angegeben: Beginn des Gültigkeitszeitraums + 1 Monat 
 | 1× | Keine Verlängerung möglich. |

[1] Die Anzahl der Einlösungen gibt an, wie oft ein Rezept eingelöst werden darf. Ist keine Einlösung mehr möglich erhält die zugehörige **Geplante Abgabe** den Status eingelöst (**completed**).
 [2] Ist der Gültigkeitszeitraum überschritten erhält die zugehörige **Geplante Abgabe** den Status abgelaufen (**stopped**). Das Einlösen eines Rezepts nach Ablauf der Gültigkeit wird durch e-Medikation nicht verhindert. Die Abgabe kann in diesem Fall ohne Verordnungsbezug in e-Medikation gespeichert werden. 


#### Status der Durchgeführten Abgabe (MedicationDispense)

Eine [Durchgeführte Abgabe](design_choices.md#durchgeführte-abgabe-atelgaemedmedicationdispensedurchgefuehrteabgabe-medicationdispense) kann, abhängig vom jeweiligen [Use Case für Durchgeführte Abgabe schreiben](Sub_UC_eMed_05.md), unterschiedliche Status einnehmen (Element **status**).

| | |
| :--- | :--- |
| **completed** | Die Durchgeführte Abgabe ist abgeschlossen (Einzel- oder Teilabgabe durchgeführt). |
| **cancelled** | **Durchgeführte Abgabe**gecancelt (Leerabgabe): Der Patient benötigt die Medikation einer**Geplanten Abgabe**nicht. |
| **entered-in-error** | Vorhandene**Durchgeführte Abgabe**(im Status**completed**oder**cancelled**) wird aufgrund eines Fehlers storniert (eine mögliche abgeschlossene**Geplante Abgabe**, wird dadurch wieder**aktiv**) |

#### Abhängigkeiten der Geplanten Abgabe und der Durchgeführten Abgaben

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Geplante Abgabe**basierend auf Planeintrag erfassen | active | Planeintrag bleibt active, unabhängig von Status der Geplanten Abgabe (*) | active | OFFEN | z.B. 6 Einlösungen bei Privatrezept |   |   | noch keine bzw. noch nicht alle mögl. Einlösungen erfolgt (mit Status completed) |   |
| **Geplante Abgabe**beenden (durch Fachanwendung) | active | Planeintrag bleibt active, unabhängig von Status der Geplanten Abgabe (*) | completed | EINGELÖST | auf Basis der Durchgeführten Abgaben automatisch gesetzt durch Fachanwendung; dh. Alle möglichen Einlösungen sind abgechlossen (entweder completed oder cancelled) | completed | ABGEGEBEN | alle möglichen Einlösungen erfolgt | **Durchgeführte Abgabe**erfassen |
| **Geplante Abgabe**stornieren | active | Planeintrag bleibt active, unabhängig von Status der Geplanten Abgabe (*) | entered-in-error | STORNIERT | bei fehlerhafter Eingabe, wenn noch keine Abgabe durchgeführt |   |   | keine Durchgeführten Abgaben vorhanden |   |
| **Geplante Abgabe**abgelaufen (durch Fachanwendung) | active | Planeintrag bleibt active, unabhängig von Status der Geplanten Abgabe (*) | stopped | ABGELAUFEN | automatisch erkannt durch Fachanwendung | kein relevanter Status | kein relevanter Status | noch keine bzw. noch nicht alle mögl. Einlösungen erfolgt.Zu abgelaufenen Geplanten Abgaben können keine Abgaben mehr gespeichert werden. Die (nachträgliche) Speicherung von Abgaben zu einem abgelaufenen Rezept kann im Anlassfall allerdings ohne Verordnungsbezug erfolgen. |   |
| **Geplante Abgabe**nicht abgegeben (durch Fachanwendung) | active | Planeintrag bleibt active, unabhängig von Status der Geplanten Abgabe (*) | cancelled | NICHT_ABGEGEBEN | automatisch, wenn alle Einlösungen im MedicationDispense den Status "cancelled" erhalten haben | cancelled | ABGESETZT | Apotheker dokumentiert in der Durchgeführten Abgabe, dass der Patient das Medikament in der Geplanten Abgabe nicht benötigt (mit Packungen 0) (Leerabgabe).Eine Stornierung ist möglich. | **Durchgeführten Abgabe**abgesetzt |
|   |   |   |   |   |   | entered-in-error | STORNIERT | bei fehlerhafter Eingabe | **Durchgeführte Abgabe**stornieren |

(*) solange ein evtl. Einnahmezeitraum nicht überschritten

#### Varianten der (Teil-)Abgabe

Im Element **MedicationDispense.type** einer Durchgeführten Abgabe wird die Art der Abgabe dokumentiert, welche von der [Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart) (Anzahl Einlösungen) und vom Use Case abhängt.

 ![](diagram_durchgefuehrte_abgaben_abgabearten.drawio.svg)

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Einzelabgabe (einmalige Einlösemöglichkeit) | completed | Sofern**Geplante Abgabe**vorhanden, wird diese nach erfolgter Abgabe automatisch auf**completed**gesetzt. | type: FFC (First Fill - Complete)quantity: x Packungenstatus: „completed“ | Abgabe abgeschlossen |
| Vollständige Einzelabgabe (bei mehrmaliger Einlösemöglichkeit) | activewenn letzte Einlösung abgeschlossen: completed | **Geplante Abgabe**bleibt nach erfolgter Abgabe**active**und wird erst nach der letzten möglichen Einlösung von der Fachanwendung automatisch auf**completed**gesetzt. | type: FFC (First Fill - Complete)quantity: x Packungenstatus: „completed“ | je Einlösung wird eine**Durchgeführte Abgabe**erstellt |
| 1. Teilabgabe | active | **Geplante Abgabe**bleibt**active** | type: FFP (First Fill - Part Fill)quantity: x Packungenstatus: „completed“ | Je Teilabgabe wird eine**Durchgeführte Abgabe**erstellt.**Geplante Abgabe**kann nicht mehr in einer anderen Apotheke abgegeben werden |
| Weitere Teilabgabe | active | **Geplante Abgabe**bleibt**active** | type: RFP (Refill – Part Fill)quantity: x Packungenstatus: „completed“ |   |
| Letzte Teilabgabe | completed | **Geplante Abgabe**bleibt**active**, solange weitere Einlösungen möglich. Danach setzt die Fachanwendung den Status der**Geplanten Abgabe**auf**completed**. | type: RFC (Refill - Complete)quantity: x Packungenstatus: „completed“ |   |
| "Besorgerprozess": Arzneimittel von Apotheke bestellt / zubereitet (ohne Abgabe) | active | **Geplante Abgabe**bleibt**active** | type: FFP (First Fill - Part Fill)quantity: 0 Packungen (wurden ausgegeben)status: „completed“ | Arzneimittel bestellt oder Magistrale Zubereitung in Vorbereitung. |
| "Besorgerprozess": Arzneimittel nach Teilabgaben von Apotheke bestellt (ohne Abgabe) | active | **Geplante Abgabe**bleibt**active** | type: RFP (Refill – Part Fill)quantity: 0 Packungen (wurden ausgegeben)status: „completed“ | Arzneimittel nach bereits erfolgter Teilabgabe bestellt oder Magistrale Zubereitung in Vorbereitung. |
| Leerabgabe beendet Einzelabgabe | cancelled | wenn alle möglichen Einlösungen mit**cancelled**gespeichert wurden, wird die zugehörige**Geplante Abgabe**automatisch auf**cancelled**gesetzt, sonst auf**completed**. | type: FFC (First Fill - Complete)quantity: 0 Packungenstatus: „cancelled“ | Das Arzneimittel einer Geplanten Abgabe wird vom Patienten nicht benötigt und daher als Leerabgabe vermerkt. |
| Leerabgabe beendet Teilabgabe | completed oder cancelled | wenn alle möglichen Einlösungen mit**cancelled**gespeichert wurden, wird die zugehörige**Geplante Abgabe**automatisch auf**cancelled**gesetzt, sonst auf**completed**. | type: RFC (Refill - Complete)quantity: 0 Packungenstatus: „cancelled“ | Teilabgabe wird vom Patienten nicht benötigt und daher als Leerabgabe vermerkt. Dieser Einlösevorgang ist damit beendet. |
| Notabgabe | - | keine**Geplante Abgabe**vorhanden | type: FFC (First Fill - Complete)quantity: x Packungenstatus: „completed“ | Das Medikament wurde ohne zugrundeliegende**Geplante Abgabe**abgegeben. Ein Planeintrag kann nacherfasst werden. |
| OTC Abgabe (rezeptfrei) | - | keine**Geplante Abgabe**vorhanden | type: FFC (First Fill - Complete)quantity: x Packungenstatus: „completed“ | Rezeptfreies Medikament wurde abgegeben. Ein Planeintrag kann nacherfasst werden. |

