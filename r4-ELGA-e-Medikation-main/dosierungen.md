# HL7.AT.FHIR.ELGA.EMED.R4\Dosierungen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Die "e-Medikation"**](requirements.md)
* **Dosierungen**

## Dosierungen

### Dosierungsbeispiele

Die Dosierung wird in der MedicationRequest Ressource dokumentiert. Folgende [Varianten](https://ig.fhir.de/igs/medication/index.html) stehen hierbei zur Verfügung, deren Einhaltung technisch über Invarianten geprüft werden. Alle Dosierungsbeispiele werden anhand des Medikationsplaneintrags gezeigt.

#### Freitext-Dosierung

Ist es nicht möglich, die Dosierung strukturiert anzugeben, kann diese als Freitext dokumentiert werden. Hierfür wird nur dosageInstructions.text befüllt. dosageInstruction.timing und dosageInstruction.doseAndRate dürfen nicht befüllt werden.

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

Dieses Schema gibt an, an welchen Wochentagen das Medikament angewandt werden soll.

##### Varianten

* Gleichbleibendes Wochentagsschema für einen unbegrenzten Zeitraum 
*  
* [Planeintrag mit 2 Tabletten am Dienstag und am Donnerstag](MedicationRequest-At-Emed-Example-Mr-Dosierung-Wochentag.md)
 
 
* Gleichbleibendes Wochentagsschema für einen begrenzten Zeitraum (z.B. Tage)
* Abweichende Dosis abhängig vom Wochentag (in einer weiteren Dosage-Instanz).

Ein konkrete Uhrzeit kann nicht angegeben werden.

#### Schema für wiederkehrende Intervalle

#### Schema für Kombinationen von Zeitintervallen

#### Schema für Kombinationen von Wochentagen

