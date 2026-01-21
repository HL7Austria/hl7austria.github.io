# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_09 - Durchgeführte Abgabe schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_eMed_09 - Durchgeführte Abgabe schreiben**

## UC_eMed_09 - Durchgeführte Abgabe schreiben

### Beschreibung

GDA (Apotheke) sollen eine durchgeführte Abgabe für eine:n ELGA-Teilnehmer:in erfassen oder korrigieren können, um diese zum Zweck der medizinischen Dokumentation festzuhalten. 
 Ein:e ELGA-Teilnehmer:in soll einzelne Abgabeneinträge unwiderruflich löschen können. 

 Details zu "Die e-Abgabe" (ab Kapitel Durchgeführte Abgaben erfassen), siehe "[Die e-Medikation](requirements.md)"

### Akteure

* GDA (Apotheke, inkl. Hausapotheke)
* ELGA-Teilnehmer:in
* Vertretung
* OBST

### Auslöser

* Benutzer:in möchte die Abgabe eines Medikaments an eine:n ELGA-Teilnehmer:in dokumentieren

### Vorbediungungen

* Benutzer:in ist authentifiziert und autorisiert
* ELGA-Teilnehmer:in ist eindeutig identifiziert

### Nachbedingungen/Ergebnis

* Die durchgeführte Abgabe wurde (mit oder ohne Bezug auf eine geplante Abgabe) erfasst oder korrigiert
* Zugriff wird protokolliert

### Abläufe

#### Standardablauf: Durchgeführte Abgabe erfassen

1. Benutzer:in startet das Erfassen einer durchgeführten Abgabe mit Bezug zu einer geplanten Abgabe (sofern vorhanden)
1. Benutzer:in gibt alle erforderlichen Daten zum Erfassen der durchgeführten Abgabe ein
1. Benutzer:in speichert die Eingaben

#### Alternativabläufe

##### Alternativablauf 01: selbst erfasste, durchgeführte Abgabe bearbeiten

1. Benutzer:in ruft eine bestehende, selbst erfasste durchgeführte Abgabe auf
1. Benutzer:in verändert zuvor erfasste Angaben
1. Benutzer:in speichert die Änderungen ab

##### Alternativablauf 02: durchgeführte Abgabe korrigieren (Korrekturvermerk)

1. Benutzer:in ruft eine bestehende durchgeführte Abgabe auf
1. Benutzer:in markiert die durchgeführte Abgabe als inkorrekt
1. Benutzer:in ergänzt einen Kommentar zu den Hintergründen der Korrektur

#### Alternativablauf 03: durchgeführte Abgabe löschen

1. ELGA-Teilnehmer:in ruft die Liste der durchgeführten Abgaben auf
1. ELGA-Teilnehmer:in entfernt eine beliebige durchgeführte Abgabe aus der Abgabenliste
1. ELGA-Teilnehmer:in speichert die Änderungen ab

### Abgrenzungen

Die Abgabe von EU-Rezepten ist nicht Teil des Systems.

### Sub-Use Cases

### Beispiel

### Technische Hinweise

### Relevante Profile

### Relevante Invarianten

### Mögliche Notifications

