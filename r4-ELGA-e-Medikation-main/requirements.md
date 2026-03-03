# HL7.AT.FHIR.ELGA.EMED.R4\Die "e-Medikation" - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Die "e-Medikation"**

## Die "e-Medikation"

### Patient Journey

Am Beispiel einer fiktiven Patient Journey wird veranschaulicht, wie sich der Medikationsplan eines Patienten mit den zugehörigen geplanten Abgaben und den durchgeführten Abgaben verändern kann.

#### Journey-01:

Journey-01 ist für die e-Medikation vorausgesetzt und wird nur zur Vollständigkeit dokumentiert.

##### Initialisierung

* Ressourcen erstellen für: 
* Personen, Organisationen, Fachanwendung: 
* Patient Max Mustermann: [Patient](Patient-At-Emed-Example-Patient-01.md)
* Ärztin Melanie Musterärztin: [Practitioner 1](Practitioner-At-Emed-Example-Practitioner-01.md)
* Ärztin Hermine Fremdmedikation: [Practitioner 2](Practitioner-At-Emed-Example-Practitioner-02.md)
* Amadeus Apotheke: [Organization](Organization-At-Emed-Example-Organization-Apo-01.md)
* Fachanwendung e-Medikation: [Device](Device-At-Emed-Example-Device-01.md)
 
* Leeren Medikationsplan für einen Patienten erzeugen (durch die e-Medikation Fachanwendung): [Transaction Bundle](Bundle-At-Emed-Journey-01-Bundle-Tx-Medikationsplan.md)
 

#### Journey-02:

Am 27.2.2026 möchte Dr. Musterärztin ihrem Patienten Max Mustermann mehrere Medikamente verschreiben verschreiben. Daher ruft sie seinen Medikationsplan ab, um eine Übersicht über seine gesamte, aktuell von ihm eingenommene Medikation zu erhalten. Da für Herrn Mustermann noch kein Medikationsplan erstellt wurde, ist dieser leer.

* Medikationsplan abrufen ("not-started"): 
* Beispiel: [Collection Bundle](Bundle-At-Emed-Journey-01-Bundle-Medikationsplan.md)
 

Dr. Musterärztin ergänzt das Medikament Ebetrexat (10 mg, Tabletten) und erklärt dem Patienten, dass er morgens und abends je eine Tablette einnehmen soll und worauf er bei der Einnahme zu achten hat. Sie dokumentiert dies in seinem Medikationsplan. 
 Weiters verschreibt sie ihrem Patienten eine magistrale Zubereitung einer Cortison-Salbe, die er abends auftragen soll.
 Sie speichert den neuen Medikationsplan und erstellt im nächsten Schritt geplante Abgaben (siehe Journey-03).

* Medikationsplaneinträge hinzufügen: 
* Beispiel [Transaction Bundle](Bundle-At-Emed-Journey-02-Bundle-Tx-Medikationsplan.md)
 

#### Journey-03:

Dr. Musterärztin erstellt für beide Medikamente eine geplante Abgabe, sodass Herr Mustermann diese in der Apotheke abholen kann.

* Geplante Abgaben erstellen: 
* Beispiel: TODO
 

#### Journey-04:

Herr Mustermann sucht eine Apotheke auf, um sich die Medikamente abzuholen.
 Der Apotheke identifiziert den Patienten, sieht die geplanten Abgaben in der e-Medikation und kontrolliert, ob im Medikationsplan eventuell weitere wechselwirkungsrelevante Medikation existiert. Da er das Medikament Ebetrexat verfügbar hat, erstellt er eine durchgeführte Abgabe, stellt den Status der zugehörigen geplanten Abgabe auf completed und händigt dem Patienten das Mediakment aus. 
 Für die Herstellung der magistralen Zubereitung benötigt der Apotheker Zeit, er markiert die geplante Abgabe (TODO: on-hold?), sodass dies in der e-Medikation ersichtlich ist.

* Durchgeführte Abgabe erstellen: 
* Beispiel: TODO
 
* Geplante Abgabe Ebetrexat auf completed setzen: TODO
* Geplante Abgabe Cortinson-Salbe auf on-hold setzen: TODO

TODO: Abholung beenden.

#### Journey-05-a:

Ein paar Tage später, am 5.3.2026, ist sich Herr Mustermann nicht mehr sicher, welches Medikament er wie einnehmen soll und ruf seinene Medikationsplan auf.

* Medikationsplan mit 2 Medikationsplaneinträgen anzeigen: 
* Beispiel: [Collection Bundle](Bundle-At-Emed-Journey-02-Bundle-Medikationsplan.md)
 

Weil er es für sinnvoll hält, ändert er die Reihenfolge der Planeinträge.

* Medikationsplan mit geänderter Reihenfolge anzeigen: 
* Beispiel: [Collection Bundle](Bundle-At-Emed-Journey-05-a-Bundle-Medikationsplan.md)
 

#### Journey-05-b:

Der Patient erscheint am 10.3.2026 zur Kontrolle bei Dr. Musterärztin. 
 Das Medikament EBETREXAT soll der Patient noch bis zum 17.3. einnehmen, aber in geringerer Dosis (nur noch 1 Stück morgens). Die Cortisonsalbe ist nicht mehr nötig, daher soll der Patient diese absetzen. Frau Dr. Musterärztin nimmt die entsprechenden Änderungen vor und speichert den neuen Medikationsplan.

### Dosierungsbeispiele

Die Dosierung wir in der MedicationRequest Ressource dokumentiert. Folgende [Varianten](https://ig.fhir.de/igs/medication/index.html) stehen zur Verfüg ung, deren Einhaltung technisch über Invarianten geprüft werden. Alle Dosierungsbeispiele werden anhand des Medikationsplaneintrags gezeigt.

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

