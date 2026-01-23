# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_06 - Medikationsplan schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_eMed_06 - Medikationsplan schreiben**

## UC_eMed_06 - Medikationsplan schreiben

### Beschreibung

GDA sollen einen Medikationsplan für eine:n ELGA-Teilnehmer:in erfassen oder korrigieren können, um eine Übersicht über die gesamte aktuell einzunehmende Medikation zur Verfügung zu stellen. 

 Details zu "Medikationsplan erfassen", siehe "[Die e-Medikation](requirements.md)"

### Akteure

* GDA
* ELGA-Teilnehmer:in

### Auslöser

* GDA möchte einen Medikationsplan für eine:n ELGA-Teilnehmer:in erfassen oder korrigieren

### Vorbedingungen

* Benutzer:in ist authentifiziert und autorisiert
* ELGA-Teilnehmer:in ist eindeutig identifiziert

### Nachbedingungen/Ergebnis

* Ein neuer Medikationsplan wurde erfasst oder ein einzelner Eintrag wurde korrigiert.
* Zugriff wird protokolliert.

### Abläufe

#### Standardablauf: Medikationsplan erfassen

1. GDA startet das Erfassen eines neuen Medikationsplans
1. Im Falle eines manuellen Erfassens (initiales Erfassen sofern noch kein Medikationsplan vorhanden ist):
1. werden neue Einträge hinzugefügt

1. Im Falle eines bestehenden Medikationsplans (der zuletzt erfassten Medikationsplan-Version):
1. können neue Einträge hinzugefügt werden
1. können bestehende Einträge (inkl. vorhandener Korrekturvermerke) übernommen und ggf. verändert werden
1. können bestehende Einträge entfernt werden


1. GDA definiert die Reihenfolge der Medikationsplaneinträge
1. GDA bestätigt die Vollständigkeit bzw. Verträglichkeit des ganzheitlichen Mediationsplans und speichert diesen ab

#### Alternativabläufe

##### Alternativablauf 01: selbst erfasste Medikationsplaneinträge bearbeiten

1. GDA ruft einen bestehenden, selbst erfassten Medikationsplaneintrag auf
1. GDA verändert zuvor erfasste Angaben
1. GDA speichert die Änderungen ab

##### Alternativablauf 02: Medikationsplan korrigieren

1. GDA ruft eine bestehende Medikationsplanversion auf (eine beliebige Vorversion oder die zuletzt erfasste Version)
1. GDA markiert einen einzelnen Eintrag im Medikationsplan als inkorrekt oder fügt einen allgemeingültigen Korrekturvermerk am Medikationsplan selbst hinzu
1. GDA ergänzt einen Kommentar zu den Hintergründen der Korrektur

##### Alternativablauf 03: einzelne Medikationsplaneinträge löschen

1. ELGA-Teilnehmer:in ruft den zuletzt erstellten Medikationsplan auf
1. ELGA-Teilnehmer:in entfernt einzelne Einträge aus dem Medikationsplan
1. ELGA-Teilnehmer:in speichert die Änderungen ab

##### Alternativablauf 04: Medikationsplanversionen löschen

1. ELGA-Teilnehmer:in ruft eine bestehende Medikationsplanversion auf (eine beliebige Vorversion oder die zuletzt erfasste Version)
1. ELGA-Teilnehmer:in entfernt die aufgerufene Medikationsplanversion vollständig
1. ELGA-Teilnehmer:in speichert die Änderungen ab

##### Alternativablauf 05: Medikationsplan vollständig leeren

TBD, ob:

1. Aktueller Plan wird in die Historie verschoben (Arzt/Ärztin bestätigt das Absetzen jeglicher Medikation)
1. Leeren Plan als neuen Plan speichern
1. Auswirkung auf Standardablauf klären

### Sub-Use Cases

**TODO: DRAFT**

#### UC_eMed_06_S01 Medikationsplan lesen um zu schreiben

1. Vor dem Scheiben eines Medikationsplans muss sichergestellt sein, dass die aktuelle Version gelesen wird.
1. Anwender trägt mindestens alle verpflichtend auszufüllenden Datenfelder für den Medikationsplan ein (sofern noch nicht vorhanden)
1. Im Anschluss wird der gesamte bestehende Medikationsplan durch eine neue, geänderte Version ersetzt. Dabei nimmt der GDA die vorbestehenden Einträge lediglich zur Kenntnis, d.h. er verantwortet nur die Verträglichkeit der neu hinzugefügten Medikation mit der bestehenden.

#### UC_eMed_06_S02 Medikationsplaneintrag editieren (Hinweis für Versicherten, Hinweis für Mitbehandler, Indikation und Dosierangaben)

#### UC_eMed_06_S03 Medikationsplaneintrag pausieren / aktivieren / beenden

#### UC_eMed_06_S04 Medikationsplaneintrag stornieren

#### UC_eMed_06_S05 Medikationsplaneintrag nachtragen (Einträge aus „Zusätzlich erfolgte Abgaben“ (ohne Medikationsplanbezug))

Optional kann der GDA Einträge aus der „Zusätzlich erfolgte Abgaben“-Liste (ohne Medikationsplanbezug) in den Medikationsplan übernehmen (d.h. einen neuen Eintrag erstellen).

#### UC_eMed_06_S06 Medikationsplaneintrag reihen

Weiters kann der GDA die Reihenfolge der Medikationsplaneinträge im Medikationsplan festlegen. Dies geschieht in der Praxis insbesondere, um eine fachlich sinnvolle Gruppierung von Medikamenten vorzunehmen und dient der Übersichtlichkeit.

### Beispiel

### Technische Hinweise

### Relevante Profile

### Relevante Invarianten

### Mögliche Notifications

