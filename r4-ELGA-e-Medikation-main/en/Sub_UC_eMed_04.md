# ​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_04) - ELGA e-Medikation (R4) DRAFT v0.1.0

## ​Technische Use Cases für Geplante Abgabe schreiben (UC_eMed_04)

Dieser technische Use Case beschreibt den schreibenden Zugriff berechtigter Akteure auf [Geplante Abgaben](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) eines ELGA-Teilnehmers.

Für ELGA-Teilnehmer (bzw. deren Vertretungen) erfolgt der schreibende Zugriff im Rahmen der Ausübung von Teilnehmerrechten ausschließlich über das ELGA-Zugangsportal. Für GDA erfolgt der schreibende Zugriff über die e-Medikation-Schnittstelle des jeweiligen GDA-Systems.

Der schreibende Zugriff umfasst folgende Bearbeitungen:

* **GDA** können **Geplante Abgaben**: 
* [erstellen](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write) und 
* [e-Med GroupIdentifier beziehen](Sub_UC_eMed_04.md#sub_uc_emed_04_02---e-med-groupidentifier-beziehen)
 
* [stornieren](Sub_UC_eMed_04.md#sub_uc_emed_04_03---geplante-abgabe-stornieren-prescription-discard)
 
* **ELGA-Teilnehmer** und deren Vertretungen können **Geplante Abgaben**: 
* [löschen](Sub_UC_eMed_04.md#sub_uc_emed_04_07---geplante-abgabe-löschen-durch-elga-teilnehmer-prescription-delete)
 
* **Automatisch** durch die **Fachanwendung** umgesetzt werden: 
* [Abschließen](Sub_UC_eMed_04.md#sub_uc_emed_04_04---geplante-abgabe-abgeschlossen-durch-fachanwendung)
* [Ablauf](Sub_UC_eMed_04.md#sub_uc_emed_04_05---geplante-abgabe-abgelaufen-durch-fachanwendung)
* [Canceln](Sub_UC_eMed_04.md#sub_uc_emed_04_06---geplante-abgabe-gecancelt-durch-fachanwendung)
 

von **Geplanten Abgaben**.

ℹ️ Die fachlichen Anforderungen dieses Use Cases werden beschrieben in:
*  [UC_eMed_04 Geplante Abgabe schreiben](https://dev.elga.gv.at/apis/emed/use-cases/) 
Es gelten die dort festgelegten Vorbedingungen. Alle Zugriffe werden protokolliert.

### Sub_UC_eMed_04_01 - Geplante Abgabe erstellen (Prescription-Write)

Der GDA kann basierend auf der **aktuellen Version** eines bestehenden **Medikationsplaneintrags** eine oder mehrere [Geplante Abgaben](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) erstellen. Für jedes zu rezeptierende Arzneimittel wird eine eigene **Geplante Abgabe** erstellt, um die medizinische Inhalte des e-Rezepts zu dokumentieren.

Falls für eine **Geplante Abgabe** noch kein Medikationsplaneintrag existiert, muss dieser zuerst erstellt werden (siehe [Sub_UC_eMed_02_02 - Planeintrag in Medikationsplan hinzufügen](Sub_UC_eMed_02.md#sub_uc_emed_02_02---planeintrag-in-medikationsplan-hinzufügen)). Unter gewissen Voraussetzungen kann ein bestehender Medikationsplaneintrag angepasst werden (siehe [Sub_UC_eMed_02_03 - Planeintrag im Medikationsplan ändern](Sub_UC_eMed_02.md#sub_uc_emed_02_03---planeintrag-im-medikationsplan-ändern)). Die medizinischen Inhalte von Planeintrag und **Geplanter Abgabe** (wie Arzneimittel und Dosierung) dürfen sich **nicht unterscheiden**.

Wird der zugehörige Planeintrag nach der Erstellung einer **Geplanten Abgabe** geändert, kann die **Geplante Abgabe** weiterhin gültig bleiben oder gegebenenfalls storniert werden (siehe [Sub_UC_eMed_04_03 - Geplante Abgabe stornieren ($prescription-discard)](Sub_UC_eMed_04.md#sub_uc_emed_04_03---geplante-abgabe-stornieren-prescription-discard)).

Medikationsplaneinträge können mehrfach rezeptiert werden und daher auch zu mehreren **Geplanten Abgaben** führen.

Die Anzahl der **Geplanten Abgaben**, die mit demselben **e-Med GroupIdentifier** gespeichert werden können, ist durch das Limit für die Anzahl der Medikamente je e-Rezept begrenzt.

Der Status der **Geplanten Abgabe** bleibt solange **active**, bis sie zeitlich abläuft (siehe [Sub_UC_eMed_04_05 - Geplante Abgabe abgelaufen (durch Fachanwendung)](Sub_UC_eMed_04.md#sub_uc_emed_04_05---geplante-abgabe-abgelaufen-durch-fachanwendung)) oder die letztmögliche Einlösung erfolgt ist .

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und erhält von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) alle für die Erstellung der **Geplanten Abgaben** relevanten Ressourcen.

Basierend auf den enthaltenen Planeinträgen erstellt der GDA neue **Gelplante Abgaben** wie folgt:

* **MedicationRequest**-Ressource(n) erstellen: [Geplante Abgaben](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) 
* **Geplanter Einnahmezeitraum**: (**extension:effectiveDosePeriod**): Beginn: aktuelles Datum oder Datum in der Zukunft, Ende: Datum in der Zukunft oder unbefristet.
* **Status** muss **active** sein (siehe [Status der Geplanten Abgabe (MedicationRequest)](workflowmanagement.md#status-der-geplanten-abgabe-medicationrequest))
* **Kategorie** (**category:mrcategory**): "Geplante Abgabe", zur Unterscheidung von Planeinträgen
* [**Rezeptart**](https://termgit.elga.gv.at/ValueSet-elga-medikationrezeptart.html) (**category:recipetype**): muss verpflichtend ausgewählt werden
* **Medikation**: muss **identisch** sein mit der des Planeintrags. Enthält der Planeintrag nur Wirkstoffe, muss der Planeintrag zuvor angepasst und ein Präparat ausgewählt werden, bevor eine **Geplante Abgabe** erstellt werden kann.
* **Informationen zur Erstellung**: aktuelles Datum (**authoredOn**) und aktueller GDA als Ersteller (**requester**)
* **Referenz auf den zugrundeliegenden Planeintrag** (**basedOn**): wird **nicht versioniert**, verweist somit immer auf den aktuellen Planeintrag, auch wenn dieser zukünftig geändert wird.
* **Dosierung** (**dosageInstruction**): muss **identisch** sein mit der des Planeintrags.
* **e-Med GroupIdentifier** (**groupIdentifier**): 
* Alle **Geplanten Abgaben**, die zum selben e-Rezept gehören, müssen den selben **e-Med GroupIdentifier** tragen und sollen **im selben [Geplante Abgaben-Transaction Bundle](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.md)** übermittelt werden. Der **e-Med GroupIdentifier** ermöglicht zusammengehörige **Geplante Abgaben** und **Durchgeführte Abgaben** gemeinsam abzurufen und kann über unterschiedliche Varianten bezogen werden (siehe [Sub_UC_eMed_04_02 - e-Med GroupIdentifier beziehen](Sub_UC_eMed_04.md#sub_uc_emed_04_02---e-med-groupidentifier-beziehen)). Er bleibt gültig, solange mindestens eine der zugehörigen **Geplanten Abgaben** den Status **active** hat. Die Anzahl der **Geplanten Abgaben**, die mit demselben **e-Med Groupldentifier** gespeichert werden können, ist durch das Limit für die Anzahl der Medikamente je e-Rezept begrenzt.
* Fehlt im übermittelten [Geplante Abgaben-Transaction Bundle](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.md) bei allen **Geplanten Abgaben** der **e-Med GroupIdentifier**, vergibt ihn die Fachanwendung. Alle enthaltenen **Geplanten Abgaben** gehören dann zum selben **e-Med GroupIdentifier**.
 
* **Gültigkeitszeitraum der **Geplante Abgabe**** (**dispenseRequest.validityPeriod**) und
* **Anzahl möglicher weiterer Einlösungen** (**dispenseRequest.numberOfRepeatsAllowed**) sind u.a. abhängig von der ausgewählten Rezeptart (siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart))
* **Bereitzustellende Menge** (**dispenseRequest.quantity**): Verpflichtende Angabe der Menge (Anzahl Packungen), die bei jeder Einlösung bereitgestellt werden soll.
 

Alle zusammengehörenden, erstellten **Geplanten Abgaben** werden in einem eigenen [Geplante Abgaben-Transaction Bundle](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.md) mittels **POST** [$prescription-write](Sub_UC_eMed_04.md#custom-operations) an die Fachanwendung übermittelt.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    effectiveDosePeriod: Einnahmezeitraum
    status: active 
    category[mrcategory]: "GeplAbgabe"                     //Kategorie "Geplante Abgabe" zur Unterscheidung der MedicationRequests
    category[recipetype]: KASSEN | PRIVAT | SUBST          // Verpflichtende Angabe der Rezeptart
    medicationReference.reference: Medikation gemäß Planeintrag // Conditional Reference oder Contained Medication
    authoredOn: Datum der Erstellung der Geplanten Abgabe
    requester: veranwortlicher GDA 
    basedOn: id des zugehörigen Medikationsplaneintrags     // referenziert aktuelle Version 
    groupIdentifier: e-Med GroupIdentifier                  // Rezeptklammer 
    dosageInstruction: gemäß Planeintrag 
    dispenseRequest.validityPeriod: Gültigkeitszeitraum     // abhängig von Rezeptart 
    dispenseRequest.numberOfRepeatsAllowed: Anzahl weiterer Einlösungen // abhängig von Rezeptart
    dispenseRequest.quantity: Abzugebende Menge (Packungen) je Abgabe

```

##### Custom Operations

* **POST** [$prescription-write](OperationDefinition-at-elga-emed-operation-prescription-write.md)

### Sub_UC_eMed_04_02 - e-Med GroupIdentifier beziehen

Der Ablauf zur Erstellung von **Geplanten Abgaben** und der Bezug des **e-Med GroupIdentifiers** kann unterschiedlich erfolgen. Exemplarisch werden drei Varianten angeführt.

##### Variante A: Vorab-Ermittlung des e-Med GroupIdentifiers (GroupIdentifier-Create)

Der **e-Med GroupIdentifier** wird mittels **POST** [$groupidentifier-create](OperationDefinition-at-elga-emed-operation-groupidentifier-create.md) vorab von der Fachanwendung bezogen, in den zusammengehörenden **Geplanten Abgaben** ergänzt und zur Erstellung des e-Rezepts an die e-Rezept-Anwendung mitgegeben, um dieses mit den **Geplanten Abgaben** zu verknüpfen. Der Trigger zu Erstellung des e-Rezepts und [Prescription-Write](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write) können parallel erfolgen (siehe Normalfall).

Liefert die e-Rezept-Anwendung einen Fehler zurück, können mittels **POST** [$prescription-discard](OperationDefinition-at-elga-emed-operation-prescription-discard.md) bereits in der e-Medikation erstellte **Geplante Abgaben** storniert werden (siehe [Sub_UC_eMed_04_03 - Geplante Abgabe stornieren (Prescription-Discard)](Sub_UC_eMed_04.md#sub_uc_emed_04_03---geplante-abgabe-stornieren-prescription-discard)). Liefert die e-Medikation Fachanwendung einen Fehler zurück, kann nach Fehlerkorrektur erneut ein **Prescription-Write** erfolgen oder ein bereits durch den **e-Med groupIdentifer** verknüpftes e-Rezept wieder von den **Geplanten Abgaben** "entkoppelt" werden (siehe [Variante A: Fehlerfall](Sub_UC_eMed_04.md#variante-a-fehlerfall)).

###### Variante A: Normalfall

![](plantuml/UC_eMed_04_01_a_normal.svg)

###### Variante A: Fehlerfall

![](plantuml/UC_eMed_04_01_a_fehler.svg)

##### Variante B: Sequentielles Erstellen von Geplanter Abgabe und e-Rezept

Alternativ kann der **e-Med GroupIdentifier** durch die Fachanwendung automatisch ergänzt werden, wenn dieser beim [Prescription-Write](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write) nicht in den **Geplanten Abgaben** im Transaction Bundle enthalten ist. Dadurch bleibt das Verhalten konsistent zur bestehenden e-Medikations-Implementierung. Hierfür müssen die **Geplanten Abgaben**, die zu einem e-Rezept gehören, gemeinsam in einem [Geplante Abgaben-Transaction Bundle](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.md) mittels **POST** [$prescription-write](Sub_UC_eMed_04.md#custom-operations) an die e-Medikation Fachanwendung übermittelt werden. Der Server ergänzt den **e-Med GroupIdentifier** während der Transaktionsverarbeitung und gibt die persistierten Ressourcen einschließlich des erzeugten **e-Med GroupIdentifiers** in der Response an den Client zurück. Im Anschluss kann der Trigger zur Erstellung des e-Rezepts inkl. **e-Med GroupIdentifier** erfolgen.

![](plantuml/UC_eMed_04_01_b.svg)

##### Variante C: Nachträgliche Verknüpfung des e-Rezepts mit dem e-Med GroupIdentifier

Der Trigger zur Erstellung des e-Rezepts und [Prescription-Write](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write) können parallel erfolgen (Variante A), allerdings noch ohne **e-Med GroupIdentifier**. Die e-Medikation Fachanwendung ergänzt diesen und liefert ihn an den Client zurück (wie in Variante B), der Client führt im Anschluss eine nachträgliche Verknüfung des bereits erstellten e-Rezepts mit den **Geplanten Abgaben** mittels **e-Med GroupIdentifier** durch.

![](plantuml/UC_eMed_04_01_c.svg)

##### Custom Operations

* **POST** [$groupidentifier-create](OperationDefinition-at-elga-emed-operation-groupidentifier-create.md)

### Sub_UC_eMed_04_03 - Geplante Abgabe stornieren (Prescription-Discard)

Ein GDA kann eine **selbst erfasste** [Geplante Abgaben](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) aufgrund eines Fehlers innerhalt von 30 Tagen stornieren, solange noch **keine** Abgabe durchgeführt (dh. noch keine zugehörige **Durchgeführte Abgabe** erstellt) wurde (Ausnahme: alle zugehörigen **Durchgeführten Abgaben** werden zuvor storniert).

Wird ein e-Rezept storniert, **MÜSSEN** die zugehörigen **Geplanten Abgaben** in der e-Medikation mitstorniert werden. 

#### Ablauf

Um eine **Geplante Abgabe** zu stornieren, führt der GDA **POST** [$prescription-discard​](Sub_UC_eMed_04.md#custom-operations-2) aus. Die Fachanwendung ändert dadurch den **status** der betreffenden **Geplanten Abgabe** auf: **entered-in-error**.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: entered-in-error                                // gesetzt durch Fachanwendung
    authoredOn: Datum des Verwerfens der Geplanten Abgabe   
    requester: veranwortlicher GDA                          // bleibt unverändert

```

##### Custom Operations

* **POST** [$prescription-discard](OperationDefinition-at-elga-emed-operation-prescription-discard.md)

### Sub_UC_eMed_04_04 - Geplante Abgabe abgeschlossen (durch Fachanwendung)

Wurden alle möglichen Einlösungen einer **Geplanten Abgabe** planmäßig durchgeführt und entsprechende **Durchgeführte Abgaben** erstellt (siehe [Sub_UC_eMed_05_01 - Durchgeführte Abgabe erstellen](Sub_UC_eMed_05.md#sub_uc_emed_05_01---durchgeführte-abgabe-erstellen)), setzt die Fachanwendung die **Geplante Abgabe** **automatisch** auf den Status ****completed**** (siehe [Status der Geplanten Abgabe (MedicationRequest)](workflowmanagement.md#status-der-geplanten-abgabe-medicationrequest)). Die **Geplante Abgabe** ist damit abgeschlossen.

**Sonderfall**: Wird die letzte **Durchgeführte Abgabe** im Anschluss storniert (Status **entered-in-error**), wird der Status der **Geplanten Abgabe** durch die Fachanwendung wieder auf **active** gesetzt.

Die Fachanwendung erkennt anhand von **MedicationRequest.numberOfRepeatsAllowed > 0**, ob weitere Einlösungen erlaubt sind (z.B. bei einem Privatrezept). Je möglicher Einlösung muss mindestens eine **Durchgeführte Abgabe** erstellt werden (bei Teilabgaben können es mehrere sein). Eine Einlösung gilt als vollständig, wenn MedicationDispense.type den Wert **FFC (First Fill – Complete)** oder **PFC (Part Fill - Complete)** enthält.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: completed                                      // gesetzt durch Fachanwendung
    authoredOn: Datum der Erstellung der Geplanten Abgabe  // bleibt unverändert [*]
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_04_05 - Geplante Abgabe abgelaufen (durch Fachanwendung)

Ist der Gültigkeitszeitraum in **dispenseRequest.validityPeriod** der **Geplanten Abgabe** gemäß der ausgewählten Rezeptart (category:recipetype) (siehe [Gültigkeit von Geplanten Abgaben basierend auf der Rezeptart](workflowmanagement.md#gültigkeit-von-geplanten-abgaben-basierend-auf-der-rezeptart)) oder den Einschränkungen des GDAs überschritten, setzt die Fachanwendung die **Geplante Abgabe** **automatisch** auf den Status ****stopped**** (siehe [Status der Geplanten Abgabe (MedicationRequest)](workflowmanagement.md#status-der-geplanten-abgabe-medicationrequest)). Die **Geplante Abgabe** ist damit abgeschlossen.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: stopped                                        // gesetzt durch Fachanwendung
    authoredOn: Datum der Erstellung der Geplanten Abgabe  // bleibt unverändert [*]
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

### Sub_UC_eMed_04_06 - Geplante Abgabe gecancelt (durch Fachanwendung)

Eine **Geplante Abgabe** erhält **automatisch** den Status ****cancelled**** (siehe [Status der Geplanten Abgabe (MedicationRequest)](workflowmanagement.md#status-der-geplanten-abgabe-medicationrequest)), wenn **alle** **Durchgeführten Abgaben** (jede Einlösung) den Status **cancelled** erhalten haben (siehe [Sub_UC_eMed_05_01_04 Leerabgabe erfassen](Sub_UC_eMed_05.md#sub_uc_emed_05_01_04-leerabgabe-erfassen)). Die **Geplanten Abgabe** ist damit abgeschlossen.

Sonderfall: Wird die letzte **Durchgeführte Abgabe** im Anschluss storniert (Status **entered-in-error**), wird der Status der **Geplanten Abgabe** durch die Fachanwendung wieder auf **active** gesetzt.

#### Relevante Elemente (MedicationRequest)

```
AtElgaEmedMedicationRequestGeplanteAbgabe
    status: cancelled                                      // gesetzt durch Fachanwendung
    authoredOn: Datum der Erstellung der Geplanten Abgabe  // bleibt unverändert [*]
    requester: Ursprünglicher Ersteller                    // bleibt unverändert

```

 [*] Erfolgt in der Geplanten Abgabe eine Datumsanpassung bei automatischen Aktionen durch die Fachanwendung? (in R6 gibt es dafür das Element: statusChanged); betrifft alle automatischen Statuswechsel der Geplanten Abgabe; weitere mögliche Extensions sind zu prüfen. 

### Sub_UC_eMed_04_07 - Geplante Abgabe löschen (durch ELGA-Teilnehmer) (Prescription-Delete)

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

