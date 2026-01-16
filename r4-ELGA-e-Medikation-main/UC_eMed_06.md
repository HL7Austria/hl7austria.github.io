# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_06 - Medikationsplan schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_eMed_06 - Medikationsplan schreiben**

## UC_eMed_06 - Medikationsplan schreiben

### Beschreibung

GDA sollen einen Medikationsplan für eine:n Bürger:in erfassen oder korrigieren können, um eine Übersicht über die gesamte aktuell einzunehmende Medikation zur Verfügung zu stellen. 

 Details zu "Medikationsplan erfassen", siehe "[Die e-Medikation](requirements.md)"

### Akteure

* Benutzer:in möchte einen Medikationsplan für eine:n Bürger:in erfassen oder korrigieren

### Auslöser

* Benutzer:in möchte einen Medikationsplan für eine:n Bürger:in erfassen oder korrigieren

### Vorbediungungen

* Benutzer:in ist authentifiziert und autorisiert
* Bürger:in ist eindeutig identifiziert

### Nachbedingungen/Ergebnis

* Ein neuer Medikationsplan wurde erfasst oder ein einzelner Eintrag wurde korrigiert.
* Zugriff wird protokolliert.

### Abläufe

#### Standardablauf: Medikationsplan erfassen

1. Benutzer:in startet das Erfassen eines neuen Medikationsplans
1. Im Falle eines manuellen Erfassens (initiales Erfassen sofern noch kein Medikationsplan vorhanden ist):
1. werden neue Einträge hinzugefügt

1. Im Falle eines bestehenden Medikationsplans (der zuletzt erfassten Medikationsplan-Version):
1. können neue Einträge hinzugefügt werden
1. können bestehende Einträge (inkl. vorhandener Korrekturvermerke) übernommen und ggf. verändert werden
1. können bestehende Einträge entfernt werden


1. Benutzer:in definiert die Reihenfolge der Medikationsplaneinträge
1. Benutzer:in bestätigt die Vollständigkeit bzw. Verträglichkeit des ganzheitlichen Mediationsplans und speichert diesen ab

#### Alternativabläufe

##### Alternativablauf 01: Medikationsplan leeren

TBD, ob:

* Aktueller Plan wird in die Historie verschoben (Arzt/Ärztin bestätigt das Absetzen jeglicher Medikation)
* Leeren Plan als neuen Plan speichern
* Auswirkung auf Standardablauf
*  

##### Alternativablauf 02: Medikationsplan korrigieren

 
1. Benutzer:in ruft eine bestehende Medikationsplan-Version auf (eine beliebige Vorversion oder die zuletzt erfasste Version)
1. Benutzer:in markiert einen einzelnen Eintrag im Medikationsplan als inkorrekt oder fügt einen allgemeingültigen Korrekturvermerk am Medikationsplan selbst hinzu
1. Benutzer:in ergänzt einen Kommentar zu den Hintergründen der Korrektur
 

### Sub-Use Cases

#### UC_DiMe_05_1 Medikationsplan lesen um zu schreiben

1. Vor dem Scheiben eines Medikationsplans muss sichergestellt sein, dass die aktuelle Version gelesen wird.
1. Anwender trägt mindestens alle verpflichtend auszufüllenden Datenfelder für den Medikationsplan ein (sofern noch nicht vorhanden)
1. Im Anschluss wird der gesamte bestehende Medikationsplan durch eine neue, geänderte Version ersetzt. Dabei nimmt der GDA die vorbestehenden Einträge lediglich zur Kenntnis, d.h. er verantwortet nur die Verträglichkeit der neu hinzugefügten Medikation mit der bestehenden.

#### UC_DiMe_05_2 Medikationsplaneintrag editieren (Hinweis für Versicherten, Hinweis für Mitbehandler, Indikation und Dosierangaben)

Vorbedingung UC_DiMe_05_1

1. Anwender ändert/ergänzt Medikationsplaneinträge trägt mindestens alle verpflichtend auszufüllenden Datenfelder für den Medikationsplan ein (sofern noch nicht vorhanden)

Der behandelnde **GDA** kann, z.B. aufgrund einer Therapieanpassung, einen oder mehrere bestehende Medikationsplaneinträge ändern (Dosierangaben, Start/Enddatum, stornieren/beenden/pausieren, Indikationsangaben) oder neue Medikationsplaneinträge hinzufügen.

#### UC_DiMe_05_3 Medikationsplaneintrag pausieren / aktivieren / beenden

#### UC_DiMe_05_4 Medikationsplaneintrag stornieren

#### UC_DiMe_05_5 Medikationsplaneintrag nachtragen (Einträge aus „Zusätzlich erfolgte Abgaben“ (ohne Medikationsplanbezug))

Optional kann der GDA Einträge aus der „Zusätzlich erfolgte Abgaben“-Liste (ohne Medikationsplanbezug) in den Medikationsplan übernehmen (d.h. einen neuen Eintrag erstellen).

#### UC_DiMe_05_5 Medikationsplaneintrag reihen

Weiters kann der GDA die Reihenfolge der Medikationsplaneinträge im Medikationsplan festlegen. Dies geschieht in der Praxis insbesondere, um eine fachlich sinnvolle Gruppierung von Medikamenten vorzunehmen und dient der Übersichtlichkeit.

### Beispiel

### Technische Hinweise

### Relevante Profile

### Relevante Invarianten

### Mögliche Notifications

