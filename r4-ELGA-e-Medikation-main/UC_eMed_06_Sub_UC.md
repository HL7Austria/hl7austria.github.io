# HL7.AT.FHIR.ELGA.EMED.R4\Sub-Usecases zu UC_eMed_06 (Medikationsplan schreiben) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick & Anwendungsbeispiel**](use_case_overview.md)
* **Sub-Usecases zu UC_eMed_06 (Medikationsplan schreiben)**

## Sub-Usecases zu UC_eMed_06 (Medikationsplan schreiben)

### Sub-Usecases zu UC_eMed_06: Medikationsplan schreiben

#### Verwendete FHIR Ressourcen

##### List

Der **Medikationsplan eines ELGA-Teilnehmers ("List"-Ressource)** beinhaltet Referenzen auf 0..* Medikationsplaneinträge (**MedicationRequests**), die alle verordneten Arzneimittel und deren Dosierung abbilden. Die Reihenfolge der Listenelemente kann duch den GDA oder ELGA-Teilnehmer festgelegt werden. Jedes Listenelement enthält einen Änderungsstatus (**flag**).

##### MedicationRequest

Der **Medikationsplaneintrag ("MedicationRequest"-Ressource)** im Medikationsplan eines ELGA-Teilnehmers / einer ELGA-Teilnehmerin bildet genau ein Arzneimittel und dessen Dosierung ab und bildet in weiterer Folge die Grundlage zur Erstellung einer geplanten Abgabe (siehe UC_08).

#### Initial erstellter Medikationsplan

Die initiale Erstellung des Medikationsplans wird durch die e-Medikation Fachanwendung umgesetzt. Das Element emptyReason mit dem Wert **notstarted** dokumentiert den Intitalzustand. Dies dokumentiert, dass noch kein Medikationsplan erstellt wurde ist nicht gleichbedeutend mit der Aussage, dass der Patient keine Medikamente einnimmt.

Relevante Felder (List):

```

AtEmedListMedikationsplan
* status: current
* mode: working
* date: Datum der Erstellung durch die Fachanwendung
* source: Intitiale Erstellung durch die Fachanwendung
* emptyReason: notstarted (noch keine Medikationsplaneinträge erfasst)
</pre>
</div>


#### Leerer Medikationsplan (keine Medikation eingenommen)

Ein leerer Medikationsplan mit dem Wert emptyReason *nilknown* bedeutet, dass der Patient derzeit keine Medikamente einnimmt. Der Medikatonsplan erhält diesen Status, wenn:
- die gesamte Medikation abgesetzt, storniert oder gelöscht wurde
- ein GDA dokumentieren möchte, dass der Patient keine Medikamente einnehmen soll 

Dient zur Unterscheidung von leeren Medikationsplänen, die noch nie befüllt wurden.

Relevante Felder (List):



AtEmedListMedikationsplan
* status: current
* mode: working
* date: Datum der Bearbeitung
* source: Veranwortlicher GDA 
* emptyReason: nilknown, Patient nimmt derzeit kein Medikation ein
</pre>
</div>

TODO: Muss ein GDA zuerst alle Einträge abgesetzen / stornieren oder und die Fachanwendung setzt das emptyReason dann beim nächsten readtowrite auf nilknown?

#### Sub-Usecase: Medikationsplaneintrag in Medikationsplan hinzufügen

Der GDA kann dem Medikationsplan ein oder mehrere Medikationsplaneinträge hinzufügen. 

Hierfür werden entsprechende Medikationsplaneinträge *MedicationRequests* erstellt und in der *List*-Ressouce referenziert. 

Relevante Felder (List):



* status: current
* mode: working
* date: Datum der Bearbeitung des Medikationsplans
* source: Veranwortlicher GDA 
* entry[0]:  // 1. Medikationsplaneintrag wird hinzufgefügt
    * flag: Prescribed 
    * date: Datum der Aufnahme des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den Planeintrag 1  // siehe "Neuen Medikationsplaneintrag erstellen"
* entry[1]:  // 2. Medikationsplaneintrag wird hinzufgefügt
    * flag: Prescribed 
    * date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den Planeintrag 2  // siehe "Neuen Medikationsplaneintrag erstellen"
</pre>
</div>

Anmerkung: Für das Erstellen einer geplanten Abgabe (Rezeptieren) aus den Medikationsplaneinträgen heraus siehe UC_08.


#### Sub-Usecase: Medikationsplaneintrag im Medikationsplan ändern
Der GDA kann im Medikationsplan ein oder mehrere Medikationsplaneinträge ändern. 

Hierfür werden entsprechende Medikationsplaneinträge angepasst und in der List-Ressouce Datum und Flag aktualisiert.

Relevante Felder (List):
```
AtEmedListMedikationsplan
* status: **current**
* mode: working
* date: Datum der Bearbeitung des Medikationsplans
* source: Veranwortlicher GDA 
* entry[0]:  // 1. Medikationsplaneintrag wird geändert
    * flag: **Changed** 
    * date: Datum der Änderung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den **Planeintrag 1**  // siehe "Medikationsplaneintrag ändern"
* entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
    * flag: **Unchanged** 
    * date: Datum der Aufnahme des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den **Planeintrag 2**  
```
Anmerkung: Für das Erstellen einer geplanten Abgabe (Rezeptieren) aus den Medikationsplaneinträgen heraus siehe UC_08.

#### Sub-Usecase: Medikationsplaneintrag im Medikationsplan stornieren
Der GDA möchten einen Medikationsplaneintrag stornieren. Der restliche Plan bleibt unverändert. Hierfür wird der betreffende Medikationsplaneintrag mit dem flag Cancelled versehen.

Relevante Felder (List):
```
AtEmedListMedikationsplan
* status: **current**
* mode: working
* date: Datum der Bearbeitung des Medikationsplans
* source: Veranwortlicher GDA 
* entry[0]:  // 1. Medikationsplaneintrag wird storniert
    * flag: **Cancelled** 
    * date: Datum der Stornierung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den **Planeintrag 1**  // siehe "Medikationsplaneintrag ändern"
* entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
    * flag: **Unchanged** 
    * date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den **Planeintrag 2**  
```
TODO: 
- Beim nächsten Abruf des Medikationsplans ist die stornierte Medikation nicht mehr enthalten ?


#### Sub-Usecase: Medikationsplaneintrag im Medikationsplan absetzen
Der GDA möchten einen Medikationsplaneintrag absetzen. Der restliche Plan bleibt unverändert. Hierfür wird der betreffende Medikationsplaneintrag mit dem flag Ceased versehen.

Relevante Felder (List):
```
AtEmedListMedikationsplan
* status: **current**
* mode: working
* date: Datum der Bearbeitung des Medikationsplans
* source: Veranwortlicher GDA 
* entry[0]:  // 1. Medikationsplaneintrag wird abgesetzt
    * flag: **Ceased** 
    * date: Datum der Absetzung des Medikationsplaneintrags  // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den **Planeintrag 1**  // siehe "Medikationsplaneintrag ändern"
* entry[1]:  // 2. Medikationsplaneintrag bleibt unverändert
    * flag: **Unchanged** 
    * date: Datum der Aufnahme / Änderung des Medikationsplaneintrags // in diesem Fall unterschiedlich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den **Planeintrag 2**  
```
TODO: 
- Beim nächsten Abruf des Medikationsplans ist die abgesetzte Medikation nicht mehr enthalten ?


#### Sub-Usecase: Medikationsplaneintrag abgelaufen 
TODO: 
- Was passiert wenn der Zeitraum in dem die Medikation eingenommen werden soll abläuft? effectiveDosePeriod.end ist erreicht

#### Sub-Usecase: Medikationsplaneintrag durch ELGA-Teilnehmer löschen

TODO: Entspricht dies dem "Medikationsplaneintrag im Medikationsplan stornieren" oder wird hier das Entry aus der Liste entfernt?

#### Sub-Usecase: Medikationsplan vollständig leeren
Der GDA dokumentiert, dass aktuell keine Medikamente eingenommen werden sollen. Hierfür werden alle bestehenden Medikationsplaneinträge abgesetzt (mit dem flag Ceased versehen).

Relevante Felder (List):
```
AtEmedListMedikationsplan
* status: **current**
* mode: working
* date: Datum der Bearbeitung
* source: Veranwortlicher GDA 
* entry[0]: // 1. Medikationsplaneintrag 
    * flag: **Ceased** 
    * date: Datum der Absetzung // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den Planeintrag 1 (siehe "Neuen Medikationsplaneintrag erstellen")
* entry[1]: // 2. Medikationsplaneintrag
    * flag: **Ceased** 
    * date: Datum der Absetzung // in diesem Fall gleich mit dem Datum der Bearbeitung des Medikationsplans
    * item: Referenz auf den Planeintrag 2 (siehe "Neuen Medikationsplaneintrag erstellen")
```
TODO: 
- Beim nächsten Abruf des Medikationsplans ist die abgesetzte Medikation nicht mehr enthalten ?


#### Sub-Usecase: Reihenfolge der Medikationsplaneinträge ändern
Sowohl der GDA, als auch der:die ELGA-Teilnehmer:in können die Reihenfolge der Medikationsplaneinträge ändern. Die Einträge selbst bleiben dabei unverändert.

In folgendem Beispiel wird der ursprünglich 2. Eintrag als 1. gereiht.

Relevante Felder (List):
```
AtEmedListMedikationsplan
* status: **current**
* mode: working
* date: Datum der Änderung der Reihenfolge
* source: Veranwortlicher GDA 
* entry[0]: // 2. Medikationsplaneintrag 
    * flag: **Unchanged** 
    * date: Datum der Aufnahme / Änderung des Medikationsplaneintrags 
    * item: Referenz auf den **Planeintrag 2** 
* entry[1]: // 1. Medikationsplaneintrag
    * flag: **Unchanged** 
    * date: Datum der Aufnahme / Änderung des Medikationsplaneintrags 
    * item: Referenz auf den **Planeintrag 1** 
```

-------

#### Sub-Usecase: Neuen Medikationsplaneintrag erstellen
Ein neues Arzneimittel soll vom Patienten eingenommen werden. Der GDA erstellt hierfür einen Medikationsplaneintrag, der im Medikationsplan referenziert wird.

Relevante Felder (MedicationRequest):
```
AtEmedListMedikationsplan
* identifier: neue Medikationsplaneintrag-ID
* requester: veranwortlicher GDA 
* authoredOn: aktuelles Datum
* status **active**
// * intent: order (fixer Wert)
// * category: Medikationsplaneintrag (fixer Wert)
* reported: Fremdmedikation **Nein**
* medication: Medikation mit PZN oder Magistrale Anwendung // Contained Medication siehe TODO: "Arzneimittel dokumentieren"
// * note: Anmerkungen 
* dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft) // siehe TODO: "Dosierung dokumentieren"
```

TODO: noch offen:
* courseOfTherapyType: Gesamtmuster der Medikamentengabe continuous | acute | seasonal).
* doNotPerform: Gibt an, ob die Verordnung der Medikation untersagt ist (z.B. bei Allergie).

#### Sub-Usecase: Medikationsplaneintrag bearbeiten
**Alle Datenfelder** eines bestehenden Medikationsplaneintrags können geändert werden. Wird das Arzneimittel selbst geändert, sollte vorher geprüft werden, ob es fachlich nicht sinnvoller ist, einen neuen Eintrag zu erstellen und den alten zu stoppen, damit die Änderungen für Patienten und Nachbehandler nachvollziehbar bleiben.

Relevante Felder (MedicationRequest):
```
AtEmedListMedikationsplan
* Medikationsplaneintrag-ID bleibt bestehen
* requester: für die Änderung verantwortlicher GDA 
* authoredOn: aktualisiertes Datum
* status **active**
* {Diverse Änderungen}
* priorPrescription: Referenz auf ersetzten Medikationsplaneintrag
```

#### Sub-Usecase: Medikationsplaneintrag pausieren
Die Therapie ist vorübergehend unterbrochen, die Wiederaufnahme ist vorgesehen.
Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Felder (MedicationRequest):
```
AtEmedListMedikationsplan
* Medikationsplaneintrag-ID bleibt bestehen
* requester: für die Änderung verantwortlicher GDA 
* authoredOn: aktualisiertes Datum
* Status **on-hold**
* priorPrescription: Referenz auf ersetzten Medikationsplaneintrag
```

TODO: statusReason wäre hier sinnvoll, dzt. NP

#### Sub-Usecase: Medikationsplaneintrag beenden
Therapie ist regulär abgeschlossen. Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Felder (MedicationRequest):
```
AtEmedListMedikationsplan
* Medikationsplaneintrag-ID bleibt bestehen
* requester: für die Änderung verantwortlicher GDA 
* authoredOn: aktualisiertes Datum
* Status **completed**
* priorPrescription: Referenz auf ersetzten Medikationsplaneintrag
```

TODO: bei zeitlich befristeter Medikation, kann nach Ablauf des Status automatisch gesetzt werden -> welche Werte in requester und authoredOn?

#### Sub-Usecase: Medikationsplaneintrag abbrechen
Die Therapie wurde begonnen, aber abgebrochen. Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Felder (MedicationRequest):
```
AtEmedListMedikationsplan
* Medikationsplaneintrag-ID bleibt bestehen
* Author, Datum: wird aktualisiert
* Status **stopped**
* priorPrescription: Referenz auf ersetzten Medikationsplaneintrag
```
TODO: statusReason wäre hier sinnvoll, dzt. NP















```

