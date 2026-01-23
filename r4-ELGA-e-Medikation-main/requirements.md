# HL7.AT.FHIR.ELGA.EMED.R4\Die "e-Medikation" - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Die "e-Medikation"**

## Die "e-Medikation"

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

### Anzeige geplanter Abgaben (UC_eMed_07_H01)

Die geplanten Abgaben können gelesen werden:

* Inhalte der geplanten Abgaben, siehe UC_eMed_08 Geplante Abgabe schreiben
* Geplante Abgaben können Korrekturvermerke enthalten, siehe UC_eMed_07_H03
* Ausgeblendete geplante Abgaben werden in der Abgabenübersicht nicht angezeigt
* Geplante Abgaben stehen nach einer unwiderruflichen Löschung nicht mehr zur Verfügung

ℹ️ Möglichkeiten zur Darstellung der geplanten Abgaben im Client-System:

*  Zu den einzelnen Einträgen der geplanten Abgaben können folgende Informationen ergänzend dargestellt werden: 
* zugehöriger Medikationsplan bzw. Medikationsplaneintrag 
* zugehörige durchgeführte Abgaben 
* inkl. Abgaben von Substitutionen durch andere Arzneimittel und „Leerabgaben“ (Leerabgaben sind notwendig, um im Abgabeprozess im Zusammenspiel mit dem Einlösen eines Rezepts abzubilden, dass diese geplante Abgabe auch in Zukunft nicht mehr bedient werden wird.) 
 
* abgelaufener Gültigkeitszeitraum einer geplanten Abgabe 
 
* Filter- und Suchfunktionen können hilfreich sein (v.a. bei Abgabenlisten, die viele Einträge enthalten) 

### Anzeige durchgeführter Abgaben (UC_eMed_07_H02)

Die durchgeführten Abgaben können gelesen werden:

* Inhalte der durchgeführten Abgaben, siehe UC_eMed_09 Durchgeführte Abgabe schreiben
* Durchgeführte Abgaben können Korrekturvermerke enthalten
* Ausgeblendete durchgeführte Abgaben werden in der Abgabenübersicht nicht angezeigt
* Durchgeführte Abgaben stehen nach einer unwiderruflichen Löschung nicht mehr zur Verfügung

ℹ️ Möglichkeiten zur Darstellung der geplanten Abgaben im Client-System:

*  Zu den einzelnen Einträgen der durchgeführten Abgaben können folgende Informationen ergänzend dargestellt werden (sofern vorhanden): 
* zugehöriger Medikationsplan bzw. Medikationsplaneintrag 
* zugehörige geplante Abgabe 
 
* Filter- und Suchfunktionen können hilfreich sein (v.a. bei Abgabenlisten, die viele Einträge enthalten) 

### Anzeige korrigierter Abgaben (Korrekturvermerk) (UC_eMed_07_H03)

Einzelne geplante bzw. durchgeführte Abgaben können Korrekturvermerke (inkl. Freitext) enthalten und müssen dem:der Benutzer:in angezeigt werden.

ℹ️ Möglichkeiten zur Darstellung der geplanten Abgaben im Client-System:

siehe UC_eMed_05 Medikationsplan lesen

### Export der geplanten und durchgeführten Abgaben (UC_eMed_07_H04)

Folgende Exportformate stehen für Benutzer:innen zur Verfügung: ELGA-Teilnehmer:innen:

* PDF zum Ausdrucken bzw. zur Darstellung in der Druckansicht
* Strukturierter Datendownload (FHIR) GDA:
* PDF zum Ausdrucken bzw. zur Darstellung in der Druckansicht

ℹ️ Für den PDF-Export stellt die ELGA GmbH ein Softwaremodul zur Verfügung, welches in den jeweiligen Softwaresystemen eingebunden werden kann. Dieses "FHIR2PDF"-Softwaremodul stellt die Funktionen zur Verfügung, um die geplanten/durchgeführten Abgaben als PDF zu exportieren. Das exportierte PDF unter Nutzung des "FHIR2PDF" stellt ein signiertes Dokument dar.

### Abgaben: Eigene Ansicht vs. Verwendung des e-Medikation Stylesheets (UC_eMed_07_H05)

Zur Anzeige der geplanten und durchgeführten Abgaben wird von der ELGA GmbH ein Stylesheet angeboten, welches in den jeweiligen Softwaresystemen eingebunden werden kann. 

* Dieses "e-Medikation Stylesheet" stellt alle notwendigen/vorhanden Informationen dar - Daten zur Person, aktuelle und vergangene Medikationsplaneinträge, geplante und durchgeführte Abgaben, etc.

Neben der Verwendung des e-Medikation Stylesheets kann auch eine eigene Ansicht der geplanten/durchgeführten Abgaben in den Softwaresystemen umgesetzt werden.

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

