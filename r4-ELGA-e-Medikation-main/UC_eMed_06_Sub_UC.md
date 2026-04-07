# HL7.AT.FHIR.ELGA.EMED.R4\Sub-Usecases zu UC_eMed_06 (Medikationsplan schreiben) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick & Anwendungsbeispiel**](use_case_overview.md)
* **Sub-Usecases zu UC_eMed_06 (Medikationsplan schreiben)**

## Sub-Usecases zu UC_eMed_06 (Medikationsplan schreiben)

### Sub-Usecases zu UC_eMed_06: Medikationsplan schreiben

#### Verwendete FHIR Ressourcen

##### List

Der Medikationsplan eines ELGA-Teilnehmers / einer ELGA-Teilnehmerin (**List**-Ressource) beinhaltet List-Entries, die 0..* Medikationsplaneinträge (**MedicationRequests**) referenzieren. Die Reihenfolge der Listenelemente kann duch den GDA oder Patienten festgelegt werden. Jedes Listenelement enthält im **flag**-Element den Änderungsstatus (siehe [Status-Änderungen der List-Flag (Medikationsplan)](workflowmanagement.md#status-%C3%A4nderungen-der-list-flag-medikationsplan)).

##### MedicationRequest

Der Medikationsplaneintrag (**MedicationRequest**-Ressource) im Medikationsplan eines ELGA-Teilnehmers / einer ELGA-Teilnehmerin bildet genau ein Arzneimittel und dessen Dosierung ab und bildet in weiterer Folge die Grundlage zur Erstellung einer geplanten Abgabe (siehe **UC_08 Geplante Abgabe Schreiben**).

Der aktuelle Status eines Medikationsplaneintrags wird im **status**-Element dokumentiert (siehe [Status-Änderungen des MedicationRequests im Medikationsplaneintrag](workflowmanagement.md#status-%C3%A4nderungen-des-medicationrequests-im-medikationsplaneintrag)).

Abhängig vom List-Flag kann der Medikationsplaneintrag nur eingeschränkte Status einnehmen (siehe [Planeintrag-Status in Abhängigkeit des Flag-Status des Medikationsplans](workflowmanagement.md#planeintrag-status-in-abh%C3%A4ngigkeit-des-flag-status-des-medikationsplans)).

#### Sub_UC_06_01 - Initial erstellter Medikationsplan

Die initiale Erstellung des Medikationsplans erfolgt durch die e-Medikation Fachanwendung.

Ein GDA ruft den Medikationsplan eines Patienten ab, ohne zu wissen, ob dieser bereits existiert. Die Fachanwendung stellt sicher, dass pro Patient genau ein Medikationsplan vorhanden ist: Existiert noch keiner, wird dieser im Hintergrund initial angelegt und mit dem emptyReason **notstarted** zurückgegeben.

Dieser Status kennzeichnet ausschließlich den Initialzustand (keine Einträge im Medikationsplan) und trifft keine Aussage darüber, ob der Patient tatsächlich keine Medikamente einnimmt.

##### Relevante Felder (List):

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

* ein GDA zuvor die gesamte Medikation abgesetzt, storniert oder gelöscht hat (TODO: Implizites setzen von nilknown durch die Fachanwendung beim nächsten read-to-write?)
* ein GDA dokumentieren möchte, dass der Patient keine Medikamente einnehmen soll

Dient zur Unterscheidung von leeren Medikationsplänen, die noch nie befüllt wurden.

##### Relevante Felder (List):

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

Hierfür werden entsprechende Medikationsplaneinträge **MedicationRequests** erstellt und in der **List**-Ressouce referenziert.

* Das List-Flag des referenzierten MedicationRequests erhält den Wert **new**,
* die MedicationRequests selbst können den Status **active** oder **on-hold** erhalten (siehe [Planeintrag-Status in Abhängigkeit des Flag-Status des Medikationsplans](workflowmanagement.md#planeintrag-status-in-abh%C3%A4ngigkeit-des-flag-status-des-medikationsplans))
* der Behandlungszeitraum im MedicationRequest kann sich auf das aktuelle Datum beziehen oder in der Zukunft liegen
* ein bereits bestehender MedicationRequest kann wieder (re)aktiviert werden: 
* MedicationRequest mit Status **on-hold** wird beim read-to-write-Zugriff im Collection Bundle mitgeliefert und kann wieder auf **active** gesetzt werden (TODO: siehe Sub_UC_06_0x - Medikationsplaneintrag in Medikationsplan reaktivieren)
* MedicationRequest mit einem Endzustand (**stopped, entered-in-error** oder **completed**), wird beim read-to-write-Zugriff im Collection Bundle **nicht** mitgeliefert und kann nur über die Historie abgerufen und durch Erzeugung eines neuen Planeintrags in den Medikationsplan aufgenommen werden (via Client-SW) (TODO: prüfen)
 

##### Relevante Felder (List):

```
AtEmedListMedikationsplan
    status: current
    mode: working
    date: Datum der Bearbeitung des Medikationsplans
    source: veranwortlicher GDA 
    entry[0]:  // 1. Medikationsplaneintrag wird hinzufgefügt
        flag: new
        date: Datum der Aufnahme des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 1  // siehe "Relevante Felder (MedicationRequest) Planeintrag 1"
    entry[1]:  // 2. Medikationsplaneintrag wird hinzufgefügt
        flag: new
        date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
        item: Referenz auf den Planeintrag 2  // analog zu "Relevante Felder (MedicationRequest) Planeintrag 1"

```

##### Relevante Felder (MedicationRequest) Planeintrag 1:

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

##### Auswirkung der Zugriffsart auf den List-Status: neuer Planeintrag

| | | | |
| :--- | :--- | :--- | :--- |
| **new** | - List-Entries, die vom Vorgänger-GDA mit**new**geflaggt wurden, bleiben beim read-only-Zugriff unverändert.- Die neuen MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die vom Vorgänger-GDA mit**new**geflaggt wurden, werden beim lesenden read-to-write-Zugriff von der**Fachanwendung**als****unchanged****geflaggt.- Die betreffenden MedicationRequests sind im Collection Bundle enthalten. | - List-Entries, die beim schreibenden read-to-write-Zugriff vom aktuellen GDA mit**new**geflaggt wurden, werden dem Medikationsplan neu hinzugefügt.- Die betreffenden MedicationRequests müssen im Transaction Bundle enthalten sein. |

#### Sub_UC_06_04 - Medikationsplaneintrag im Medikationsplan beibehalten

Der GDA kann im Medikationsplan ein oder mehrere Medikationsplaneinträge beibehalten und zur Kennntis nehmen. Hierfür bleiben entsprechende Medikationsplaneinträge, sofern der Behandlungszeitraum noch nicht abgelaufen ist, unverändert (im Status **active** oder **on-hold**).

Die **List**-source wird mit dem verantwortlichen GDA, das Datum in **date** aktualisiert.

##### Relevante Felder (List):

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

##### Relevante Felder (MedicationRequest) Planeintrag 1:

```
AtEmedMRPlaneintrag
    {unverändert}

```

Anmerkung: Für das Erstellen einer geplanten Abgabe (Rezeptieren) aus den Medikationsplaneinträgen heraus siehe **UC_08 Geplante Abgabe Schreiben**.

#### Sub_UC_06_05 - Medikationsplaneintrag im Medikationsplan ändern

Der GDA kann im Medikationsplan ein oder mehrere Medikationsplaneinträge ändern.

Hierfür werden entsprechende Medikationsplaneinträge angepasst und in der List-Ressouce Datum und Flag aktualisiert.

Es können nur Listen-Einträge mit dem Flag **unchanged** geändert werden, da Einträge, die vom Vorgängen mit den Flags **new** oder **changed** gespeichert wurden, beim read-to-write-Zugriff von der Fachanwendung auf **unchanged** geändert werden. Einträge die vom Vorgänger mit einem **removed**-Flag gespeichert wurde, sind beim nächsten read-to-write-Zugriff nicht mehr enthalten. TODO: prüfen.

##### Relevante Felder (List):

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

##### Relevante Felder (MedicationRequest) Planeintrag 1:

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

Anmerkung: Für das Erstellen einer geplanten Abgabe (Rezeptieren) aus den Medikationsplaneinträgen heraus siehe **UC_08 Geplante Abgabe Schreiben**.

#### Sub_UC_06_06 - Medikationsplaneintrag im Medikationsplan stornieren

Der GDA möchten einen Medikationsplaneintrag stornieren. Der restliche Plan bleibt unverändert. Hierfür wird der betreffende Medikationsplaneintrag mit dem flag Cancelled versehen.

Relevante Felder (List):

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

Relevante Felder (List):

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

Relevante Felder (List):

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

Relevante Felder (List):

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

Relevante Felder (MedicationRequest):

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

Relevante Felder (MedicationRequest):

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

Relevante Felder (MedicationRequest):

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

Relevante Felder (MedicationRequest):

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

Relevante Felder (MedicationRequest):

```
AtEmedListMedikationsplan
    Medikationsplaneintrag-ID bleibt bestehen
    Author, Datum: wird aktualisiert
    Status stopped
    priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

```

TODO: statusReason wäre hier sinnvoll, dzt. NP

