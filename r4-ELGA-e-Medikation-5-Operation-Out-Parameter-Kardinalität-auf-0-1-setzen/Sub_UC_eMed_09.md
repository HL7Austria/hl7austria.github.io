# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09)**

## ​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09)

### Sub_UC_eMed_09_01 - Durchgeführte Abgabe schreiben

Ein berechtigter GDA (siehe [Rollen und Berechtigungen](actors.md#rollen-und-berechtigungen)) dokumentiert die Abgabe eines Arzneimittels für einen ELGA-Teilnehmer in einer [Durchgeführten Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md).

Erfolgt die Authorisierung des ELGA-Teilnehmers mit einer Kontaktbestätigung (z.B. mittels e-card), können alle Arzneimittelabgaben in e-Medikation dokumentiert werden. Beispielsweise können zusätzlich erfolgte OTC Abgaben in e-Medikation dokumentiert werden. Erfolgt der Zugriff über den im QR-Code eines e-Rezepts enhaltenen **e‑Med GroupIdentifier**, kann der GDA nur **Durchgeführte Abgaben** in e-Medikation speichern, welche sich auf die zugehörigen **Geplanten Abgaben** beziehen.

### Ablauf

![](plantuml/UC_eMed_09_01.svg)

Der GDA dokumentiert die Durchgeführte Abgabe wie folgt:

* Wenn eine zugehörige [Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) vorliegt, **MUSS** diese im Element **MedicationDispense.authorizingPrescription[geplanteAbgabe]** referenziert werden. Der zugehörige [Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md) **MUSS** über **MedicationDispense.authorizingPrescription[planeintrag]** referenziert werden.  
* Die maximale Anzahl an **Durchgeführten Abgaben** wird durch die Anzahl der zulässigen Einlösungen der zugehörigen **Geplanten Abgabe** bestimmt.
 
* Der Status einer **Durchgeführten Abgabe** wird durch **MedicationDispense.status** (siehe [Status des MedicationDispense in der Durchgeführten Abgabe](workflowmanagement.md#status-des-medicationdispense-in-der-durchgeführten-abgabe)) und **MedicationDispense.type** bestimmt und kann Auswirkungen auf den Status der zugehörigen **Geplanten Abgabe** haben (siehe [Abhängigkeiten der Geplanten Abgabe und der Durchgeführten Abgaben](workflowmanagement.md#abhängigkeiten-der-geplanten-abgabe-und-der-durchgeführten-abgaben)): 
* Über **MedicationDispense.type** werden Einzelabgabe, Teilabgaben/Besorgerprozess und Leerabgabe unterschieden (siehe [Durchgeführte Abgabe - Varianten der (Teil-)Abgabe](workflowmanagement.md#varianten-der-teil-abgabe)). Für Teilabgaben, Besorgerprozesse und Leerabgaben **MUSS** die jeweils vorgegebene Sequenz der zulässigen **MedicationDispense.type**-Werte eingehalten werden.
 
* Die tatsächlich abgegebene Packungsmenge **MUSS** in **MedicationDispense.quantity** angegeben werden. Die Fachanwendung prüft diese Menge jedoch nicht im Kontext einer gegebenenfalls zugrunde liegenden **Geplanten Abgabe**. Eine Einlösung gilt als vollständig, wenn für **MedicationDispense.type** den Wert **FFC (First Fill – Complete)** oder **PFC (Part Fill - Complete)** enthält. Die Anzahl der abgegebenen Packungen ist hierfür nicht maßgeblich.

Im Anschluss übermittelt der GDA mit POST $dispense-write die **Durchgeführten Abgaben** in einem Transaction Bundle.

Die unterschiedlichen Arten der Abgabe und deren Abfolge sind dargestellt unter [Durchgeführte Abgabe - Varianten der (Teil-)Abgabe](workflowmanagement.md#varianten-der-teil-abgabe)).

#### Sub_UC_eMed_09_01_01 - Vollständige Einzelabgabe erfassen

Eine vollständige Einzelabgabe liegt vor, wenn die in der **Geplanten Abgabe** verordneten Arzneimenge vollständig abgegeben wird (existiert keine zugehörige **Geplante Abgabe** gilt [Sub_UC_eMed_09_01_05 - Durchgeführte Abgabe ohne Bezug zu einer Geplanten Abgabe erfassen](Sub_UC_eMed_09.md#sub_uc_emed_09_01_05---durchgeführte-abgabe-ohne-bezug-zu-einer-geplanten-abgabe-erfassen)).

Bei einer vollständigen Einzelabgabe **MUSS** eine **Durchgeführte Abgabe** wie folgt erstellt werden:

* **MedicationDispense.type = FFC (First Fill – Complete)** und **MedicationDispense.status = completed**

Existiert eine zugehörige **Geplante Abgabe** prüft die Fachanwendung anhand **MedicationRequest.numberOfRepeatsAllowed** ob weitere Einlösungen erlaubt sind (z.B. bei einem Privatrezept). Ist nur eine **einmalige Einlösung** möglich (z.B. Kassenrezept), setzt die Fachanwendung die **Geplanten Abgabe** auf den Status **completed**.

Ermöglicht die **Geplante Abgabe** **mehrere Einlösungen** (**MedicationRequest.numberOfRepeatsAllowed** > 0), wird je Einlösung eine **Durchgeführte Abgabe** erstellt. Der Status der **Geplanten Abgabe** bleibt solange **active**, bis die letztmögliche Einlösung erfolgt ist (siehe[Sub_UC_eMed_08_02 - Geplante Abgabe beenden (durch Fachanwendung)](Sub_UC_eMed_08.md#sub_uc_emed_08_02---geplante-abgabe-beenden-durch-fachanwendung)).

#### Relevante Elemente (MedicationDispense)

```
AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe
    recorded: Datum der Erstellung der Durchgeführten Abgabe
    status: completed    
    medicationReference.reference: Tatsächlich abgegebenes Medikament // Contained Medication
    subject: Patient
    performer: veranwortlicher GDA (Apotheke) für die Durchgeführte Abgabe 
    authorizingPrescription[geplanteabgabe]: Verpflichtende Referenz auf zugehörige Geplante Abgabe
    authorizingPrescription[planeintrag]: Verpflichtende Referenz auf Planeintrag
    type: FFC (First Fill - Complete)  // Art der Abgabe
    quantity: Abgegebene Packungen      // Packungen je Einlösung
    whenHandedOver: Zeitpunkt der Arzneimittelaushändigung
    dosageInstruction: optional Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation

```

#### Sub_UC_eMed_09_01_02 - Teilabgaben erfassen

Eine Teilabgabe liegt vor, wenn die in der **Geplanten Abgabe** verordneten Arzneimenge nicht vollständig abgegeben wird, weil nur ein Teil der verordneten Arzneimenge eingelöst werden soll oder kann.

Sonderfälle von Teilabgaben sind Besorgerprozess (siehe [Sub_UC_eMed_09_01_03 - Besorgerprozess](sub_uc_emed_09_01_03---besorgerprozess)) und Leerabgabe (siehe [Sub_UC_eMed_09_01_05 Leerabgabe erfassen](Sub_UC_eMed_09.md#sub_uc_emed_09_01_05-leerabgabe-erfassen)).

Für jede Teilabgabe **MUSS** eine **Durchgeführte Abgabe** erstellt werden. Dabei gelten folgende Regeln:

* **MedicationDispense.type** **MUSS** 
* bei der ersten Teilabgabe den Wert **FFP (First Fill – Part Fill)**,
* bei jeder weiteren Teilabgabe den Wert **RFP (Refill – Part Fill)** und
* bei der letzten Teilabgabe, d.h. sobald die in der **Geplanten Abgabe** verordnete Arzneimenge (für eine Einlösung) vollständig abgegeben wurde, den Wert **RFC (Refill – Complete)** enthalten.
 
* **MedicationDispense.status** **MUSS** den Wert **completed** enthalten.
* **MedicationDispense.quantity** **MUSS** die **Anzahl der tatsächlich abgegebenen Packungen** enthalten.

Die Gültigkeit einer **Geplanten Abgabe** verlängert sich im Zuge von Teilabgaben (siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart)).

Sobald eine Teilabgabe durchgeführt wurde (**Part Fill**), ist die Einlösung einer weiteren Teilabgabe in einer anderen Apotheke nicht mehr möglich, d.h. die Apotheke **MUSS** die Teilabgaben mit einem **complete** abschließen.

Vor dem Speichern einer neuen **Durchgeführten Abgabe** **MUSS** die Fachanwendung prüfen,

* ob ein zulässiger Wert für **MedicationDispense.typ** verwendet wird, und
* ob die Anzahl der **Durchgeführten Abgaben** mit **MedicationDispense.type = FFC (First Fill – Complete)** bzw. **MedicationDispense.type = RFC (Refill – Complete)** die gemäß **MedicationRequest.numberOfRepeatsAllowed** zulässige Anzahl zusätzlicher Einlösungen nicht überschreitet.

Der Status der **Geplanten Abgabe** bleibt **active**, solange weitere Einlösungen zulässig sind. Sind keine weiteren Einlösungen mehr möglich, setzt die Fachanwendung den Status der **Geplanten Abgabe** auf **completed**.

Um die durch **MedicationDispense.type** definierte Sequenz **FFP → RFP → RFC** konsistent zu halten, darf immer nur die zuletzt gespeicherte **Durchgeführte Abgabe** verworfen werden. Mehrere **Durchgeführte Abgaben** können nur sequenziell in umgekehrter Reihenfolge ihrer Erstellung verworfen werden.

#### Relevante Elemente (MedicationDispense)

```
AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe
    recorded: Datum der Erstellung der Durchgeführten Abgabe
    status: completed    
    medicationReference.reference: Tatsächlich abgegebenes Medikament // Contained Medication
    subject: Patient
    performer: veranwortlicher GDA (Apotheke) für die Durchgeführte Abgabe 
    authorizingPrescription[geplanteabgabe]: Verpflichtende Referenz auf zugehörige Geplante Abgabe
    authorizingPrescription[planeintrag]: Verpflichtende Referenz auf Planeintrag
    type: FFC (First Fill - Complete) | (Refill - Part Fill) // 1. Teilabgabe, weitere Teilabgabe bestellen
    quantity: Abgegebene Packungen  // je Teilabgabe       
    whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde
    dosageInstruction: optional Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation

```

#### Sub_UC_eMed_09_01_03 - Besorgerprozess

Ein Besorgerprozess liegt vor, wenn das in der **Geplanten Abgabe** verordnete Arzneimittel **bestellt oder zubereitet** werden muss (es findet noch **keine Abgabe** statt). Die **Geplanten Abgabe** kann daraufhin nicht mehr in einer anderen Apotheke eingelöst werden.

Entsprechend den Regeln für Teilabgaben **MUSS** eine **Durchgeführte Abgabe** wie folgt erstellt werden:

* **MedicationDispense.type** **MUSS** enthalten: 
* zu Beginn des Besorgerprozesses: **MedicationDispense.type = FFP (First Fill – Part Fill)**,
* nach bereits erfolgten Teilabgaben: **MedicationDispense.type = FFP (Refill – Part Fill)**
 
* **MedicationDispense.status** **MUSS** den Wert **completed** enthalten.
* Die abgegebenen Packungen **MÜSSEN** mit **MedicationDispense.quantity** = **0** dokumentiert werden.

Wird das bestellte/zubereitete Arzneimittel ausgehändigt, wird dies in Form einer Teilabgabe mit der abgegebenen Menge dokumentiert, siehe [Sub_UC_eMed_09_01_02 - Teilabgaben erfassen](). Die **MedicationDispense.type**-Sequenz **FFP → RFP → RFC** muss dabei konsistent gehalten werden.

Im Fall einer Bestellung mit gleichzeitiger Teilabgabe wird nur die Teilabgabe dokumentert.

Der Status der **Geplanten Abgabe** bleibt während des Besorgerprozesses **active**.

#### Sub_UC_eMed_09_01_04 Leerabgabe erfassen

Mit einer **Leerabgabe** dokumentiert der GDA (Apotheker bzw. Arzt mit Hausapotheke), dass der Patient ein Arzneimittel einer **Geplanten Abgabe** nicht benötigt. Hierfür erstellt er eine [Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) wie folgt:

* **MedicationDispense.type** **MUSS** 
* im Fall einer Beendigung einer Einzelabgabe: **MedicationDispense.type = FFC (First Fill Complete)**,
* im Fall einer Beendigung einer Teilabgabe: **MedicationDispense.type = RFC (Refill - Complete)**
 
* **MedicationDispense.status** **MUSS** den Wert **cancelled** enthalten.
* Die abgegebenen Packungen **MÜSSEN** mit **MedicationDispense.quantity** = **0** dokumentiert werden. Dieser Einlösevorgang ist damit beendet.

Die Anzahl der möglichen Einlösungen einer **Geplanten Abgabe** reduziert sich nach einer Leerabgabe, d.h. sie bleibt weiterhin **active** bis die restlichen möglichen Einlösungen erfolgt sind oder sie zeitlich abläuft. Nur wenn alle möglichen Einlösungen mit **cancelled** gespeichert wurden, wird die zugehörige **Geplante Abgabe** automatisch auf **cancelled** gesetzt, sonst auf **completed**.

#### Sub_UC_eMed_09_01_05 - Durchgeführte Abgabe ohne Bezug zu einer Geplanten Abgabe erfassen

In folgenden Fällen liegt bei der Erfassung einer **Durchgeführten Abgabe** keine zugehörige **Geplante Abgabe** vor:

* Abgabe von nicht verordneten Arzneimitteln (Abgabe von wechselwirkungsrelevanten OTC)
* wenn ein e-Rezept-Eintrag oder ein Papierrezept vorhanden ist, aber keine zugehörige **Geplante Abgabe** in e-Medikation existiert.

Die Felder authorizingPrescription[geplanteabgabe] für die Referenz auf die zugehörige Geplante Abgabe und authorizingPrescription[planeintrag] für die Verpflichtende Referenz auf den Planeintrag bleiben leer. Ein berechtigter GDA kann im Nachhinein einen Bezug zwischen der **Durchgeführten Abgabe** und einem **Planeintrag** herstellen, (siehe Sub_UC_eMed_09_03 - Bezug zu einer Geplanten Abgabe herstellen).

Analog zu [Sub_UC_eMed_09_01_01 - Vollständige Einzelabgabe erfassen](Sub_UC_eMed_09.md#sub_uc_emed_09_01_01---vollständige-einzelabgabe-erfassen) gilt bei der Erstellung der **Durchgeführten Abgabe**:

* **MedicationDispense.type = FFC (First Fill – Complete)** und **MedicationDispense.status = completed**

#### Sub_UC_eMed_09_01_06 - Durchgeführte Abgabe nacherfassen

Bei der Nacherfassung bereits abgegebener Arzneimittel (z.B. wenn eine Speicherung zum Zeitpunkt der Abgabe aus technischen Gründen nicht möglich war oder bei Arzneimittelbezug aus dem Ausland), wird als Erfassungsdatum der Zeitpunkt der Nacherfassung gesetzt, während als Abgabedatum das tatsächliche Datum der Abgabe in der Vergangenheit eingetragen wird.

Alle weiteren Elemente sind entsprechend der Abgabeart zu befüllen.

#### Relevante Elemente (MedicationDispense)

```
AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe
    recorded: Datum der Nacherfassung
    whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde

```

#### Sub_UC_eMed_09_01_07 Substitution eines Arzneimittels erfassen

Eine Substitution eines Arzneimittels ist nur implizit ersichtich, durch die Referenz auf die zugehörige **Geplante Abgabe** bzw. den **Planeintrag**.

### Sub_UC_eMed_09_02 - Durchgeführte Abgabe verwerfen

Ein GDA (Apotheke) kann von ihm erstellte [Durchgeführte Abgaben](design_choices.md#durchgeführte-abgabe-AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe-medicationdispense), die sich im Status **completed** oder **cancelled** befinden, aufgrund eines Fehlers verwerfen.

Um eine **Durchgeführte Abgabe** zu verwerfen, führt der GDA POST $dispense-discard aus:

* Der Status wird auf **entered-in-error** gesetzt,
* der verantwortliche GDA (**requester**) und das Datum in **recorded** werden entsprechend aktualisiert.

Eine verworfene **Durchgeführte Abgabe** kann nicht mehr bearbeitet werden und ist nur noch aber über die Historie einsehbar. Wenn eine verworfene **Durchgeführte Abgabe** Teil eines e-Rezepts mit weiteren **Geplanten Abgaben** ist (gleicher **e-Med GroupIdentifier**), wirkt sich dies nicht auf den Status der anderen Geplanten Abgaben aus. 

#### Sub_UC_eMed_09_03 - Bezug zu einem Planeintrag herstellen

Sofern für die **Durchgeführten Abgabe** im nachhinein ein **Planeintrag** erstellt wird, **KANN** mit $reference-plan der **Planeintrag** (in **MedicationDispense.authorizingPrescription[planeintrag]**) referenziert werden.

### Sub_UC_eMed_09_04 - Durchgeführte Abgabe löschen (durch ELGA-Teilnehmer)

Der ELGA-Teilnehmer kann eine **Durchgeführte Abgabe** endgültig löschen.

Die Löschung der **Durchgeführten Abgabe** umfasst:

* die fachliche Entfernung der betreffenden **MedicationDispense-Ressource** sowie
* die Entfernung aller zugehörigen historischen Ressourcenversionen (**_history**).

Zum Löschen einer **Durchgeführte Abgabe** ruft der ELGA-Teilnehmer die betreffende **Durchgeführte Abgabe** im ELGA-Portal auf. Dieses führt zunächst eine Leseoperation auf die betreffende MedicationDispense-Ressource aus (GET MedicationDispense/[id]) und löscht anschließend die betreffende Geplante Abgabe mittels DELETE (DELETE [base]/MedicationDispense/[id]).

Die Ressource einschließlich aller historischen Versionen darf nach erfolgreicher Löschung weder über reguläre FHIR-Interaktionen noch über administrative Schnittstellen abrufbar sein. 

