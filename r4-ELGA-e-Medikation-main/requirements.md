# HL7.AT.FHIR.ELGA.EMED.R4\Die "e-Medikation" - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Die "e-Medikation"**

## Die "e-Medikation"

### Patient Journey

#### Journey01:

##### Initial: Ressourcen anlegen:

* Patient anlegen: [Patient](Patient-AtEmedExamplePatient01.md)
* Arzt anlegen: [Practitioner](Practitioner-AtEmedExamplePractitioner01.md)
* Apotheke anlegen: [Organization](Organization-AtEmedExampleOrganizationApo01.md)
* Leeren Medikationsplan für einen Patienten anlegen: 
* Beispiel: [Transaction Bundle](Bundle-AtEmedJourneyBundleMedikationsplanTx01.md)
 

#### Journey02:

##### Medikationsplan lesen:

* Leeren Medikationsplan anzeigen: 
* Beseispiel: [Collection Bundle](Bundle-AtEmedJourneyBundleMedikationsplan01.md)
 

##### Medikationsplan schreiben:

* Medikationsplaneinträge hinzufügen: 
* Beispiel [Transaction Bundle](Bundle-AtEmedJourneyBundleMedikationsplanTx02.md)
 

##### Medikationsplan lesen:

* Medikationsplan mit 2 Medikationsplaneinträgen anzeigen: 
* Beispiel: [Collection Bundle](Bundle-AtEmedJourneyBundleMedikationsplan02.md)
 

### Dosierungsbeispiele

Dosierschemata, abgeleitet von FHIR Dosierungen für den digital gestützten Medikationsprozess - Medication IG DE v1.0.3, https://ig.fhir.de/igs/medication/index.html

#### Freitext-Dosierung

#### Schema mit Tageszeiten-Bezug

https://ig.fhir.de/igs/medication/schema-tageszeit.html

Das Schema gibt an, zu welchen Tageszeiten (morgens, mittags, abends, nachts) das Medikament angewandt werden soll. Das Tageszeitenschema wird häufig in Form einer vierstelligen Zahlenfolge dargestellt (z. B. 1-0-1-0).

Varianten: Die Einnahmezeitpunkte sind täglich und bleiben über gesamte Behandlungsdauer gleich.
 Die Einnahmezeitpunkte beziehen sich auf einzelne Tage. Die Behandlungsdauer kann auf ein Datum oder eine Anzahl von Tagen begrenzt werden.

#### Schema mit Uhrzeiten-Bezug

#### Schema mit Wochentags-Bezug

#### Schema für wiederkehrende Intervalle

#### Schema für Kombinationen von Zeitintervallen

#### Schema für Kombinationen von Wochentagen

