# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Durchgeführte Abgaben lesen (UC_eMed_03) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Durchgeführte Abgaben lesen (UC_eMed_03)**

## ​Technische Use Cases für Durchgeführte Abgaben lesen (UC_eMed_03)

### Sub_UC_eMed_03_02 - Durchgeführte Abgaben lesen (Dispense-Search)

Ein [berechtigter GDA](actors.md#rollen-und-berechtigungen) kann **Durchgeführte Abgaben** eines ELGA-Teilnehmers abrufen, um bereits dokumentierte Arzneimittelabgaben einzusehen.

ELGA-Teilnehmer können **Durchgeführte Abgaben** über das Zugangsportal einsehen.

**Durchgeführten Abgaben** spiegeln den Status der Abgaben des e-Rezepts wider. Eine **Durchgeführte Abgabe**, die auf einer **Geplanten Abgabe** basiert, enthält den **e-Med GroupIdentifier** der zugehörigen **Geplanten Abgabe** enthalten. Dadurch können zusammengehörige **Geplante Abgaben** und **Durchgeführte Abgaben** über denselben **e-Med GroupIdentifier** identifiziert und gemeinsam abgerufen werden.

Der **Standardzugriff** (**Dispense-Search**) auf **Durchgeführte Abgaben** erfolgt nach **Kontaktbestätigung** des ELGA-Teilnehmers (z.B. mittels e-card). Dadurch erhält der GDA lesenden Zugriff auf alle **Durchgeführten Abgaben** des ELGA-Teilnehmers. Zusätzlich kann der GDA lesend auf **Geplante Abgaben** und den **Medikationsplan** zugreifen, um die **Durchgeführten Abgaben** im Kontext der gesamten Medikation zu beurteilen. 

Als **alternative Zugriffsart** zur Kontaktbestätigung steht der **Zugriff mittels **e-Med GroupIdentifier**** (z.B. über den DataMatrix-Code eines e-Rezepts) zur Verfügung (**Groupidentifier-Search**). Dieser ermöglicht ausschließlich einen eingeschränkten ELGA-Zugriff auf die dem e-Med GroupIdentifier zugeordneten **Geplanten Abgaben** und **Durchgeführten Abgaben** und wird in [Sub_UC_eMed_03_03 - Geplante und Durchgeführte Abgaben mit e-Med GroupIdentifier lesen](Sub_UC_eMed_03_03.md) beschrieben.

Bei **Dispense-Search** stellt die Fachanwendung alle **MedicationDispense**-Ressourcen des ELGA-Teilnehmers bereit, die den angegebenen Suchkriterien entsprechen.

##### Ablauf

1. Der GDA führt einen**GET**-Request auf**MedicationDispense**aus. Die Suche kann optional anhand von Suchparametern eingeschränkt werden.
Folgende Suchparameter werden unterstützt:
* Zeitraum der Erfassung der **Durchgeführten Abgabe**
* Medikation: PZN/Name bzw. Wirkstoff
*  

| | | |
| :--- | :--- | :--- |
| [status](ValueSet-DurchgefuehrteAbgabeStatusVS.md)der**Durchgeführten Abgabe**[completed | cancelled | entered-in-error] |

 
* [type](ValueSet-DurchgefuehrteAbgabeTypVS.md) (Abgabeart)
* **Durchgeführte Abgaben** zu einer **Geplanten Abgabe**
* **id** des Planeintrags, auf welchem die **Durchgeführte Abgabe** basiert
* alle **Durchgeführten Abgaben** zu einem **e-Med groupIdentifier**

1. Die Fachanwendung ermittelt alle den Suchkriterien entsprechenden**Durchgeführten Abgaben**des ELGA-Teilnehmers.
1. Die Fachanwendung liefert das Suchergebnis als**Bundle (type = searchset)**mit den entsprechenden**MedicationDispense**-Ressourcen.
1. Werden keine passenden Ressourcen gefunden, wird ein**leeres Searchset-Bundle**zurückgegeben.
1. Kann die Anfrage nicht verarbeitet werden, antwortet die Fachanwendung mit einer geeigneten**HTTP-4xx**-Antwort und einem**OperationOutcome**.
1. Optional kann der GDA zusätzlich den**Medikationsplan**oder**Geplante Abgaben**abrufen.

 Offene Punkte: 
 Suchparameter auf Vollständigkeit prüfen 

##### Sequenzdiagramm

![](plantuml/UC_eMed_03_02.svg)

