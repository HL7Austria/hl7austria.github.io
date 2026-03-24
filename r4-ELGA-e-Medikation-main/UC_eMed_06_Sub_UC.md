# HL7.AT.FHIR.ELGA.EMED.R4\Sub-Usecases zu UC_eMed_06: Medikationsplan schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](usecases.md)
* **Sub-Usecases zu UC_eMed_06: Medikationsplan schreiben**

## Sub-Usecases zu UC_eMed_06: Medikationsplan schreiben

### Sub-Usecases zu UC_eMed_06: Medikationsplan schreiben

Der **Medikationsplan eines ELGA-Teilnehmers ("List"-Ressource)** beinhaltet Referenzen auf 0..* Medikationsplaneinträge (MedicationRequests), die alle verordneten Arzneimittel und deren Dosierung abbilden. Die Reihenfolge der Listenelemente kann duch den User festgelegt werden. Jedes Listenelement enthält einen Änderungsstatus.

Der **Medikationsplaneintrag ("MedicationRequest"-Ressource)** im Medikationsplan eines ELGA-Teilnehmers ab bildet genau ein Arzneimittel und dessen Dosierung ab und bildet in weiterer Folge die Grundlage zur Erstellung einer geplanten Abgabe.

#### Neuen Medikationsplan erstellen

Wird durch die e-Medikation Fachanwendung umgesetzt.

Relevante Felder (List):

* status: **current**
* mode: working
* date: Datum der Erstellung durch die Fachanwendung
* source: Intitiale Erstellung durch die Fachanwendung
* emptyReason: **notstarted**, noch keine Medikationsplaneinträge erfasst

#### Medikationsplan bearbeiten

Dem leeren Medikationsplan können Medikationsplaneinträge hinzugefügt werden.

Hierfür werden entsprechende Medikationsplaneinträge erstellt und in der List-Ressoce referenziert.

Relevante Felder (List):

* status: **current**
* mode: working
* date: Datum der Bearbeitung
* source: Veranwortlicher GDA
* entry: Für jeden Medikationsplaneintrag ein Eintrag: 
*  

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| flag:**Prescribed**(weitere Status: Unchanged | Changed | Cancelled | Prescribed | Ceased | Suspended) |

 
* date: Datum der Aufnahme / Änderung des Medikationsplaneintrags
* item: Referenz auf den Planeintrag
 

#### Neuen Medikationsplaneintrag erstellen

Neues Arzneimittel soll eingenommen werden:

Relevante Felder (MedicationRequest):

* identifier: neue Medikationsplaneintrag-ID
* requester: veranwortlicher GDA
* authoredOn: aktuelles Datum
* status **active** <!– * intent: order (fixer Wert)
* category: Medikationsplaneintrag (fixer Wert) –>
* reported: Fremdmedikation Ja/Nein
* medication: Medikation mit PZN oder Magistrale Anwendung 
*  

| | |
| :--- | :--- |
| dosageInstruction: Dosierung + Einnahmezeitraum (ab sofort | in der Zukunft) |

 

TODO: noch unkler:

*  

| | | |
| :--- | :--- | :--- |
| courseOfTherapyType: Gesamtmuster der Medikamentengabe continuous | acute | seasonal). |

 
* doNotPerform: Gibt an, ob die Verordnung der Medikation untersagt ist (z.B. bei Allergie).

#### Medikationsplaneintrag bearbeiten

**Alle Datenfelder** eines bestehenden Medikationsplaneintrags können geändert werden. Wird das Arzneimittel selbst geändert, sollte vorher geprüft werden, ob es fachlich nicht sinnvoller ist, einen neuen Eintrag zu erstellen und den alten zu stoppen, damit die Änderungen für Patienten und Nachbehandler nachvollziehbar bleiben.

Relevante Felder (MedicationRequest):

* Medikationsplaneintrag-ID bleibt bestehen
* requester: für die Änderung verantwortlicher GDA
* authoredOn: aktualisiertes Datum
* status **active**
* {Diverse Änderungen}
* priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

##### Medikationsplaneintrag pausieren

Die Therapie ist vorübergehend unterbrochen, die Wiederaufnahme ist vorgesehen. Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Felder (MedicationRequest):

* Medikationsplaneintrag-ID bleibt bestehen
* requester: für die Änderung verantwortlicher GDA
* authoredOn: aktualisiertes Datum
* Status **on-hold**
* priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

TODO: statusReason wäre hier sinnvoll, dzt. NP

##### Medikationsplaneintrag beenden

Therapie ist regulär abgeschlossen. Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Felder:

* Medikationsplaneintrag-ID bleibt bestehen
* requester: für die Änderung verantwortlicher GDA
* authoredOn: aktualisiertes Datum
* Status **completed**
* priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

TODO: bei zeitlich befristeter Medikation, kann nach Ablauf des Status automatisch gesetzt werden -> welche Werte in requester und authoredOn?

##### Medikationsplaneintrag abbrechen

Die Therapie wurde begonnen, aber abgebrochen. Nur der Status des Medikationsplaneintrags wird angepasst:

Relevante Felder (MedicationRequest):

* Medikationsplaneintrag-ID bleibt bestehen
* Author, Datum: wird aktualisiert
* Status **stopped**
* priorPrescription: Referenz auf ersetzten Medikationsplaneintrag

TODO: statusReason wäre hier sinnvoll, dzt. NP

##### Medikationsplaneintrag löschen

Nur durch den ELGA-Teilnehmer zur Umsetzung der Teilnehmerrechte.

