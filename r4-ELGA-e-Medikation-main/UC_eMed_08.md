# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_08 - Geplante Abgabe schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_eMed_08 - Geplante Abgabe schreiben**

## UC_eMed_08 - Geplante Abgabe schreiben

### Beschreibung

GDA sollen eine geplante Abgabe für eine:n Bürger:in erfassen oder korrigieren können, um diese zum Zweck der medizinischen Dokumentation festzuhalten. 

 Details zu "Die e-Abgabe" (ab Kapitel Geplante Abgaben erfassen), siehe "[Die e-Medikation](requirements.md)"

### Akteure

* GDA

### Auslöser

* Benutzer:in möchte auf Basis eines Medikationsplaneintrags eine geplante Abgabe erfassen oder korrigieren

### Vorbediungungen

* Benutzer:in ist authentifiziert und autorisiert
* Bürger:in ist eindeutig identifiziert

### Nachbedingungen/Ergebnis

* Die geplante Abgabe wurde zu einem Medikationsplaneintrag erfasst oder korrigiert
* Zugriff wird protokolliert

### Abläufe

#### Standardablauf

* Benutzer:in startet das Erfassen einer geplanten Abgabe zu einem Medikationsplaneintrag
* Benutzer:in gibt alle erforderlichen Daten zum Erfassen der geplanten Abgabe ein
* Benutzer:in speichert die Eingaben

#### Alternativabläufe

##### Alternativablauf 01: selbst erfasste, geplante Abgabe bearbeiten

* Benutzer:in ruft eine bestehende, selbst erfasste geplante Abgabe auf
* Benutzer:in verändert zuvor erfasste Angaben
* Benutzer:in speichert die Änderungen ab

##### Alternativablauf 02: geplante Abgabe korrigieren (Korrekturvermerk)

* Benutzer:in ruft eine bestehende geplante Abgabe auf
* Benutzer:in markiert die geplante Abgabe als inkorrekt
* Benutzer:in ergänzt einen Kommentar zu den Hintergründen der Korrektur Abgrenzungen

### Abgrenzungen

Die Rezeptierung (e-Rezept, Papierrezept) ist nicht Teil des Systems.

### Sub-Use Cases

### Beispiel

### Technische Hinweise

### Relevante Profile

### Relevante Invarianten

### Mögliche Notifications

