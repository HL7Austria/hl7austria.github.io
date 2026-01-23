# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_08 - Geplante Abgabe schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_eMed_08 - Geplante Abgabe schreiben**

## UC_eMed_08 - Geplante Abgabe schreiben

### Beschreibung

GDA sollen eine geplante Abgabe für eine:n ELGA-Teilnehmer:in erfassen oder korrigieren können, um diese zum Zweck der medizinischen Dokumentation festzuhalten. 
 ELGA-Teilnehmer:in sollen einzelne Abgabeneinträge unwiderruflich löschen können. 

 Details zu "Die e-Abgabe" (ab Kapitel Geplante Abgaben erfassen), siehe "[Die e-Medikation](requirements.md)"

### Akteure

* GDA
* ELGA-Teilnehmer:in
* Vertretung
* OBST

### Auslöser

* GDA möchte auf Basis eines Medikationsplaneintrags eine geplante Abgabe erfassen oder korrigieren

### Vorbediungungen

* Benutzer:in ist authentifiziert und autorisiert
* ELGA-Teilnehmer:in ist eindeutig identifiziert

### Nachbedingungen/Ergebnis

* Die geplante Abgabe wurde ausgehend von einem Medikationsplaneintrag erfasst oder korrigiert
* Zugriff wird protokolliert

### Abläufe

#### Standardablauf: Geplante Abgabe erfassen

1. Benutzer:in startet das Erfassen einer geplanten Abgabe zu einem Medikationsplaneintrag
1. Benutzer:in gibt alle erforderlichen Daten zum Erfassen der geplanten Abgabe ein
1. Benutzer:in speichert die Eingaben

#### Alternativabläufe

##### Alternativablauf 01: selbst erfasste, geplante Abgabe bearbeiten

1. Benutzer:in ruft eine bestehende, selbst erfasste geplante Abgabe auf
1. Benutzer:in verändert zuvor erfasste Angaben
1. Benutzer:in speichert die Änderungen ab

##### Alternativablauf 02: geplante Abgabe korrigieren (Korrekturvermerk)

1. Benutzer:in ruft eine bestehende geplante Abgabe auf
1. Benutzer:in markiert die geplante Abgabe als inkorrekt
1. Benutzer:in ergänzt einen Kommentar zu den Hintergründen der Korrektur Abgrenzungen

##### Alternativablauf 03: geplante Abgabe löschen

1. ELGA-Teilnehmer:in ruft die Liste der geplanten Abgaben auf
1. ELGA-Teilnehmer:in entfernt eine beliebige geplante Abgabe aus der Abgabenliste
1. ELGA-Teilnehmer:in speichert die Änderungen ab

### Abgrenzungen

Die Rezeptierung (e-Rezept, Papierrezept) ist nicht Teil des Systems.

### Sub-Use Cases

### Beispiel

### Technische Hinweise

### Relevante Profile

### Relevante Invarianten

### Mögliche Notifications

