# HL7.AT.FHIR.ELGA.EMED.R4\UC_DiMe_05 - Medikationsplan lesen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_DiMe_05 - Medikationsplan lesen**

## UC_DiMe_05 - Medikationsplan lesen

## UC_DiMe_05 Medikationsplan lesen

### Beschreibung

**Patienten und behandelnde GDA** können den Medikationsplan einsehen, um sich einen möglichst vollständigen Überblick zu allen verordneten, aktuell einzunehmenden Arzneimitteln und der zugehörigen Einnahmeninformationen zu verschaffen.

**Inhalt des Medikationsplans**

* Der Medikationsplan besteht aus einzelnen Medikationsplaneinträgen
* Angezeigt wird immer die zuletzt gespeicherte Version des Medikationsplans: 
* Medikamente deren Einnahmezeitraum abgelaufen ist, werden per Default ausgeblendet
* zusätzliche Gesamtansicht: alle initial enthaltenen Einträge sind sichtbar, auch wenn diese bereits abgelaufen sind
* noch offen: Hinweise nach erfolgten Löschungen von Medikationsplaneinträgen durch ELGA-Teilnehmer
* frühere Gesamtversionen des Medikationsplans sind über die Versionshistorie einsehbar
 
* Einträge können von GDA in eine bestimmte Reihenfolge gebracht werden, z.B. zur fachlich sinnvollen Gruppierung und besseren Übersicht 
* Lesende Systeme können diese Reihenfolge nutzen, dürfen aber bei Bedarf eine andere Reihung vornehmen
 
* Einzelne Einträgen können Korrekturvermerke (inkl. Freitext) enthalten und müssen dem:der Benutzer:in angezeigt werden, (z.B. bei Signatur- oder Dosisänderungen vgl. UC_DiMe_06 Medikationsplan schreiben)
* Je Medikationsplaneintrag werden folgende Information dargestellt: 
* Verantwortlicher GDA
* Einnahmeinformation
* Zugehörige geplante Abgaben
* Zugehörige durchgeführte Abgaben 
* inkl. Abgaben von Substitutionen durch andere Arzneimittel(/“aut idem“) und
* „Leerabgaben“. (Leerabgaben kennzeichnen, dass eine ursprünglich geplante Abgabe künftig nicht mehr bedient werden wird)
* noch offen: abgelaufene Rezepte
 
 
* Fachlich kann es sinnvoll sein, zusätzlich zum aktuellen Medikationsplan auch Abgaben darzustellen, die nicht auf den aktuellen Medikationsplan referenzieren (z.B. OTC-Abgaben oder Abgaben bei fehlender ELGA-Anbindung verschreibender GDA), die seit der letzten Version des Medikationsplans neu hinzugekommen sind; dadurch erhält der GDA ein möglichst vollständiges Bild der tatsächlichen Medikation
* Filter- und Suchfunktionen können hilfreich sein (v.a. bei Medikationsplänen, die viele Einträge enthalten)

**Ansicht von Vorversionen**

* Alle Vorversionen des Medikationsplans können eingesehen werden 
* Vorversionen können in chronologischer Reihenfolge dargestellt werden (absteigend nach Erstellungsdatum)
* Sofern eine gesamte Version eines Medikationsplans von einem:r ELGA-Teilnehmer:in gelöscht wurde, wird diese nicht mehr in der Historie angezeigt; dies gilt genauso für die zuletzt erfasste Version
* noch offen: Hinweise nach erfolgten Löschungen von Medikationsplanen durch ELGA-Teilnehmer
 
* Die Ansicht einer Vorversion unterscheidet sich in ihrer Darstellungsform nicht von der zuletzt erfassten Ansicht des Medikationsplans, mit der Ausnahme, dass abgelaufene Medikamente nicht ausgeblendet werden. • Sofern der Medikationsplan eines:einer Patient:in häufigen Anpassungen unterliegt, kann es sinnvoll sein, eine Ansicht zu ermöglichen, die den Zustand des Medikationsplans zu einem bestimmten Zeitpunkt in der Vergangenheit ausgibt

**Export des Medikationsplans**

Der Medikationsplan soll für ELGA-Teilnehmer:innen im ELGA-Portal sowohl

* als PDF zum Ausdruck bzw. zur Darstellung in der Druckansicht als auch
* als strukturierte, maschinenlesbare Daten im FHIR-Format bereitgestellt werden.

Der Medikationsplan soll für GDA im jeweiligen Client-System

* als PDF zum Ausdruck bzw. zur Darstellung in der Druckansicht verfügbar sein. Für den PDF-Export stellt die ELGA GmbH ein Softwaremodul zur Verfügung, welches in den jeweiligen Softwaresystemen eingebunden werden kann. Dieses "FHIR2PDF" Softwaremodul stellt die Funktionen zur Verfügung, um den Medikationsplan als PDF zu exportieren. Das exportierte PDF unter Nutzung des "FHIR2PDF" stellt ein signiertes Dokument dar.

**Eigene Ansicht vs. Verwendung des e-Medikation Stylesheets** Zur Anzeige des Medikationsplans wird von der ELGA GmbH ein Stylesheet angeboten, welches in den jeweiligen Softwaresystemen eingebunden werden kann.

* Dieses "e-Medikation Stylesheet" stellt alle notwendigen/vorhanden Informationen dar - Daten zur Person, aktuelle und vergangene Medikationsplaneinträge, geplante und durchgeführte Abgaben, etc. Neben der Verwendung des e-Medikation Stylesheets kann auch eine eigene Ansicht des Medikationsplans in den Softwaresystemen umgesetzt werden.

offen: [für Clientsysteme] Abgleich mit lokal gespeicherter Dauermedikation und Anzeige von Delta zum zuletzt importieren Datenstand des Medikationsplans

### Akteure

* ELGA-Teilnehmer:in bzw. Vertretung
* Obmudsstelle
* Behandelnde GDA: 
* Ärzte/Arztinnen (in Krankenanstalten und im niedergelassenen Bereich, mit und ohne Hausapotheke)
* Apotheke
* Pflegeeinrichtung, Mobile Pflege
 

### Auslöser

* Der Medikationsplan einer/eines ELGA-Teilnehmer:in wird zur Ansicht aufgerufen

### Vorbedingungen

* Akteur ist authentifiziert und autorisiert
* GDA hat einen Behandlungsbezug und ist berechtigt lesend auf die e-Medikation der ELGA-Teilnehmerin/des ELGA-Teilnehmers zuzugreifen

### Nachbedingungen/Ergebnis

* Der Medikationsplan der ELGA-Teilnehmerin/des ELGA-Teilnehmers wird angezeigt
* Zugriff wurde protokolliert

### Abläufe

#### Standardablauf

1. Der Anwender wählt die Option Medikationsplan in der e-Medikation aus

1. Primärsystem bzw. Portal ruft den Medikationsplan von der Zentralen Anwendung e-Medikation ab und bereitet ihn für die Anzeige auf

### Beispiel

### Technische Hinweise

### Relevante Profile

### Relevante Invarianten

### Mögliche Notifications

