# HL7.AT.FHIR.ELGA.EMED.R4\Designentscheidungen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Designentscheidungen**

## Designentscheidungen

### Relevante Profile

#### AtEmedListMedikationsplan (List)

Der Medikationsplan eines ELGA-Teilnehmers/einer ELGA-Teilnehmerin (**List**-Ressource) beinhaltet List-Entries, die 0..* Medikationsplaneinträge (**MedicationRequests**) referenzieren. Die Reihenfolge der Listenelemente kann duch den GDA oder Patienten festgelegt werden. Jedes Listenelement enthält im **flag**-Element den Änderungsstatus (siehe [Status der List-Flag (Medikationsplan)](workflowmanagement.md#status-der-list-flag-medikationsplan)).

#### AtEmedMRPlaneintrag (MedicationRequest)

Der Medikationsplaneintrag (**MedicationRequest**-Ressource) im Medikationsplan eines ELGA-Teilnehmers/einer ELGA-Teilnehmerin bildet genau ein Arzneimittel und dessen Dosierung ab und bildet in weiterer Folge die Grundlage zur Erstellung einer geplanten Abgabe (siehe **UC_08 Geplante Abgabe Schreiben**).

Der aktuelle Status eines Medikationsplaneintrags wird im **status**-Element dokumentiert (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag)).

Abhängig vom List-Flag kann der Medikationsplaneintrag nur eingeschränkte Status einnehmen (siehe [Konsistenzregeln zwischen List-Flag und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-list-flag-und-medicationrequest-status)).

