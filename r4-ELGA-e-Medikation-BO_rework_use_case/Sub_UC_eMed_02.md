# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Medikationsplan schreiben (UC_eMed_02) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Medikationsplan schreiben (UC_eMed_02)**

## ​Technische Use Cases für Medikationsplan schreiben (UC_eMed_02)

Ein [berechtigter GDA](actors.md#rollen-und-berechtigungen) kann den Medikationsplan eines ELGA-Teilnehmers bearbeiten.

Ein ELGA-Teilnehmer kann Medikationsplaneinträge bzw. Medikationspläne über das Zugangsportal unwiderruflich löschen.

Alle Schreibvorgänge auf einem Medikationsplan folgen demselben technischen Grundablauf:

1. Die aktuelle Bearbeitungssicht des Medikationsplans wird mittels[$plan-read](OperationDefinition-AtElgaEmed.List.PlanRead.md)abgerufen (siehe[Sub_UC_eMed_01_01 - Aktuellen Medikationsplan lesen (Plan-Read)](Sub_UC_eMed_01.md#Sub_UC_eMed_01_01---aktuellen-medikationsplan-lesen-plan-read)).
1. Die im[Auslieferungs-Medikationsplan-Collection-Bundle](design_choices.md#auslieferungs-medikationsplan-collection-bundle)enthaltenen Ressourcen werden entsprechend des gewünschten Schreibszenarios bearbeitet.
1. Der aktualisierte Medikationsplan wird mittels[$plan-write](OperationDefinition-AtElgaEmed.List.PlanWrite.md)als[Transaction Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md)an die Fachanwendung übermittelt.

Die nachfolgenden technischen Use Cases beschreiben die jeweils erforderlichen Änderungen an den Ressourcen sowie die Inhalte des Medikationsplan-Transaction-Bundles. Der technische Ablauf von **$plan-write** einschließlich der Integritätsprüfung mittels **ETag** ist für alle Schreiboperationen identisch und wird im folgenden Abschnitt beschrieben.

#### Sub_UC_eMed_02_01 - Medikationsplan schreiben (Plan-Write)

Alle Schreiboperationen erfolgen über die Custom Operation [$plan-write](OperationDefinition-AtElgaEmed.List.PlanWrite.md). Die Fachanwendung verwendet den im Request übermittelten **ETag** zur Integritätsprüfung ([Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)), um konkurrierende Änderungen am Medikationsplan zu erkennen. 

##### Ablauf

1. Der GDA übermittelt den aktualisierten Medikationsplan mittels**POST**[$plan-write](OperationDefinition-AtElgaEmed.List.PlanWrite.md)als[Medikationsplan-Transaction-Bundle](design_choices.md#medikationsplan-transaction-bundle-atemedbundlemedikationsplantx-transaction-bundle). Der Request enthält:
* alle **neuen**, **geänderten** und **zu entfernenden** Ressourcen sind **inline** im Transaction Bundle enthalten
* den **ETag** des zuvor abgerufenen Auslieferungs-Medikationsplan-Collection-Bundles (zur Durchführung des [Optimistic Locking](https://hl7.org/fhir/http.html#concurrency))
* unveränderte Ressourcen werden ausschließlich referenziert

1. Die Fachanwendung prüft den übermittelten**ETag**gegen den**ETag**der aktuell persistierten Medikationsplan-Version.
1. Ist der**ETag**gültig, validiert die Fachanwendung das Medikationsplan-Transaction-Bundle einschließlich der zulässigen Zustandsübergänge.
1. Ist die Validierung erfolgreich,
* werden die übermittelten Änderungen auf den aktuellen Ressourcenbestand angewendet,
* wird daraus ein neues [Medikationsplan-Collection-Bundle](design_choices.md#persistiertes-medikationsplan-collection-bundle) erzeugt und
* dieses als neue Medikationsplan-Version **persistiert**.

1. Die Fachanwendung bestätigt die erfolgreiche Aktualisierung des Medikationsplans mit**HTTP 200 OK**.
1. Schlägt die Validierung fehl, wird der Schreibvorgang mit einer geeigneten**HTTP-4xx**-Antwort und einem**OperationOutcome**abgelehnt.
1. Stimmt der**ETag**nicht mit der aktuell persistierten Medikationsplan-Version überein, wird der Schreibvorgang mit**HTTP 412 Precondition Failes**und einem**OperationOutcome**abgelehnt. Vor einem erneuten Schreibversuch muss der Medikationsplan mittels[$plan-read](OperationDefinition-AtElgaEmed.List.PlanRead.md)erneut abgerufen und auf Basis der aktuellen Version bearbeitet werden.

##### Custom Operations

* [$plan-write](OperationDefinition-AtEmed.List.PlanWrite.md)
* [$plan-read](OperationDefinition-AtEmed.List.PlanRead.md)

##### Sequenzdiagramm Plan-Write

#### Sub_UC_eMed_02_02 - Leeren Medikationsplan dokumentieren

Ein Medikationsplan mit **List.emptyReason = nilknown** dokumentiert, dass für den Patienten derzeit **keine Medikation vorgesehen** ist.

Der Wert **nilknown** dient der Unterscheidung zwischen einem **noch nie befüllten Medikationsplan** (**notstarted**) und einem Medikationsplan, für den **bewusst keine Medikation dokumentiert** ist (**nilknown**).

Der Medikationsplan erhält den Status **List.emptyReason = nilknown** in folgenden Fällen:

* Ein GDA hat **alle Medikationsplaneinträge abgesetzt, beendet oder storniert** oder ein ELGA-Teilnehmer hat **alle Medikationsplaneinträge unwiderruflich gelöscht**, sodass sämtliche Einträge der **List** das **List.entry.flag = removed** besitzen. Beim nächsten [$plan-read](OperationDefinition-AtElgaEmed.List.PlanRead.md) erkennt die Fachanwendung diesen Zustand und liefert den Medikationsplan mit **List.emptyReason = nilknown** aus.

* Ein GDA möchte explizit dokumentieren, dass derzeit keine Medikation vorgesehen ist, der Medikationsplan befindet sich aber noch im Initialzustand (**List.emptyReason = notstarted**). In diesem Fall kann der GDA **List.emptyReason** zu **nilknown** ändern und im Anschluss ein **Plan-Write** ausführen.

##### Relevante Elemente (List)

Der GDA übermittelt ein Medikationsplan-Transaction-Bundle mit:

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der Bearbeitung
    source: veranwortlicher GDA 
    emptyReason: nilknown   // Patient nimmt derzeit kein Medikation ein

```

##### Beispiel

In Arbeit. 

#### Sub_UC_eMed_02_03 - Medikationsplaneintrag in Medikationsplan hinzufügen

Der GDA kann dem Medikationsplan ein oder mehrere Medikationsplaneinträge hinzufügen. Dabei muss er dokumentieren, ob die Verordnung von ihm selbst stammt oder er Fremdmedikation oder Eigenmedikation des Patienten dokumentiert.

Hierfür führt der GDA ein **$plan-read** aus und bearbeitet das von der Fachanwendung übermittelte Collection Bundle:

* Das Element **List.source** wird mit dem aktuellen GDA, das Datum in **date** aktualisiert.
* Entsprechende Medikationsplaneinträge (**MedicationRequests**) werden neu erstellt und in der **List**-Ressouce referenziert: 
* Das **List.entry.flag** des referenzierten MedicationRequests erhält den Wert **new**,
* der MedicationRequest kann den Status **active** oder **on-hold** erhalten (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)).
* **intent = order** und **category = "Medikationsplaneintrag"** sind für alle Planeinträge verpflichtend zu dokumentieren
* **reported** erhält den Wert **true**, wenn Fremdmedikation oder Eigenmedikation des Patienten vorliegt, anderenfalls den Wert **false**
* für die Dokumentation des Arzneimittels ist **Medication**-Ressource zu verwenden, diese muss immer im MedicationRequest enthalten sein (contained)
* der Behandlungszeitraum im MedicationRequest kann sich auf das aktuelle Datum beziehen oder in der Zukunft liegen
 

Im Anschluss übermittelt der GDA mit **POST $plan-write** den aktualisierten Medikationsplan in einem **Transaction Bundle**:

* alle neuen **MedicationRequests** sind inline im Bundle enthalten
* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert

Anmerkung: Beim nächsten Plan-Read ändert die Fachanwendung im zur Auslieferung bereitgestellten **Collection Bundle** den Status der Einträge mit **new** automatisch auf **unchanged**.

##### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird hinzufgefügt
        flag: new
        date: Datum der Aufnahme des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  // siehe "Relevante Elemente (MedicationRequest) Planeintrag 1"
    entry[1]:  // 2. Medikationsplaneintrag wird hinzufgefügt
        flag: new
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  // analog zu "Relevante Elemente (MedicationRequest) Planeintrag 1"

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    identifier: neue Medikationsplaneintrag-ID
    status: active | on-hold
    intent: order                       // fester Wert
    category: "Medikationsplaneintrag"  // fester Wert
    reportedBoolean: true | false       // true, wenn Fremdmedikation
    medicationReference.reference: Medikation mit PZN oder Magistrale Anwendung // Contained Medication 
    authoredOn: Datum der Erstellung des Medikationsplaneintrags    
    requester: veranwortlicher GDA      // wird auf Übereinstimmung mit List.source geprüft
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)

```

##### Beispiel

In Arbeit. 

##### Ablauf

#### Sub_UC_eMed_02_04 - Medikationsplaneintrag im Medikationsplan beibehalten

Der GDA kann ein oder mehrere Medikationsplaneinträge im Medikationsplan beibehalten und unverändert zur Kennntis nehmen.

Hierfür führt der GDA ein **$plan-read** aus und bearbeitet das von der Fachanwendung übermittelte Collection Bundle:

* Das Element **List.source** wird mit dem aktuellen GDA, das Datum in **date** aktualisiert.
* Die zu behaltenden Medikationsplaneinträge (**MedicationRequests**) des von der Fachanwendung übermittelten Collection Bundles bleiben **unverändert** (im Status **active** oder **on-hold**).

```
- Ist der Behandlungszeitraum der Medikationsplaneinträge abgelaufen, muss dieser angepasst werden (siehe *Sub_UC_eMed_02_05 - Medikationsplaneintrag im Medikationsplan ändern*), da die Fachanwendung die Speicherung abgelaufener Planeinträge ablehnt.

```

Der GDA übermittelt mit **POST $plan-write** den aktualisierten Medikationsplan in einem **Transaction Bundle**:

* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert.

##### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag bleibt unverändert
        flag: unchanged 
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    // unverändert (verantwortlicher GDA, Datum, Status bleiben bestehen)

```

#### Sub_UC_eMed_02_05 - Medikationsplaneintrag pausieren

Ein GDA kann die Therapie eines Patienten vorübergehend unterbrechen (die Wiederaufnahme ist vorgesehen). Eine Freitext-Begründung kann dokumentiert werden.

Hierfür führt der GDA ein **$plan-read** aus und bearbeitet das von der Fachanwendung übermittelte Collection Bundle. Die zu pausierenden Medikationsplaneinträge (**MedicationRequests**) und das entsprechende Entry der **List**-Ressouce werden angepasst:

* Das Element **List.source** wird mit dem aktuellen GDA, das Datum in **date** aktualisiert.
* Das **List.entry.flag** des referenzierten MedicationRequests erhält den Wert **changed**,
* der MedicationRequest erhält den Status **on-hold** (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* In **statusReason.text** kann ein Grund für die Pausierung als Freitext dokumentiert werden.
* **reportedBoolean** wird auf **true** gesetzt, wenn die Information über die Pausierung vom Patienten berichtet wurde und auf **false**, wenn die Pausierung vom GDA angeordnet wurde – unabhängig davon, welcher Status zuvor dokumentiert war.
* der Behandlungszeitraum im MedicationRequest kann sich auf das aktuelle Datum beziehen oder in der Zukunft liegen.

Im Anschluss übermittelt der GDA mit **POST $plan-write** den aktualisierten Medikationsplan in einem **Transaction Bundle**:

* alle geänderten Ressourcen sind inline im Bundle enthalten
* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert.

Anmerkung: Beim nächsten **Plan-Read** ändert die Fachanwendung im zur Auslieferung bereitgestellten **Collection Bundle** den Status der Einträge mit **changed** automatisch auf **unchanged**.

##### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    date: Datum der aktuellen Bearbeitung des Medikationsplans
    source: für die Bearbeitung veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird pausiert
        flag: changed 
        date: Datum der Änderung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: unchanged 
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    identifier: Medikationsplaneintrag-ID bleibt bestehen
    status: on-hold
    statusReason.text: Freitextbegrüdung  // optional
    reportedBoolean: false  // Fremdmedikation
    authoredOn: Datum der Pausierung des Medikationsplaneintrags    
    requester: für die Pausierung verantwortlicher GDA 
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag ändern

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_eMed_02_06 - Medikationsplaneintrag im Medikationsplan ändern

Der GDA kann im Medikationsplan ein oder mehrere Medikationsplaneinträge ändern.

Die Änderung des Medikationsplaneintrag kann alle Inhalte umfassen, z.B.: Änderung des Status (von pausiert zu aktiv u.u.), Änderung des Behandlungszeitraums, der Dosierung oder der Medikation. Wird die Medikationsplaneintrag-ID (**identifier**) geändert, kann über diese kein Bezug mehr zu vorherehenden Planeinträgen hergestellt werden. Bei fehlender fachlicher Kontinuität der Bearbeitung eines Medikationsplaneintrages (z.B. Änderung PZN; Blutdruckmittel auf Antibiotikum) soll ein neuer Medikationsplaneintrag erfasst und kein bestehender Eintrag weiterverwendet werden.

Hierfür führt der GDA ein $plan-read aus und bearbeitet das von der Fachanwendung übermittelte Collection Bundle:

* Im Element **List.source** wird mit dem aktuellen GDA, das Datum in **date** aktualisiert.
* Entsprechende Medikationsplaneinträge (**MedicationRequests**) werden geändert und das entsprechende Entry der **List**-Ressouce angepasst: 
* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **changed**,
* der MedicationRequest selbst kann den Status **active** oder **on-hold** erhalten (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* der Behandlungszeitraum im MedicationRequest kann sich auf das aktuelle Datum beziehen oder in der Zukunft liegen
 

Der GDA übermittelt (via POST $plan-write) den aktualisierten Medikationsplan in einem Transaction Bundle:

* alle geänderten Ressourcen sind inline im Bundle enthalten
* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert

Anmerkung: Beim nächsten Plan-Read ändert die Fachanwendung im zur Auslieferung bereitgestellten Collection Bundle den Status der Einträge mit **changed** automatisch auf **unchanged**.

##### Ablauf

Siehe [Plan-Read](interactions.md#plan-read) und [Plan-Write](interactions.md#plan-write).

##### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird geändert
        flag: changed 
        date: Datum der Änderung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: unchanged 
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    identifier: Medikationsplaneintrag-ID bleibt bestehen  // sofern der Bezug erhalten bleiben soll
    status: active | on-hold
    statusReason.text: Freitextbegrüdung für die Änderung 
    reportedBoolean: false  // Fremdmedikation
    medicationReference.reference: Änderungen betreffend der Medikation // Contained Medication 
    authoredOn: Datum der Änderung des Medikationsplaneintrags    
    requester: für die Änderung verantwortlicher GDA 
    dosageInstruction: Änderung betreffend Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag ändern

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_eMed_02_07 - Medikationsplaneintrag im Medikationsplan stornieren

Der GDA kann einen oder mehrere Medikationsplaneinträge aufgrund einer falschen Eingabe stornieren. Diese sind beim nächsten [Plan-Read](interactions.md#plan-read) nicht mehr im Medikationsplan enthalten.

Hierfür führt der GDA ein $plan-read aus und bearbeitet das von der Fachanwendung übermittelte Collection Bundle:

* Im Element **List.source** wird mit dem aktuellen GDA, das Datum in **date** aktualisiert.
* Entsprechende Medikationsplaneinträge (**MedicationRequests**) und das entsprechende Entry der **List**-Ressouce werden angepasst: 
* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **removed**,
* der MedicationRequest erhält den Status **entered-in-error** (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)) 
 

Der GDA übermittelt (via POST $plan-write) den aktualisierten Medikationsplan in einem Transaction Bundle:

* alle geänderten Ressourcen (inkl. der stornierten) sind inline im Bundle enthalten
* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert

##### Ablauf

Siehe [Plan-Read](interactions.md#plan-read) und [Plan-Write](interactions.md#plan-write).

##### Relevante Elemente (List)

Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird storniert
        flag: removed 
        date: Datum der Stornierung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    identifier: Medikationsplaneintrag-ID bleibt bestehen
    status: entered-in-error
    statusReason.text: Freitextbegrüdung für die Stornierung
    reportedBoolean: false  // Fremdmedikation
    authoredOn: Datum der Stornierung des Medikationsplaneintrags    
    requester: für die Stornierung verantwortlicher GDA 
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag stornieren

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_eMed_02_08 - Medikationsplaneintrag im Medikationsplan absetzen

Der GDA möchte das Medikament (welches in einen Medikationsplaneintrag dokumentiert ist) absetzen, bevor alle geplanten Einnahmen oder Verabreichungen durchgeführt wurden. Der betreffende Planeintrag ist beim nächsten [Plan-Read](interactions.md#plan-read) nicht mehr im Medikationsplan enthalten.

Hierfür führt der GDA ein $plan-read aus und bearbeitet das von der Fachanwendung übermittelte Collection Bundle:

* Im Element **List.source** wird mit dem aktuellen GDA, das Datum in **date** aktualisiert.
* Entsprechende Medikationsplaneinträge (**MedicationRequests**) und das entsprechende Entry der **List**-Ressouce werden angepasst: 
* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **removed**,
* der MedicationRequest erhält den Status **stopped** (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)) 
 

Der GDA übermittelt (via POST $plan-write) den aktualisierten Medikationsplan in einem Transaction Bundle:

* alle geänderten Ressourcen (inkl. der abgesetzten) sind inline im Bundle enthalten
* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert

##### Ablauf

Siehe [Plan-Read](interactions.md#plan-read) und [Plan-Write](interactions.md#plan-write).

##### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird abgesetzt
        flag: removed 
        date: Datum der Absetzung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  // siehe "Medikationsplaneintrag ändern"
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    identifier: Medikationsplaneintrag-ID bleibt bestehen
    status: stopped
    statusReason.text: Freitextbegrüdung für das Absetzen des Medikaments
    reportedBoolean: false  // Fremdmedikation
    authoredOn: Datum des Absetzens des Medikationsplaneintrags    
    requester: für das Absetzen verantwortlicher GDA 
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag absetzen

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_eMed_02_09 - Behandlungszeitraum eines Medikationsplaneintrags ist abgelaufen

Erhält ein GDA nach einem [Plan-Read](interactions.md#plan-read) Medikationsplaneinträge, deren Behandlungszeitraum (effectiveDosePeriod.end) abgelaufen ist, muss der GDA diese Einträge beenden oder bearbeiten (zumindest den Behandlungszeitraum anpassen) bevor ein erneutes Speichern des Medikationsplans zulässig ist (siehe [Sub_UC_eMed_02_05 - Medikationsplaneintrag im Medikationsplan ändern](Sub_UC_eMed_02.md#Sub_UC_eMed_02_06---medikationsplaneintrag-im-medikationsplan-ändern)). Beendete Planeinträge sind beim nächsten [Plan-Read](interactions.md#plan-read) nicht mehr im Medikationsplan enthalten.

Um Planeinträge zu beenden bearbeitet der GDA nach einem $plan-read das von der Fachanwendung übermittelte Collection Bundle wie folgt:

* Im Element **List.source** wird mit dem aktuellen GDA, das Datum in **date** aktualisiert.
* Abgelaufene Medikationsplaneinträge (**MedicationRequest**) und das entsprechende Entry der **List**-Ressouce werden angepasst: 
* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **removed**,
* der MedicationRequest erhält den Status **completed** (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
 

Der GDA übermittelt (via POST $plan-write) den aktualisierten Medikationsplan in einem Transaction Bundle:

* alle geänderten Ressourcen (inkl. der beendeten) sind inline im Bundle enthalten
* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert

##### Ablauf

Siehe [Plan-Read](interactions.md#plan-read) und [Plan-Write](interactions.md#plan-write).

##### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird beendet
        flag: removed 
        date: Datum der Stornierung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: Unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1)

```
AtElgaEmedMedicationRequestPlaneintrag
    identifier: Medikationsplaneintrag-ID bleibt bestehen
    status: completed
    statusReason.text: Freitextbegrüdung  
    reportedBoolean: false  // Fremdmedikation
    authoredOn: Datum der Beendigung des Medikationsplaneintrags    
    requester: für die Beendigung verantwortlicher GDA 
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Behandlungszeitraum eines Medikationsplaneintrags ist abgelaufen

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_eMed_02_10 - Reihenfolge der Medikationsplaneinträge ändern

Der GDA kann die Reihenfolge der Medikationsplaneinträge ändern. Die Einträge selbst bleiben dabei unverändert.

Hierfür führt der GDA ein $plan-read aus und bearbeitet das von der Fachanwendung übermittelte Collection Bundle:

* Im Element **List.source** wird mit dem aktuellen GDA, das Datum in **date** aktualisiert.
* Die Reihenfolge der Planeinträge wird in der **List**-Ressouce angepasst, indem die Entries entsprechend gereiht werden.
* Der Behandlungszeitraum der Planeinträge darf noch nicht abgelaufen sein (ansonsten muss dieser bearbeitet werden - siehe [Sub_UC_eMed_02_06 - Medikationsplaneintrag im Medikationsplan ändern](Sub_UC_eMed_02.md#Sub_UC_eMed_02_06---medikationsplaneintrag-im-medikationsplan-ändern)).

Der GDA übermittelt (via POST $plan-write) den aktualisierten Medikationsplan in einem Transaction Bundle:

* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert

##### Ablauf

Siehe [Plan-Read](interactions.md#plan-read) und [Plan-Write](interactions.md#plan-write).

##### Relevante Elemente (List)

In folgendem Beispiel wird der ursprünglich 2. Eintrag als 1. gereiht.

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der Änderung der Reihenfolge
    source: Veranwortlicher GDA 
    entry[0]: // 2. Medikationsplaneintrag 
        flag: Unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags 
        item: Referenz auf den Planeintrag 2 
    entry[1]: // 1. Medikationsplaneintrag
        flag: Unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags 
        item: Referenz auf den Planeintrag 1 

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1 und 2)

```
AtElgaEmedMedicationRequestPlaneintrag
    // unverändert (verantwortlicher GDA, Datum, Status bleiben bestehen)

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Behandlungszeitraum eines Medikationsplaneintrags ist abgelaufen

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_eMed_02_11 - Medikationsplaneintrag durch ELGA-Teilnehmer löschen

Der ELGA-Teilnehmer kann via ELGA-Portal einzelne oder alle Medikationsplaneinträge unwiderruflich löschen, wodurch eine neue Medikationsplanversion entsteht. Wurden durch den ELGA-Teilnehmer alle Planeinträge gelöscht, erhält der von der Fachanwendung erstellte, neue Medikationsplan das emptyReason **nilknown** (siehe [Sub_UC_eMed_02_02 - Leerer Medikationsplan (keine Medikation einnehmen)](Sub_UC_eMed_02.md#Sub_UC_eMed_02_02---leerer-medikationsplan-keine-medikation-einnehmen)).

Im Unterschied zu einem Entfernen von Einträgen mittels stornieren, absetzen und beenden durch den GDA, wird beim Löschen durch den ELGA-Teilnehmer der betreffende Medikationsplaneintrag aus dem List.Entry entfernt und der betroffene Planeintrag (**MedicationRequest**) gelöscht (und nicht nur als **removed** gekennzeichnet).

Hierfür führt der Patient über das Portal ein $plan-read aus und markiert die zu löschenden Medikationsplaneinträge. Die Fachanwendung bearbeitet das Collection Bundle wie folgt:

* Im Element **List.source** wird der Patient dokumentiert, das Datum in **date** aktualisiert.
* Zu entfernende Medikationsplaneinträge (**MedicationRequests**) werden aus der **List**-Ressouce entfernt

Im Anschluss übermittelt der Patient über das Portal (via POST $patient-write) den aktualisierten Medikationsplan in einem Transaction Bundle:

* alle zu löschenden MedicationRequests werden im Bundle übermittelt
* die unveränderten Ressourcen sind nicht im Bundle enthalten, sondern werden in der Liste nur referenziert

Anmerkung: Im persistierten Collection Bundle sind die gelöschten Medikationsplaneiträge nicht mehr enthalten.

##### Ablauf

Siehe [Plan-Read](interactions.md#plan-read) und [Patient-Plan-Write](interactions.md#patient-plan-write).

##### Relevante Elemente (List)

Zustand **vor dem Löschen** des 2. Planeintrags (Ergebnis von $plan-read):

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der vorhergehenden Bearbeitung des Medikationsplans
    source: veranwortlicher GDA, der vorhergehenden Bearbeitung
    entry[0]:  
        flag: unchanged
        date: Datum der Aufnahme des Medikationsplaneintrags  
        item: Referenz auf den Planeintrag 1  
    entry[1]:  
        flag: unchanged
        date: Datum der Aufnahme des Medikationsplaneintrags 
        item: Referenz auf den Planeintrag 2  

```

Zustand **nach dem Löschen** des 2. Planeintrags (List-Ressource im Transaction Bundle von $patient-write):

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum des Löschens des Medikationsplans durch den Patienten
    source: Patient
    entry[0]:  // 1. Medikationsplaneintrag bleibt gleich
        flag: unchanged
        date: Datum der Aufnahme des Medikationsplaneintrags  
        item: Referenz auf den Planeintrag 1  

```

#### Sub_UC_eMed_02_12 - Medikationsplan durch ELGA-Teilnehmer löschen

Der ELGA-Teilnehmer kann via ELGA-Portal den aktuellen, einzelne oder alle historischen Medikationsplanversionen unwiderruflich löschen.

Hierfür markiert der Patient die zu löschenden Medikationspläne und führt über das Portal ein $plan-delete aus, mit dem Resultat, dass alle betreffenden Collection Bundles durch die Fachanwendung gelöscht werden.

