# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09)**

## ​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09)

### Sub_UC_eMed_09_01 - Durchgeführte Abgabe erfassen

Der GDA (Apotheke bzw. Arzt mit Hausapotheke) kann eine [Durchgeführte Abgabe](dStructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteabgabe.md) für einen ELGA-Teilnehmer erfassen, um die Abgabe eines Medikamentes medizinisch zu dokumentieren.

Sofern eine zugehörige [Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) vorliegt, **muss** diese im Element **MedicationDispense.authorizingPrescription[geplanteAbgabe]** referenziert werden. Der zugehörige Planeintrag wird in **MedicationDispense.authorizingPrescription[planeintrag]** referenziert.

Die in der **Geplanten Abgabe** dokumentierte [Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart) (bzw. eine evtl. Einschränkung durch den GDA (Arzt) im Element **MedicationRequest.numberOfRepeatsAllowed**), legt fest wieviele Einlösungen durchgeführt werden dürfen.

Der aktuelle Status einer **Durchgeführten Abgabe** wird mittels **MedicationDispense.status** und **MedicationDispense.type** dokumentiert (siehe [Status des MedicationDispense in der Durchgeführten Abgabe](workflowmanagement.md#status-des-medicationdispense-in-der-durchgeführten-abgabe)) und kann sich auf den Status der zugehörigen **Geplanten Abgabe** auswirken. Via **MedicationDispense.type** können Einzelabgabe, Teilabgaben, Besorgerprozess und Leerabgaben dokumentiert werden, siehe Tabelle [Durchgeführte Abgabe - Varianten der (Teil-)Abgabe](workflowmanagement.md#varianten-der-teil-abgabe). Bei Teilabgaben, Abgaben gemäß dem Besorgerprozess und Leerabgaben muss eine vorgegeben Abfolge an zur Verfügung stehenden **types** eingehalten werden.

Die abgegebene Packungsmenge (**MedicationDispense.quantity**) ist verpflichtend anzugeben, wird jedoch nicht durch die Fachanwendung im Kontext einer möglichen zugrundeliegenden **Geplanten Abgabe** geprüft. Ob eine Einlösung als vollständig gilt, hängt nicht von der Anzahl der abgegebenen Packungen ab, sondern davon, ob ein **MedicationDispense.type**, der **complete** beinhaltet, gesetzt wurde.

#### Sub_UC_eMed_09_01_01 Vollständige Abgabe (Einzelabgabe)

Wenn die Geplante Abgabe nur eine einmalige Einlösung ermöglicht (z.B. Kassenrezept), muss der **MedicationDispense.type** den Wert **FFC (First Fill - Complete)** und der **MedicationDispense.status** den Wert **completed** erhalten.

Erkennt die Fachanwendung durch die Kombination dieser beiden Werte in der Durchgeführten Abgabe und **MedicationRequest.numberOfRepeatsAllowed** = 0 in der zugehörigen Geplanten Abgabe, dass die Geplante Abgabe abgeschlossen ist, setzt sie diese auf den Status **completed**.

Wenn die Geplante Abgabe eine mehrmalige Einlösung (**MedicationRequest.numberOfRepeatsAllowed** > 0) ermöglicht (z.B. Privatrezept), bleibt der Status der geplanten Abgabe weiterhin **active** bis die letzte Einlösung erfolgt ist. Nach der letztmöglichen Einlösung (und Erstellung einer **Durchgeführten Abgabe** mit Status **completed**) setzt die Fachanwendung die zugehörige **Geplante Abgabe** auf den Status **completed** (siehe[Sub_UC_eMed_08_02 - Geplante Abgabe beenden (durch Fachanwendung)](Sub_UC_eMed_08.md#sub_uc_emed_08_02---geplante-abgabe-beenden-durch-fachanwendung)).

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
    type: FFC (First Fill - Complete)                                 // Art der Abgabe
    quantity: Abgebende Menge (Packungen) je Abgabe
    whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation

```

#### Sub_UC_eMed_09_01_02 Teilabgaben

Eine Teilabgabe liegt vor, wenn die in der Geplanten Abgabe vorgesehenen Medikation:

* teilweise bestellt werden muss bzw. nur ein Teil abgegeben werden kann (siehe Sub_UC_eMed_09_01_02 Besorgerprozess) oder
* nur ein Teil der Verordnungen des vom Patienten vorgelegten Rezepts eingelöst werden soll (Geplante Abgaben mit gemeinsamen groupIdentier, müssen gemeinsam in einer Transaktion behandelt werden) 

Im ersten Schritt wird eine Durchgeführte Abgabe mit **MedicationDispense.type**: **FFP (First Fill - Part Fill)** und **MedicationDispense.status**: **completed** erstellt. **MedicationDispense.quantity** erhält die Anzahl bereits abgegebener Packungen.

Für jede weitere Teilabgabe wird jeweils eine Durchgeführte Abgabe mit **MedicationDispense.type**: **RFP (Refill Fill - Part Fill)** und **MedicationDispense.status**: **completed** und der abgegebenen Packungsanzahl erstellt (analog zu Besorgerprozess).

Die Gültigkeit der Geplanten Abgabe verlängert sich im Zuge von Teilabgaben, siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart).

Bei der letzten Teilabgabe (Vollständige Teilabgabe), dh. die in der Geplanten Abgabe vorgesehene Arzneimenge wurde abgegeben, wird eine Durchgeführte Abgabe mit **MedicationDispense.type**: **RFC (Refill - Complete)** und **MedicationDispense.status**: **completed** erstellt. Sobald eine Teilabgabe durchgeführt wurde (**Part-Fill**), ist die Einlösung einer weiteren Teilabgabe in anderen Apotheke nicht mehr möglich, d.h. die Apotheke muss die Teilabgaben mit einem **Complete** abschließen.

Bevor die Fachanwendung eine Speicherung einer neuen Durchgeführte Abgabe zulässt, prüft diese, ob ein gültiger **MedicationDispense.type** vergeben wurde und vergleicht die Anzahl der Durchgeführten Abgaben mit **FFC (First Fill - Complete)** und **RFC (Refill - Complete)** mit der Anzahl der möglichen zusätzlichen Einlösungen gemäß der Geplanten Abgabe (in **MedicationRequest.numberOfRepeatsAllowed**). In der Geplanten Abgabe bleibt **MedicationDispense.status** solange im Status **active**, solange noch weitere Einlösungen mölglich sind, anderenfalls wird der Status von der Fachanwendung auf **completed** gesetzt.

Nur die zuletzt gespeicherte durchgeführte Abgabe kann storniert werden, da andernfalls die durch type definierte Statusabfolge (First Fill - Partfill / Refill - Partfill / Refill Complete) verletzt wird und eine Inkonsistenz in der Statussequenz entsteht. 

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
    type: FFC (First Fill - Complete) | (Refill - Part Fill) | RFC (Refill - Complete)  // 1. Teilabgabe, weitere Teilabgabe, vollständige Abgabe
    quantity: Abgebende Menge (Packungen) je Abgabe
    whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation

```

#### Sub_UC_eMed_09_01_03 Besorgerprozess

Ein Besorgerprozess liegt vor, wenn die in der Geplanten Abgabe vorgesehenen Medikation:

* erst gänzlich bestellt oder zubereitet werden muss oder
* teilweise bestellt werden muss und ein Teil bereits abgegeben werden kann (siehe Sub_UC_eMed_09_01_02 Teilabgaben)

Analog zur Teilabgabe werden beim Besorgerprozess **MedicationDispense.type** und **MedicationDispense.status**: **completed** befüllt:

* Wenn eine Medikation gänzlich bestellt oder erst zubereitet werden muss, wird eine Durchgeführte Abgabe mit **MedicationDispense.type**: **FFP (First Fill - Part Fill)** und **MedicationDispense.status**: **completed** erstellt. **MedicationDispense.quantity** erhält den Wert 0, da noch keine Abgaben erfolgt sind. Falls eine Teilabgabe erfolgt, erhält **MedicationDispense.quantity** die Anzahl bereits abgegebener Packungen (siehe Sub_UC_eMed_09_01_03 Teilabgaben).
* Weitere Teilabgaben werden jeweils mit einer Durchgeführten Abgabe mit **MedicationDispense.type**: **RFP (Refill Fill - Part Fill)** und **MedicationDispense.status**: **completed** und der abgegebenen Packungsanzahl erstellt. Die Gültigkeit der Geplanten Abgabe verlängert sich im Zuge des Besorgerprozesses, siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart).
* Ist der Besorgerprozess abgeschlossen, dh. die in der Geplanten Abgabe vorgesehene Arzneimenge wurde abgegeben, wird eine Durchgeführte Abgabe mit **MedicationDispense.type**: **RFC (Refill - Complete)** und **MedicationDispense.status**: **completed** erstellt (anlaog zu Vollständige Teilabgabe). Sobald eine Teilabgabe durchgeführt wurde (**Part-Fill**), ist die Einlösung einer weiteren Teilabgabe in anderen Apotheke nicht mehr möglich, d.h. die Apotheke muss die Teilabgaben mit einem **Complete** abschließen. 

Die Fachanwendung prüft, ob für die Durchgeführte Abgabe ein gültiger **type** vergeben wurde und vergleicht die Anzahl der Durchgeführten Abgaben mit **FFC (First Fill - Complete)** und **RFC (Refill - Complete)** mit der Anzahl zusätzlicher Einlösungen gemäß der Geplanten Abgabe (in **MedicationRequest.numberOfRepeatsAllowed**). In der Geplanten Abgabe bleibt **MedicationDispense.status** solange im Status **active**, solange noch weitere Einlösungen mölglich sind, anderenfalls wird der Status von der Fachanwendung auf **completed** gesetzt.

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
    type: FFC (First Fill - Complete) | (Refill - Part Fill) | RFC (Refill - Complete)  // 1. Teilabgabe, weitere Teilabgabe, vollständige Abgabe
    quantity: Abgebende Menge (Packungen) je Abgabe
    whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation -->

```

#### Sub_UC_eMed_09_01_04 Durchgeführte Abgabe ohne Bezug zu einer Geplanten Abgabe erfassen (ohne Verordnung / OTC Abgabe)

In folgenden Fällen liegt bei der Erfassung einer **Durchgeführten Abgabe** keine zugehörige **Durchgeführte Abgabe** vor:

* Notabgabe (Rezept wird nachgebracht) 
* OTC Medikation (nicht rezeptpflichtig): 
* für wechselwirkungsrelevante Medikamente (aus ASP-Liste) soll eine **Durchgeführte Abgabe** erstellt werden
 

In Arbeit. 

#### Sub_UC_eMed_09_01_05 Durchgeführte Abgabe als Leerabgabe erfassen

* Leerabgabe bei Einzelabgabe
* Leerabgabe beendet Teilabgaben

In Arbeit.

#### Sub_UC_eMed_09_01_06 Durchgeführte Abgabe Nacherfassen (Rezept wird nachgebracht)

Eine **Durchgeführte Abgabe** kann nacherfasst werden, wenn das Arzneimittel bereits abgegeben wurde, - aber eine Speicherung zum Zeitpunkt der Abgabe aus technischen Gründen nicht möglich war - der Arzneimittelbezug aus dem Ausland erfolgt ist (Element **recorded** abweichend von **whenHandedOver**) - wenn ein e-Rezept-Eintrag oder ein Papierrezept vorhanden ist und keine Geplante Abgabe in e-Medikation eingetragen wurden.

In Arbeit.

#### Sub_UC_eMed_09_01_07 Durchgeführte Abgabe mit Substitution eines Medikaments erfassen

Eine Substitution eines Medikaments ist nur implizit ersichtich, durch die Referenz auf die zugehörige Geplante Abgabe.

### Sub_UC_eMed_09_02 - Durchgeführte Abgabe verwerfen

Ein GDA (Apotheke) kann von ihm erstellte [Durchgeführte Abgabe](design_choices.md#durchgeführte-abgabe-AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe-medicationdispense), die sich im Status **completed** oder **cancelled** befindet, aufgrund eines Fehlers verwerfen.

Um eine **Durchgeführte Abgabe** zu verwerfen, ruft der GDA diese mittels GET MedicationDispense ab und bearbeitet diese wie folgt:

* Der Status wird auf **entered-in-error** gesetzt,
* der verantwortliche GDA (**requester**) und das Datum in **authoredOn** werden entsprechend aktualisiert.

Eine verworfene **Durchgeführte Abgabe** kann nicht mehr bearbeitet werden und ist nur noch aber über die Historie einsehbar. Wenn eine verworfene **Durchgeführte Abgabe** Teil eines e-Rezepts mit weiteren Geplanten Abgaben ist (gleicher groupIdentifier), wirkt sich dies nicht auf den Status der anderen Geplanten Abgaben aus. 

### Sub_UC_eMed_09_03 - Durchgeführte Abgabe löschen (durch ELGA-Teilnehmer)

Der ELGA-Teilnehmer kann eine **Durchgeführte Abgabe** endgültig löschen.

Die Löschung der **Durchgeführten Abgabe** umfasst:

* die fachliche Entfernung der betreffenden MedicationDispense-Ressource sowie
* die Entfernung aller zugehörigen historischen Ressourcenversionen (_history).

Zum Löschen einer **Durchgeführte Abgabe** ruft der ELGA-Teilnehmer die betreffende **Durchgeführte Abgabe** im ELGA-Portal auf. Dieses führt zunächst eine Leseoperation auf die betreffende MedicationDispense-Ressource aus (GET MedicationDispense/[id]) und löscht anschließend die betreffende Geplante Abgabe mittels DELETE (DELETE [base]/MedicationDispense/[id]).

Die Ressource einschließlich aller historischen Versionen darf nach erfolgreicher Löschung weder über reguläre FHIR-Interaktionen noch über administrative Schnittstellen abrufbar sein. 

