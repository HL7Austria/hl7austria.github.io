# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_09 - Durchgeführte Abgabe schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_eMed_09 - Durchgeführte Abgabe schreiben**

## UC_eMed_09 - Durchgeführte Abgabe schreiben

### Beschreibung

GDA (Apotheke) sollen eine durchgeführte Abgabe für eine:n Bürger:in erfassen oder korrigieren können, um diese zum Zweck der medizinischen Dokumentation festzuhalten.
 

 Details zu "Die e-Abgabe" (ab Kapitel Durchgeführte Abgaben erfassen), siehe "[Die e-Medikation](requirements.md)"

### Akteure

* GDA (Apotheke, inkl. Hausapotheke)

### Auslöser

* Benutzer:in möchte die Abgabe eines Medikaments an eine:n Bürger:in dokumentieren

### Vorbediungungen

* Benutzer:in ist authentifiziert und autorisiert
* Bürger:in ist eindeutig identifiziert

### Nachbedingungen/Ergebnis

* Die durchgeführte Abgabe wurde (mit oder ohne Bezug auf eine geplante Abgabe) erfasst oder korrigiert
* Zugriff wird protokolliert

### Abläufe

#### Standardablauf

* Benutzer:in startet das Erfassen einer durchgeführten Abgabe mit Bezug zu einer geplanten Abgabe (sofern vorhanden)
* Benutzer:in gibt alle erforderlichen Daten zum Erfassen der durchgeführten Abgabe ein
* Benutzer:in speichert die Eingaben

#### Alternativabläufe

##### Alternativablauf 01: selbst erfasste, durchgeführte Abgabe bearbeiten

* Benutzer:in ruft eine bestehende, selbst erfasste durchgeführte Abgabe auf
* Benutzer:in verändert zuvor erfasste Angaben
* Benutzer:in speichert die Änderungen ab

##### Alternativablauf 02: durchgeführte Abgabe korrigieren (Korrekturvermerk)

* Benutzer:in ruft eine bestehende durchgeführte Abgabe auf
* Benutzer:in markiert die durchgeführte Abgabe als inkorrekt
* Benutzer:in ergänzt einen Kommentar zu den Hintergründen der Korrektur

### Abgrenzungen

Die Abgabe von EU-Rezepten ist nicht Teil des Systems.

### Sub-Use Cases

### Beispiel

### Technische Hinweise

### Relevante Profile

### Relevante Invarianten

### Mögliche Notifications

