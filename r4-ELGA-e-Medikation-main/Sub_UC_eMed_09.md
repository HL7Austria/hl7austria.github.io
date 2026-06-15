# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09)**

## ​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_09)

### Sub_UC_eMed_09_01 - Durchgeführte Abgabe erfassen

Der GDA (Apotheke bzw. Arzt mit Hausapotheke) kann eine [Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteabgabe.md) für einen ELGA-Teilnehmer erfassen, um die Abgabe eines Arzneimittels medizinisch zu dokumentieren:

* Liegt eine zugehörige [Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) vor, **MUSS** diese über **MedicationDispense.authorizingPrescription[geplanteAbgabe]** referenziert werden. Der zugehörige Planeintrag **MUSS** über **MedicationDispense.authorizingPrescription[planeintrag]** referenziert werden. 
* Die in der **Geplanten Abgabe** dokumentierte [Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart) sowie eine gegebenenfalls durch den verordnenden GDA im Element **MedicationRequest.numberOfRepeatsAllowed** festgelegte Einschränkung bestimmen die Anzahl der zulässigen Einlösungen.

Der Status einer **Durchgeführten Abgabe** wird durch **MedicationDispense.status** und **MedicationDispense.type** beschrieben (siehe [Status des MedicationDispense in der Durchgeführten Abgabe](workflowmanagement.md#status-des-medicationdispense-in-der-durchgeführten-abgabe)) und kann Auswirkungen auf den Status der zugehörigen **Geplanten Abgabe** haben: * Über **MedicationDispense.type** werden Einzelabgaben, Teilabgaben, Besorgerprozesse und Leerabgaben unterschieden (siehe [Durchgeführte Abgabe - Varianten der (Teil-)Abgabe](workflowmanagement.md#varianten-der-teil-abgabe)). Für Teilabgaben, Besorgerprozesse und Leerabgaben **MUSS** die jeweils vorgegebene Sequenz der zulässigen **MedicationDispense.type**-Werte eingehalten werden.

* Die tatsächlich abgegebene Packungsmenge **MUSS** in **MedicationDispense.quantity** angegeben werden. Die Fachanwendung prüft diese Menge jedoch nicht im Kontext einer gegebenenfalls zugrunde liegenden **Geplanten Abgabe**. Ob eine Einlösung als vollständig gilt, wird ausschließlich durch den Wert von **MedicationDispense.type** bestimmt. Eine Einlösung gilt als vollständig, wenn ein **MedicationDispense.type** mit dem Wert **Complete** verwendet wird; die Anzahl der abgegebenen Packungen ist hierfür nicht maßgeblich.

#### Sub_UC_eMed_09_01_01 Vollständige Abgabe (Einzelabgabe)

Wenn die **Geplante Abgabe** nur eine einmalige Einlösung ermöglicht (z. B. Kassenrezept), **MUSS** die zugehörige **Durchgeführte Abgabe** mit **MedicationDispense.type = FFC (First Fill – Complete)** und **MedicationDispense.status = completed** erstellt werden.

Erkennt die Fachanwendung anhand dieser Werte sowie **MedicationRequest.numberOfRepeatsAllowed** = 0 in der zugehörigen **Geplanten Abgabe**, dass keine weiteren Einlösungen zulässig sind, **MUSS** sie den Status der **Geplanten Abgabe** auf **completed** setzen.

Ermöglicht die **Geplante Abgabe** mehrere Einlösungen (**MedicationRequest.numberOfRepeatsAllowed** > 0), bleibt ihr Status solange **active**, bis die letztmögliche Einlösung erfolgt ist. Nach Durchführung der letzten Einlösung und Erstellung einer Durchgeführten Abgabe mit **MedicationDispense.status = completed** **MUSS** die Fachanwendung den Status der zugehörigen **Geplanten Abgabe** auf completed setzen (siehe[Sub_UC_eMed_08_02 - Geplante Abgabe beenden (durch Fachanwendung)](Sub_UC_eMed_08.md#sub_uc_emed_08_02---geplante-abgabe-beenden-durch-fachanwendung)).

#### Relevante Elemente (MedicationDispense)

```
AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe
    recorded: Datum der Erstellung der Durchgeführten Abgabe
    status: completed    
    medicationReference.reference: Tatsächlich abgegebenes Medikament // Contained Medication
    subject: Patient
    performer: veranwortlicher GDA (Apotheke) für die Durchgeführte Abgabe 
    authorizingPrescription: Verpflichtende Referenz auf zugehörige Geplante Abgabe
    type: FFC (First Fill - Complete)  // Art der Abgabe
    quantity: Abgegebene Menge          // Packungen je Abgabe
    //whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde
    dosageInstruction: optional Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation

```

#### Sub_UC_eMed_09_01_02 Teilabgaben

Eine Teilabgabe liegt vor, wenn die in der **Geplanten Abgabe** vorgesehenen Arzneimenge:

* nur teilweise abgegeben werden kann und die nicht verfügbaren Arzneimittel im Rahmen des Besorgerprozesses nachbestellt werden (siehe [Sub_UC_eMed_09_01_02 Besorgerprozess](Sub_UC_eMed_09.md#sub_uc_emed_09_01_03-besorgerprozess)) oder
* nur ein Teil der auf dem vom Patienten vorgelegten Rezept enthaltenen Verordnungen eingelöst werden soll.

Da alle Verordnungen eines e-Rezepts innerhalb einer gemeinsamen Transaktion verarbeitet werden, **MÜSSEN** sämtliche dem Rezept zugeordneten **Geplante Abgaben** mit identischem **e-Med GroupIdentifier** konsistent mit einem entsprechenden Status versehen werden:

* Bei der ersten Teilabgabe **MUSS** eine **Durchgeführte Abgabe** mit

erstellt werden. **MedicationDispense.quantity** **MUSS** die Anzahl der tatsächlich abgegebenen Packungen enthalten.

* Für jede weitere Teilabgabe **MUSS** jeweils eine weitere **Durchgeführte Abgabe** mit

erstellt werden. **MedicationDispense.quantity** **MUSS** die Anzahl der im jeweiligen Abgabevorgang abgegebenen Packungen enthalten. Das Vorgehen entspricht dem Besorgerprozess.

* Mit der letzten Teilabgabe (**vollständige Teilabgabe**), dh. die in der Geplanten Abgabe vorgesehene Arzneimenge wurde abgegeben, **MUSS** eine **Durchgeführte Abgabe** mit

erstellt werden.

Die Gültigkeit einer **Geplanten Abgabe** verlängert sich im Zuge von Teilabgaben (siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart)).

Sobald eine Teilabgabe durchgeführt wurde (**Part-Fill**), ist die Einlösung einer weiteren Teilabgabe in einer anderen Apotheke nicht mehr möglich, d.h. die Apotheke **MUSS** die Teilabgaben mit einem **Complete** abschließen.

Vor dem Speichern einer neuen **Durchgeführten Abgabe** **MUSS** die Fachanwendung prüfen,

* ob ein zulässiger Wert für **MedicationDispense.typ** verwendet wird, und
* ob die Anzahl der **Durchgeführten Abgaben** mit **MedicationDispense.type = FFC (First Fill – Complete)** bzw. **MedicationDispense.type = RFC (Refill – Complete)** die gemäß **MedicationRequest.numberOfRepeatsAllowed** zulässige Anzahl zusätzlicher Einlösungen nicht überschreitet.

Der Status der **Geplanten Abgabe** bleibt **active**, solange weitere Einlösungen zulässig sind. Sind keine weiteren Einlösungen mehr möglich, **MUSS** die Fachanwendung den Status der **Geplanten Abgabe** auf **completed** setzen.

Um die durch **MedicationDispense.type** definierte Sequenz **FFP → RFP → … → RFC** konsistent zu halten, **DARF** immer nur die zuletzt gespeicherte **Durchgeführte Abgabe** verworfen werden. Mehrere **Durchgeführte Abgaben** können nur sequenziell in umgekehrter Reihenfolge ihrer Erstellung verworfen werden. 

#### Relevante Elemente (MedicationDispense)

```
AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe
    recorded: Datum der Erstellung der Durchgeführten Abgabe
    status: completed    
    medicationReference.reference: Tatsächlich abgegebenes Medikament // Contained Medication
    subject: Patient
    performer: veranwortlicher GDA (Apotheke) für die Durchgeführte Abgabe 
    authorizingPrescription: Verpflichtende Referenz auf zugehörige Geplante Abgabe
    type: FFC (First Fill - Complete) | (Refill - Part Fill) | RFC (Refill - Complete)  // 1. Teilabgabe, weitere Teilabgabe, letzte Teilabgabe
    quantity: Abgegebene Menge          // Packungen je Abgabe
    //whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde
    dosageInstruction: optional Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation

```

#### Sub_UC_eMed_09_01_03 Besorgerprozess

Ein Besorgerprozess liegt vor, wenn die in der **Geplanten Abgabe** vorgesehenen Arzneimittel vor der Abgabe vollständig bestellt oder zubereitet werden müssen.

Werden hingegen bereits verfügbare Arzneimittel teilweise abgegeben und lediglich der verbleibende Teil bestellt oder zubereitet, liegt eine Teilabgabe vor (siehe [Sub_UC_eMed_09_01_02 Teilabgaben](Sub_UC_eMed_09.md#sub_uc_emed_09_01_02-teilabgaben)).

Für den Besorgerprozess gelten die Regeln entsprechend den Teilabgaben. Abweichend davon **MUSS** bei Beginn des Besorgerprozesses eine **Durchgeführte Abgabe** mit **MedicationDispense.type = FFP** und **MedicationDispense.quantity = 0** erstellt werden.

#### Sub_UC_eMed_09_01_04 Durchgeführte Abgabe ohne Bezug zu einer Geplanten Abgabe erfassen (ohne Verordnung / OTC Abgabe)

In Arbeit.

#### Sub_UC_eMed_09_01_05 Durchgeführte Abgabe als Leerabgabe erfassen

Der GDA (Apotheker bzw. Arzt mit Hausapotheke) kann eine [Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteabgabe.md) als **Leerabgabe** erfassen, wenn der Patient angibt, dass er das Arzneimittel einer **Geplanten Abgabe** nicht benötigt (z. B. weil es bereits vorrätig ist) oder es generell nicht (mehr) einnimmt. Hierfür setzt er MedicationDispense.status auf **cancelled**.

Eine **Leerabgabe** zählt als konsumierte Einlösung der zugehörigen **Geplanten Abgabe** und reduziert die Anzahl der verbleibenden möglichen Einlösungen um eins.

Die **Geplante Abgabe** bleibt nach einer Leerabgabe weiterhin im Status **active**, bis alle zulässigen Einlösungen durchgeführt wurden oder die Gültigkeit zeitlich abläuft.

Nur wenn alle möglichen Einlösungen als **cancelled** erfasst wurden, **MUSS** die zugehörige **Geplante Abgabe** automatisch auf den Status **cancelled** gesetzt werden. In allen anderen Fällen **MUSS** der Status der **Geplanten Abgabe** auf **completed** gesetzt werden, sobald keine weiteren Einlösungen mehr möglich sind.

#### Sub_UC_eMed_09_01_05 Durchgeführte Abgabe als Leerabgabe erfassen

Der GDA (Apotheker bzw. Arzt mit Hausapotheke) kann eine [Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteabgabe.md) als **Leerabgabe** erfassen, wenn der Patient angibt, dass er das Medikament einer **Geplanten Abgabe** nicht benötigt (z.B. weil er es vorrätig hat) oder generell nicht (mehr) einnimmt.

Die Anzahl der möglichen Einlösungen einer **Geplanten Abgabe** reduziert sich nach einer Leerabgabe um eins, d.h. sie bleibt weiterhin offen (**active**) bis die restlichen möglichen Einlösungen erfolgt sind oder sie zeitlich abläuft. Nur wenn alle möglichen Einlösungen mit **cancelled** gespeichert wurden, wird die zugehörige **Geplante Abgabe** automatisch auf **cancelled** gesetzt, sonst auf **completed**.

Wenn die letzte **Durchgeführte Abgabe** danach verworfen wird (Status **entered-in-error**), wird der Status der **Geplanten Abgabe** durch die Fachanwendung wieder auf **active** gesetzt.

#### Relevante Elemente (MedicationDispense)

```
AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe
    recorded: Datum der Erstellung der Durchgeführten Abgabe
    status: cancelled     
    medicationReference.reference: Tatsächlich abgegebenes Medikament // Contained Medication
    performer: veranwortlicher GDA (Apotheke) für die Durchgeführte Abgabe 
    authorizingPrescription: Verpflichtende Referenz auf zugehörige Geplante Abgabe
    type: FFC (First Fill - Complete) | (Refill - Part Fill) | RFC (Refill - Complete)  // Leerabgabe beendet Einzelabgabe | Leerabgabe beendet eine Teilabgabe | Leerabgabe beendet alle Teilabgaben
    quantity: 0     // Packungen
    //whenHandedOver: Der Zeitpunkt, zu dem das abgegebene Produkt ausgehändigt wurde 
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)  // angepasst an abgegebene Medikation 

```

#### Sub_UC_eMed_09_01_07 Durchgeführte Abgabe mit Substitution eines Arzneimittels erfassen

Eine Substitution eines Arzneimittels ist nur implizit ersichtich, durch die Referenz auf die zugehörige Geplante Abgabe.

### Sub_UC_eMed_09_02 - Durchgeführte Abgabe verwerfen

Ein GDA (Apotheke) kann von ihm erstellte [Durchgeführte Abgaben](design_choices.md#durchgeführte-abgabe-AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe-medicationdispense), die sich im Status **completed** oder **cancelled** befinden, aufgrund eines Fehlers verwerfen.

Um eine **Durchgeführte Abgabe** zu verwerfen, ruft der GDA diese mittels GET MedicationDispense ab und bearbeitet diese wie folgt:

* Der Status wird auf **entered-in-error** gesetzt,
* der verantwortliche GDA (**requester**) und das Datum in **recorded** werden entsprechend aktualisiert.

Eine verworfene **Durchgeführte Abgabe** kann nicht mehr bearbeitet werden und ist nur noch aber über die Historie einsehbar. Wenn eine verworfene **Durchgeführte Abgabe** Teil eines e-Rezepts mit weiteren **Geplanten Abgaben** ist (gleicher **e-Med GroupIdentifier**), wirkt sich dies nicht auf den Status der anderen Geplanten Abgaben aus. 

### Sub_UC_eMed_09_03 - Durchgeführte Abgabe löschen (durch ELGA-Teilnehmer)

Der ELGA-Teilnehmer kann eine **Durchgeführte Abgabe** endgültig löschen.

Die Löschung der **Durchgeführten Abgabe** umfasst:

* die fachliche Entfernung der betreffenden **MedicationDispense-Ressource** sowie
* die Entfernung aller zugehörigen historischen Ressourcenversionen (**_history**).

Zum Löschen einer **Durchgeführte Abgabe** ruft der ELGA-Teilnehmer die betreffende **Durchgeführte Abgabe** im ELGA-Portal auf. Dieses führt zunächst eine Leseoperation auf die betreffende MedicationDispense-Ressource aus (GET MedicationDispense/[id]) und löscht anschließend die betreffende Geplante Abgabe mittels DELETE (DELETE [base]/MedicationDispense/[id]).

Die Ressource einschließlich aller historischen Versionen darf nach erfolgreicher Löschung weder über reguläre FHIR-Interaktionen noch über administrative Schnittstellen abrufbar sein. 

