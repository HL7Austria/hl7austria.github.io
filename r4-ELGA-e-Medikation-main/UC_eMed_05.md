# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_05 - Medikationsplan lesen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_eMed_05 - Medikationsplan lesen**

## UC_eMed_05 - Medikationsplan lesen

### Beschreibung

GDA sollen in den Medikationsplan von ELGA-Teilnehmer:innen mit Behandlungsbezug einsehen können, um sich einen Überblick zu allen verordneten Medikamenten und der zugehörigen Einnahmeninformation zu verschaffen. 
 Ein:e ELGA-Teilnehmer:in soll ihren Medikationsplan einsehen können, um sich mit der vorgesehenen Einnahmeanordnung vertraut zu machen.

 Details zu Inhalten des Medikationsplans, siehe "[Die e-Medikation: UC_eMed_05_H01 bis UC_eMed_05_H04](requirements.md)"

### Akteure

* GDA
* ELGA-Teilnehmer:in
* Vertretung
* OBST

### Auslöser

* Der Medikationsplan eines:einer ELGA-Teilnehmer:in soll zur Ansicht aufgerufen werden

### Vorbedingungen

* Benutzer:in ist authentifiziert und autorisiert
* ELGA-Teilnehmer:in ist eindeutig identifiziert

### Nachbedingungen/Ergebnis

* Der Medikationsplan des:der ELGA-Teilnehmer:in wird angezeigt
* Zugriff wird protokolliert

### Abläufe

#### Standardablauf

1. Benutzer:in ruft den Medikationsplan auf
1. Der Medikationsplan des:der ELGA-Teilnehmer:in wird angezeigt

#### Alternativabläufe

Keine

### Relevante ILF (Implementierungsleitfäden) + deren User Storys

#### Beispiel

#### Technische Hinweise

#### Relevante Profile

#### Relevante Invarianten

#### Mögliche Notifications

### Abgrenzungen

Keine.

### User Interface Beschreibungen

Mockup folgt.

### Hinweise

### Inhalt des Medikationsplans (UC_eMed_05_H01)

Der Medikationsplan kann gelesen werden:

* Der Medikationsplan besteht aus einzelnen Einträgen
* Der Medikationsplan wird in der zuletzt erfassten Version angezeigt: 
* Ist der Einnahmezeitraum eines Medikaments abgelaufen, wird der Eintrag ausgeblendet 
* in der Versionshistorie kann die Version inkl. der abgelaufenen Einträge eingesehen werden
* Von ELGA-Teilnehmer:innen gelöschte Einträge werden in der Medikationsplanansicht nicht mehr angezeigt
 
 
* Die Einträge des Medikationsplans enthalten eine durch den GDA festgelegte Reihenfolge, z.B. zur fachlich sinnvollen Gruppierung und besseren Übersicht

ℹ️ Reihenfolge von Medikationsplaneinträgen im Client-System:

Lesende Systeme können die durch die zentrale Anwendung gelieferte Reihenfolge der Medikationsplaneinträge nutzen und bei Bedarf eine andere Reihung vornehmen

* Einzelne Einträge können Korrekturvermerke (inkl. Freitext) enthalten und müssen dem:der Benutzer:in angezeigt werden

ℹ️ Möglichkeiten für die Darstellung eines Korrekturvermerks im Client-System:

* Overlay mit korrigierter Angabe 
* Ausgrauen der bisherigen Angabe
* Durchstreichen der bisherigen Angabe 
* etc. 

ℹ️ Möglichkeiten zur Darstellung des Medikationsplans im Client-System:

Zu einzelnen Medikationsplaneinträgen können folgende Informationen zu geplanten und durchgeführten Abgaben angezeigt werden:
* zugehörige geplante Abgaben
* zugehörige durchgeführte Abgaben 
* für Patient:innen ist insbesondere die Anzeige des zuletzt abgegebenen Präparats je Eintrag relevant, da dieses aktuell eingenommen werden soll
* Abgaben von Substitutionen
* Leerabgaben (Leerabgaben kennzeichnen, dass eine ursprünglich geplante Abgabe künftig nicht mehr bedient werden wird)
 
* Fachlich kann es sinnvoll sein, zusätzlich zum zuletzt erstellten Medikationsplan auch Abgaben darzustellen, die nicht auf den zuletzt erstellten Medikationsplan referenzieren (z.B. OTC-Abgaben oder Abgaben verschreibender GDA ohne ELGA-Anbindung) 
* relevant sind dabei nur die zusätzlich abgegebenen Medikamente innerhalb des Zeitraums von der Erstellung der Medikationsplanversion bis zur Erstellung der nachfolgenden Medikationsplanversion
* GDA erhalten dadurch ein möglichst vollständiges Bild der tatsächlichen Medikation
 

### Ansicht von Vorversionen (UC_eMed_05_H02)

Alle erfassten Vorversionen des Medikationsplans (in der Vergangenheit von GDA erfasst) können eingesehen werden

* Sofern eine gesamte Version eines Medikationsplans von einem:r ELGA-Teilnehmer:in gelöscht wurde, wird diese nicht mehr in der Historie angezeigt (dies gilt genauso für die zuletzt erfasste Version)

ℹ️ Darstellung der Vorversionen im Client-System:

Vorversionen können in chronologischer Reihenfolge dargestellt werden (absteigend nach Erstellungsdatum; „jüngster“ Medikationsplan zuerst)

* Die Ansicht einer Vorversion unterscheidet sich in ihrer Darstellungsform nicht von der zuletzt erfassten Ansicht des Medikationsplans 
* In einer Vorversion werden abgelaufene Medikamente zur Nachvollziehbarkeit immer angezeigt und nicht ausgeblendet
 

### Export des Medikationsplans (UC_eMed_05_H03)

Folgende Exportformate stehen für Benutzer:innen zur Verfügung:

* ELGA-Teilnehmer:in: 
* PDF zum Ausdrucken bzw. zur Darstellung in der Druckansicht
* Strukturierter Datendownload (FHIR)
 
* GDA: 
* PDF zum Ausdrucken bzw. zur Darstellung in der Druckansicht
 

ℹ️ Softwaremodul für PDF-Export zur Einbindung im Client-System:

Für den PDF-Export stellt die ELGA GmbH ein Softwaremodul zur Verfügung, welches in den jeweiligen Softwaresystemen eingebunden werden kann. Dieses "FHIR2PDF"-Softwaremodul stellt die Funktionen zur Verfügung, um den Medikationsplan als PDF zu exportieren. Das exportierte PDF unter Nutzung des "FHIR2PDF" stellt ein signiertes Dokument dar.

### Medikationsplans: Eigene Ansicht vs. Verwendung des e-Medikation Stylesheets (UC_eMed_05_H04)

Zur Anzeige des Medikationsplans wird von der ELGA GmbH ein Stylesheet angeboten, welches in den jeweiligen Softwaresystemen eingebunden werden kann. 

* Dieses "e-Medikation Stylesheet" stellt alle notwendigen/vorhanden Informationen dar - Daten zur Person, aktuelle und vergangene Medikationsplaneinträge, geplante und durchgeführte Abgaben, etc.

Neben der Verwendung des e-Medikation Stylesheets kann auch eine eigene Ansicht des Medikationsplans in den Softwaresystemen umgesetzt werden.

ℹ️ Darstellung des Deltas zum zuletzt importierten Datenstand im Client-System:

Für Client-Systeme kann es sinnvoll sein, eine Ansicht für GDA zu schaffen, aus der hervorgeht, welche Änderungen am Medikationsplan des:der ELGA-Teilnehmer:in seit dem letzten Behandlungskontakt vorgenommen wurden. Durch einen Abgleich der lokal gespeicherten Dauermedikation mit den gelieferten Medikationsdaten aus der zentralen Anwendung kann dem:der Benutzer:in das Delta übersichtlich dargestellt werden.

