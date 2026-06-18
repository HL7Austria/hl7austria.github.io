# HL7.AT.FHIR.ELGA.EMED.R4\Designentscheidungen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Designentscheidungen**

## Designentscheidungen

### Relevante Profile

#### Medikationsplan: AtElgaEmedListMedikationsplan (List)

Der Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine **List**-Ressource abgebildet. Diese enthält 0..* Einträge (**List.entry**), wobei jedes Entry genau eine Referenz (**Reference**) auf einen Medikationsplaneintrag (**MedicationRequest**) in **List.entry.item** beinhaltet.

Die Reihenfolge der Einträge kann durch den GDA festgelegt werden. Jeder Listeneintrag enthält im Element **List.entry.flag** den Änderungsstatus des jeweiligen Medikationsplaneintrags (siehe [Status der List.entry.flag (Medikationsplan)](workflowmanagement.md#status-der-list-entry-flag-medikationsplan)).

#### Medikationsplaneintrag bzw. Planeintrag: AtElgaEmedMedicationRequestPlaneintrag (MedicationRequest)

Ein Medikationsplaneintrag im Medikationsplan wird durch eine **MedicationRequest**-Ressource der Kategorie "Medikationsplaneintrag" abgebildet. Die Ressource enthält genau ein Medikament mit der zugehörigen Dosierung, wobei das Medikament verpflichtend in einer contained **Medication**-Ressource, also inline (innerhalb der Ressource), dokumentiert wird. Der Medikationsplaneintrag kann in weiterer Folge als Grundlage für die Erstellung einer geplanten Abgabe dienen. Es werden R5-Backport-Extensions verwendet.

Der aktuelle Status eines Medikationsplaneintrags wird im **status**-Element dokumentiert (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag)).

Abhängig vom List.entry.flag kann der Medikationsplaneintrag nur eingeschränkte Status einnehmen (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)).

#### Medikationsplan-Collection-Bundle: AtEmedBundleMedikationsplan (Collection Bundle)

Version des Medikationsplans inklusive aller relevanten Ressourcen (List, MedicationRequests, Patient, Practitioners) wird durch eine **Bundle**-Ressource vom Typ Collection abgebildet. Dient einerseits der 1. Persistierung nach einem Plan-Write und 2. der Auslieferung des Medikationsplans bei einem Plan-Read-Zugriff an den GDA.

##### Persistiertes Medikationsplan-Collection-Bundle

Nachdem die Fachanwendung beim [Plan-Write](interactions.md#plan-write), mittels **Medikationsplan-Transaction-Bundle** alle Ressourcen aktualisiert hat, erstellt diese ein **Medikationsplan-Collection-Bundle** zur **Persistierung**, welches den vom GDA übermittelten Medikationsplan **unverändert** (keine Statusänderungen oder Entfernung entsprechend markierten Planeinträgen) abbildet und die Gesamtheit aller referenzierten Ressourcen enthält. Dies stellt sicher, dass in den historischen Versionen des Medikationsplans alle relevanten Informationen verfügbar sind.

##### Auslieferungs-Medikationsplan-Collection-Bundle

Bei einem [Plan-Read](interactions.md#plan-read) wird von der Fachanwendung ein **Auslieferungs-Bundle** bereitgestellt und wie folgt **angepasst**: Neue oder gänderte Planeinträge erhalten das List.entry.flag unchanged, zum Entfernen markierte Planeinträge (mit List.entry.flag **removed**) werden aus dem Medikationsplan entfernt. Wurden alle Planeinträge entfernt, erhält der Medikationsplan das List.emptyReason **nilknown**.

#### Geplante Abgabe Transaction-Bundle: AtEmedBundleGeplanteAbgabeTX (Transaction Bundle)

Ein Bundle vom Typ Transaction, das beim Speichern von [Geplanten Abgaben](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) mittels [Prescription-Write](interactions.md#prescription-write) auf den Medikationsplan an die Fachanwendung übermittelt wird.

Die im Bundle enthaltenen **Geplanten Abgaben** müssen mit dem gleichen **e-Med GroupIdentifier** gekennzeichnet sein. Fehlt dieser, wird er von der Fachanwendung ergänzt.

Profil in Arbeit.

