# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_08 - Geplante Abgabe schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](usecases.md)
* **UC_eMed_08 - Geplante Abgabe schreiben**

## UC_eMed_08 - Geplante Abgabe schreiben

### Beschreibung

GDA sollen eine geplante Abgabe für eine:n ELGA-Teilnehmer:in erfassen oder korrigieren können, um diese zum Zweck der medizinischen Dokumentation festzuhalten. 
 ELGA-Teilnehmer:in sollen einzelne Abgabeneinträge unwiderruflich löschen können.

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

### Relevante ILF (Implementierungsleitfäden) + deren User Storys

#### Beispiel

#### Technische Hinweise

#### Relevante Profile

#### Relevante Invarianten

#### Mögliche Notifications

### Abgrenzungen

Die Rezeptierung (e-Rezept, Papierrezept) ist nicht Teil des Systems.

### User Interface Beschreibungen

Mockup folgt.

### Hinweise

### Geplante Abgabe erfassen (UC_eMed_08_H01)

Es können geplante Abgaben zu einem bestehenden Medikationsplaneintrag erfassen werden:

* je Medikationsplaneintrag können mehrere geplante Abgaben bestehen
* geplante Abgaben können zu Einträgen aus Vorversionen des Medikationsplans bestehen

Eine geplante Abgabe beinhaltet u.a. folgende Informationen:

* Präparat (PZN, Wirkstoff, Dosierung)
* Gebrauchsanweisung (Signatur)
* Einnahmezeitraum (befristet, unbefristet)
* Verordner:in
* Hinweise
* Indikation

### Geplante Abgabe bearbeiten (UC_eMed_08_H02)

* Geplante Abgaben, die von einem GDA erfasst wurden, können nachträglich von diesem GDA überarbeitet werden.

ℹ️ Hinweis zur Änderung fremderfasster Abgabeneinträge:

Sofern fremderfasste Einträge korrigiert werden müssen, ist dies über einen Korrekturvermerk möglich, vgl. H03

* Zur Nachvollziehbarkeit erfolgt jede Bearbeitung von geplanten Abgaben über eine Versionierung 
* Vorversionen werden nicht gelöscht, sondern als solche markiert
 

### Geplante Abgabe: Korrekturvermerk setzen (UC_eMed_08_H03)

* Der GDA kann geplante Abgaben nachträglich mittels Korrekturvermerk korrigieren, sofern diese fehlerhaft sind.

ℹ️ Hinweis zur Änderung selbsterfasster Abgabeneinträge:

Sofern selbst erfasste Einträge korrigiert werden müssen, ist dies über eine erneute Bearbeitung der geplanten Abgabe möglich, vgl. H02

Ein Korrekturvermerk beinhaltet folgende Aspekte:

* zu korrigierende geplante Abgabe wird als inkorrekt markiert
* es wird ein Freitext-Kommentar als Begründung zur inkorrekten geplanten Abgabe erfasst
* es besteht die Möglichkeit bereits korrigierte geplante Abgaben mit einem weiteren Korrekturvermerk zu versehen. Dabei wird der jeweilige Korrekturvermerk als inkorrekt markiert.

### Verfügbarkeit von geplanten Abgaben (UC_eMed_08_H04)

ELGA-Teilnehmer:innen können die Verfügbarkeit von geplanten Abgaben wie folgt steuern:

* Unwiderrufliches Löschen eines Abgabeeintrags zu einer geplanten Medikamentenabgabe über das ELGA-Portal
* Ausblenden (Sperren) eines Abgabeeintrags für alle Gesundheitsdiensteanbieter mit der Option, später die Sichtbarkeit wiederherzustellen

### Daten für die Rezeptierung (UC_eMed_08_H05)

ℹ️ Allgemeine Information zur Rezeptierung:

* Abgaben in Apotheken erfolgen auf Basis von Rezepten (e-Rezept, Papierrezept). Rezepte dienen der Logistik und Abrechnung. In der e-Medikation werden Informationen über geplante Abgaben zur Verfügung gestellt, um diese zum Zweck der medizinischen Dokumentation festzuhalten. Ein Eintrag einer geplanten Abgabe in der e-Medikation ermächtigt NICHT zur Abgabe eines Medikaments in einer Apotheke.
* Sollen auf Basis des aktuellen Medikationsplans Rezepte ausgestellt werden, muss in der e-Medikation parallel zum Rezeptiervorgang je Medikationsplaneintrag (mindestens) eine geplante Abgabe angelegt werden. Medikationsplaneinträge können mehrfach rezeptiert werden, daher auch zu mehrfachen geplanten Abgaben führen. 
* Eine einzelne geplante Abgabe weist eine eindeutige ID auf. Diese ID wird während des Rezeptiervorgangs bei der e-Medikation abgefragt und über das Rezept/e-Rezept transportiert. So kann später die durchgeführte Abgabe mit der geplanten Abgabe verknüpft werden.
* Eine geplante Abgabe kann ein oder mehrere Medikamente beinhalten, dadurch fungiert die Geplante-Abgabe-ID auch als Gruppen-Identifikator für alle enthaltenen verordneten Medikamente. Die Geplante-Abgabe-ID wird auf einem Papierrezept als QR-Code abgedruckt und ist ebenso auf dem e-Rezept zu finden. Über das Einreichen der ID erhält ein GDA Zugriff auf die Inhalte der geplanten Abgabe

ℹ️ Rezeptieren aus dem Medikationsplan im Client-System:

* Notwendigerweise setzt jedes Rezeptieren (Verschreiben) auch einen Eintrag im Medikationsplan voraus (fachliches Verordnen). Daher sollte es einerseits möglich sein, aus dem Medikationsplan ohne Zusatzaufwand ein Rezept zu generieren. 
* Andererseits muss seitens der Software-Integration sichergestellt sein, dass vor jedem Rezeptieren der Medikationsplan aktualisiert und in seiner (neuen) Gesamtheit zur Kenntnis genommen wurde. 
* Bei Teil Opt-out e-Medikation bzw. ELGA Opt-out muss das Rezeptieren auch ohne vorgelagerten Medikationsplaneintrag möglich sein

### Gesetzliche Speicherfristen von geplanten Abgabe (UC_eMed_08_H06)

Geplante Abgaben werden nach Ablauf der gesetzlichen Speicherfrist (5 Jahre) gelöscht.

### Durchgeführte Abgabe erfassen (UC_eMed_09_H01)

Es können durchgeführte Abgaben zu einer geplanten Abgabe (sofern vorhanden) erfassen werden:

* je geplanter Abgabe kann es mehrere durchgeführte Abgaben geben (z.B. Privatrezepte)
* durchgeführte Abgaben von Substitutionen
* Leerabgaben (Leerabgaben kennzeichnen, dass eine ursprünglich geplante Abgabe künftig nicht mehr bedient werden wird)
* durchgeführte Abgaben ohne Bezug zu einer geplanten Abgabe: 
* OTC-Abgaben
* Abgaben verschreibender GDA ohne ELGA-Anbindung
 

Eine durchgeführte Abgabe beinhaltet u.a. folgende Informationen:

* Präparat (PZN, Wirkstoff, Dosierung)
* Gebrauchsanweisung (Signatur)
* Einnahmezeitraum (befristet, unbefristet)
* Abgegeben durch
* Hinweise
* Indikation

