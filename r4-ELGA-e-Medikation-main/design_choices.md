# HL7.AT.FHIR.ELGA.EMED.R4\Designentscheidungen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Designentscheidungen**

## Designentscheidungen

### Übersicht

Die folgende Abbildung zeigt den Aufbau des Medikationsplans sowie das Zusammenwirken der dabei verwendeten FHIR-Ressourcen.

Zentrale Ressource ist der Medikationsplan (**List**), der die einzelnen Medikationsplaneinträge (**MedicationRequest**) referenziert. Basierend auf diesen Planeinträgen werden **Geplante Abgaben** (**MedicationRequest**) erstellt, auf deren Grundlage **Durchgeführte Abgaben** (**MedicationDispense**) dokumentiert werden können.

Die Fachanwendung persistiert ausschließlich die einzelnen FHIR-Ressourcen. Historische Zustände werden durch versionierte Ressourcen und versionierte Referenzen abgebildet. Collection Bundles dienen ausschließlich der Auslieferung eines Medikationsplans und werden bei Bedarf aus den entsprechenden Ressourcenversionen erzeugt.

 ![](Uebersicht_e_Medikation_Ressourcen.drawio.svg)

### Relevante Profile

#### Medikationsplan: AtElgaEmedListMedikationsplan (List)

Der Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine **List**-Ressource abgebildet. Diese enthält 0..* Einträge (**List.entry**), wobei jeder Entry genau eine Referenz (**Reference**) auf einen Medikationsplaneintrag (**MedicationRequest**) in **List.entry.item** beinhaltet.

Die Reihenfolge der Einträge kann durch den GDA festgelegt werden. Jeder Listeneintrag enthält im Element **List.entry.flag** den Änderungsstatus des jeweiligen Medikationsplaneintrags (siehe [Status der List.entry.flag (Medikationsplan)](workflowmanagement.md#status-der-list-entry-flag-medikationsplan)).

Die List-Ressource bildet gemeinsam mit den referenzierten Ressourcenversionen die Grundlage für den Aufbau des aktuellen bzw. eines historischen Medikationsplans.

#### Medikationsplaneintrag bzw. Planeintrag: AtElgaEmedMedicationRequestPlaneintrag (MedicationRequest)

Ein Medikationsplaneintrag im Medikationsplan wird durch eine **MedicationRequest**-Ressource der Kategorie "Medikationsplaneintrag" abgebildet. Die Ressource enthält genau ein Medikament mit der zugehörigen Dosierung, wobei das Medikament verpflichtend in einer contained **Medication**-Ressource, also inline (innerhalb der Ressource), dokumentiert wird. Der Medikationsplaneintrag kann in weiterer Folge als Grundlage für die Erstellung einer **Geplanten Abgabe** dienen. Es werden R5-Backport-Extensions verwendet.

Der aktuelle Status eines Medikationsplaneintrags wird im **status**-Element dokumentiert (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag)).

Abhängig vom List.entry.flag kann der Medikationsplaneintrag nur bestimmte Statuswerte annehmen (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)).

#### Medikationsplan-Collection-Bundle: AtElgaEmedBundleMedikationsplan (Collection Bundle)

Das Medikationsplan-Collection-Bundle dient ausschließlich der Auslieferung eines Medikationsplans an Clients. Es wird von der Fachanwendung bei Bedarf aus einer List-Ressource sowie den von dieser referenzierten Ressourcenversionen erzeugt und **nicht persistiert**.

#### Geplante Abgabe Transaction-Bundle: AtElgaEmedBundleGeplanteAbgabeTX (Transaction Bundle)

Ein Bundle vom Typ Transaction, das beim Speichern von [Geplanten Abgaben](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) mittels [Prescription-Write](interactions.md#prescription-write) auf den Medikationsplan an die Fachanwendung übermittelt wird.

Die im Bundle enthaltenen **Geplanten Abgaben** müssen mit dem gleichen **e-Med GroupIdentifier** gekennzeichnet sein. Fehlt dieser bei allen **Geplanten Abgaben** im Transaction Bundle, wird er von der Fachanwendung ergänzt.

Profil in Arbeit.

