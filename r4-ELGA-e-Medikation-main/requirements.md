# HL7.AT.FHIR.ELGA.EMED.R4\Die 'e-Medikation' - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Die 'e-Medikation'**

## Die 'e-Medikation'

### Der e-Medikationsplan

#### Inhalt des Medikationsplans

* Der Medikationsplan besteht aus einzelnen Medikationsplaneinträgen
* Angezeigt wird immer die zuletzt gespeicherte Version des Medikationsplans: 
* Medikamente deren Einnahmezeitraum abgelaufen ist, werden per Default ausgeblendet
* zusätzliche Gesamtansicht: alle initial enthaltenen Einträge sind sichtbar, auch wenn diese bereits abgelaufen sind
* noch offen: Hinweise nach erfolgten Löschungen von Medikationsplaneinträgen durch ELGA-Teilnehmer
* frühere Gesamtversionen des Medikationsplans sind über die Versionshistorie einsehbar
 
* Einträge können von GDA in eine bestimmte Reihenfolge gebracht werden, z.B. zur fachlich sinnvollen Gruppierung und besseren Übersicht 
* Lesende Systeme können diese Reihenfolge nutzen, dürfen aber bei Bedarf eine andere Reihung vornehmen
 
* Einzelne Einträgen können Korrekturvermerke (inkl. Freitext) enthalten und müssen dem:der Benutzer:in angezeigt werden, (z.B. bei Signatur- oder Dosisänderungen vgl. UC_DiMe_06 Medikationsplan schreiben)
* **Je Medikationsplaneintrag werden folgende Information dargestellt**: 
* Verantwortlicher GDA
* Einnahmeinformation
* Zugehörige geplante Abgaben
* Zugehörige durchgeführte Abgaben 
* inkl. Abgaben von Substitutionen durch andere Arzneimittel und
* „Leerabgaben“. (Leerabgaben kennzeichnen, dass eine ursprünglich geplante Abgabe künftig nicht mehr bedient werden wird)
* noch offen: abgelaufene Rezepte
 
 
* Fachlich kann es sinnvoll sein, zusätzlich zum aktuellen Medikationsplan auch Abgaben darzustellen, die nicht auf den aktuellen Medikationsplan referenzieren (z.B. OTC-Abgaben oder Abgaben bei fehlender ELGA-Anbindung verschreibender GDA), die seit der letzten Version des Medikationsplans neu hinzugekommen sind; dadurch erhält der GDA ein möglichst vollständiges Bild der tatsächlichen Medikation
* Filter- und Suchfunktionen können hilfreich sein (v.a. bei Medikationsplänen, die viele Einträge enthalten)

#### Ansicht von Vorversionen

* Alle Vorversionen des Medikationsplans können eingesehen werden 
* Vorversionen können in chronologischer Reihenfolge dargestellt werden (absteigend nach Erstellungsdatum)
* Sofern eine gesamte Version eines Medikationsplans von einem:r ELGA-Teilnehmer:in gelöscht wurde, wird diese nicht mehr in der Historie angezeigt; dies gilt genauso für die zuletzt erfasste Version
* noch offen: Hinweise nach erfolgten Löschungen von Medikationsplanen durch ELGA-Teilnehmer
 
* Die Ansicht einer Vorversion unterscheidet sich in ihrer Darstellungsform nicht von der zuletzt erfassten Ansicht des Medikationsplans, mit der Ausnahme, dass abgelaufene Medikamente nicht ausgeblendet werden. • Sofern der Medikationsplan eines:einer Patient:in häufigen Anpassungen unterliegt, kann es sinnvoll sein, eine Ansicht zu ermöglichen, die den Zustand des Medikationsplans zu einem bestimmten Zeitpunkt in der Vergangenheit ausgibt

#### Export des Medikationsplans

Der Medikationsplan soll für ELGA-Teilnehmer:innen im ELGA-Portal sowohl

* als PDF zum Ausdruck bzw. zur Darstellung in der Druckansicht als auch
* als strukturierte, maschinenlesbare Daten im FHIR-Format bereitgestellt werden.

Der Medikationsplan soll für GDA im jeweiligen Client-System

* als PDF zum Ausdruck bzw. zur Darstellung in der Druckansicht verfügbar sein.
* Softwaremodul für PDF-Export zur Einbindung im Client-System

#### Eigene Ansicht vs. Verwendung des e-Medikation Stylesheets

Die Anzeige des Medikationsplans kann via Stylesheet erfolgen, welches in den jeweiligen Softwaresystemen eingebunden werden kann.

* Dieses "e-Medikation Stylesheet" stellt alle notwendigen/vorhanden Informationen dar - Daten zur Person, aktuelle und vergangene Medikationsplaneinträge, geplante und durchgeführte Abgaben, etc. Neben der Verwendung des e-Medikation Stylesheets kann auch eine eigene Ansicht des Medikationsplans in den Softwaresystemen umgesetzt werden.

### Medikationsplan erfassen

Ein Medikationsplan besteht aus ein oder mehreren Medikationsplaneinträgen. Jeder Medikationsplaneintrag beinhaltet ein verordnetes Medikament samt Einnahmeinformation, das von der:dem ELGA-Teilnehmer:in aktuell eingenommen werden soll. Zudem enthält der Eintrag die Information, welche:r Ärztin:Arzt diesen medizinisch verantwortet.

Ein Medikationsplan beinhaltet u.a. folgende Informationen:

* Präparat (PZN, Wirkstoff, Dosierung)
* Gebrauchsanweisung (Signatur)
* Einnahmezeitraum (befristet, unbefristet)
* Verordner:in
* Hinweise
* Indikation

Die nachfolgenden Informationen betreffen die Implementierung des Medikationsplans im jeweiligen Client-System.

* Ein Medikationsplan wird initial erstellt (es existieren noch keine Vorversionen): 
* Neue Einträge hinzufügen: 
* Manuelles Erfassen neuer Einträge mittels Angabe aller erforderlichen Informationen
* (optional) Übernahme einer durchgeführten Abgabe ohne zugehörige geplante Abgabe, wobei die Daten vor der Speicherung des Medikationsplaneintrages nochmals verändert werden können
 
 
* Ein bereits bestehender Medikationsplan (zuletzt erfasste Medikationsplanversion) wird als Basis für das Erfassen eines neuen Medikationsplans verwendet: 
* Neue Einträge hinzufügen: 
* Manuelles Erfassen neuer Einträge mittels Angabe aller erforderlichen Informationen
* (optional) Übernahme einer durchgeführten Abgabe ohne zugehöriger geplanten Abgabe, wobei die Daten vor der Speicherung des Medikationsplaneintrages nochmals verändert werden können
 
* Bestehende Einträge beibehalten und ggf. verändern 
* Beibehalten von bestehenden Einträgen der zuletzt erfassten Medikationsplanversion inklusiver aller enthaltenen Korrekturvermerke, wobei die Daten vor der Speicherung des Medikationsplaneintrages nochmals verändert werden können 
* es können nur sichtbare Einträge übernommen werden, siehe UC_eMed_06_Medikationsplan lesen
* enthaltene Korrekturvermerke sollen bei der Erfassung eines neuen Medikationsplans zunächst durch den GDA aufgelöst und in der neuen Version berichtigt werden
 
 
 
* Bestehende Einträge entfernen 
* Der GDA kann bereits bestehende Medikationsplan-Einträge entfernen, im Sinne eines Absetzens bzw. nicht Weiterverordnen in der nächsten Version des Medikationsplans 
* betrifft nur sichtbare Einträge, siehe UC_eMed_06_Medikationsplan lesen
 
* Beim Erfassen einer neuen Medikationsplanversion stehen die abgelaufenen/befristeten Einträge nicht mehr zur Verfügung
* (tbd) Medikationsplan leeren: Soll der neue Medikationsplan keine Medikationsplan-Einträge mehr enthalten – sprich der:die Bürger:in soll derzeit keine Medikation mehr einnehmen – muss ein „leerer“ Medikationsplan geschrieben/gespeichert werden. Das bedeutet, dass alle bisherigen Medikamente aus dem Medikationsplan zu entfernen sind (ggf. sind diese bereits abgelaufen und stehen damit für die neue Version des Medikationsplans schon nicht mehr zur Verfügung).
 
* Reihenfolge 
* Die Reihenfolge der Medikationsplan-Einträge kann definiert/geändert werden. Dies impliziert keine medizinische Verantwortungsübernahme für den jeweiligen umsortierten Eintrag selbst. 
* die durch die zentrale Anwendung gelieferte Reihenfolge der Medikationsplaneinträge kann genutzt werden oder bei Bedarf kann eine andere Reihung vorgenommen werden
 
* (tbd) aus fachlicher Sicht ist es nicht relevant, ob eine Umsortierung eine neue Version des Medikationsplans erfasst oder nicht; mitgeloggt soll diese Änderung dennoch werden 
* für die Speicherung einer neuen Reihenfolge wird technisch eine neue Medikationsplanversion benötigt (Änderung der Reihenfolge hat inhaltliche Auswirkungen)
* soll es möglich sein, dass ein anderer GDA die Reihenfolge nachträglich ändert, obwohl der Medikationsplan nicht von diesem GDA verantwortet wird?
* ggf. reicht es aus, wenn die Reihenfolge nur einmalig beim Erfassen einer neuen Medikationsplanversion definiert werden kann
 
 

*Duplikatsprüfung (?) * sofern sich am Medikationsplan inhaltlich nichts zur Vorversion verändert hat, wird die Speicherung abgelehnt * veränderte Reihenfolge erzeugt eine neue Version (soll das nachträglich durch andere GDA überhaupt möglich sein oder nur beim Erstellen/Verantworten einer neuen Version – s. oben?) * eigene Einträge entfernen und in gleicher Form wieder hinzufügen

### Medikationsplan: Korrekturvermerk setzen

* Der GDA kann Medikationspläne nachträglich mittels Korrekturvermerk korrigieren, sofern ein oder mehrere Einträge fehlerhaft sind. **Wenn sich die Medikation ändert (Medikament absetzen, Änderung der Einnahmeanordnung, etc.), ist dies über eine neue Version abzubilden und nicht als Korrekturvermerk.**
* Ein Korrekturvermerk beinhaltet folgende Aspekte: 
* Im Falle einer Korrektur auf Einzeleintragsebene: 
* zu korrigierender Medikationsplaneintrag wird als inkorrekt markiert
* es wird ein Freitext-Kommentar als Begründung zum inkorrekten Medikationsplaneintrag erfasst
 
* Im Falle einer Korrektur auf Medikationsplanebene (z.B. aufgrund fehlender Einträge) 
* es wird ein Freitext-Kommentar als Hinweis auf die fehlende Angabe erfasst
 
* es besteht die Möglichkeit bereits korrigierte Medikationsplaneinträge mit einem weiteren Korrekturvermerk zu versehen. Dabei wird der jeweilige Korrekturvermerk als inkorrekt markiert.
 

#### Medikationsplan: Gesetzliche Speicherfristen

Medikationspläne werden nach Ablauf der gesetzlichen Speicherfrist gelöscht:

* 120 Jahre nach Geburt
* 30 Jahre nach Sterbedatum

### Die e-Abgabe

#### Anzeige geplanter Abgaben

Die geplanten Abgaben können gelesen werden:

* Inhalte der geplanten Abgaben, siehe UC_eMed_08 Geplante Abgabe schreiben
* Geplante Abgaben können Korrekturvermerke enthalten
* Ausgeblendete geplante Abgaben werden in der Abgabenübersicht nicht angezeigt
* Geplante Abgaben stehen nach einer unwiderruflichen Löschung nicht mehr zur Verfügung

Möglichkeiten zur Darstellung der geplanten Abgaben im Client-System:

* Zu den einzelnen Einträgen der geplanten Abgaben können folgende Informationen ergänzend dargestellt werden: 
* zugehöriger Medikationsplan bzw. Medikationsplaneintrag
* zugehörige durchgeführte Abgaben 
* inkl. Abgaben von Substitutionen durch andere Arzneimittel und „Leerabgaben“ (Leerabgaben sind notwendig, um im Abgabeprozess im Zusammenspiel mit dem Einlösen eines Rezepts abzubilden, dass diese geplante Abgabe auch in Zukunft nicht mehr bedient werden wird.)
 
* abgelaufene Rezepte (?)
 
* Filter- und Suchfunktionen können hilfreich sein (v.a. bei Abgabenlisten, die viele Einträge enthalten)

#### Anzeige durchgeführter Abgaben

Die durchgeführten Abgaben können gelesen werden:

* Inhalte der durchgeführten Abgaben, siehe UC_eMed_09 Durchgeführte Abgabe schreiben
* Durchgeführte Abgaben können Korrekturvermerke enthalten
* Ausgeblendete durchgeführte Abgaben werden in der Abgabenübersicht nicht angezeigt
* Durchgeführte Abgaben stehen nach einer unwiderruflichen Löschung nicht mehr zur Verfügung

Möglichkeiten zur Darstellung der durchgeführten Abgaben im Client-System

* Zu den einzelnen Einträgen der durchgeführten Abgaben können folgende Informationen ergänzend dargestellt werden (sofern vorhanden): 
* zugehöriger Medikationsplan bzw. Medikationsplaneintrag
* zugehörige geplante Abgabe
 
* Filter- und Suchfunktionen können hilfreich sein (v.a. bei Abgabenlisten, die viele Einträge enthalten)

#### Anzeige korrigierter Abgaben (Korrekturvermerk)

Einzelne geplante bzw. durchgeführte Abgaben können Korrekturvermerke (inkl. Freitext) enthalten und müssen dem:der Benutzer:in angezeigt werden.

Möglichkeiten für die Darstellung eines Korrekturvermerks am Client System, siehe UC_eMed_05 Medikationsplan lesen.

#### Export der geplanten und durchgeführten Abgaben

Folgende Exportformate stehen für Benutzer:innen zur Verfügung:

* PDF zum Ausdrucken bzw. zur Darstellung in der Druckansicht
* Strukturierter Datendownload (FHIR)
* Softwaremodul für PDF-Export zur Einbindung im Client-System

##### Eigene Ansicht vs. Verwendung des e-Medikation Stylesheets

Die Anzeige des Medikationsplans kann via Stylesheet erfolgen, welches in den jeweiligen Softwaresystemen eingebunden werden kann. Dieses "e-Medikation Stylesheet" stellt alle notwendigen/vorhanden Informationen dar - Daten zur Person, aktuelle und vergangene Medikationsplaneinträge, geplante und durchgeführte Abgaben, etc. Neben der Verwendung des e-Medikation Stylesheets kann auch eine eigene Ansicht der geplanten/durchgeführten Abgaben in den Softwaresystemen umgesetzt werden.

#### Geplante Abgabe erfassen

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

#### Geplante Abgabe bearbeiten

Geplante Abgaben, die von einem GDA erfasst wurden, können nachträglich von diesem GDA überarbeitet werden.

* Hinweis zur Änderung fremderfasster Abgabeneinträge: Sofern fremderfasste Einträge korrigiert werden müssen, ist dies über einen Korrekturvermerk möglich

Zur Nachvollziehbarkeit erfolgt jede Bearbeitung von geplanten Abgaben über eine Versionierung

* Vorversionen werden nicht gelöscht, sondern als solche markiert

#### Geplante Abgabe: Korrekturvermerk setzen

Der GDA kann geplante Abgaben nachträglich mittels Korrekturvermerk korrigieren, sofern diese fehlerhaft sind.

* Hinweis zur Änderung selbsterfasster Abgabeneinträge: Sofern selbst erfasste Einträge korrigiert werden müssen, ist dies über eine erneute Bearbeitung der geplanten Abgabe möglich

Ein Korrekturvermerk beinhaltet folgende Aspekte:

* zu korrigierende geplante Abgabe wird als inkorrekt markiert
* es wird ein Freitext-Kommentar als Begründung zur inkorrekten geplanten Abgabe erfasst
* es besteht die Möglichkeit bereits korrigierte geplante Abgaben mit einem weiteren Korrekturvermerk zu versehen. Dabei wird der jeweilige Korrekturvermerk als inkorrekt markiert.

#### Daten für die Rezeptierung

Allgemeine Information zur Rezeptierung:

* Abgaben in Apotheken erfolgen auf Basis von Rezepten (e-Rezept, Papierrezept). Rezepte dienen der Logistik und Abrechnung. In der e-Medikation werden Informationen über geplante Abgaben zur Verfügung gestellt, um diese zum Zweck der medizinischen Dokumentation festzuhalten. Ein Eintrag einer geplanten Abgabe in der e-Medikation ermächtigt NICHT zur Abgabe eines Medikaments in einer Apotheke. 
* Sollen auf Basis des aktuellen Medikationsplans Rezepte ausgestellt werden, muss in der e-Medikation parallel zum Rezeptiervorgang je Medikationsplaneintrag (mindestens) eine geplante Abgabe angelegt werden. Medikationsplaneinträge können mehrfach rezeptiert werden, daher auch zu mehrfachen geplanten Abgaben führen. 
* Eine einzelne geplante Abgabe weist eine eindeutige ID auf. Diese ID wird während des Rezeptiervorgangs bei der e-Medikation abgefragt und über das Rezept/e-Rezept transportiert. So kann später die durchgeführte Abgabe mit der geplanten Abgabe verknüpft werden.

Rezeptieren aus dem Medikationsplan im Client-System:

* Notwendigerweise setzt jedes Rezeptieren (Verschreiben) auch einen Eintrag im Medikationsplan voraus (fachliches Verordnen). 
* Daher sollte es einerseits möglich sein, aus dem Medikationsplan ohne Zusatzaufwand ein Rezept zu generieren.
* Andererseits muss seitens der Software-Integration sichergestellt sein, dass vor jedem Rezeptieren der Medikationsplan aktualisiert und in seiner (neuen) Gesamtheit zur Kenntnis genommen wurde.
 
* Bei Teil Opt-out e-Medikation bzw. ELGA Opt-out muss das Rezeptieren auch ohne vorgelagerten Medikationsplaneintrag möglich sein. 

#### Gesetzliche Speicherfristen von geplanten Abgabe

Geplante Abgaben werden nach Ablauf der gesetzlichen Speicherfrist (5 Jahre) gelöscht.

#### Durchgeführte Abgabe erfassen

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

#### Durchgeführte Abgabe bearbeiten

Durchgeführte Abgaben, die von einem GDA erfasst wurden, können nachträglich von diesem GDA überarbeitet werden

* Hinweis zur Änderung fremderfasster Abgabeneinträge: Sofern fremderfasste Einträge korrigiert werden müssen, ist dies über einen Korrekturvermerk möglich

Ein Korrekturvermerk beinhaltet folgende Aspekte:

* zu korrigierende durchgeführte Abgabe wird als inkorrekt markiert
* es wird ein Freitext-Kommentar als Begründung zur inkorrekten durchgeführten Abgabe erfasst
* es besteht die Möglichkeit bereits korrigierte durchgeführte Abgaben mit einem weiteren Korrekturvermerk zu versehen. Dabei wird der jeweilige Korrekturvermerk als inkorrekt markiert.

#### Zuordnung von durchgeführter zu geplanter Abgabe

* Beim Speichern der durchgeführten Abgabe soll eine Zuordnung zur geplanten Abgabe sichergestellt werden (anhand der eindeutigen ID der geplanten Abgabe; Transport über das (e)-Rezept), siehe UC_eMed_08 Geplante Abgabe schreiben
* Ist keine geplante Abgabe vorhanden, muss zur Dokumentation einer durchgeführten Abgabe eine Kontaktbestätigung vorliegen bzw. ausgelöst werden

#### Substitution

* Bei der Abgabe eines von der geplanten Abgabe abweichenden Präparats sind alle Informationen der IST-Abgabe (vgl. UC_eMed_08 Geplante Abgabe schreiben) mit einer Verknüpfung zur ursprünglich geplanten SOLL-Abgabe zu speichern.
* Signatur und Einnahmezeitraum müssen nur im Zusammenhang mit einer Substitution gespeichert werden.

#### Abgabe ohne ELGA-Kontaktbestätigung

Das Speichern einer durchgeführten Abgabe kann auch ohne ELGA-Kontaktbestätigung erfolgen, wenn diese als geplante Abgabe (eindeutige ID) in der e-Medikation gespeichert wurde. Damit wird in den Apotheken ermöglicht, dass keine zusätzliche Identifizierungsmaßnahme des:der Bürger:in notwendig ist, wodurch der administrative Aufwand in Apotheken reduziert und Datenvollständigkeit gewährleistet wird.  

#### Gesetzliche Speicherfristen von durchgeführten Abgaben

Durchgeführte Abgaben werden nach Ablauf der gesetzlichen Speicherfrist (5 Jahre) gelöscht.

