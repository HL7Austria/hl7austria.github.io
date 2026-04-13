# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Medikationsplan schreiben (UC_eMed_06) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Medikationsplan schreiben (UC_eMed_06)**

## ​Technische Use Cases für Medikationsplan schreiben (UC_eMed_06)

Im folgenden Kapitel werden die fachlichen Anwendungsfälle in Form technischer Use Cases beschrieben. Die zugehörigen Sequenzdiagramme veranschaulichen die beteiligten Akteure sowie die jeweiligen Abläufe.

Für jeden Use Case werden in den Kapiteln **Relevante Elemente** die wichtigsten Elemente der verwendeten Profile beschrieben. Dies ermöglicht eine kompakte Übersicht über die erforderlichen Anpassungen der Ressourcen im Kontext des jeweiligen Anwendungsfalls.

#### Sub_UC_06_01 - Initial erstellter Medikationsplan

Die initiale Erstellung des Medikationsplans erfolgt durch die e-Medikation Fachanwendung.

Ein GDA ruft den Medikationsplan eines Patienten ab, ohne zu wissen, ob dieser bereits existiert. Die Fachanwendung stellt sicher, dass pro Patient genau ein Medikationsplan vorhanden ist: Existiert noch keiner, wird dieser im Hintergrund initial angelegt und mit dem emptyReason **notstarted** zurückgegeben.

Dieser Status kennzeichnet ausschließlich den Initialzustand (keine Einträge im Medikationsplan) und trifft keine Aussage darüber, ob der Patient tatsächlich keine Medikamente einnimmt.

Auch der Patient kann die Erstellung eines Medikationsplans auslösen.

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

Ein leerer Medikationsplan mit dem Wert emptyReason **nilknown** bedeutet, dass der Patient derzeit keine Medikamente einnimmt. Der Medikatonsplan erhält diesen Status, wenn:

* ein GDA zuvor die gesamte Medikation abgesetzt, storniert oder gelöscht hat. Dabei muss der GDA der Liste den Status **nilknown** geben. (TODO: Invariante zur Überprüfung)
* ein GDA dokumentieren möchte, dass der Patient keine Medikamente einnehmen soll. Wenn die Liste zuvor das emptyReason **notstarted** hatte, kann der GDA den Status **nilknown** setzen.

Dient zur Unterscheidung von leeren Medikationsplänen, die noch nie befüllt wurden.

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

#### Standardablauf Medikationsplan bearbeiten

Der folgende Ablauf gilt für alle weiteren technischen Use Cases (Sub_UC_06_03 bis Sub_UC_06_0X). Für jeden Use Case werden in den Kapiteln **Relevante Elemente** die wichtigsten Elemente der verwendeten Profile beschrieben.

#### Sub_UC_06_03 - Medikationsplaneintrag in Medikationsplan hinzufügen

Der GDA kann dem Medikationsplan ein oder mehrere Medikationsplaneinträge hinzufügen.

Hierfür werden entsprechende Medikationsplaneinträge **MedicationRequests** erstellt und in der **List**-Ressouce referenziert:

* Das List.entry.flag des referenzierten MedicationRequests erhält den Wert **new**,
* die MedicationRequests selbst können den Status **active** oder **on-hold** erhalten (siehe [Konsistenzregeln zwischen List.entry.flag und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-list-entry-flag-und-medicationrequest-status))
* der Behandlungszeitraum im MedicationRequest kann sich auf das aktuelle Datum beziehen oder in der Zukunft liegen
* ein bereits bestehender MedicationRequest kann wieder (re)aktiviert werden: 
* MedicationRequest mit Status **on-hold** wird beim Read-to-Write-Zugriff im Collection Bundle mitgeliefert und kann wieder auf **active** gesetzt werden (TODO: siehe Sub_UC_06_0x - Medikationsplaneintrag in Medikationsplan reaktivieren)
* MedicationRequest mit einem Endzustand (**stopped, entered-in-error** oder **completed**), wird beim Read-to-Write-Zugriff im Collection Bundle **nicht** mitgeliefert und kann nur über die Historie abgerufen und durch Erzeugung eines neuen Planeintrags in den Medikationsplan aufgenommen werden (via Client-SW) (TODO: prüfen)
 

##### Ablauf

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

TODO: noch offen für AtEmedMRPlaneintrag:

*  

| | | |
| :--- | :--- | :--- |
| courseOfTherapyType: Gesamtmuster der Medikamentengabe continuous | acute | seasonal. |

 
* doNotPerform: Gibt an, ob die Verordnung der Medikation untersagt ist (z.B. bei Allergie).

##### Auswirkung der Zugriffsart auf List-Status und Bundles: neuer Medikationsplaneintrag

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-list-status-und-bundle-inhalte): Status **new**.

#### Sub_UC_06_04 - Medikationsplaneintrag im Medikationsplan beibehalten

Der GDA kann im Medikationsplan ein oder mehrere Medikationsplaneinträge beibehalten und zur Kennntis nehmen. Hierfür bleiben entsprechende Medikationsplaneinträge **MedicationRequests**, sofern der Behandlungszeitraum noch nicht abgelaufen ist, unverändert (im Status **active** oder **on-hold**). TODO: Ist der Behandlungszeitraum abgelaufen (im Status **complete**), muss dieser angepasst werden (siehe **Sub_UC_06_05 - Medikationsplaneintrag im Medikationsplan ändern**) (das Prüfung des Datums erfolgt durch die Fachanwendung).

Die **List**-source wird mit dem verantwortlichen GDA, das Datum in **date** aktualisiert.

##### Ablauf

Siehe [Ablauf Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff)

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

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-list-status-und-bundle-inhalte): Status **unchanged**.

#### Sub_UC_06_05 - Medikationsplaneintrag im Medikationsplan ändern

Der GDA kann im Medikationsplan ein oder mehrere Medikationsplaneinträge ändern. Dies kann den gesamten Medikationsplaneintrag (**MedicationRequest**) umfassen, z.B.: Austausch des Arzneimittels, Änderung des Behandlungszeitraums oder der Dosierung mit Ausnahme der Medikationsplaneintrag-ID (**identifier**), der der Herstellung des Bezugs von von geänderten Planeinträgen dient. TODO: prüfen.

Anmerkung: Ob es sinnvoller ist einen bestehenden Medikationsplaneintrag zu beenden (siehe unten) und einen neuen zu erstellen, obliegt dem verantwortlichen GDA.

Hierfür werden entsprechende Medikationsplaneinträge angepasst und in der List-Ressouce Datum und Flag aktualisiert.

Es können nur Listen-Einträge mit dem Flag **unchanged** geändert werden, da Einträge, die vom Vorgängen mit den Flags **new** oder **changed** gespeichert wurden, beim Read-to-Write-Zugriff von der Fachanwendung auf **unchanged** geändert werden. Einträge die vom Vorgänger mit einem **removed**-Flag gespeichert wurde, sind beim nächsten Read-to-Write-Zugriff nicht mehr enthalten. TODO: prüfen.

##### Ablauf

Siehe [Ablauf Read-to-Write-Zugriff](interactions.md#ablauf-read-to-write-zugriff)

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
        item: Referenz auf den Planeintrag 1  // siehe "Medikationsplaneintrag ändern"
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
    statusReason.text: Freitextbegrüdung // optional TODO: Verwendung zu prüfen, Ressource anzupassen
    reportedBoolean: false  // Fremdmedikation
    medicationReference.reference: Änderungen betreffend der Medikation // siehe TODO: "Arzneimittel dokumentieren"
    authoredOn: Datum der Änderung des Medikationsplaneintrags    
    requester: für die Änderung verantwortlicher GDA 
    dosageInstruction: Änderung betreffend Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft) // siehe TODO: "Dosierung dokumentieren"
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

##### Auswirkung der Zugriffsart auf List-Status und Bundles: Medikationsplaneintrag ändern

Siehe [Auswirkung der Zugriffsart auf List.entry.flags und Bundle-Inhalte](workflowmanagement.md#auswirkung-der-zugriffsart-auf-list-status-und-bundle-inhalte): Status **changed**.

#### Sub_UC_06_06 - Medikationsplaneintrag im Medikationsplan stornieren

Der GDA möchten einen Medikationsplaneintrag stornieren. Der restliche Plan bleibt unverändert. Hierfür wird der betreffende Medikationsplaneintrag mit dem flag Cancelled versehen.

Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird storniert
        flag: Cancelled 
        date: Datum der Stornierung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  // siehe "Medikationsplaneintrag ändern"
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: Unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

TODO:

* Beim nächsten Abruf des Medikationsplans ist die stornierte Medikation nicht mehr enthalten ?

#### Sub-Usecase: Medikationsplaneintrag im Medikationsplan absetzen

Der GDA möchten einen Medikationsplaneintrag absetzen. Der restliche Plan bleibt unverändert. Hierfür wird der betreffende Medikationsplaneintrag mit dem flag Ceased versehen.

Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: Veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird abgesetzt
        flag: Ceased 
        date: Datum der Absetzung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  // siehe "Medikationsplaneintrag ändern"
    entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
        flag: Unchanged 
        date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  

```

TODO:

* Beim nächsten Abruf des Medikationsplans ist die abgesetzte Medikation nicht mehr enthalten ?

#### Sub-Usecase: Medikationsplaneintrag abgelaufen

TODO:

* Was passiert wenn der Zeitraum in dem die Medikation eingenommen werden soll abläuft? effectiveDosePeriod.end ist erreicht

#### Sub-Usecase: Medikationsplaneintrag durch ELGA-Teilnehmer löschen

TODO: Entspricht dies dem "Medikationsplaneintrag im Medikationsplan stornieren" oder wird hier das Entry aus der Liste entfernt?

#### Sub-Usecase: Medikationsplan vollständig leeren

Der GDA dokumentiert, dass aktuell keine Medikamente eingenommen werden sollen. Hierfür werden alle bestehenden Medikationsplaneinträge abgesetzt (mit dem flag Ceased versehen).

Relevante Elemente (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung
    source: Veranwortlicher GDA 
    entry[0]: // 1. Medikationsplaneintrag 
        flag: Ceased 
        date: Datum der Absetzung // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1 (siehe "Neuen Medikationsplaneintrag erstellen")
    entry[1]: // 2. Medikationsplaneintrag
        flag: Ceased 
        date: Datum der Absetzung // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2 (siehe "Neuen Medikationsplaneintrag erstellen")

```

TODO:

* Beim nächsten Abruf des Medikationsplans ist die abgesetzte Medikation nicht mehr enthalten ?

#### Sub-Usecase: Reihenfolge der Medikationsplaneinträge ändern

Sowohl der GDA, als auch der:die ELGA-Teilnehmer:in können die Reihenfolge der Medikationsplaneinträge ändern. Die Einträge selbst bleiben dabei unverändert.

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

-------

#### Sub-Usecase: Neuen Medikationsplaneintrag erstellen

Ein neues Arzneimittel soll vom Patienten eingenommen werden. Der GDA erstellt hierfür einen Medikationsplaneintrag, der im Medikationsplan referenziert wird.

Relevante Elemente (MedicationRequest):

```
AtEmedListMedikationsplan
    identifier: neue Medikationsplaneintrag-ID
    requester: veranwortlicher GDA 
    authoredOn: aktuelles Datum
    status active
    reported: Fremdmedikation Nein
    medication: Medikation mit PZN oder Magistrale Anwendung // Contained Medication siehe TODO: "Arzneimittel dokumentieren"
    dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft) // siehe TODO: "Dosierung dokumentieren"

```

TODO: noch offen:

*  

| | | |
| :--- | :--- | :--- |
| courseOfTherapyType: Gesamtmuster der Medikamentengabe continuous | acute | seasonal). |

 
* doNotPerform: Gibt an, ob die Verordnung der Medikation untersagt ist (z.B. bei Allergie).

#### Sub-Usecase: Medikationsplaneintrag bearbeiten

Alle Datenfelder eines bestehenden Medikationsplaneintrags können geändert werden. Wird das Arzneimittel selbst geändert, sollte vorher geprüft werden, ob es fachlich nicht sinnvoller ist, einen neuen Eintrag zu erstellen und den alten zu stoppen, damit die Änderungen für Patienten und Nachbehandler nachvollziehbar bleiben.

Relevante Elemente (MedicationRequest):

```
AtEmedListMedikationsplan
    Medikationsplaneintrag-ID bleibt bestehen
    requester: für die Änderung verantwortlicher GDA 
    authoredOn: aktualisiertes Datum
    status active
    {Diverse Änderungen}
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

#### Sub-Usecase: Medikationsplaneintrag pausieren

Die Therapie ist vorübergehend unterbrochen, die Wiederaufnahme ist vorgesehen. Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Elemente (MedicationRequest):

```
AtEmedListMedikationsplan
    Medikationsplaneintrag-ID bleibt bestehen
    requester: für die Änderung verantwortlicher GDA 
    authoredOn: aktualisiertes Datum
    Status on-hold
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

TODO: statusReason wäre hier sinnvoll, dzt. NP

#### Sub-Usecase: Medikationsplaneintrag beenden

Therapie ist regulär abgeschlossen. Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Elemente (MedicationRequest):

```
AtEmedListMedikationsplan
    Medikationsplaneintrag-ID bleibt bestehen
    requester: für die Änderung verantwortlicher GDA 
    authoredOn: aktualisiertes Datum
    Status completed
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

TODO: bei zeitlich befristeter Medikation, kann nach Ablauf des Status automatisch gesetzt werden -> welche Werte in requester und authoredOn?

#### Sub-Usecase: Medikationsplaneintrag abbrechen

Die Therapie wurde begonnen, aber abgebrochen. Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Elemente (MedicationRequest):

```
AtEmedListMedikationsplan
    Medikationsplaneintrag-ID bleibt bestehen
    Author, Datum: wird aktualisiert
    Status stopped
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

TODO: statusReason wäre hier sinnvoll, dzt. NP

