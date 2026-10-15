# ​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_05) - ELGA e-Medikation (R4) DRAFT v0.1.0

## ​Technische Use Cases für Durchgeführte Abgabe schreiben (UC_eMed_05)

Dieser technische Use Case beschreibt den schreibenden Zugriff [berechtigter Akteure](actors.md#rollen-und-berechtigungen) auf [Durchgeführte Abgaben](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) eines ELGA-Teilnehmers.

Für ELGA-Teilnehmer (bzw. deren Vertretungen) erfolgt der schreibende Zugriff im Rahmen der Ausübung von Teilnehmerrechten ausschließlich über das ELGA-Zugangsportal. Für GDA erfolgt der schreibende Zugriff über die e-Medikation-Schnittstelle des jeweiligen GDA-Systems.

Der schreibende Zugriff umfasst folgende Bearbeitungen:

* **GDA** können **Durchgeführte Abgaben** 
* [erstellen](Sub_UC_eMed_05.md#sub_uc_emed_05_01---durchgeführte-abgabe-schreiben-dispense-write) 
 *[Variante A: Durchgeführte Abgabe mit ELGA-Kontaktbestätigung schreiben](Sub_UC_eMed_05.md#variante-a-durchgeführte-abgabe-mit-elga-kontaktbestätigung-schreiben)
 *[Variante B: Durchgeführte Abgabe mit e-Med GroupIdentifier schreiben](Sub_UC_eMed_05.md#variante-b-durchgeführte-abgabe-mit-e-med-groupidentifier-schreiben)

* [stornieren](Sub_UC_eMed_05.md#sub_uc_emed_05_02---durchgeführte-abgabe-stornieren)
* im Nachhinein mit einem [Bezug zu einem Planeintrag](Sub_UC_eMed_05.md#sub_uc_emed_05_03---bezug-zu-einem-planeintrag-herstellenentfernen) versehen
 
* **ELGA-Teilnehmer** und deren Vertretungen können **Durchgeführte Abgaben**: 
* [löschen](Sub_UC_eMed_05.md#sub_uc_emed_05_04---durchgeführte-abgabe-löschen-durch-elga-teilnehmer)
 

Die **fachlichen Varianten der Erfassung** und die Inhalte von **Durchgeführten Abgaben** werden in den folgenden Kapiteln beschrieben

* [Vollständige Einzelabgabe erfassen](Sub_UC_eMed_05.md#sub_uc_emed_05_01_01---vollständige-einzelabgabe-erfassen)
* [Teilabgaben erfassen](Sub_UC_eMed_05.md#sub_uc_emed_05_01_02---teilabgaben-erfassen)
* [Besorgerprozess](Sub_UC_eMed_05.md#sub_uc_emed_05_01_03---besorgerprozess)
* [Leerabgabe erfassen](Sub_UC_eMed_05.md#sub_uc_emed_05_01_04-leerabgabe-erfassen)
* [Durchgeführte Abgabe ohne Bezug zu einer Geplanten Abgabe erfassen](sub_uc_emed_05_01_05---durchgeführte-abgabe-ohne-bezug-zu-einer-geplanten-abgabe-erfassen)
* [Durchgeführte Abgabe nacherfassen](Sub_UC_eMed_05.md#sub_uc_emed_05_01_06---durchgeführte-abgabe-nacherfassen)
* [Substitution eines Arzneimittels erfassen](Sub_UC_eMed_05.md#sub_uc_emed_05_01_07-substitution-eines-arzneimittels-erfassen)

ℹ️ Die fachlichen Anforderungen dieses Use Cases werden beschrieben in:
*  [UC_eMed_05 Durchgeführte Abgabe schreiben](Sub_UC_eMed_05.md) 
*  [UC_eMed_06 Teilnehmerrechte ausüben](Sub_UC_eMed_06.md) 
Es gelten die dort festgelegten Vorbedingungen. Alle Zugriffe werden protokolliert.

### Sub_UC_eMed_05_01 - Durchgeführte Abgabe erstellen

Ein GDA dokumentiert die Abgabe eines Arzneimittels für einen ELGA-Teilnehmer in einer **Durchgeführten Abgabe** wie folgt:

MedicationDispense-Ressource: [AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md)

* **Informationen zur Erstellung/Aktualisierung**: aktuelles Datum und durchführende, für die Abgabe verantwortliche Person (**extension:recorded**, **performer.actor**)
* **e-Med GroupIdentifier** (**extension:groupIdentifier**): Sofern eine zugehörige **Geplante Abgabe** vorliegt, muss der entsprechende "e-Med GroupIdentifier in der **Durchgeführte Abgabe** dokumentiert werden. Dies ermöglicht einen gemeinsamen Abruf zusammengehöriger **Geplanter Abgaben** und **Durchgeführter Abgaben** (siehe [Sub_UC_eMed_03_03 - Geplante und Durchgeführte Abgaben mittels e-Med GroupIdentifier lesen (GroupIdentifier-Search)](Sub_UC_eMed_03.md#sub_uc_emed_03_03---geplante-und-durchgeführte-abgaben-mittels-e-med-groupidentifier-lesen-groupidentifier-search)).
* **Status**: **status** (siehe [Status des MedicationDispense in der Durchgeführten Abgabe](workflowmanagement.md#status-des-medicationdispense-in-der-durchgeführten-abgabe)) und **type** bestimmen den Status einer **Durchgeführten Abgabe** und können sich auf den Status der zugehörigen **Geplanten Abgabe** auswirken (siehe [Abhängigkeiten der Geplanten Abgabe und der Durchgeführten Abgaben](workflowmanagement.md#abhängigkeiten-der-geplanten-abgabe-und-der-durchgeführten-abgaben)): 
* Über ****type**** werden Einzelabgabe, Teilabgaben/Besorgerprozess und Leerabgabe unterschieden (siehe [Durchgeführte Abgabe - Varianten der (Teil-)Abgabe](workflowmanagement.md#varianten-der-teil-abgabe)). Für Teilabgaben, Besorgerprozesse und Leerabgaben muss die jeweils vorgegebene **Sequenz** der zulässigen **type**-Werte eingehalten werden.
* **Zulässige Einlösungen**: Die Maximalanzahl zulässiger Einlösugnen wird durch die zugehörige **Geplante Abgabe** bestimmt (siehe [Sub_UC_eMed_04_04 - Geplante Abgabe beenden (durch Fachanwendung)](Sub_UC_eMed_04.md#sub_uc_emed_04_04---geplante-abgabe-beenden-durch-fachanwendung)). Eine Einlösung gilt als vollständig, wenn **type** den Wert **First Fill – Complete** oder **Part Fill - Complete** enthält.
 
* **Medikation und Dosierung**: tatsächlich abgegebenes Medikament (**medication**) und Dosierung (**dosageInstruction**). Diese können, sofern ein zugehöriger Planeintrag und eine **Geplante Abgabe** vorliegen, von der dort angegebenen Medikation und Dosierung abweichen.
* **Abgegebene Packungen** (**quantity**): dokumentiert die tatsächlich abgegebe Packungsmenge. Die Fachanwendung prüft diese Menge jedoch nicht im Kontext einer gegebenenfalls zugrunde liegenden **Geplanten Abgabe**.
* **Zugehörige [Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)**: Sofern diese vorliegt, muss diese im Element **authorizingPrescription[geplanteAbgabe]** referenziert werden.
* **Zugehöriger [Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md):** Sofern eine Geplante Abgabe vorliegt, muss auch der zugehörige Planeintrag über **MedicationDispense.authorizingPrescription[planeintrag]** referenziert werden. 
* **Zeitpunkt der Übergabe**: aktuelles Datum (**whenHandedOver**)

Die **fachlichen Varianten** der **Durchgeführten Abgabe** werden in den folgenden Use Cases beschrieben.

#### Relevante Elemente (MedicationDispense)

```
AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe
    recorded: Datum der Erstellung der Durchgeführten Abgabe
    extension:groupIdentifier: e-Med GroupIdentifier  // verpflichtende Angabe, sofern zugehörige Geplante Abgabe vorhanden
    status: abhänging von Use Case    
    medicationReference.reference: Tatsächlich abgegebenes Medikament // Contained Medication
    performer.actor: veranwortlicher GDA (Apotheke) für die Durchgeführte Abgabe 
    authorizingPrescription[geplanteabgabe]: Verpflichtende Referenz auf zugehörige Geplante Abgabe
    authorizingPrescription[planeintrag]: Verpflichtende Referenz auf Planeintrag
    type: abhänging von Use Case // Art der Abgabe
    quantity: Abgegebene Packungen      // Packungen je Einlösung
    whenHandedOver: Zeitpunkt der Arzneimittelaushändigung
    dosageInstruction: angepasst an abgegebene Medikation

```

#### Sub_UC_eMed_05_01_01 - Vollständige Einzelabgabe erfassen

Eine vollständige Einzelabgabe liegt vor, wenn die in der **Geplanten Abgabe** verordnete Arzneimenge für eine Einlösung vollständig abgegeben wird. Existiert keine zugehörige **Geplante Abgabe**, ist [Sub_UC_eMed_05_01_05 - Durchgeführte Abgabe ohne Bezug zu einer Geplanten Abgabe erfassen](sub_uc_emed_05_01_05---durchgeführte-abgabe-ohne-bezug-zu-einer-geplanten-abgabe-erfassen) anzuwenden.

Bei einer vollständigen Einzelabgabe muss eine [Durchgeführte Abgaben](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) wie folgt erstellt werden:

* ****type****: **FFC (First Fill – Complete)**
* ****status****: **completed**

Existiert eine zugehörige **Geplante Abgabe**, prüft die Fachanwendung anhand **MedicationRequest.numberOfRepeatsAllowed**, ob weitere Einlösungen erlaubt sind (z.B. bei einem Privatrezept). Ist nur eine **einmalige Einlösung** möglich (z.B. Kassenrezept), setzt die Fachanwendung die **Geplanten Abgabe** auf den Status **completed**.

Ermöglicht die **Geplante Abgabe** **mehrere Einlösungen** (**MedicationRequest.numberOfRepeatsAllowed** > 0), muss je Einlösung eine **Durchgeführte Abgabe** erstellt werden. Der Status der **Geplanten Abgabe** bleibt solange **active**, bis die letztmögliche Einlösung erfolgt ist (siehe[Sub_UC_eMed_04_04 - Geplante Abgabe beenden (durch Fachanwendung)](Sub_UC_eMed_04.md#sub_uc_emed_04_04---geplante-abgabe-beenden-durch-fachanwendung)).

#### Sub_UC_eMed_05_01_02 - Teilabgaben erfassen

Eine Teilabgabe liegt vor, wenn die in der **Geplanten Abgabe** verordneten Arzneimenge für eine Einlösung nicht vollständig abgegeben wird, weil nur ein Teil der verordneten Arzneimenge eingelöst werden soll oder kann.

Sonderfälle von Teilabgaben sind Besorgerprozess (siehe [Sub_UC_eMed_05_01_03 - Besorgerprozess](Sub_UC_eMed_05_01_03---besorgerprozess)) und Leerabgabe (siehe [Sub_UC_eMed_05_01_05 Leerabgabe erfassen](Sub_UC_eMed_05.md#Sub_UC_eMed_05_01_05-leerabgabe-erfassen)).

Für **jede** Teilabgabe muss eine [Durchgeführte Abgaben](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) wie folgt erstellt werden:

* ****status****: **completed**
* ****type**** 
* bei der **ersten** Teilabgabe: **FFP (First Fill – Part Fill)**,
* bei jeder **weiteren** Teilabgabe: **RFP (Refill – Part Fill)**
* bei der **letzten** Teilabgabe, d.h. sobald die in der **Geplanten Abgabe** verordnete Arzneimenge (für eine Einlösung) vollständig abgegeben wurde: **RFC (Refill – Complete)** enthalten.
 
* **Abgegebene Packungen** (**quantity**): Anzahl der tatsächlich abgegebenen Packungen je Teilabgabe

Die Gültigkeit einer **Geplanten Abgabe** verlängert sich im Zuge von Teilabgaben (siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart)).

Sobald eine Teilabgabe durchgeführt wurde (**Part Fill**), ist die Einlösung einer weiteren Teilabgabe in einer anderen Apotheke nicht mehr möglich, d.h. die Apotheke muss die Teilabgaben mit einem **complete** abschließen. 

Vor dem Speichern einer neuen **Durchgeführten Abgabe** **prüft die Fachanwendung**:

* ob ein zulässiger Wert für **typ** verwendet wird und
* ob die Anzahl der **Durchgeführten Abgaben** mit **type = FFC (First Fill – Complete)** bzw. **RFC (Refill – Complete)** die gemäß **MedicationRequest.numberOfRepeatsAllowed** zulässige Anzahl zusätzlicher Einlösungen nicht überschreitet.
* Der Status der **Geplanten Abgabe** bleibt **active**, solange weitere Einlösungen zulässig sind. Sind keine weiteren Einlösungen mehr möglich, setzt die Fachanwendung den Status der **Geplanten Abgabe** auf **completed**.

#### Sub_UC_eMed_05_01_03 - Besorgerprozess

Ein Besorgerprozess liegt vor, wenn das in der **Geplanten Abgabe** verordnete Arzneimittel **bestellt oder zubereitet** werden muss (es findet noch **keine Abgabe** statt). Die **Geplanten Abgabe** kann daraufhin nicht mehr in einer anderen Apotheke eingelöst werden. 

Entsprechend den Regeln für Teilabgaben muss eine [Durchgeführte Abgaben](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) wie folgt erstellt werden:

* ****status****: **completed**
* ****type****: 
* zu Beginn des Besorgerprozesses: **FFP (First Fill – Part Fill)**,
* nach bereits erfolgten Teilabgaben: **FFP (Refill – Part Fill)**
 
* **Abgegebene Packungen** (**quantity**): muss mit **0** dokumentiert werden

Wird das bestellte/zubereitete Arzneimittel ausgehändigt, wird dies in Form einer Teilabgabe mit der abgegebenen Packungsanzahl dokumentiert (siehe [Sub_UC_eMed_05_01_02 - Teilabgaben erfassen](Sub_UC_eMed_05.md#sub_uc_emed_05_01_02---teilabgaben-erfassen)). Die **type**-Sequenz **FFP → RFP → RFC** muss dabei konsistent gehalten werden.

Im Fall einer Bestellung mit gleichzeitiger Teilabgabe wird nur die Teilabgabe dokumentert.

Der Status der **Geplanten Abgabe** bleibt während des Besorgerprozesses **active**.

#### Sub_UC_eMed_05_01_04 Leerabgabe erfassen

Mit einer **Leerabgabe** dokumentiert der GDA (Apotheker bzw. Arzt mit Hausapotheke), dass der Patient ein Arzneimittel einer **Geplanten Abgabe** nicht benötigt.

Hierfür erstellt er eine [Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) wie folgt:

* ****status****: **cancelled**
* ****type****: 
* im Fall einer Beendigung einer Einzelabgabe: **FFC (First Fill Complete)**,
* im Fall einer Beendigung einer Teilabgabe: **RFC (Refill - Complete)**
 
* **Abgegebene Packungen** (**quantity**): muss mit **0** dokumentiert werden

Dieser Einlösevorgang ist damit beendet. 

Die Anzahl der möglichen Einlösungen einer **Geplanten Abgabe** reduziert sich nach einer Leerabgabe, d.h. sie bleibt weiterhin **active** wenn weitere Einlösungen möglich sind. Nur wenn alle möglichen Einlösungen mit **cancelled** gespeichert wurden, wird die zugehörige **Geplante Abgabe** automatisch auf **cancelled** gesetzt, sonst auf **completed**.

#### Sub_UC_eMed_05_01_05 - Durchgeführte Abgabe ohne Bezug zu einer Geplanten Abgabe erfassen

In folgenden Fällen liegt bei der Erfassung einer [Durchgeführte Abgaben](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) keine zugehörige **Geplante Abgabe** vor:

* Abgabe von nicht verordneten Arzneimitteln (Abgabe von wechselwirkungsrelevanten OTC)
* wenn ein e-Rezept-Eintrag oder ein Papierrezept vorhanden ist, aber keine zugehörige **Geplante Abgabe** in e-Medikation existiert.

Die Felder authorizingPrescription[geplanteabgabe] für die Referenz auf die zugehörige **Geplante Abgabe** bleibt leer. Falls ein Planeintrag vorhanden ist, kann dieser in authorizingPrescription[planeintrag] referenziert werden, ansonsten bleibt auch dieser leer. Ein berechtigter GDA kann im Nachhinein einen Bezug zwischen der **Durchgeführten Abgabe** und einem **Planeintrag** herstellen, (siehe [Sub_UC_eMed_05_03 - Bezug zu einem Planeintrag herstellen](Sub_UC_eMed_05.md#sub_uc_emed_05_03---bezug-zu-einem-planeintrag-herstellen)).

Analog zu [Sub_UC_eMed_05_01_01 - Vollständige Einzelabgabe erfassen](Sub_UC_eMed_05.md#Sub_UC_eMed_05_01_01---vollständige-einzelabgabe-erfassen) gilt bei der Erstellung der **Durchgeführten Abgabe**:

* ****type****: **FFC (First Fill – Complete)**
* ****status****: **completed**

#### Sub_UC_eMed_05_01_06 - Durchgeführte Abgabe nacherfassen

Bei der Nacherfassung bereits abgegebener Arzneimittel (z.B. wenn eine Speicherung zum Zeitpunkt der Abgabe aus technischen Gründen nicht möglich war oder bei Arzneimittelbezug aus dem Ausland), wird als **Erfassungsdatum** (**extension:recorded**) der Zeitpunkt der Nacherfassung gesetzt, während als **Abgabedatum** (**whenHandedOver**) das tatsächliche Datum der Abgabe in der Vergangenheit eingetragen wird.

Alle weiteren Elemente sind entsprechend des Use Cases zu befüllen.

#### Sub_UC_eMed_05_01_07 Substitution eines Arzneimittels erfassen

Eine Substitution eines Arzneimittels ist nur implizit ersichtich, durch die Referenz auf die zugehörige **Geplante Abgabe** bzw. den **Planeintrag**.

### Durchgeführte Abgabe schreiben (Dispense-Write)

Ein GDA dokumentiert die Abgabe eines Arzneimittels für einen ELGA-Teilnehmer in einer [Durchgeführten Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) (siehe [Sub_UC_eMed_05_01_01 Durchgeführte Abgaben erfassen](Sub_UC_eMed_05.md#sub_uc_emed_05_01_01-durchgeführte-abgaben-erfassen)).

Je nachdem, ob eine ELGA-Kontaktbestätigung vorliegt, werden beim schreibenden Zugriff einer **Durchgeführten Abgabe** folgende Zugriffsvarianten unterschieden.

#### Variante A: Durchgeführte Abgabe mit ELGA-Kontaktbestätigung schreiben

Liegt dem GDA eine **ELGA-Kontaktbestätigung** vor (z.B. über die e-card), kann der GDA auf die e-Medikation des ELGA-Teilnehmers zugreifen und sämtliche durchgeführte Arzneimittelabgaben dokumentieren.

Dabei können sowohl Arzneimittelabgaben zu bestehenden **Geplanten Abgaben** als auch Arzneimittelabgaben ohne Bezug zu einer **Geplanten Abgabe**, beispielsweise OTC-Abgaben, erfasst werden.

##### Ablauf

1. Der GDA ruft zur Ermittlung und Prüfung der zu dokumentierenden Abgaben den **aktuellen Medikationsplan** ([Plan-Read](Sub_UC_eMed_01.md#sub_uc_emed_01_01---aktuellen-medikationsplan-lesen-plan-read)), die zugehörigen **Geplanten Abgaben** ([Prescription-Search](Sub_UC_eMed_03.md#sub_uc_emed_03_01---geplante-abgaben-lesen-prescription-search))sowie bereits dokumentierte **Durchgeführte Abgaben** ([Dispense-Search](Sub_UC_eMed_03.md#sub_uc_emed_03_02---durchgeführte-abgaben-lesen-dispense-search)) ab.
1. Der GDA führt anhand dessen und der Informationen des Patienten die entsprechenden Arzneimittelabgaben durch und dokumentiert diese in[Durchgeführten Abgaben](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md)gemäß der jeweils zutreffenden Abgabeart (siehe Kapitel[Abgabearten](Sub_UC_eMed_05.md#abgabearten))
* Existiert eine zugehörige **Geplante Abgabe** muss diese sowie der zugehörige Medikationsplaneintrag referenziert werden.

1. Der GDA übermittelt die neu erstellten**Durchgeführten Abgaben**in einem[Durchgeführte Abgaben-Transaction Bundle](StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.md)mittels**POST**[$dispense-write](Sub_UC_eMed_05.md#custom-operations)an die Fachanwendung (unahängig von ihrem**e-Med Groupidentifier**).
1. Die Fachanwendung validiert das Transaction Bundle und die darin enthaltenen**Durchgeführten Abgaben**.
1. Bei erfolgreicher Prüfung werden die**Durchgeführten Abgaben**gespeichert. Abhängig von Abgabeart und Anzahl der Einlösungen kann die Fachanwendung automatisch eine Statusänderung der zugehörigen**Geplanten Abgabe**durchführen. Die entsprechenden fachlichen Regeln sind in den Use Cases der jeweiligen[Abgabearten](Sub_UC_eMed_05.md#abgabearten)beschrieben.
1. Bei erfolgreicher Verarbeitung bestätigt die Fachanwendung den Schreibvorgang.
1. Schlägt die Prüfung des Transaction Bundles fehl, wird der Schreibvorgang mit einem**OperationOutcome**abgelehnt.

 ![](plantuml/UC_eMed_05_01_a.svg)

#### Variante B: Durchgeführte Abgabe mit e-Med GroupIdentifier schreiben

Erfolgt der Zugriff **ohne ELGA-Kontaktbestätigung** über den ****e-Med GroupIdentifier**** (z.B. codiert im Datamatrixcode eines e-Rezepts), kann der GDA ausschließlich **Durchgeführte Abgaben** in der e-Medikation dokumentieren, die sich auf die dem **e-Med GroupIdentifier** zugeordneten **Geplanten Abgaben** beziehen.

Da kein weiterer ELGA-Zugriff auf die Medikationsdaten des ELGA-Teilnehmers möglich ist, können weder der aktuelle Medikationsplan noch weitere **Geplante Abgaben** oder **Durchgeführte Abgaben** abgerufen bzw. Suchoperationen durchgeführt werden.

##### Ablauf

1. Der GDA ruft mit [GroupIdentifier-Search](Sub_UC_eMed_03.md#sub_uc_emed_03_03---geplante-und-durchgeführte-abgaben-mittels-e-med-groupidentifier-lesen-groupidentifier-search) die zum vorliegenden **e-Med GroupIdentifier** zugehörigen **Geplanten Abgaben** und bereits dokumentierten **Durchgeführten Abgaben** ab.
1. Der GDA führt anhand dieser und der Informationen des Patienten die entsprechenden Arzneimittelabgaben durch und dokumentiert diese in[Durchgeführten Abgaben](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md)gemäß der jeweils zutreffenden Abgabeart (siehe Kapitel[Abgabearten](Sub_UC_eMed_05.md#abgabearten)):
* Die zugehörige **Geplante Abgabe** und der **Medikationsplaneintrag** werden referenziert,
* der vorliegende **e-Med GroupIdentifier** darin dokumentiert.

1. Der GDA übermittelt die neu erstellten**Durchgeführten Abgaben**in einem[Durchgeführte Abgaben-Transaction Bundle](StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.md)mittels**POST**[$dispense-write](Sub_UC_eMed_05.md#custom-operations)an die Fachanwendung.
1. Die Fachanwendung validiert das Transaction Bundle und die darin enthaltenen**Durchgeführten Abgaben**, insbesondere deren Zuordnung zum vorliegenden**e-Med GroupIdentifier**. 5.Bei erfolgreicher Prüfung werden die**Durchgeführten Abgaben**gespeichert. Abhängig von Abgabeart und Anzahl der Einlösungen kann die Fachanwendung automatisch eine Statusänderung der zugehörigen**Geplanten Abgabe**durchführen. Die entsprechenden fachlichen Regeln sind in den Use Cases der jeweiligen[Abgabearten](Sub_UC_eMed_05.md#abgabearten)beschrieben.
1. Bei erfolgreicher Verarbeitung bestätigt die Fachanwendung den Schreibvorgang.
1. Schlägt die Prüfung des Transaction Bundles fehl, wird der Schreibvorgang mit einem**OperationOutcome**abgelehnt.

 ![](plantuml/UC_eMed_05_01_b.svg) 

#### Custom Operations

 Offene Punkte: 
$dispense-write: in Arbeit. 

### Sub_UC_eMed_05_02 - Durchgeführte Abgabe stornieren

Ein GDA (Apotheke) kann von ihm erstellte [Durchgeführte Abgaben](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), die sich im Status **completed** oder **cancelled** befinden, aufgrund eines Fehlers innerhalb von 21 Tagen stornieren.

Um die bei Teilabgaben in **type** definierte Sequenz **FFP → RFP → RFC** konsistent zu halten, darf immer nur die zuletzt gespeicherte **Durchgeführte Abgabe** storniert werden. Diese **Durchgeführten Abgaben** können nur sequenziell in umgekehrter Reihenfolge ihrer Erstellung storniert werden.

Um eine **Durchgeführte Abgabe** zu stornieren, führt der GDA **POST** [$dispense-discard](Sub_UC_eMed_05.md#custom-operations-1) aus:

* **Informationen zur Stornierung**: aktuelles Datum und verantwortliche Person (**extension:recorded**, **performer.actor**) ****status****: wird auf **entered-in-error** gesetzt,

Eine stornierte **Durchgeführte Abgabe** kann nicht mehr bearbeitet werden und ist nur noch aber über die Historie einsehbar. Wenn eine stornierte **Durchgeführte Abgabe** Teil eines e-Rezepts mit weiteren **Geplanten Abgaben** ist (gleicher **e-Med GroupIdentifier**), wirkt sich dies nicht auf den Status der anderen Geplanten Abgaben aus.

#### Custom Operations

 Offene Punkte: 
$dispense-discard: in Arbeit. 

### Sub_UC_eMed_05_03 - Bezug zu einem Planeintrag herstellen/entfernen

Sofern für die [Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) im nachhinein ein **Planeintrag** erstellt wurde, kann auch nachträglich jederzeit von einem GDA (unabhängig vom Erfasser) mit **POST** [$reference-plan](Sub_UC_eMed_05.md#custom-operations-2) ein **Planeintrag** (in **authorizingPrescription[planeintrag]**) referenziert bzw. mit **POST** [$dereference-plan](Sub_UC_eMed_05.md#custom-operations-2) dieser wieder dereferenziert werden.

#### Custom Operations

 Offene Punkte: 
$reference-plan: in Arbeit. 
$dereference-plan: in Arbeit. 

### Sub_UC_eMed_05_04 - Durchgeführte Abgabe löschen (durch ELGA-Teilnehmer)

 Offene Punkte:
 Umsetzung der Teilnehmerrechte: in Arbeit. 

