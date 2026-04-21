# HL7.AT.FHIR.ELGA.EMED.R4\Designentscheidungen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Designentscheidungen**

## Designentscheidungen

### Relevante Profile

#### AtEmedListMedikationsplan (List)

Der Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine **List**-Ressource abgebildet. Diese enthält 0..* Einträge (**List.entry**), wobei jedes Entry genau eine Referenz (**Reference**) auf einen Medikationsplaneintrag (**MedicationRequest**) in **List.entry.item** beinhaltet.

Die Reihenfolge der Einträge kann durch den GDA oder den Patienten festgelegt werden. Jeder Listeneintrag enthält im Element **List.entry.flag** den Änderungsstatus des jeweiligen Medikationsplaneintrags (siehe [Status der List.entry.flag (Medikationsplan)](workflowmanagement.md#status-der-list-entry-flag-medikationsplan)).

#### AtEmedMRPlaneintrag (MedicationRequest)

Ein Medikationsplaneintrag im Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine **MedicationRequest**-Ressource abgebildet. Die Ressource enthält genau ein Medikament mit der zugehörigen Dosierung, wobei das Medikament verpflichtend in einer contained **Medication**-Ressource, also inline (innerhalb der Ressource), dokumentiert wird. Der Medikationsplaneintrag kann in weiterer Folge als Grundlage für die Erstellung einer geplanten Abgabe dienen. Es werden R5-Backport-Extensions verwendet."

Der aktuelle Status eines Medikationsplaneintrags wird im **status**-Element dokumentiert (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag)).

Abhängig vom List.entry.flag kann der Medikationsplaneintrag nur eingeschränkte Status einnehmen (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)).

#### AtEmedBundleMedikationsplan (Collection Bundle)

Eine persistierte Version des Medikationsplans eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin inklusive aller dafür relevanten Ressourcen (List, MedicationRequests, Patient, Practitioners) wird durch eine **Bundle**-Ressource vom Typ Collection abgebildet. Diese enthält 1..* Einträge (**Bundle.entry**), wobei jeder Entry genau eine Ressource (**Bundle.entry.resource**) beinhaltet. Die **List**-Ressource, also der Medikationsplan selbst, ist dabei immer der erste Entry. Die **List**-Ressource dient für das Bundle als zentrale Informationsquelle die angibt, wie die restlichen Ressourcen im Bundle zusammenhängen.

