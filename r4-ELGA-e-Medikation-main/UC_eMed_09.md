# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_09 - Durchgeführte Abgabe schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](usecases.md)
* **UC_eMed_09 - Durchgeführte Abgabe schreiben**

## UC_eMed_09 - Durchgeführte Abgabe schreiben

### Beschreibung

GDA (Apotheke) sollen eine durchgeführte Abgabe für eine:n ELGA-Teilnehmer:in erfassen oder korrigieren können, um diese zum Zweck der medizinischen Dokumentation festzuhalten. 
 Ein:e ELGA-Teilnehmer:in soll einzelne Abgabeneinträge unwiderruflich löschen können.

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

### Relevante ILF (Implementierungsleitfäden) + deren User Storys

#### Beispiel

#### Technische Hinweise

#### Relevante Profile

#### Relevante Invarianten

#### Mögliche Notifications

### Abgrenzungen

Die Abgabe von EU-Rezepten ist nicht Teil des Systems.

### User Interface Beschreibungen

Mockup folgt.

### Hinweise

### Durchgeführte Abgabe bearbeiten (UC_eMed_09_H02)

* Durchgeführte Abgaben, die von einem GDA erfasst wurden, können nachträglich von diesem GDA überarbeitet werden

ℹ️ Hinweis zur Änderung fremderfasster Abgabeneinträge:

Sofern fremderfasste Einträge korrigiert werden müssen, ist dies über einen Korrekturvermerk möglich, vgl. H03

* Zur Nachvollziehbarkeit erfolgt jede Bearbeitung von durchgeführten Abgaben über eine Versionierung 
* Vorversionen werden nicht gelöscht, sondern als solche markiert
 

### Durchgeführte Abgabe: Korrekturvermerk setzen (UC_eMed_09_H03)

* Der GDA kann fremderfasste durchgeführte Abgaben nachträglich mittels Korrekturvermerk korrigieren, sofern diese fehlerhaft sind.

ℹ️ Hinweis zur Änderung selbst erfasster Abgabeneinträge:

Sofern selbst erfasste Einträge korrigiert werden müssen, ist dies über eine erneute Bearbeitung der durchgeführten Abgabe möglich, vgl. UC_eMed_09_H02

* Ein Korrekturvermerk beinhaltet folgende Aspekte: 
* zu korrigierende durchgeführte Abgabe wird als inkorrekt markiert
* es wird ein Freitext-Kommentar als Begründung zur inkorrekten durchgeführten Abgabe erfasst
* es besteht die Möglichkeit bereits korrigierte durchgeführte Abgaben mit einem weiteren Korrekturvermerk zu versehen. Dabei wird der jeweilige Korrekturvermerk als inkorrekt markiert.
 

### Verfügbarkeit von geplanten Abgaben (UC_eMed_09_H04)

ELGA-Teilnehmer:innen können die Verfügbarkeit von durchgeführten Abgaben wie folgt steuern:

* Unwiderrufliches Löschen eines Abgabeeintrags zu einer durchgeführten Medikamentenabgabe über das ELGA-Portal
* Ausblenden (Sperren) eines Abgabeeintrags für alle Gesundheitsdiensteanbieter mit der Option, später die Sichtbarkeit wiederherzustellen

### Zuordnung von durchgeführter zu geplanter Abgabe (UC_eMed_09_H05)

* Sofern in einer Apotheke der QR-Code auf einem Papierrezept gescannt wird, welches der:die ELGA-Teilnehmer vorlegt, bzw. die ID vom e-Rezept abgelesen wird, erhält der GDA Lesezugriff auf die zugehörige geplante Abgabe
* Beim Speichern der durchgeführten Abgabe soll eine Zuordnung zur geplanten Abgabe sichergestellt werden (anhand der eindeutigen ID der geplanten Abgabe; Transport über das (e)-Rezept), siehe UC_eMed_08 Geplante Abgabe schreiben
* Ist keine geplante Abgabe vorhanden, muss zur Dokumentation einer durchgeführten Abgabe eine Kontaktbestätigung vorliegen bzw. ausgelöst werden, vgl. H06

### Substitution (UC_eMed_09_H06)

* Bei der Abgabe eines von der geplanten Abgabe abweichenden Präparats sind alle Informationen der IST-Abgabe (vgl. UC_eMed_08 Geplante Abgabe schreiben) mit einer Verknüpfung zur ursprünglich geplanten SOLL-Abgabe zu speichern.
* Signatur und Einnahmezeitraum müssen nur im Zusammenhang mit einer Substitution gespeichert werden.

### Abgabe ohne ELGA-Kontaktbestätigung (UC_eMed_09_H07)

Das Speichern einer durchgeführten Abgabe kann auch ohne ELGA-Kontaktbestätigung erfolgen, wenn diese als geplante Abgabe (eindeutige ID) in der e-Medikation gespeichert wurde. Damit wird in den Apotheken ermöglicht, dass keine zusätzliche Identifizierungsmaßnahme des:der ELGA-Teilnehmer:in notwendig ist, wodurch der administrative Aufwand in Apotheken reduziert und Datenvollständigkeit gewährleistet wird.  

### Gesetzliche Speicherfristen von durchgeführten Abgaben (UC_eMed_09_H08)

Durchgeführte Abgaben werden nach Ablauf der gesetzlichen Speicherfrist (5 Jahre) gelöscht.

