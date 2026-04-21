# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Medikationsplan schreiben (UC_eMed_06) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Medikationsplan schreiben (UC_eMed_06)**

## ​Technische Use Cases für Medikationsplan schreiben (UC_eMed_06)

Im folgenden Kapitel werden die fachlichen Anwendungsfälle in Form technischer Use Cases beschrieben. Die zugehörigen Sequenzdiagramme veranschaulichen die beteiligten Akteure sowie die jeweiligen Abläufe.

Für jeden Use Case werden in den Kapiteln **Relevante Elemente** die wichtigsten Elemente der verwendeten Profile beschrieben. Dies ermöglicht eine kompakte Übersicht über die erforderlichen Anpassungen der Ressourcen im Kontext des jeweiligen Anwendungsfalls.

#### Sub_UC_06_01 - Initial erstellter Medikationsplan

Die initiale Erstellung des Medikationsplans erfolgt durch die e-Medikation-Fachanwendung.

Ruft ein GDA den Medikationsplan eines Patienten zum Zweck der Bearbeitung ab, ohne Kenntnis darüber zu haben, ob bereits ein Plan existiert, stellt die Fachanwendung sicher, dass pro Patient genau ein Medikationsplan vorhanden ist: Existiert noch kein Plan, wird dieser im Hintergrund automatisch initial angelegt (siehe auch [Read-to-Write-Zugriff](interactions.md#read-to-write-zugriff)).

Der GDA erhält in diesem Fall ein Collection Bundle mit einem leeren Medikationsplan (List) mit **emptyReason** ****notstarted**** zurück.

Dieser Status **kennzeichnet ausschließlich den Initialzustand** (keine Einträge im Medikationsplan) und trifft keine Aussage darüber, ob der Patient keine Medikamente einnimmt.

Auch der Patient kann die Erstellung eines Medikationsplans auslösen, indem er diesen über das ELGA Portal aufruft (siehe auch [Read-to-Write-Zugriff](interactions.md#read-to-write-zugriff)).

##### Ablauf

##### Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Erstellung durch die Fachanwendung
    source: Intitiale Erstellung durch die Fachanwendung
    emptyReason: notstarted    // noch keine Medikationsplaneinträge erfasst

```

#### Sub_UC_06_02 - Leerer Medikationsplan (keine Medikation eingenommen)

Ein leerer Medikationsplan mit dem Wert **emptyReason** ****nilknown**** bedeutet, dass der Patient derzeit keine Medikamente einnehmen soll. Der Medikatonsplan erhält diesen Status, wenn:

* ein GDA zuvor die **gesamte Medikation abgesetzt, storniert oder gelöscht** hat, dh. alle Medikationsplaneinträge auf Listenebene das flag **removed** erhalten haben. Beim nächsten Read-to-Write-Zugriff erkennt dies die Fachanwendung und versieht das zur Auslieferung vorbereitete Collection Bundle mit den emptyReason **nilknown**. 
* ein GDA dokumentieren möchte, dass der Patient keine Medikamente einnehmen soll. Wenn die Liste zuvor das emptyReason **notstarted** hatte, kann der GDA den Status **nilknown** setzen.

Dient der Unterscheidung von Medikationsplänen, die noch nie befüllt wurden, und solchen, die explizit dokumentieren, dass der Patient keine Medikamente einnimmt. 

##### Ablauf

##### Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung
    source: veranwortlicher GDA 
    emptyReason: nilknown   // Patient nimmt derzeit kein Medikation ein

```

#### Sub_UC_06_03 - Medikationsplaneintrag in Medikationsplan hinzufügen

Der GDA kann dem Medikationsplan ein oder mehrere Medikationsplaneinträge hinzufügen.

Hierfür werden entsprechende Medikationsplaneinträge **MedicationRequests** erstellt und in der **List**-Ressouce referenziert:

* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **new**,
* der MedicationRequest selbst kann den Status **active** oder **on-hold** erhalten (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* der Behandlungszeitraum im MedicationRequest kann sich auf das aktuelle Datum beziehen oder in der Zukunft liegen

Der GDA übermittelt (via POST $write) den aktualisierten Medikationsplan in einem Transaction Bundle: - alle neuen Ressourcen sind inline im Bundle enthalten

##### Ablauf

Siehe [Ablauf Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) und [Write-Zugriff](interactions.md#write-zugriff).

##### Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird hinzufgefügt
        flag: new
        date: Datum der Aufnahme des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  // siehe "Relevante Elemente (MedicationRequest) Planeintrag 1"
    entry[1]:  // 2. Medikationsplaneintrag wird hinzufgefügt
        flag: new
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  // analog zu "Relevante Elemente (MedicationRequest) Planeintrag 1"

```

##### Relevante Elemente (MedicationRequest - Planeintrag 1):

```
AtEmedMRPlaneintrag
    identifier: neue Medikationsplaneintrag-ID
    status: active | on-hold
    reportedBoolean: false  // Fremdmedikation
    medicationReference.reference: Medikation mit PZN oder Magistrale Anwendung // Contained Medication siehe TODO: "Arzneimittel dokumentieren"
    authoredOn: Datum der Erstellung des Medikationsplaneintrags    
    requester: veranwortlicher GDA  // wird auf Übereinstimmung mit List.source geprüft
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft) // siehe TODO: "Dosierung dokumentieren"

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: neuer Medikationsplaneintrag

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_06_04 - Medikationsplaneintrag im Medikationsplan beibehalten

Der GDA kann im Medikationsplan ein oder mehrere Medikationsplaneinträge beibehalten und zur Kennntis nehmen.

Hierfür bleiben entsprechende Medikationsplaneinträge **MedicationRequests**, sofern der Behandlungszeitraum noch nicht abgelaufen ist, **unverändert** (im Status **active** oder **on-hold**). Ist der Behandlungszeitraum abgelaufen, muss dieser zuvor angepasst werden (siehe **Sub_UC_06_05 - Medikationsplaneintrag im Medikationsplan ändern**).

Die **List**-source wird mit dem verantwortlichen GDA, das Datum in **date** aktualisiert.

Der GDA übermittelt (via POST $write) den aktualisierten Medikationsplan in einem Transaction Bundle: - die unveränderten Ressourcen sind nicht im Transaction Bundle enthalten, sondern werden in der Liste nur referenziert

##### Ablauf

Siehe [Ablauf Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) und [Write-Zugriff](interactions.md#write-zugriff).

##### Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag bleibt unverändert
        flag: Unchanged 
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  

```

##### Relevante Elemente (MedicationRequest) Planeintrag 1:

```
AtEmedMRPlaneintrag
    // unverändert

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag beibehalten

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_06_05 - Medikationsplaneintrag pausieren

Die Therapie eines Patienten wird vorübergehend unterbrochen, die Wiederaufnahme ist vorgesehen.

Hierfür werden entsprechende Medikationsplaneinträge **MedicationRequests** geändert und das entsprechende Entry der **List**-Ressouce angepasst:

* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **changed**,
* der MedicationRequest erhält den Status **on-hold** (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* der Behandlungszeitraum im MedicationRequest kann sich auf das aktuelle Datum beziehen oder in der Zukunft liegen

Der GDA übermittelt (via POST $write) den aktualisierten Medikationsplan in einem Transaction Bundle: - alle geänderten Ressourcen sind inline im Bundle enthalten - die unveränderten Ressourcen sind nicht im Transaction Bundle enthalten, sondern werden in der Liste nur referenziert

##### Ablauf

Siehe [Ablauf Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) und [Write-Zugriff](interactions.md#write-zugriff).

##### Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird pausiert
        flag: Changed 
        date: Datum der Änderung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: Unchanged 
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest) Planeintrag 1:

```
AtEmedMRPlaneintrag
    identifier: Medikationsplaneintrag-ID bleibt bestehen
    status: on-hold
    statusReason.text: Freitextbegrüdung  
    reportedBoolean: false  // Fremdmedikation
    authoredOn: Datum der Pausierung des Medikationsplaneintrags    
    requester: für die Pausierung verantwortlicher GDA 
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag ändern

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_06_06 - Medikationsplaneintrag im Medikationsplan ändern

Der GDA kann im Medikationsplan ein oder mehrere Medikationsplaneinträge ändern.

Hierfür werden entsprechende Medikationsplaneinträge **MedicationRequests** geändert und das entsprechende Entry der **List**-Ressouce angepasst:

* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **changed**,
* der MedicationRequest selbst kann den Status **active** oder **on-hold** erhalten (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))
* der Behandlungszeitraum im MedicationRequest kann sich auf das aktuelle Datum beziehen oder in der Zukunft liegen

Die Änderung des Medikationsplaneintrag kann alle Inhalte umfassen, z.B.: Änderung des Status (von pausiert zu aktiv u.u.), Austausch des Arzneimittels, Änderung des Behandlungszeitraums oder der Dosierung. Wird die Medikationsplaneintrag-ID (**identifier**) geändert, kann über diese kein Bezug mehr zu vorherehenden Planeinträgen hergestellt werden.

Ob es sinnvoller ist einen bestehenden Medikationsplaneintrag zu beenden (siehe **Medikationsplaneintrag im Medikationsplan beenden**) und einen neuen zu erstellen (siehe **Medikationsplaneintrag im Medikationsplan hinzufügen**), obliegt dem verantwortlichen GDA.

Der GDA übermittelt (via POST $write) den aktualisierten Medikationsplan in einem Transaction Bundle: - alle neuen Ressourcen sind inline im Bundle enthalten

##### Ablauf

Siehe [Ablauf Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) und [Write-Zugriff](interactions.md#write-zugriff).

##### Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird geändert
        flag: Changed 
        date: Datum der Änderung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: Unchanged 
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest) Planeintrag 1:

```
AtEmedMRPlaneintrag
    identifier: Medikationsplaneintrag-ID bleibt bestehen
    status: active | on-hold
    statusReason.text: Freitextbegrüdung  
    reportedBoolean: false  // Fremdmedikation
    medicationReference.reference: Änderungen betreffend der Medikation 
    authoredOn: Datum der Änderung des Medikationsplaneintrags    
    requester: für die Änderung verantwortlicher GDA 
    dosageInstruction: Änderung betreffend Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft)
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag ändern

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_06_07 - Medikationsplaneintrag im Medikationsplan stornieren

Der GDA kann einen oder mehrere Medikationsplaneinträge stornieren. Diese sind beim nächsten [Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) nicht mehr im Medikationsplan enthalten.

Hierfür werden der Medikationsplaneintrag **MedicationRequest** und das entsprechende Entry der **List**-Ressouce angepasst:

* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **removed**,
* der MedicationRequest erhält den Status **entered-in-error** (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)) 

Der GDA übermittelt (via POST $write) den aktualisierten Medikationsplan in einem Transaction Bundle: - alle geänderten Ressourcen (inkl. der stornierten) sind inline im Transaction Bundle enthalten - die unveränderten Ressourcen sind nicht im Transaction Bundle enthalten, sondern werden in der Liste nur referenziert

Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird storniert
        flag: removed 
        date: Datum der Stornierung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: Unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest) Planeintrag 1:

```
AtEmedMRPlaneintrag
    identifier: Medikationsplaneintrag-ID bleibt bestehen
    status: entered-in-error
    statusReason.text: Freitextbegrüdung  
    reportedBoolean: false  // Fremdmedikation
    authoredOn: Datum der Stornierung des Medikationsplaneintrags    
    requester: für die Stornierung verantwortlicher GDA 
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag stornieren

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-listentryflags-und-bundle-inhalte).

#### Sub_UC_06_08 - Medikationsplaneintrag im Medikationsplan absetzen

Der GDA möchte das Medikament (welches in einen Medikationsplaneintrag dokumentiert ist) absetzen, bevor alle geplanten Einnahmen oder Verabreichungen durchgeführt wurden. Der betreffende Planeintrag ist beim nächsten [Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) nicht mehr im Medikationsplan enthalten.

Hierfür werden der Medikationsplaneintrag **MedicationRequest** und das entsprechende Entry der **List**-Ressouce angepasst:

* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **removed**,
* der MedicationRequest erhält den Status **stopped** (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)) 

Der GDA übermittelt (via POST $write) den aktualisierten Medikationsplan in einem Transaction Bundle: - alle geänderten Ressourcen (inkl. der abgesetzten) sind inline im Transaction Bundle enthalten - die unveränderten Ressourcen sind nicht im Transaction Bundle enthalten, sondern werden in der Liste nur referenziert

##### Ablauf

Siehe [Ablauf Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) und [Write-Zugriff](interactions.md#write-zugriff).

##### Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird abgesetzt
        flag: removed 
        date: Datum der Absetzung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  // siehe "Medikationsplaneintrag ändern"
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: Unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

##### Relevante Elemente (MedicationRequest) Planeintrag 1:

```
AtEmedMRPlaneintrag
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

#### Sub_UC_06_09 - Behandlungszeitraum eines Medikationsplaneintrags ist abgelaufen

Erhält ein GDA nach einem [Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) Medikationsplaneinträge, deren Behandlungszeitraum (effectiveDosePeriod.end) abgelaufen ist, muss der GDA diese Einträge beenden oder bearbeiten (zumindest den Behandlungszeitraum anpassen) bevor ein erneutes Speichern des Medikationsplans zulässig ist (siehe Sub_UC_06_05 - Medikationsplaneintrag im Medikationsplan ändern). Beendete Planeinträge sind beim nächsten [Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) nicht mehr im Medikationsplan enthalten.

Um einen Medikationsplaneintrag zu beenden, werden der Medikationsplaneintrag **MedicationRequest** und das entsprechende Entry der **List**-Ressouce angepasst:

* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **removed**,
* der MedicationRequest erhält den Status **completed** (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status))

Der GDA übermittelt (via POST $write) den aktualisierten Medikationsplan in einem Transaction Bundle: - alle geänderten Ressourcen (inkl. der beendeten) sind inline im Transaction Bundle enthalten - die unveränderten Ressourcen sind nicht im Transaction Bundle enthalten, sondern werden in der Liste nur referenziert

##### Ablauf

Siehe [Ablauf Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff) und [Write-Zugriff](interactions.md#write-zugriff).

##### Relevante Elemente (List):

```
AtEmedListMedikationsplan
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

##### Relevante Elemente (MedicationRequest) Planeintrag 1:

```
AtEmedMRPlaneintrag
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

#### Sub_UC_06_10 - Reihenfolge der Medikationsplaneinträge ändern

Der GDA kann die Reihenfolge der Medikationsplaneinträge ändern. Die Einträge selbst bleiben dabei unverändert.

In folgendem Beispiel wird der ursprünglich 2. Eintrag als 1. gereiht.

Relevante Elemente (List):

```
AtEmedListMedikationsplan
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

In Arbeit.

#### Sub_UC_06_11 - Medikationsplaneintrag durch ELGA-Teilnehmer löschen

Der ELGA-Teilnehmer möchte einen oder mehrere Medikationsplaneinträge löschen. Hierfür wird der betreffende Medikationsplaneintrag aus dem List.Entry entfernt und der betroffene Planeintrag (MedicationRequest) gelöscht.

In Arbeit.

