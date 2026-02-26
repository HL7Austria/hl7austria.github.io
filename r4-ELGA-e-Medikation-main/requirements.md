# HL7.AT.FHIR.ELGA.EMED.R4\Die "e-Medikation" - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Die "e-Medikation"**

## Die "e-Medikation"

### Patient Journey

Am Beispiel einer fiktiven Patient Journey wird veranschaulicht, wie sich der Medikationsplan eines Patienten mit den zugehörigen geplanten Abgaben und den durchgeführten Abgaben verändern kann.

Anmerkung: Journey-01 ist für e-Medikation vorausgesetzt und wird nur zur Vollständigkeit dokumentiert.

#### Journey-01:

##### Initialisierung: Ressourcen anlegen:

* Personen, Organisationen, Fachanwendung: 
* Patient Max Mustermann: [Patient](Patient-At-Emed-Journey-01-Patient-01.md)
* Ärztin Melanie Musterärztin: [Practitioner 1](Practitioner-At-Emed-Journey-01-Practitioner-01.md)
* Ärztin Hermine Fremdmedikation: [Practitioner 2](Practitioner-At-Emed-Journey-01-Practitioner-02.md)
* Amadeus Apotheke: [Organization](Organization-At-Emed-Journey-01-Organization-Apo.md)
* Fachanwendung e-Medikation: [Device](Device-At-Emed-Journey-01-Device.md)
 
* Leeren Medikationsplan für einen Patienten erzeugen (durch die e-Medikationr Fachanwendung): [Transaction Bundle](Bundle-At-Emed-Journey-01-Bundle-TX-Medikationsplan.md)

#### Journey-02:

Am 28.1.2026 möchte Dr. Musterärztin ihrem Patienten Max Mustermann mehrere Medikamente verschreiben verschreiben. Daher ruft sie seinen Medikationsplan ab, um eine Übersicht über seine gesamte, aktuell von ihm eingenommene Medikation zu erhalten. (Anmerkung: Beim Start von e-Medikation v4 erhalt jeder Patient per Default einen leeren Medikationsplan.)

* Leeren Medikationsplan anzeigen: 
* Beispiel: [Collection Bundle](Bundle-At-Emed-Journey-Bundle-Medikationsplan-01.md)
 

Dr. Musterärztin ergänzt das Medikament Ebetrexat (10 mg, Tabletten) und erklärt dem Patienten worauf er bei der Einnahme zu achten hat. Sie dokumentiert dies in seinem Medikationsplan. Weiters verschreibt sie ihrem Patienten eine Hydrocortison Salbe, die er einmal täglich auftragen soll. Sie speichert den neuen Medikationsplan und erstellt für beide Medikamente eine geplante Abgabe, sodass Herr Mustermann diese in der Apotheke abholen kann.

* Medikationsplaneinträge hinzufügen: 
* Beispiel [Transaction Bundle](Bundle-At-Emed-Journey-Bundle-Medikationsplan-Tx-02.md)
 
* TODO: Abgaben erstellen.

##### Medikationsplan lesen:

* Medikationsplan mit 2 Medikationsplaneinträgen anzeigen: 
* Beispiel: [Collection Bundle](Bundle-At-Emed-Journey-Bundle-Medikationsplan-02.md)
 

### Dosierungsbeispiele

Die Dosierung wir in der MedicationRequest Ressource dokumentiert. Folgende [Varianten](https://ig.fhir.de/igs/medication/index.html) stehen zur Verfügung, deren Einhaltung technisch über Invarianten geprüft werden. Alle Dosierungsbeispiele werden anhand des Medikationsplaneintrags gezeigt.

#### Freitext-Dosierung

Ist es nicht möglich, die Dosierung strukturiert anzugeben, kann diese als Freitext angegeben werden. Hierfür wird nur dosageInstructions.text befüllt. dosageInstruction.timing und dosageInstruction.doseAndRate dürfen nicht befüllt werden.

* Beispiel: [Planeintrag mit Freitextdosierung](MedicationRequest-At-Emed-Example-Mr-Dosierung-Freitext.md)

#### Schema mit Tageszeiten-Bezug

Das Schema gibt an, zu welchen Tageszeiten (morgens, mittags, abends, nachts) das Medikament angewandt werden soll. Das Tageszeitenschema wird häufig in Form einer vierstelligen Zahlenfolge dargestellt (z.B. 1-0-1-0).

##### Varianten

* Die Einnahmezeitpunkte sind täglich und bleiben über gesamte Behandlungsdauer gleich. 
* Beispiel: [Planeintrag mit Tageszeitenschema Einnahme einmal morgens und abends](MedicationRequest-At-Emed-Example-Mr-Dosierung-1010.md)
 
* Die Einnahmezeitpunkte beziehen sich auf einzelne Tage.
* Die Behandlungsdauer kann auf ein Datum oder eine Anzahl von Tagen begrenzt werden.

#### Schema mit Uhrzeiten-Bezug

Das Schema gibt an, zu welcher Uhrzeit das Medikament angewandt werden soll (z.B. 8:00 Uhr).

##### Varianten

* Die Einnahmezeitpunkte bleiben täglich über den gesamten Behandlungszeitraum gleich: 
* [Planeintrag mit 1 Tablette täglich um 8 Uhr morgens](MedicationRequest-At-Emed-Example-Mr-Dosierung-Zeit-1tg.md)
 
* Die Einnahmedauer kann begrenzt werden (z.B Anzahl Tage): 
* Planeintrag mit 1 Tablette täglich um 8 Uhr morgens begrenzt auf 5 Tage
 
* Abhängig von der Uhrzeit wird eine unterschiedliche angewandt; 
* Planteintrag mit 8 Uhr: 2 Stück - 11 Uhr: 1 Stück - 14 Uhr: 1 Stück - 17 Uhr: 1 Stück - 20 Uhr: 1 Stück - 23 Uhr: 1 Stück
 

#### Schema mit Wochentags-Bezug

#### Schema für wiederkehrende Intervalle

#### Schema für Kombinationen von Zeitintervallen

#### Schema für Kombinationen von Wochentagen

