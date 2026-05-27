# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09)**

## ​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09)

### Sub_UC_eMed_09_01 - Durchgeführte Abgabe erfassen

Der GDA (Apotheke bzw. Arzt mit Hausapotheke) kann eine [Durchgeführte Abgabe](design_choices.md#durchgeführte-abgabe-AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe-medicationdispense) für einen ELGA-Teilnehmer erfassen, um die Abgabe eines Medikamentes medizinisch zu dokumentieren.

Sofern eine zugehörige [Geplante Abgabe](design_choices.md#geplante-abgabe-atelgaemedmedicationrequestgeplanteabgabe-medicationrequest) vorliegt, **muss** diese im Element **authorizingPrescription** referenziert werden.

Die in der **Geplanten Abgabe** dokumentierte [Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart) (bzw. eine evtl. Einschränkung durch den GDA (Arzt) im Element **MedicationRequest.numberOfRepeatsAllowed**), legt fest wieviele Abgaben durchgeführt werden dürfen.

Der aktuelle Status einer **Durchgeführten Abgabe** wird mittels **MedicationDispense.status**- und **MedicationDispense.type**-Element dokumentiert (siehe [Status des MedicationDispense in der durchgeführten Abgabe](workflowmanagement.md#status-des-medicationdispense-in-der-durchgeführten-abgabe)) und kann sich auf den Status der zugehörigen **Geplanten Abgabe** auswirken.

Folgende Tabelle bildet eine Übersicht über alle Varianten von (Teil-)Abgaben:

* Einzelabgabe
* Besorgerprozess
* Teilabgaben
* Leerabgaben 

#### Varianten der (Teil-)Abgabe

Im Element **MedicationDispense.type** einer durchgeführten Abgabe wird die Art der Abgabe dokumentiert, welche von der [Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart) (Anzahl Einlösungen) und vom Use Case abhängt.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Vollständige Abgabe (Einzelabgabe) | complete, wenn letzte Eilnlösung abgeschlossen, sonst active | geplante Abgabe wird nach erfolgter Dispense automatisch  auf complete gesetzt | type: FFC (First Fill - Complete)quantity:  x Packungenstatus: „complete“ | Dispense abgeschlossen; Kann nicht mehr verändert werden. |
| "Besorgerprozess": Medikament von Apotheke bestellt | active | geplante Abgabe bleibt active | type: FFP (First Fill - Part Fill)quantity:  0 Packungen (wurden  ausgegeben)status: „preparation?“ | Medikament bestellt oder Magistrale Zubereitung in Vorbereitung. Geplante Abgabe kann nicht mehr in einer anderen Apotheke abgegeben werden |
| "Besorgerprozess": bestelltes Medikament wird ausgehändigt | complete | wenn Dispense complete, dann auch geplante Abgabe complete | type: RFC (Refill - Complete)quantity:  x Packungenstatus: „complete“ | Durchgeführte Abgabe abgeschlossen |
| 1. Teilabgabe | active | geplante Abgabe bleibt active | type: FFP (First Fill - Part Fill)quantity:  x Packungenstatus: „complete“ | 1. Teilabgabe |
| Weitere Teilabgabe | active | geplante Abgabe bleibt active | type: RFP (Refill - Part Fill)quantity:  x Packungenstatus: „complete“ | weitere Teilabgabe |
| Letzte Teilabgabe | complete | nach der letzten Teilabgabe wird die geplante Abgabe automatisch auf complete gesetzt | type:  RFC (Refill - Complete)quantity:  x Packungenstatus: „complete“ | letzte Teilabgabe |
| Leerabgabe bei Einzelabgabe | complete | die geplante Abgabe wird automatisch auf complete gesetzt | type: FFC (First Fill - Complete) bzw. RFC (Refill Complete)quantity:  0 Packungenstatus: „cancelled“ | Das Medikament einer geplanten Abgabe wird vom Patienten nicht benötigt und daher als Leerabgabe vermerkt. |
| Leerabgabe beendet Teilabgaben | complete | nach einer Leerabgabe bei einer  Teilabgabe wird die geplante Abgabe automatisch auf complete gesetzt | type: RFC (Refill - Complete)quantity:  0 Packungenstatus: „cancelled“ | Das Medikament einer geplanten Abgabe wird vom Patienten nicht benötigt und daher als Leerabgabe vermerkt. Dieser Einlösevorgang ist damit beendet. |
| Notabgabe |  - | keine geplante Abgabe vorhanden | type: EM (Emergency Supply)quantity:  x Packungenstatus: „complete“ | Das Medikament wurde ohne zugrundeliegende geplante Abgabe abgegeben.Es wird kein Rezept nachgereicht |
| Rezept wird nachgebracht |  - | keine geplante Abgabe vorhanden | type: SO (Script Owing)quantity:  x Packungenstatus: „complete“ | Medikament wurde abgegeben oder reserviert, das formale Rezept wird später nachgereicht.  Planeintrag + geplante Abgabe für Wechselwirkungsrelevante Medikatmente soll nacherfasst werden. |
| OTC Abgabe (rezeptfrei) |  - | keine geplante Abgabe vorhanden | type: OTC (hinzufügen)quantity:  x Packungenstatus: „complete“ | Rezeptfreies Medikament wurde abgegeben. Ein Planeintrag für Wechselwirkungsrelevante Medikatmente soll nacherfasst werden. |

#### Sub_UC_eMed_09_01_0x Durchgeführte Abgabe mit Bezug zu einer geplanten Abgabe erfassen (Vollständige Abgabe)

Nach der letztmöglichen Einlösung (und Erstellung einer **Durchgeführten Abgabe** mit Status **complete**) setzt die Fachanwendung die zugehörige **Geplante Abgabe** auf den Status **completed** (siehe[Sub_UC_eMed_08_02 - Geplante Abgabe beenden (durch Fachanwendung)](Sub_UC_eMed_08.md#sub_uc_emed_08_02---geplante-abgabe-beenden-durch-fachanwendung)).

Wenn die geplante Abgabe nur eine einmalige Einlösung ermöglicht (z.B. Kassenrezept), erkennt die Fachanwendung durch die Kombination aus MedicationDispense.type enthält **X-fill complete** (und Status **complete**) und Geplante Abgabe MedicationReqeust.numberOfRepeatsAllowed == 0, dass die geplante Abgabe abgeschlossen ist und setzt deren Status auf complete. Wenn die geplante Abgabe eine mehrmalige Einlösungen (numberOfRepeatsAllowed) ermöglicht (z.B. Privatrezept), bleibt der Status der geplanten Abgabe weiterhin active bis die letzte Einlösung erfolgt ist.

#### Relevante Elemente (MedicationDispense)

```
AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe
    recorded: Datum der Erstellung der Durchgeführten Abgabe
    status: completed  
    statusReasonCodeableConcept: Wert aus Valueset (in Arbeit)        // optionale Begründung für den Status https://hl7.org/fhir/R4/valueset-medicationdispense-status-reason.html     
    medicationReference.reference: Tatsächlich abgegebenes Medikament // Contained Medication
    authoredOn: Datum der Erstellung der Durchgeführten Abgabe
    performer: veranwortlicher GDA (Apotheke) für die Durchgeführte Abgabe 
    authorizingPrescription: Verpflichtende Referenz auf zugehörige Geplante Abgabe
    type: FFC (First Fill - Complete) | (Part Fill - Complete) // Art der Abgabe
    quantity: Abgebende Menge (Packungen) je Abgabe
    whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation

```

#### Sub_UC_eMed_09_01_0x Durchgeführte Abgabe ohne Bezug zu einer geplanten Abgabe erfassen (OTC Abgabe / rezeptfrei)

In folgenden Fällen liegt bei der Erfassung einer **Durchgeführten Abgabe** keine zugehörige **Durchgeführte Abgabe** vor:

* Notabgabe (Rezept wird nachgebracht) 
* OTC Medikation (nicht rezeptpflichtig): 
* für wechselwirkungsrelevante Medikamente (aus ASP-Liste) soll eine **Durchgeführte Abgabe** erstellt werden
 

#### Sub_UC_eMed_09_01_0x Durchgeführte Abgabe mit Besorgerprozess erfassen

* "Besorgerprozess": Medikament von Apotheke bestellt oder Magistrale Zubereitung in Vorbereitung
* "Besorgerprozess": bestelltes Medikament wird ausgehändigt

#### Sub_UC_eMed_09_01_0x Durchgeführte Abgabe als Teilabgaben erfassen

*  
1. Teilabgabe
 
* Weitere Teilabgabe
* Letzte Teilabgabe

#### Sub_UC_eMed_09_01_0x Durchgeführte Abgabe als Leerabgabe erfassen

* Leerabgabe bei Einzelabgabe
* Leerabgabe beendet Teilabgaben

#### Sub_UC_eMed_09_01_0x Durchgeführte Abgabe Nacherfassen (Rezept wird nachgebracht)

Eine **Durchgeführte Abgabe** muss nacherfasst werden, wenn das Arzneimittel bereits abgegeben wurde, - aber eine Speicherung zum Zeitpunkt der Abgabe aus technischen Gründen nicht möglich war - der Arzneimittelbezug aus dem Ausland erfolgt ist (Element **recorded** abweichend von **whenHandedOver**) - wenn ein e-Rezept-Eintrag oder ein Papierrezept vorhanden ist und keine geplante Abgabe in e-Medikation eingetragen wurden.

In Arbeit.

#### Sub_UC_eMed_09_01_0x Durchgeführte Abgabe mit Substitution eines Medikaments erfassen

Eine Substitution eines Medikaments ist nur implizit ersichtich, durch die Referenz auf die zugehörige geplante Abgabe.

### Sub_UC_eMed_09_02 - Durchgeführte Abgabe verwerfen

Ein GDA (Apotheke) kann jede bestehende [Durchgeführte Abgabe](design_choices.md#durchgeführte-abgabe-AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe-medicationdispense) aufgrund einer fehlerhaften Eingabe verwerfen (auch wenn er diese nicht selbst erstellt hat).

Um eine **Durchgeführte Abgabe** zu verwerfen, ruft der GDA diese mittels GET MedicationDispense ab und bearbeitet diese wie folgt:

* Der Status wird auf **entered-in-error** gesetzt,
* der verantwortliche GDA (**requester**) und das Datum in **authoredOn** werden entsprechend aktualisiert.

Die stornierte **Durchgeführte Abgabe** wird damit abgeschlossen, kann aber über die Historie eingesehen werden.    

### Sub_UC_eMed_09_03 - Durchgeführte Abgabe löschen (durch ELGA-Teilnehmer)

Der ELGA-Teilnehmer kann eine **Durchgeführte Abgabe** endgültig löschen.

Die Löschung der **Durchgeführten Abgabe** umfasst:

* die fachliche Entfernung der betreffenden MedicationDispense-Ressource sowie
* die Entfernung aller zugehörigen historischen Ressourcenversionen (_history).

Zum Löschen einer **Durchgeführte Abgabe** ruft der ELGA-Teilnehmer die betreffende **Durchgeführte Abgabe** im ELGA-Portal auf. Dieses führt zunächst eine Leseoperation auf die betreffende MedicationDispense-Ressource aus (GET MedicationDispense/[id]) und löscht anschließend die betreffende geplante Abgabe mittels DELETE (DELETE [base]/MedicationDispense/[id]).

Die Ressource einschließlich aller historischen Versionen darf nach erfolgreicher Löschung weder über reguläre FHIR-Interaktionen noch über administrative Schnittstellen abrufbar sein. 

