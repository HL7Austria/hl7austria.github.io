# HL7.AT.FHIR.ELGA.EDIAG.R4\Diagnosen lesen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Diagnosen lesen**

## Diagnosen lesen

## Dokumentinformationen

| | |
| :--- | :--- |
| **Dokumentenstatus** | **Entwurf** |
| **Dokumentautor** | Daniel Ehinger |
| **Produkte** | - e-Diagnose Fachanwendung- BeS (ELGA Berechtigungssystem)- GDA-Clientsysteme- ELGA-Teilnehmersysteme- Stylesheet |
| **JIRA Epic** | – |

# Beschreibung

Als **GDA** möchte ich alle relevanten Informationen zu bereits gestellten Diagnosen, Prozeduren, Allergien & Intoleranzen von ELGA-Teilnehmer:innen mit Behandlungsbezug einsehen können.

Als **ELGA-Teilnehmer:in** möchte ich meine relevanten Informationen zu gestellten Diagnosen, Prozeduren, Allergien & Intoleranzen einsehen können.

# Akteure

* GDA
* ELGA-Teilnehmer:in
* Vertretung
* ELGA und e-Health Supporteinrichtungen

# Auslöser

* Die Summary-Liste(n) sowie die Gesamtansichten der e-Diagnose eines/einer ELGA-Teilnehmer:in sollen zur Ansicht aufgerufen werden.

# Vorbedingungen

* Akteur:in ist authentifiziert und autorisiert – siehe [UC_eDiag_00.01 Authentifizierung und Autorisierung.docx](https://elgaat.sharepoint.com/:w:/r/sites/EDI/Freigegebene%20Dokumente/Use%20Cases_Draft/UC_eDiag_01%20Authentifizierung%20und%20Autorisierung.docx?d=w942685641d6744f5a5d5f118aebe3c09&csf=1&web=1&e=ynmmOC)
* ELGA-Teilnehmer:in ist eindeutig identifiziert – siehe [UC_eDiag_00.02 ELGA-TeilnehmerIn identifizieren.docx](https://elgaat.sharepoint.com/:w:/r/sites/EDI/Freigegebene%20Dokumente/Use%20Cases_Draft/UC_eDiag_02%20ELGA-TeilnehmerIn%20identifizieren.docx?d=w8a0f5c14fbd24bd9bc6b116106f4441d&csf=1&web=1&e=9ykWf7)
* Es liegt kein Opt-Out des:der ELGA-Teilnehmer:in vor – siehe [UC_eDiag_03 Teilnehmerrechte ausüben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_03%20Teilnehmerrechte%20ausüben.docx)
* Bei Zugriff durch GDA: GDA ist für Zugriff nicht gesperrt – siehe [UC_eDiag_03 Teilnehmerrechte ausüben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_03%20Teilnehmerrechte%20ausüben.docx)

# Nachbedingungen/Ergebnis

* Die Summary-Listen des:der ELGA-Teilnehmer:in werden angezeigt.
* Die Gesamtansichten des:der ELGA-Teilnehmer:in werden angezeigt.
* Zugriff wurde protokolliert, vgl. [UC_eDiag_04 Zugriffe protokollieren.docx](https://elgaat.sharepoint.com/:w:/r/sites/EDI/Freigegebene%20Dokumente/Use%20Cases_Draft/UC_eDiag_04%20Zugriffe%20protokollieren.docx?d=w046d7397b98f4dae955fed45fbf61417&csf=1&web=1&e=v8Tnha)

# Abläufe

## Standardablauf – Summary-Liste aufrufen

1. Akteur:in ruft die Summary-Liste auf.
1. Die entsprechende Summary-Liste des:der ELGA-Teilnehmer:in wird angezeigt.

## Alternativabläufe

### Alternativablauf 01: Gesamtansicht aller Einträge aufrufen

1. Akteur:in ruft die Gesamtansicht aller Einträge auf.
1. Alle Einträge werden ausgegeben.

# Relevante ILF (Implementierungsleitfäden) + deren User Storys

* HL7 ELGA e-Diagnose (R4)
 https://build.fhir.org/ig/HL7Austria/ELGA-e-Diagnose-R4/

# Hinweise

## H01: Summary-Liste anzeigen

Je Datenkategorie der e-Diagnose (Diagnose, Prozedur oder Allergie & Intoleranz) kann die Summary-Liste gelesen werden:

* In der Summary-Liste werden nur jene Einträge angezeigt, die durch einen GDA der Liste hinzugefügt wurden – siehe [UC_eDiag_02 Diagnosen schreiben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_02%20Diagnosen%20schreiben.docx)
* Inhalte der jeweiligen Summary-Liste: siehe [UC_eDiag_02 Diagnosen schreiben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_02%20Diagnosen%20schreiben.docx)
* Die Summary-Liste wird in der zuletzt erfassten Version angezeigt.
* Vorversionen der Summary-Liste können ebenfalls eingesehen werden – siehe **H03**.
* Nach Abruf der Summary-Liste kann der historische Verlauf eines einzelnen Eintrags eingesehen werden – siehe **H04**.
* Die Reihenfolge der Einträge innerhalb der Summary-Liste kann manuell durch einen erfassenden GDA festgelegt werden – siehe [UC_eDiag_02 Diagnosen schreiben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_02%20Diagnosen%20schreiben.docx)
* Einträge, die von ELGA-Teilnehmer:innen unwiderruflich gelöscht wurden, werden in der e-Diagnose nicht mehr angezeigt – siehe [UC_eDiag_03 Teilnehmerrechte ausüben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_03%20Teilnehmerrechte%20ausüben.docx)
* Einzelne Einträge können durch GDA als „storniert“ (= z. B. fälschlich eingetragen oder korrigiert) gekennzeichnet sein. Diese Einträge müssen als solche dargestellt werden.

> **Hinweis für die Umsetzung in Clientsystemen****Reihenfolge der Einträge innerhalb einer Summary-Liste im GDA-Dokumentationssystem darstellen**Die in der Summary-Liste gespeicherte gemeinsame Reihung der Einträge kann für die Anzeige verwendet werden. Eine eigene lokale Reihung der Liste kann für die Anzeige der Liste bei Bedarf alternativ vorgenommen werden. In diesem Fall muss jedoch sichergestellt werden, dass die lokale Reihung nicht wieder in die Fachanwendung zurückgespeichert wird.

> **Hinweis für die Umsetzung in Clientsystemen****Darstellung von stornierten Einträgen**Wurde ein Eintrag in der Summary-Liste durch einen GDA storniert, soll dieser als solcher zur Anzeige gebracht werden. Beispielsweise kann dies mittels visueller Hervorhebung der entsprechenden Einträge passieren – zum Beispiel durch Anzeige als durchgestrichener Eintrag.Alternativ kann die Darstellung auch in Form einer Aus-/Einblendung der stornierten Einträge umgesetzt werden.In Ergänzung können der GDA, der die Stornierung durchgeführt hat, der Stornierungszeitpunkt und, falls vorhanden, der Stornovermerk dargestellt werden, etwa mit einem Pop-up-Fenster.

## H02: Gesamtansicht aller Einträge anzeigen

Neben der Summary-Liste kann auch eine Gesamtansicht der in der e-Diagnose erfassten Einträge abgerufen werden. In der Gesamtansicht können alle Einträge der entsprechenden Datenkategorie (Diagnose, Prozeduren, Allergien & Intoleranzen) angezeigt werden, unabhängig davon, ob sie Teil der Summary-Liste sind oder nicht:

* Die Gesamtansicht ist ein Abruf der existierenden Einträge in der e-Diagnose. Eine Versionshistorie der Gesamtansicht gibt es **nicht**.
* Nach Abruf der Gesamtansicht kann der historische Verlauf eines einzelnen Eintrags abgerufen werden – siehe **H04**.
* Die Gesamtansicht ist **nicht** manuell reihbar.
* Einträge, die von ELGA-Teilnehmer:innen unwiderruflich gelöscht wurden, werden in der e-Diagnose nicht angezeigt – siehe [UC_eDiag_03 Teilnehmerrechte ausüben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_03%20Teilnehmerrechte%20ausüben.docx)
* Einzelne Einträge können durch GDA als „storniert“ (= z. B. fälschlich eingetragen oder korrigiert) gekennzeichnet sein. Diese Einträge müssen als solche dargestellt werden.

> **Hinweis für die Umsetzung in Clientsystemen****Filterung von Einträgen in der Gesamtansicht**Nach Abruf der Einträge der Gesamtansicht kann eine eigene Filterung der Einträge durch Clientsysteme vorgenommen werden. Denkbare Filteroptionen sind:
* Erfassungszeitraum
* SNOMED CT Code
* Teil der Summary-Liste ja/nein

* Inhalte der einzelnen Einträge – siehe [UC_eDiag_02 Diagnosen schreiben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_02%20Diagnosen%20schreiben.docx)

## H03: Ansicht von Vorversionen der Summary-Liste

Alle erfassten Vorversionen der jeweiligen Summary-Listen können eingesehen werden.

* Versionen von Summary-Listen entstehen durch die Bearbeitung der Liste durch GDA (siehe [UC_eDiag_02 Diagnosen schreiben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_02%20Diagnosen%20schreiben.docx)) oder durch das Löschen einzelner Einträge der Liste durch ELGA-Teilnehmer:innen (siehe [UC_eDiag_03 Teilnehmerrechte ausüben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_03%20Teilnehmerrechte%20ausüben.docx)).
* Sofern eine gesamte Version einer Summary-Liste von einem:einer ELGA-Teilnehmer:in gelöscht wurde (siehe [UC_eDiag_03 Teilnehmerrechte ausüben](https://elgaat.sharepoint.com/sites/EDI/Dokumente%20extern/Use%20Cases_Draft/UC_eDiag_03%20Teilnehmerrechte%20ausüben.docx)), wird diese nicht mehr in der Historie angezeigt.

> **Hinweis für die Umsetzung in Clientsystemen****Darstellung von Vorversionen**Vorversionen der Summary-Listen können in chronologischer Reihenfolge dargestellt werden – absteigend nach Erstellungsdatum, d. h. die jüngste Version zuerst.Die Ansicht einer Vorversion muss sich in ihrer Darstellungsform von der zuletzt erfassten und somit aktuell gültigen Version der Summary-Liste unterscheiden – in etwa durch farbliche Hervorhebung oder Kennzeichnung der alten Version.

> **Hinweis für die Umsetzung in Clientsystemen****Darstellung von stornierten Einträgen**Wurde ein Eintrag in der Summary-Liste durch einen GDA storniert, soll dieser als solcher zur Anzeige gebracht werden. Beispielsweise kann dies mittels visueller Hervorhebung der entsprechenden Einträge passieren – zum Beispiel durch Anzeige als durchgestrichener Eintrag.In Ergänzung müssen der GDA, der die Stornierung durchgeführt hat, der Stornierungszeitpunkt und, falls vorhanden, der Stornovermerk dargestellt werden, etwa mit einem Pop-up-Fenster.

> **Hinweis für die Umsetzung in Clientsystemen****Darstellung des Deltas seit letztem Abgleich mit lokalem Dokumentationssystem Behandlungskontakt**Für GDA kann eine Ansicht sinnvoll sein, aus der hervorgeht, welche Änderungen an der Summary-Liste seit dem letzten Abgleich der Summary-Liste mit dem Dokumentationssystem des GDA vorgenommen wurden.

> **Hinweis für die Umsetzung in Clientsystemen****Platzhalter:** Hinweise zu einer möglichen Datenkonsolidierungslogik hier einfügen.

## H04: Ansicht zusammenhängender Einträge (Gesamtansicht oder Summary-Liste)

Einträge in der e-Diagnose können miteinander verknüpft werden, um beispielsweise den historischen Verlauf einer Behandlung bzw. eines Krankheitsverlaufs abzubilden.

Ausgehend von der Summary-Liste oder der Gesamtansicht können zusammenhängende Einträge der e-Diagnose angezeigt werden.

> **Hinweis für die Umsetzung in Clientsystemen****Darstellung des historischen Verlaufs eines Eintrags**Der historische Verlauf eines Eintrags kann mithilfe des Business-Identifiers dargestellt werden. Damit der historische Verlauf eines Eintrags lückenlos dargestellt werden kann, müssen vorab alle Einträge der e-Diagnose abgerufen werden.

## H05: Export von Diagnosen

Folgende Formate stehen für Benutzer:innen zum Export der Summary-Liste oder der Gesamtansicht zur Verfügung:

| | | |
| :--- | :--- | :--- |
| PDF zum Ausdrucken bzw. zur Darstellung in der Druckansicht | x | x |
| Strukturierter Datendownload (FHIR)Das Datenformat wird ohne die bPK-GH des:der ELGA-Teilnehmer:in zur Verfügung gestellt. | x |   |

> **Hinweis für die Umsetzung in Clientsystemen****PDF-Export der Liste der relevanten Einträge bzw. Gesamtansicht**Für die PDF-Darstellung stellt die ELGA GmbH ein Softwaremodul zur Verfügung, welches eingebunden werden kann. Dieses „FHIR2PDF“-Softwaremodul stellt die Funktionen zur Verfügung, um die Summary-Liste bzw. die Gesamtansicht als PDF zu exportieren. Grundlage dafür ist das strukturierte FHIR-Dokument.Das damit exportierte PDF stellt ein durch das einbindende System signiertes Dokument dar.

## H06: Eigene Ansicht vs. Verwendung des e-Diagnose Stylesheets

> **Hinweis für die Umsetzung in Clientsystemen****Eigene Ansicht der e-Diagnose-Inhalte vs. Verwendung des e-Diagnose Stylesheets**Zur Anzeige der Inhalte der e-Diagnose wird von der ELGA GmbH ein e-Diagnose Stylesheet angeboten, welches eingebunden werden kann, um alle notwendigen/vorhandenen Informationen darzustellen.Neben der Verwendung des e-Diagnose Stylesheets kann auch eine eigene Ansicht der e-Diagnose umgesetzt werden.

# Abgrenzungen

Keine

# User Interface Beschreibungen

## UI01: Mockups erstellen und hier ergänzen

**Erläuterung: Mockup hier einfügen – z. B. unter Verwendung des Tools „Balsamiq Wireframes“.**

**Minimalset an Datenfeldern, die benötigt werden.**

**Datenfelder**

| | | |
| :--- | :--- | :--- |
|   | ja | nein |   |

**Aktionen und Schaltflächen**

| | |
| :--- | :--- |
|   |   |

## UI02: Weitere Mockups nach Bedarf

# Umsetzungsanforderungen

| | | |
| :--- | :--- | :--- |
| BeS |   | %link ANFDI |
| e-Diagnose Fachanwendung |   | %link ANFDI |
| ELGA-Portal |   | %link ANFDI |

