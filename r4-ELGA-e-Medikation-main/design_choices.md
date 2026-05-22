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

Version des Medikationsplans inklusive aller relevanten Ressourcen (List, MedicationRequests, Patient, Practitioners) wird durch eine **Bundle**-Ressource vom Typ Collection abgebildet. Dient einerseits der 1. Persistierung nach einem Write-Zugriff und 2. der Auslieferung des Medikationsplans bei einem Read-to-Write-Zugriff an den GDA.

##### Medikationsplan-Collection-Bundle zur Persistierung nach einem Write-Zugriff

Nachdem die Fachanwendung beim [Write-Zugriff](interactions.md#write-zugriff), mittels [Medikationsplan-Transaction-Bundle](design_choices.md#medikationsplan-transaction-bundle-atemedbundlemedikationsplantx-transaction-bundle) alle Ressourcen aktualisiert hat, erstellt diese ein **Medikationsplan-Collection-Bundle** zur **Persistierung**, welches den vom GDA übermittelten Medikationsplan **unverändert** (keine Statusänderungen oder Entfernung entsprechend markierten Planeinträgen) abbildet und die Gesamtheit aller referenzierten Ressourcen enthält. Dies stellt sicher, dass in den historischen Versionen des Medikationsplans alle relevanten Informationen verfügbar sind.

##### Medikationsplan-Collection-Bundle zur Auslieferung des Medikationsplans bei einem Read-to-Write-Zugriff

Bei einem [Read-to-Write-Zugriff](interactions.md#read-to-write-zugriff) wird von der Fachanwendung ein **Auslieferungs-Bundle** bereitgestellt und wie folgt **angepasst**: Es enthält den temporären List.identifier zur späteren Integritätsprüfung beim Schreibvorgang. Neue oder gänderte Planeinträge erhalten das List.entry.flag unchanged, zum Entfernen markierte Planeinträge (mit List.entry.flag **removed**) werden aus dem Medikationsplan entfernt. Wurden alle Planeinträge entfernt, erhält der Medikationsplan das List.emptyReason **nilknown**.

#### Medikationsplan-Transaction-Bundle: AtEmedBundleMedikationsplanTx (Transaction Bundle)

Ein Bundle vom Typ Transaction, das beim [Write-Zugriff](interactions.md#write-zugriff) auf den Medikationsplan an die Fachanwendung übermittelt wird. Das Bundle enthält den [Medikationsplan](design_choices.md#medikationsplan-atelgaemedlistmedikationsplan-list) mit Referenzen auf die [Medikationsplaneinträge](design_choices.md#medikationsplaneintrag-bzw-planeintrag-atelgaemedmedicationrequestplaneintrag-medicationrequest). Alle neuen bzw. geänderten und zu entfernenden Medikationsplaneinträge müssen inline im Bundle enthalten sein, alle unveränderten Ressourcen werden referenziert.

Das Transaction Bundle dient der Aktualisierung aller enthaltenen Ressourcen und wird selbst nicht persisitert.

#### Geplante Abgabe: AtElgaEmedMedicationRequestGeplanteAbgabe (MedicationRequest)

Eine **Geplante Abgabe** einer Medikation aus dem zugrundeliegenden Medikationsplaneintrag wird durch eine **MedicationRequest**-Ressource der Kategorie **Geplante Abgabe** abgebildet. Sie enthält die verordnete Medikation und deren Dosierung und spielgelt die Inhalte des e-Rezepts wider. **Geplante Abgaben** dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Werden mehrere Medikamente gleichzeitig verordnet (und sollen demselben e-Rezept zugeordnet sein), wird für jedes Medikament eine geplante Abgabe mit demselben e-Med groupIdentifier erstellt (bildet 'Rezept-Klammer'). Es werden R5-Backport-Extensions verwendet.

Der aktuelle Status einer geplanten Abgabe wird im **status**-Element dokumentiert (siehe [Status des MedicationRequests in der geplanten Abgabe](workflowmanagement.md#status-des-medicationrequests-in-der-geplanten-abgabe)).

#### Durchgeführte Abgabe: AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe (MedicationDispense)

Eine **Durchgeführte Abgabe** einer Medikation wird durch eine **MedicationDispense**-Ressource abgebildet. Die **Durchgeführte Abgabe** enthält die abgegebene Medikation und deren Dosierung und dient somit der Nachvollziehbarkeit der abgegebenen Arzneimittel in der e-Medikation.

In der **Durchgeführten Abgabe** können Abweichungen von der **Geplanten Abgabe** hinsichtlich des Medikaments und dessen Dosierung dokumentiert werden. Sofern eine zugehörige [Geplante Abgabe](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) vorliegt, muss diese referenziert werden. Eine mögliche Substitution des Medikaments ist implizit, durch die Referenz auf die zugehörige geplante Abgabe, ersichtlich. Es werden R5-Backport-Extensions verwendet.

Der aktuelle Status einer **Durchgeführte Abgabe** wird mittels **status**- und **type**-Element dokumentiert (siehe [Status des MedicationDispense in der durchgeführten Abgabe](workflowmanagement.md#status-des-medicationdispense-in-der-durchgeführten-abgabe)).

