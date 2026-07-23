# HL7.AT.FHIR.ELGA.EMED.R4\Patient Journey - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **Patient Journey**

## Patient Journey

Am Beispiel einer fiktiven Patient Journey wird veranschaulicht, wie sich der Medikationsplan eines Patienten mit den zugehörigen **Geplanten Abgaben** und den **Durchgeführten Abgaben** verändern kann.

### 27.2.2026: Arztbesuch

Dr. Musterärztin möchte ihrem Patienten Max Mustermann mehrere Medikamente verschreiben. Daher ruft sie seinen Medikationsplan ab, um eine Übersicht über seine gesamte, aktuell von ihm einzunehmende Medikation zu erhalten [1](#fn:1).

Da für Herrn Mustermann noch nie ein Medikationsplan abgerufen wurde, erstellt die Fachanwendung automatisch einen leeren Medikationsplan. Darin enthalten sind die Informationen zum [Patienten](Patient-At-Emed-Example-Patient-01.md), die erstellende e-Medikation-Fachwanwendung ([Device](Device-At-Emed-Example-Device-01.md)), das Datum der Erstellung und der Grund, warum der Plan noch leer ist (EmptyReason **notstarted**).

* **Leerer Medikationsplan:** 
* [Collection Bundle](Bundle-At-Emed-Journey-01-Bundle-Medikationsplan.md)
 

Dr. Musterärztin ergänzt das Medikament Ebetrexat (10 mg, Tabletten) und erklärt dem Patienten, dass er morgens und abends je eine Tablette einnehmen soll und worauf er bei der Einnahme zu achten hat. Sie dokumentiert dies in seinem Medikationsplan. 
 Weiters verschreibt sie ihrem Patienten eine magistrale Zubereitung einer Cortison-Salbe, die er eine Woche lang abends auftragen soll.
 Sie speichert den neuen Medikationsplan.

* **Medikationsplaneinträge hinzufügen:** 
* [Transaction Bundle](Bundle-At-Emed-Journey-02-Bundle-Tx-Medikationsplan.md)
 

Im neu erstellen Medikationsplan sind die neuen Planeinträge sowie das Datum der Bearbeitung und als verantwortliche Ärztin Dr. Musterärztin ([Practitioner 1](Practitioner-At-Emed-Example-Practitioner-01.md)) ersichtlich.

Dr. Musterärztin erstellt für beide Medikamente eine Geplante Abgabe (Rezeptierung), sodass Herr Mustermann die Medikamente in der Apotheke abholen kann.

* **Geplante Abgaben erstellen:** 
* Beispiel [Medication Request](MedicationRequest-At-Emed-Journey-03-Mr-Geplante-Abgabe.md)
 

### 28.2.2026: Abgabe in der Apotheke, Teil 1

Herr Mustermann sucht eine ([Apotheke](Organization-At-Emed-Example-Organization-Apo-01.md)) auf, um sich die Medikamente abzuholen.
 Der Apotheke identifiziert den Patienten, sieht die geplanten Abgaben in der e-Medikation und kontrolliert, ob im Medikationsplan eventuell wechselwirkungsrelevante Medikation existiert. Da er das Medikament Ebetrexat verfügbar hat, erstellt er eine **Durchgeführte Abgabe**  und händigt dem Patienten das Medikament aus.
 Für die Herstellung der magistralen Zubereitung benötigt der Apotheker Zeit, er erstellt eine **Durchgeführte Abgabe** und kennzeichnet sie entsprechend,  sodass dies in der e-Medikation ersichtlich ist.

* Durchgeführte Abgabe (zu erstellen)  

### 1.3.2026: Abgabe in der Apotheke, Teil 2

Herr Mustermann sucht erneut die Apotheke auf, um die magistrale Zubereitung abzuholen. Der Apotheker kennzeichnet die bereits vorhandene **Durchgeführte Abgabe** als abgeschlossen und übergibt dem Patienten das Medikament.

### 5.3.2026: Abruf Medikationsplan durch Patienten

Ein paar Tage später, ist sich Herr Mustermann nicht mehr sicher, welches Medikament er wie einnehmen soll und ruft in seiner ELGA seinen Medikationsplan auf.

* Medikationsplan mit 2 Medikationsplaneinträgen anzeigen: 
* Beispiel: [Collection Bundle](Bundle-At-Emed-Journey-02-Bundle-Medikationsplan.md)
 

### 10.3.2026: Kontrolltermin

Der Patient erscheint zur Kontrolle bei Dr. Musterärztin, die den aktuellen Medikationsplan abruft.

Das Medikament EBETREXAT soll der Patient noch bis zum 17.3. einnehmen, aber in geringerer Dosis (nur noch 1 Stück morgens). Die Cortisonsalbe ist nicht mehr nötig, daher soll der Patient diese absetzen. Frau Dr. Musterärztin nimmt die entsprechenden Änderungen in den beiden Medikationsplaneinträge vor und speichert den neuen Medikationsplan.

* Medikationsplaneinträge ändern: 
* Beispiel: [Transaction Bundle](Bundle-At-Emed-Journey-05-b-Bundle-Tx-Medikationsplan.md)
 

1. [Sub_UC_eMed_01_01 - Medikationsplan lesen - Plan-Read](Sub_UC_eMed_01.md#plan-read) [↩](#fnref:1)

