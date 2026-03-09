# HL7.AT.FHIR.ELGA.EMED.R4\Patient Journey - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Die "e-Medikation"**](requirements.md)
* **Patient Journey**

## Patient Journey

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
 
* Leeren Medikationsplan für einen Patienten erzeugen (durch die e-Medikation Fachanwendung): [Transaction Bundle](Bundle-At-Emed-Journey-01-Bundle-Tx-Medikationsplan.md): 
* Hinweise: Wird durch die Fachanwendung erstellt 
* Datum: Zeitpunkt, zu dem das erste Mal der Medikationsplan abgefragt wird
* Verantwortlich: Fachanwendung.
* EmptyReason: "notstarted"
 
 
 

#### Journey-02:

Am 27.2.2026 möchte Dr. Musterärztin ihrem Patienten Max Mustermann mehrere Medikamente verschreiben. Daher ruft sie seinen Medikationsplan ab, um eine Übersicht über seine gesamte, aktuell von ihm eingenommene Medikation zu erhalten. Da für Herrn Mustermann noch kein Medikationsplan erstellt wurde, ist dieser leer.

* [Visualisierungsbeispiel](at-emed-journey-01-searchset-medikationsplan_s.png)

Dr. Musterärztin ergänzt das Medikament Ebetrexat (10 mg, Tabletten) und erklärt dem Patienten, dass er morgens und abends je eine Tablette einnehmen soll und worauf er bei der Einnahme zu achten hat. Sie dokumentiert dies in seinem Medikationsplan. 
 Weiters verschreibt sie ihrem Patienten eine magistrale Zubereitung einer Cortison-Salbe, die er eine Woche lang abends auftragen soll.
 Sie speichert den neuen Medikationsplan und erstellt im nächsten Schritt geplante Abgaben (siehe Journey-03).

* [Visualisierungsbeispiel](at-emed-journey-02-searchset-medikationsplan-2-eintraege_s.png)

#### Journey-03:

Dr. Musterärztin erstellt für beide Medikamente eine geplante Abgabe, sodass Herr Mustermann diese in der Apotheke abholen kann.

* Geplante Abgaben erstellen: 
* Beispiel [Medication Request](MedicationRequest-At-Emed-Journey-03-Mr-Geplante-Abgabe.md)
 

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
 

Weil er es für sinnvoll hält, ändert er die Reihenfolge der Planeinträge. Die Medikationsplaneinträge ändern sich inhaltlich dadurch nicht.

* [Visualisierungsbeispiel](at-emed-journey-05-a-searchset-medikationsplan-reihenfolge-geaendert_s.png)

#### Journey-05-b:

Der Patient erscheint am 10.3.2026 zur Kontrolle bei Dr. Musterärztin, die den aktuellen Medikationsplan abruft. 
 Das Medikament EBETREXAT soll der Patient noch bis zum 17.3. einnehmen, aber in geringerer Dosis (nur noch 1 Stück morgens). Die Cortisonsalbe ist nicht mehr nötig, daher soll der Patient diese absetzen. Frau Dr. Musterärztin nimmt die entsprechenden Änderungen vor und speichert den neuen Medikationsplan.

* Medikationsplaneinträge ändern: 
* Beispiel: [Transaction Bundle](Bundle-At-Emed-Journey-05-b-Bundle-Tx-Medikationsplan.md)
 
* [Visualisierungsbeispiel](at-emed-journey-05-b-searchset-medikationsplan-bearbeitet_s.png)
* Medikationsplan (Variante gefiltert: nur aktuelle Einträge anzeigen): 
* Beispiel: Todo
 

