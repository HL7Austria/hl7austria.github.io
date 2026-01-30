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

### Relevante ILF (Implementierungsleitfäden) + deren User Storys

**TODO: DRAFT AKL (evtl. nicht mehr aktuell)**

#### UC_eMed_06_S01 Medikationsplan lesen um zu schreiben

1. Vor dem Scheiben eines Medikationsplans muss sichergestellt sein, dass die aktuelle Version gelesen wird.
1. Anwender trägt mindestens alle verpflichtend auszufüllenden Datenfelder für den Medikationsplan ein (sofern noch nicht vorhanden)
1. Im Anschluss wird der gesamte bestehende Medikationsplan durch eine neue, geänderte Version ersetzt. Dabei nimmt der GDA die vorbestehenden Einträge lediglich zur Kenntnis, d.h. er verantwortet nur die Verträglichkeit der neu hinzugefügten Medikation mit der bestehenden.

#### UC_eMed_06_S02 Medikationsplaneintrag editieren (Hinweis für Patienten/Mitbehandler, Indikation und Dosierangaben)

#### UC_eMed_06_S03 Medikationsplaneintrag pausieren / aktivieren / beenden

#### UC_eMed_06_S04 Medikationsplaneintrag stornieren

#### UC_eMed_06_S05 Medikationsplaneintrag nachtragen

Optional kann der GDA aufgrund einer dokumentierten durchgeführten Abgabe Einträge im den Medikationsplan nachtragen (d.h. einen neuen Eintrag erstellen). Es besteht aber keine direkte Referenz zwischen der Abgabe und dem Medikationsplaneintrag (TODO prüfen).

#### UC_eMed_06_S06 Medikationsplaneintrag reihen

Weiters kann der GDA die Reihenfolge der Medikationsplaneinträge im Medikationsplan festlegen. Dies geschieht in der Praxis insbesondere, um eine fachlich sinnvolle Gruppierung von Medikamenten vorzunehmen und dient der Übersichtlichkeit.

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

### Medikationsplan erfassen (UC_eMed_06_H01)

Ein Medikationsplan besteht aus ein oder mehreren Medikationsplaneinträgen. Jeder Medikationsplaneintrag beinhaltet ein verordnetes Medikament samt Einnahmeinformation, das von der:dem ELGA-Teilnehmer:in aktuell eingenommen werden soll. Zudem enthält der Eintrag die Information, welche:r Ärztin:Arzt diesen medizinisch verantwortet.

Ein Medikationsplan beinhaltet u.a. folgende Informationen:

* Präparat (PZN, Wirkstoff, Dosierung)
* Gebrauchsanweisung (Signatur)
* Einnahmezeitraum (befristet, unbefristet)
* Verordner:in
* Hinweise
* Indikation

ℹ️ Die nachfolgenden Informationen betreffen die Implementierung des Medikationsplans im jeweiligen Client-System:

Ein Medikationsplan wird
**initial erstellt**(es existieren noch keine Vorversionen):

* Neue Einträge hinzufügen: 
* Manuelles Erfassen neuer Einträge mittels Angabe aller erforderlichen Informationen 
* (optional) Übernahme einer durchgeführten Abgabe ohne zugehörige geplante Abgabe, wobei die Daten vor der Speicherung des Medikationsplaneintrages nochmals verändert werden können 
 
Ein bereits
**bestehender**Medikationsplan (zuletzt erfasste Medikationsplanversion) wird als Basis für das Erfassen eines neuen Medikationsplans verwendet:

* Neue Einträge hinzufügen: 
* Manuelles Erfassen neuer Einträge mittels Angabe aller erforderlichen Informationen
* (optional) Übernahme einer durchgeführten Abgabe ohne zugehöriger geplanten Abgabe, wobei die Daten vor der Speicherung des Medikationsplaneintrages nochmals verändert werden können Bestehende Einträge beibehalten und ggf. verändern
 
* Bestehende Einträge beibehalten und ggf. verändern: 
* Beibehalten von bestehenden* Einträgen der zuletzt erfassten Medikationsplanversion inklusiver aller enthaltenen Korrekturvermerke**, wobei die Daten vor der Speicherung des Medikationsplaneintrages nochmals verändert werden können 
 
* Bestehende Einträge entfernen: 
* Der GDA kann bereits bestehende Medikationsplan-Einträge entfernen, im Sinne eines Absetzens bzw. nicht Weiterverordnen in der nächsten Version des Medikationsplans
* Beim Erfassen einer neuen Medikationsplanversion stehen die abgelaufenen/befristeten Einträge nicht mehr zur Verfügung 
* (tbd) Medikationsplan leeren: Soll der neue Medikationsplan keine Medikationsplan-Einträge mehr enthalten – sprich der:die ELGA-Teilnehmer:in soll derzeit keine Medikation mehr einnehmen – muss ein „leerer“ Medikationsplan geschrieben/gespeichert werden. Das bedeutet, dass alle bisherigen Medikamente aus dem Medikationsplan zu entfernen sind (ggf. sind diese bereits abgelaufen und stehen damit für die neue Version des Medikationsplans schon nicht mehr zur Verfügung). 
 
* Reihenfolge: 
* Die Reihenfolge* der Medikationsplan-Einträge kann definiert/geändert werden. Dies impliziert keine medizinische Verantwortungsübernahme für den jeweiligen umsortierten Eintrag selbst. 
* (tbd) aus fachlicher Sicht ist es nicht relevant, ob eine Umsortierung eine neue Version des Medikationsplans erfasst oder nicht; mitgeloggt soll diese Änderung dennoch werden 
* für die Speicherung einer neuen Reihenfolge wird technisch eine neue Medikationsplanversion benötigt (Änderung der Reihenfolge hat inhaltliche Auswirkungen)
* soll es möglich sein, dass ein anderer GDA die Reihenfolge nachträglich ändert, obwohl der Medikationsplan nicht von diesem GDA verantwortet wird? 
* ggf. reicht es aus, wenn die Reihenfolge nur einmalig beim Erfassen einer neuen Medikationsplanversion definiert werden kann 
 
 
* Duplikatsprüfung (?) 
* sofern sich am Medikationsplan inhaltlich nichts zur Vorversion verändert hat, wird die Speicherung abgelehnt 
* veränderte Reihenfolge erzeugt eine neue Version (soll das nachträglich durch andere GDA überhaupt möglich sein oder nur beim Erstellen/Verantworten einer neuen Version – s. oben?) 
* eigene Einträge entfernen und in gleicher Form wieder hinzufügen
 
 

### Medikationsplaneinträge bearbeiten (UC_eMed_06_H02)

* Medikationsplaneinträge, die von einem GDA selbst erfasst wurden, können nachträglich von diesem GDA überarbeitet werden

ℹ️ Hinweis zur Änderung fremderfasster Abgabeneinträge:

Sofern fremderfasste Einträge korrigiert werden müssen, ist dies über einen Korrekturvermerk möglich, vgl. H03.

* Zur Nachvollziehbarkeit erfolgt jede Bearbeitung von durchgeführten Abgaben über eine Versionierung 
* Vorversionen werden nicht gelöscht, sondern als solche markiert
 

### Medikationsplan: Korrekturvermerk setzen (UC_eMed_06_H03)

* Der GDA kann Medikationspläne nachträglich mittels Korrekturvermerk korrigieren, sofern ein oder mehrere Einträge fehlerhaft sind.

ℹ️ Hinweis zur Änderung der Medikation:

Wenn sich die Medikation ändert (Medikament absetzen, Änderung der Einnahmeanordnung, etc.), ist dies über eine neue Version abzubilden und nicht als Korrekturvermerk.

* Ein Korrekturvermerk beinhaltet folgende Aspekte: 
* Im Falle einer Korrektur auf Einzeleintragsebene: 
* zu korrigierender Medikationsplaneintrag wird als inkorrekt markiert
* es wird ein Freitext-Kommentar als Begründung zum inkorrekten Medikationsplaneintrag erfasst
 
* Im Falle einer Korrektur auf Medikationsplanebene (z.B. aufgrund fehlender Einträge) 
* es wird ein Freitext-Kommentar als Hinweis auf die fehlende Angabe erfasst
 
* es besteht die Möglichkeit bereits korrigierte Medikationsplaneinträge mit einem weiteren Korrekturvermerk zu versehen. Dabei wird der jeweilige Korrekturvermerk als inkorrekt markiert.
 

### Löschen von Einträgen im Medikationsplan bzw. einer Medikationsplan-Version (UC_eMed_06_H04)

ELGA-Teilnehmer:innen können folgende Löschungen durchführen:

* Unwiderrufliches Löschen einzelner Einträge aus dem Medikationsplan 
* das Löschen aller Einträge eines Medikationsplans führt zu einem leeren Medikationsplan (im Rahmen der Selbstbestimmung trotzdem zulässig)
* Autor der Löschung ist der:die ELGA-Teilnehmer:in bzw. die Fachanwendung, die Verantwortung über den gesamten Medikationsplan inkl. der gelöschten Einträge trägt von diesem Zeitpunkt an nicht mehr der Verfasser des Plans (GDA)
 
* Unwiderrufliches Löschen vollständiger Medikationsplanversionen

Ein reines „Verbergen“ einzelner Medikamente wäre nicht ausreichend, da beim Aktualisieren eines Medikationsplans durch GDA die ausgeblendeten Einträge nicht mehr aufscheinen würden und damit effektiv als gelöscht gelten. Das unwiderrufliche Löschen ist daher die einzige klare und nachhaltige Lösung; ein Ausblenden ist funktional ohnehin mit einer Löschung gleichzusetzen.​

ℹ️ Hinweis zu medizinischen Risiken am Client System anzeigen:

Beim Löschen von relevanten Medikationsdaten wird eigenverantwortlich ein Risiko einer Schlechtbehandlung durch den GDA eingegangen, das aufgrund der Informationsverknappung entsteht.

### Medikationsplan: Gesetzliche Speicherfristen (UC_eMed_06_H05)

Medikationspläne werden nach Ablauf der gesetzlichen Speicherfrist gelöscht:

* 120 Jahre nach Geburt
* 30 Jahre nach Sterbedatum

