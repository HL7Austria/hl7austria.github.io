# ​Technische Use Cases für Medikationsplan schreiben (UC_eMed_02) - ELGA e-Medikation (R4) DRAFT v0.1.0

## ​Technische Use Cases für Medikationsplan schreiben (UC_eMed_02)

Dieser technische Use Case beschreibt den schreibenden Zugriff [berechtigter Akteure](actors.md#rollen-und-berechtigungen) auf den Medikationsplan eines ELGA-Teilnehmers.

Für ELGA-Teilnehmer (bzw. deren Vertretungen) erfolgt der schreibende Zugriff im Rahmen der Ausübung von Teilnehmerrechten ausschließlich über das ELGA-Zugangsportal. Für GDA erfolgt der schreibende Zugriff über die e-Medikation-Schnittstelle des jeweiligen GDA-Systems.

Der schreibende Zugriff umfasst folgende Bearbeitungen:

* **GDA** können in der **aktuellen Version des Medikationsplans** 
* einzelne **Medikationsplaneinträge** 
* [hinzufügen](Sub_UC_eMed_02.md#sub_uc_emed_02_02---planeintrag-in-medikationsplan-hinzufügen),
* [ändern](Sub_UC_eMed_02.md#sub_uc_emed_02_03---planeintrag-im-medikationsplan-ändern),
* [unverändert zur Kenntis nehmen](Sub_UC_eMed_02.md#sub_uc_emed_02_04---planeintrag-unverändert-zur-kenntnis-nehmen),
* [pausieren bzw. reaktivieren](Sub_UC_eMed_02.md#sub_uc_emed_02_05---planeintrag-pausieren-oder-reaktivieren),
* [beenden](Sub_UC_eMed_02.md#sub_uc_emed_02_08---planeintrag-im-medikationsplan-beenden),
* [stornieren](Sub_UC_eMed_02.md#sub_uc_emed_02_07---planeintrag-im-medikationsplan-stornieren),
* [nach abgelaufenem Einnahmezeitraum weiterverordnen oder beenden](Sub_UC_eMed_02.md#sub_uc_emed_02_09---abgelaufenen-planeintrag-weiterverordnen-oder-beenden)
 
* im **Medikationsplan**: 
* die [Reihenfolge der Planeinträge ändern](Sub_UC_eMed_02.md#sub_uc_emed_02_10---reihenfolge-der-planeinträge-ändern)
* einen [Leeren Medikationsplan dokumentieren](Sub_UC_eMed_02.md#sub_uc_emed_02_06---leeren-medikationsplan-dokumentieren).
 
 
* **ELGA-Teilnehmer** und deren Vertretungen können 
* aktuelle oder historische [Planeinträge löschen](Sub_UC_eMed_02.md#sub_uc_emed_02_11---planeintrag-durch-elga-teilnehmer-löschen) oder
* die aktuelle oder historische Versionen des gesamten [Medikationsplans löschen](Sub_UC_eMed_02.md#sub_uc_emed_02_12---medikationsplan-durch-elga-teilnehmer-löschen).
 

Jede Änderung am Medikationsplan führt zur Erstellung einer **neuen Medikationsplanversion**. Für GDA gilt zusätzich:

* Historische Medikationspläne bzw. Planeinträge können **nicht** bearbeitet werden.
* Die Verträglichkeit der neu hinzugefügten/geänderten Medikation mit dem bestehenden Medikationsplan gilt mit der Erstellung einer neuen Medikationsplanversion als bestätigt.

ℹ️ Die fachlichen Anforderungen dieses Use Cases werden beschrieben in:
*  [UC_eMed_02 Medikationsplan schreiben](https://dev.elga.gv.at/apis/emed/use-cases/) 
*  [UC_eMed_06 Teilnehmerrechte ausüben](https://dev.elga.gv.at/apis/emed/use-cases/) 
Es gelten die dort festgelegten Vorbedingungen. Alle Zugriffe werden protokolliert.

### Allgemeiner Ablauf Medikationsplan bearbeiten und schreiben

Für jeden Schreibvorgang auf dem **aktuellen Medikationsplan MUSS** der folgende technische Ablauf eingehalten werden:

1. **Aktuellen Medikationsplan abrufen**: mittels[$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md)(siehe[Sub_UC_eMed_01_01 - Aktuellen Medikationsplan lesen (Plan-Read)](Sub_UC_eMed_01.md#sub_uc_emed_01_01---aktuellen-medikationsplan-lesen-plan-read)).
1. **Medikationsplan-Bundle bearbeiten**: Die im zurückgegebenen Medikationsplan-Bundle enthaltenen Ressourcen entsprechend dem jeweiligen fachlichen Anwendungsfall bearbeiten.
1. **Aktualisierten Medikationsplan speichern**: mittels[$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md)als[Medikationsplan-Transaction-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md)an die Fachanwendung übermitteln. Der technische Ablauf, einschließlich der Integritätsprüfung mittels**ETag**, wird im[Sub_UC_eMed_02_01 - Medikationsplan schreiben (Plan-Write)](Sub_UC_eMed_02.md#sub_uc_emed_02_01---medikationsplan-schreiben-plan-write)beschrieben.

 ![](plantuml/UC_eMed_02_02.svg) 

Die nachfolgenden technischen Use Cases beschreiben die für den jeweiligen Anwendungsfall erforderlichen Änderungen an den Ressourcen sowie die Struktur und Inhalte des **Medikationsplan-Transaction-Bundles**.

### Sub_UC_eMed_02_01 - Medikationsplan schreiben (Plan-Write)

Alle vom GDA ausgeführten, schreibenden Zugriffe auf den Medikationsplan erfolgen über die Custom Operation [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md). Die Fachanwendung verwendet den im Request übermittelten **ETag** zur Integritätsprüfung ([Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)), um konkurrierende Änderungen am Medikationsplan zu erkennen.

#### Ablauf

1. Das GDA-System übermittelt den aktualisierten Medikationsplan mittels**POST**[$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md)als[Medikationsplan-Transaction-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx).
Der Request enthält:
* alle **neuen**, **geänderten** und **zu entfernenden** Ressourcen im Transaction Bundle (unveränderte Ressourcen werden ausschließlich referenziert)
* im Header den von der Fachanwendung beim **$plan-read** übermittelten **ETag** (zur Durchführung des [Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)).

1. Die Fachanwendung prüft den übermittelten**ETag**gegen den**ETag**der aktuell persistierten Medikationsplan-Version.
1. Ist der**ETag**gültig, validiert die Fachanwendung unter anderem das**Medikationsplan-Transaction-Bundle**einschließlich der zulässigen[Zustandsübergänge](workflowmanagement.md#überblick-der-statusänderungen-der-e-medikation-ressourcen)der**List.Entry.Flags**und**MedicationReqeuest.Status**.
1. Die Fachanwendung erstellt neue Versionen der geänderten Ressourcen und**persistiert**diese.
1. Die Fachanwendung bestätigt die erfolgreiche Aktualisierung des Medikationsplans.
1. Schlägt die Validierung fehl, wird der Schreibvorgang mit einem**OperationOutcome**abgelehnt.
1. Stimmt der übermittelte**ETag**nicht mit dem der Fachanwendung überein, wird der Schreibvorgang mit einem**OperationOutcome****abgelehnt**. Vor einem erneuten Schreibversuch muss der Medikationsplan mittels[$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md)erneut abgerufen und auf Basis der aktuellen Version bearbeitet werden.

 ![](plantuml/UC_eMed_02_01.svg) 

#### Custom Operations

* **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md)

### Sub_UC_eMed_02_02 - Planeintrag in Medikationsplan hinzufügen

Der GDA kann dem Medikationsplan ein oder mehrere Planeinträge hinzufügen (neu einzunehmende, verordnete Medikation). Dabei muss er dokumentieren, ob dieser von ihm selbst stammt oder nicht (Fremdmedikation durch einen anderen GDA bzw. Eigenmedikation des Patienten).

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und bearbeitet die von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) bereitgestellten Ressourcen:

* **List**-Ressource bearbeiten: [AtElgaEmedListMedikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md): 
* **Informationen zur Änderung**: aktuelles Datum (**List.date**) und aktueller GDA (**List.source**)
* **Planeinträge** (**List.entry.item**): 
* Für jede neu einzunehmende Medikation wird ein **neuer** Planeintrag ([MedicationRequests](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)) referenziert
* **Änderungsstatus** (**List.entry.flag**) des neuen Planeintrags erhält den Wert ****new**** (siehe [Statusdiagramm](workflowmanagement.md#status-des-listentryflags-im-medikationsplan))
 
 
* **MedicationRequest**-Ressource(n) erstellen: [AtElgaEmedMedicationRequestPlaneintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md): 
* **Einnahmezeitraum** (**extension:effectiveDosePeriod**): Einnahme-Startdatum kann in der Zukunft oder in der Vergangenheit liegen (Nacherfassung); das Einnahme-Enddatum darf nicht in der Vergangenheit liegen.
* **Status** muss **active** oder **on-hold** sein (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag) und [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* **Kategorie** (**category**): "Planeintrag", zur Unterscheidung von **Geplanten Abgaben**
* **Kennzeichnung, ob die Medikationsinformation berichtet wurde** (**reportedBoolean**): erhält den Wert **false**, wenn die Medikation vom Ersteller des Planeintrags (GDA) selbst stammt, sonst **true**
* **Medikation** (**medication**): zur Dokumentation des Arzneimittels wird die **Medication**-Ressource verwendet. Diese muss bei Medikamenten mit PZN beim Schreiben als **Conditional Reference** mit **PZN und Name** dokumentiert werden (beim Lesen ist diese contained in der Ressource enthalten). Arznemittelverschreibungen ausschließlich basierend auf Wirkstoffangaben und Magistrale Zubereitungen sind immer als contained Ressource anzugeben (siehe Kapitel [Medikation](ELGA-e-Medikation-R4/output/medication.md)).
* **Informationen zur Erstellung** des Planeintrags: aktuelles Datum (**authoredOn**) und aktueller GDA als Ersteller (**requester**)
* **Art der Medikation** (**courseOfTherapyType**): Mögliche Ausprägungen sind **continuous** für Dauermedikation und **acute** für Akutmedikation. Bei Aktumedikation ist in **extension:effectiveDosePeriod** verpflichtend ein Enddatum für den Einnahmezeitraum zu dokumentieren. Bei Dauermedikation kann ein Enddatum dokumentiert werden. 
* **Dosierung** (**dosageInstruction**): siehe [Dosierungen](dosages.md)
 

Im Anschluss übermittelt der GDA mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) den aktualisierten Medikationsplan in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md):

* alle neuen **MedicationRequests** sind im Transaction Bundle enthalten
* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der **List-Ressource** nur referenziert.

Anmerkung: Beim nächsten [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) ändert die Fachanwendung im zur Auslieferung bereitgestellten [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) den Status der List.entry.flags von **new** automatisch auf **unchanged**.

#### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Planeintrag wird hinzufgefügt
        flag: new
        item: Referenz auf den Planeintrag 1  // siehe "Relevante Elemente (MedicationRequest - Planeintrag 1)"
    entry[1]:  // 2. Planeintrag wird hinzufgefügt
        flag: new
        item: Referenz auf den Planeintrag 2  // analog zu "Relevante Elemente (MedicationRequest - Planeintrag 1)"

```

#### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    extension:effectiveDosePeriod: Einnahmezeitraum  // ab sofort oder in der Zukunft
    status: active | on-hold        // aktiv oder pausiert
    category: "Planeintrag"         // Kategorie zur Unterscheidung der MedicationRequests
    reportedBoolean: false | true       // false, wenn vom Ersteller des Planeintrags
    medicationReference.reference: Medikation mit PZN oder Magistrale Zubereitung // Conditional Reference oder Contained Medication 
    authoredOn: Datum der Erstellung des Planeintrags    
    requester: für die Erstellung veranwortlicher GDA      // wird auf Übereinstimmung mit List.source geprüft
    courseOfTherapyType: continuous | acute
    dosageInstruction: Dosierung 

```

### Sub_UC_eMed_02_03 - Planeintrag im Medikationsplan ändern

Der GDA kann im Medikationsplan ein oder mehrere Planeinträge ändern. Dazu wird eine neue Version des Planeintrags erstellt.

Die Änderung des Planeintrags kann alle Inhalte umfassen, z.B.: Änderung des Status (pausieren/aktivieren), Änderung des Einnahmezeitraums, der Medikation oder der Dosierung. Bei fehlender **fachlicher Kontinuität** der Bearbeitung eines Planeintrages (z.B. Änderung des Arzneimittels von Blutdruckmittel auf Antibiotikum) muss ein neuer Planeintrag erfasst werden.

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und bearbeitet die von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) bereitgestellten Ressourcen:

* **List**-Ressource bearbeiten: [AtElgaEmedListMedikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md): 
* **Informationen zur Änderung**: aktuelles Datum (**List.date**) und aktueller GDA (**List.source**)
* **Planeinträge** (**List.entry.item**): 
* Referenz auf den **geänderten** Planeintrag ([MedicationRequests](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md))
* **Änderungsstatus** (**List.entry.flag**) des geänderten Planeintrags erhält den Wert ****changed**** (siehe [Statusdiagramm](workflowmanagement.md#status-des-listentryflags-im-medikationsplan))
 
 
* **MedicationRequest**-Ressource(n) bearbeiten: [AtElgaEmedMedicationRequestPlaneintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md):  
* **Einnahmezeitraum** (**extension:effectiveDosePeriod**): falls ein Enddatum existiert, darf es nicht in der Vergangenheit liegen
* **Status** muss **active** oder **on-hold** sein (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag) und [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* **Grund für die Änderung** (**statusReason.coding**) optional codiert oder Freitext
* alle weiteren Elemente analog zu **MedicationRequest**-Ressource(n) erstellen, siehe [Sub_UC_eMed_02_02 - Planeintrag in Medikationsplan hinzufügen](Sub_UC_eMed_02.md#sub_uc_emed_02_02---planeintrag-in-medikationsplan-hinzufügen)
 

Der GDA übermittelt mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) den aktualisierten Medikationsplan in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md):

* alle geänderten **MedicationRequests** sind im Transaction Bundle enthalten

Anmerkung: Beim nächsten [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) ändert die Fachanwendung im zur Auslieferung bereitgestellten [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) den Status der List.entry.flags von **changed** automatisch auf **unchanged**.

#### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Planeintrag wird geändert
        flag: changed 
        item: Referenz auf den Planeintrag 1  // siehe "Relevante Elemente (MedicationRequest) Planeintrag 1"
    entry[1]:  // 2. Planeintrag bleibt unverändert
        flag: unchanged   
        item: Referenz auf den Planeintrag 2  

```

#### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    status: active | on-hold
    statusReason.coding: Grund der Änderung // optional
    [...]
    authoredOn: Datum der Änderung des Planeintrags    
    requester: für die Änderung verantwortlicher GDA 

```

### Sub_UC_eMed_02_04 - Planeintrag unverändert zur Kenntnis nehmen

Der GDA kann ein oder mehrere Planeinträge im Medikationsplan beibehalten und unverändert zur Kennntis nehmen. Bedingung dafür ist, dass der Einnahmezeitraum des im Planeintrag dokumentierten Arzneimittels noch nicht abgelaufen ist (siehe [Sub_UC_eMed_02_09 - Abgelaufenen Planeintrag weiterverordnen oder beenden](Sub_UC_eMed_02.md#sub_uc_emed_02_09---abgelaufenen-planeintrag-weiterverordnen-oder-beenden)).

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und bearbeitet die von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) bereitgestellten Ressourcen:

* **List**-Ressource bearbeiten: [AtElgaEmedListMedikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md): 
* **Informationen zur Aktualisierung**: aktuelles Datum (**List.date**) und aktueller GDA (**List.source**)
* **Planeinträge** (**List.entry.item**): 
* Referenz auf den **unveränderten** Planeintrag ([MedicationRequests](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md))
* **Änderungsstatus** (**List.entry.flag**) des unveränderten Planeintrags **bleibt** bei dem (von der Fachanwendung ausgelieferten Wert) ****unchanged**** (siehe [Statusdiagramm](workflowmanagement.md#status-des-listentryflags-im-medikationsplan))
 
 
* **MedicationRequest**-Ressource(n): Die zu behaltenden Planeinträge ([AtElgaEmedMedicationRequestPlaneintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)) bleiben **unverändert**.

Der GDA übermittelt mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) den aktualisierten Medikationsplan in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md):

* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste **nur referenziert**.

#### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Planeintrag bleibt unverändert
        flag: unchanged  // von der Fachanwendung gesetzt Wert bleibt unverändert
        item: Referenz auf den Planeintrag 1   // Ressource wird im Transaction Bundle nicht übermittelt

```

#### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    // unverändert (verantwortlicher GDA, Datum, Status der vorhergehenden Bearbeitung bleiben unverändert)

```

### Sub_UC_eMed_02_05 - Planeintrag pausieren oder reaktivieren

Ein GDA kann die Therapie eines Patienten vorübergehend unterbrechen, wenn eine Wiederaufnahme vorgesehen ist. Eine Begründung kann dokumentiert werden. Eine zukünftige geplante Unterbrechung kann nicht über den Status des list.entry.flags dokumentiert werden. 

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und bearbeitet die von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) bereitgestellten Ressourcen:

* **List**-Ressource bearbeiten: [AtElgaEmedListMedikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md): 
* **Informationen zur Änderung**: aktuelles Datum (**List.date**) und aktueller GDA (**List.source**)
* **Planeinträge** (**List.entry.item**): 
* Referenz auf den **pausierten** Planeintrag ([MedicationRequests](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md))
* **Änderungsstatus** (**List.entry.flag**) des pausierten bzw. reaktiverten Planeintrags erhält den Wert ****changed**** (siehe [Statusdiagramm](workflowmanagement.md#status-des-listentryflags-im-medikationsplan))
 
 
* **MedicationRequest**-Ressource(n) bearbeiten: [AtElgaEmedMedicationRequestPlaneintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md):  
* **Status** muss beim **Pausieren** mit **on-hold** und beim **Reaktivieren** mit **active** dokumentiert werden (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag) und [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* **Grund für die Pausierung** (**statusReason.coding**) verpflichtender Grund für die Pausierung als Code oder Freitext (siehe [ValueSet-AtElgaEmedValueSetPlaneintragStatusReasonVS.html](AtElgaEmedValueSetPlaneintragStatusReasonVS)) 
* falls weitere Elemente geändert werden, siehe [Sub_UC_eMed_02_03 - Planeintrag im Medikationsplan ändern](Sub_UC_eMed_02.md#sub_uc_emed_02_03---planeintrag-im-medikationsplan-ändern)
 

Der GDA übermittelt mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) den aktualisierten Medikationsplan in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md):

* alle geänderten Ressourcen sind inline im Bundle enthalten

Anmerkung: Beim nächsten [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) ändert die Fachanwendung im zur Auslieferung bereitgestellten [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) den Status der List.entry.flags von **changed** automatisch auf **unchanged**.

#### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Planeintrag wird pausiert
        flag: changed 
        item: Referenz auf den Planeintrag 1  
    entry[1]:  // 2. Planeintrag bleibt unverändert
        flag: unchanged 
        item: Referenz auf den Planeintrag 2  

```

#### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    status: Pausierung: on-hold | Aktivierung: active
    statusReason.coding: Grund der Pausierung (verpflichtend) // kein statusReason bei der Aktivierung
    [...]
    authoredOn: Datum der Änderung des Planeintrags    
    requester: für die Änderung verantwortlicher GDA 


```

### Sub_UC_eMed_02_06 - Leeren Medikationsplan dokumentieren

Ein GDA kann explizit dokumentieren, dass für den Patienten derzeit **keine Medikation vorgesehen** ist.

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und bearbeitet die von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) bereitgestellten Ressourcen:

Die Vorgehensweise unterscheidet sich je nach Inhalt des temporären Medikationsplans:

1. der Medikationsplan ist**leer**:
* **A.** er befindet sich noch im **Initialzustand** mit **List.emptyReason = notstarted** oder
* **B.** er ist **nach dem Absetzen oder Stornieren aller Planeinträge** leer und wurde von der Fachanwendung beim Ausliefern vorbereitet mit **List.emptyReason = nilknown** 
 In beiden Fällen übermittelt der GDA mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) eine neue Planversion mit **List.emptyReason = nilknown** in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md).

1. es bestehen**Planeinträge**: der GDA
* **beendet** (siehe [Sub_UC_eMed_02_08 - Planeintrag im Medikationsplan beenden](Sub_UC_eMed_02.md#sub_uc_emed_02_08---planeintrag-im-medikationsplan-beenden)) und/oder
* **storniert** (siehe [Sub_UC_eMed_02_07 - Planeintrag im Medikationsplan stornieren](Sub_UC_eMed_02.md#sub_uc_emed_02_07---planeintrag-im-medikationsplan-stornieren)) sämtliche Planeinträge. Beim nächsten [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) erkennt die Fachanwendung diesen Zustand und liefert den Medikationsplan mit **List.emptyReason = nilknown** aus. Optional kann der GDA nun explizit einen leeren Plan dokumentieren (siehe 1.B).

#### Relevante Elemente (List) (1.A + 1.B)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    emptyReason: nilknown   // Patient soll keine Medikation einnehmen

```

### Sub_UC_eMed_02_07 - Planeintrag im Medikationsplan stornieren

Der GDA kann einen oder mehrere Planeinträge aufgrund einer falschen Eingabe stornieren. Ein Grund ist verpflichtend anzugeben.

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und bearbeitet die von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) bereitgestellten Ressourcen:

* **List**-Ressource bearbeiten: [AtElgaEmedListMedikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md): 
* **Informationen zur Änderung**: aktuelles Datum (**List.date**) und aktueller GDA (**List.source**)
* **Planeinträge** (**List.entry.item**): 
* Referenz auf den **stornierten** Planeintrag ([MedicationRequests](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md))
* **Änderungsstatus** (**List.entry.flag**) des stornierten Planeintrags erhält den Wert ****removed**** (siehe [Statusdiagramm](workflowmanagement.md#status-des-listentryflags-im-medikationsplan))
 
 
* **MedicationRequest**-Ressource(n) bearbeiten: [AtElgaEmedMedicationRequestPlaneintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md):  
* **Status** muss ****entered-in-error**** sein (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag) und [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* falls weitere Elemente geändert werden, siehe [Sub_UC_eMed_02_03 - Planeintrag im Medikationsplan ändern](Sub_UC_eMed_02.md#sub_uc_emed_02_03---planeintrag-im-medikationsplan-ändern)
 

Der GDA übermittelt mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) den aktualisierten Medikationsplan in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md):

* alle zu entfernenden **MedicationRequests** sind im Transaction Bundle enthalten

Anmerkung: Beim nächsten [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) entfernt die Fachanwendung im zur Auslieferung bereitgestellten [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) die mit **removed** gekennzeichneten Einträge automatisch aus dem Mediaktionsplan.

#### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Planeintrag wird storniert
        flag: removed 
        item: Referenz auf den Planeintrag 1  // siehe "Relevante Elemente (MedicationRequest - Planeintrag 1)"
    entry[1]:  // 2. Planeintrag bleibt unverändert
        flag: unchanged 
        item: Referenz auf den Planeintrag 2  

```

#### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    status: entered-in-error
    [...]
    authoredOn: Datum der Stornierung  
    requester: für die Stornierung verantwortlicher GDA 

```

### Sub_UC_eMed_02_08 - Planeintrag im Medikationsplan beenden

Der GDA kann eine Medikation, welche in einen Planeintrag dokumentiert ist, beenden. Es wird keine Unterscheidung getroffen, ob die Medikation regulär abgeschlossen oder vorzeitig beendet wird. Ein Absetzgrund ist verpflichtend anzugeben.

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und bearbeitet die von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) bereitgestellten Ressourcen:

* **List**-Ressource bearbeiten: [AtElgaEmedListMedikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md): 
* **Informationen zur Änderung**: aktuelles Datum (**List.date**) und aktueller GDA (**List.source**)
* **Planeinträge** (**List.entry.item**): 
* Referenz auf den **beendeten** Planeintrag ([MedicationRequests](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md))
* **Änderungsstatus** (**List.entry.flag**) des beendeten Planeintrags erhält den Wert ****removed**** (siehe [Statusdiagramm](workflowmanagement.md#status-des-listentryflags-im-medikationsplan))
 
 
* **MedicationRequest**-Ressource(n) bearbeiten: [AtElgaEmedMedicationRequestPlaneintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md):  
* **Status** muss ****stopped**** sein (siehe [Status des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-des-medicationrequests-im-medikationsplaneintrag) und [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* **Absetzgrund** (**statusReason.coding**) muss **verpflichend** mit Code dokumentiert werden. Existiert im Valueset (siehe [ValueSet-AtElgaEmedValueSetPlaneintragStatusReasonVS.html](AtElgaEmedValueSetPlaneintragStatusReasonVS)) kein passender Code, muss "other" ausgewählt werden und ein Freitext in **coding.text** dokumentiert werden.
* falls weitere Elemente geändert werden, siehe [Sub_UC_eMed_02_03 - Planeintrag im Medikationsplan ändern](Sub_UC_eMed_02.md#sub_uc_emed_02_03---planeintrag-im-medikationsplan-ändern)
 

Der GDA übermittelt mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) den aktualisierten Medikationsplan in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md):

* alle zu beendeten **MedicationRequests** sind im Transaction Bundle enthalten

Anmerkung: Beim nächsten [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) entfernt die Fachanwendung im zur Auslieferung bereitgestellten [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) die mit **removed** gekennzeichneten Einträge automatisch aus dem Mediaktionsplan.

#### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Planeintrag wird beendet
        flag: removed 
        item: Referenz auf den Planeintrag 1  // siehe "Relevante Elemente (MedicationRequest - Planeintrag 1)"
    entry[1]:  // 2. Planeintrag bleibt unverändert
        flag: unchanged 
        item: Referenz auf den Planeintrag 2  

```

#### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    status: stopped
    statusReason.coding: Absetzgrund  // verpflichtend
    [...]
    authoredOn: Datum der Beendigung  
    requester: für die Beendigung verantwortlicher GDA 


```

### Sub_UC_eMed_02_09 - Abgelaufenen Planeintrag weiterverordnen oder beenden

Planeinträge mit abgelaufenem Einnahmezeitraum (überschrittenes Enddatum in **extension:effectiveDosePeriod**) werden in dem von der Fachanwendung ausgelieferten [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) automatisch mit **List.entry.flag = removed** markiert.

**Varianten:**

* **1.A** Möchte der GDA die Einnahme **weiterverordnen**, muss er entsprechende Anpassungen vornehmen (siehe [Sub_UC_eMed_02_03 - Planeintrag im Medikationsplan ändern](Sub_UC_eMed_02.md#sub_uc_emed_02_03---planeintrag-im-medikationsplan-ändern)).
* **1.B** Soll die Einnahme **nicht weiterverordnet** werden, nimmt der GDA **keine Änderung** am List.entry.flag vor. Der abgelaufene Planeintrag muss entsprechend angepasst werden (siehe [Relevante Elemente (MedicationRequest - Planeintrag 1)(1.B)](Sub_UC_eMed_02.md#relevante-elemente-medicationrequest---planeintrag-1-6-1b)) 

Er übermittelt mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) den aktualisierten Medikationsplan in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md):

* alle geänderten Ressourcen (inkl. der beendeten) sind inline im Bundle enthalten

Beim nächsten [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) entfernt die Fachanwendung im zur Auslieferung bereitgestellten [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) die mit **removed** gekennzeichneten Einträge automatisch aus dem Mediaktionsplan.

#### Relevante Elemente (List) (1.B)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Planeintrag wird entfernt
        flag: removed 
        item: Referenz auf den Planeintrag 1  // siehe "Relevante Elemente (MedicationRequest - Planeintrag 1)"
    entry[1]:  // 2. Planeintrag bleibt unverändert
        flag: unchanged   
        item: Referenz auf den Planeintrag 2  

```

#### Relevante Elemente (MedicationRequest - Planeintrag 1) (1.B)

```
AtElgaEmedMedicationRequestPlaneintrag
    extension:effectiveDosePeriod: liegt in der Vergangenheit   // bleibt unverändert
    status: stopped                     
    statusReason.coding: abgelaufen        
    [...]
    authoredOn: Datum der aktuellen Bearbeitung         
    requester: das Ablaufen zur Kenntnis nehmender GDA  

```

### Sub_UC_eMed_02_10 - Reihenfolge der Planeinträge ändern

Der GDA kann die Reihenfolge der Planeinträge ändern. Die Einträge selbst bleiben dabei unverändert. Der Einnahmezeitraum der im Planeintrag dokumentierten Arzneimittel darf noch nicht abgelaufen sein (siehe [Sub_UC_eMed_02_09 - Abgelaufenen Planeintrag weiterverordnen oder beenden](Sub_UC_eMed_02.md#sub_uc_emed_02_09---abgelaufenen-planeintrag-weiterverordnen-oder-beenden)).

#### Ablauf

Der GDA führt ein **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) aus und bearbeitet die von der Fachanwendung im [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) bereitgestellten Ressourcen:

* **List**-Ressource bearbeiten: [AtElgaEmedListMedikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md): 
* **Informationen zur Änderung**: aktuelles Datum (**List.date**) und aktueller GDA (**List.source**)
* **Planeinträge** (**List.entry**): Die Reihenfolge der Planeinträge wird angepasst, indem die Entries entsprechend gereiht werden. Die **List.entry.flag** der Einträge bleibt unverändert (**unchanged**).
 
* **MedicationRequest**-Ressource(n): Planeinträge ([AtElgaEmedMedicationRequestPlaneintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)) bleiben **unverändert**.

Der GDA übermittelt mit **POST** [$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md) den aktualisierten Medikationsplan in einem [Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md):

* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert
* neue oder geänderte Ressourcen sind im Transaction Bundle enthalten,

#### Relevante Elemente (List)

In folgendem Beispiel wird der ursprünglich 2. Eintrag als 1. gereiht. Beider Planeinträge wurden nicht geändert.

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]: // 2. Planeintrag 
        flag: unchanged 
        item: Referenz auf den Planeintrag 2 
    entry[1]: // 1. Planeintrag
        flag: unchanged 
        item: Referenz auf den Planeintrag 1 

```

#### Relevante Elemente (MedicationRequest - Planeintrag 1 und 2)

```
AtElgaEmedMedicationRequestPlaneintrag
    // unverändert (verantwortlicher GDA, Datum, Status bleiben unverändert)

```

### Sub_UC_eMed_02_11 - Planeintrag durch ELGA-Teilnehmer löschen

 Ausüben der Teilnehmerrechte: in Arbeit. 

### Sub_UC_eMed_02_12 - Medikationsplan durch ELGA-Teilnehmer löschen

 Ausüben der Teilnehmerrechte: in Arbeit. 

