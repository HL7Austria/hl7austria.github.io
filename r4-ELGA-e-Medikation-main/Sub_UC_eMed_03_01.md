# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Geplante Abgaben lesen (UC_eMed_03) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Geplante Abgaben lesen (UC_eMed_03)**

## ​Technische Use Cases für Geplante Abgaben lesen (UC_eMed_03)

### Sub_UC_eMed_03_01 - Geplante Abgaben lesen (Prescription-Search)

Ein [berechtigter GDA](actors.md#rollen-und-berechtigungen) kann [Geplante Abgaben](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) eines ELGA-Teilnehmers abrufen, um verordnete (rezeptierte) Arzneimittel einzusehen.

ELGA-Teilnehmer können **Geplante Abgaben** über das Zugangsportal einsehen.

**Geplante Abgaben** bilden die Inhalte des e-Rezepts ab. Wurden mehrere Arzneimittel verordnet und sind demselben e-Rezept zugeordnet, sind die zugehörigen **Geplanten Abgaben** mit demselben **e-Med GroupIdentifier** versehen, den auch das e-Rezept mitführt (bildet damit die Rezept-Klammer).

Der **Standardzugriff** (**Prescription-Search**) erfolgt nach **Kontaktbestätigung** des ELGA-Teilnehmers (z.B. mittels e-card). Der GDA erhält dadurch lesenden Zugriff auf die e-Medikation inkl. aller **Geplanten Abgaben** und kann entsprechende Arzneimittelabgaben durchführen und dokumentieren (siehe [Sub_UC_eMed_05_01 - Durchgeführte Abgabe schreiben](Sub_UC_eMed_05.md#Sub_UC_eMed_05_01---durchgeführte-abgabe-schreiben)). Zusätzlich kann der GDA auf **Durchgeführte Abgaben** und den **Medikationsplan** zugreifen, um die **Geplanten Abgaben** im Kontext der gesamten Medikation zu beurteilen. 

Als **alternative Zugriffsart** zur Kontaktbestätigung steht der **Zugriff mittels **e-Med GroupIdentifier**** (z.B. über den DataMatrix-Code eines e-Rezepts) zur Verfügung (**Groupidentifier-Search**). Dieser ermöglicht ausschließlich einen eingeschränkten ELGA-Zugriff auf die dem e-Med GroupIdentifier zugeordneten **Geplanten Abgaben** und **Durchgeführten Abgaben** und wird in [Sub_UC_eMed_03_03 - Geplante und Durchgeführte Abgaben mit e-Med GroupIdentifier lesen](Sub_UC_eMed_03_03.md) beschrieben.

Bei **Prescription-Search** stellt die Fachanwendung alle **MedicationRequest**-Ressourcen mit der Kategorie **Geplante Abgabe** des ELGA-Teilnehmers bereit, die den angegebenen Suchkriterien entsprechen.

##### Ablauf

1. Der GDA führt ein**GET**auf**MedicationRequest**mit der Kategorie**Geplante Abgabe**aus.
Folgende Suchparameter werden unterstützt:
* Zeitraum der Erfassung der **Geplanten Abgabe**
* Medikation: PZN/Name bzw. Wirkstoff 
* Einnahmezeitraum der Medikation der **Geplanten Abgabe** (extension:effectiveDosePeriod)
*  

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [status](ValueSet-GeplanteAbgabeStatusVS.md)der**Geplanten Abgabe**[active | completed | entered-in-error | stopped | cancelled ] |

 
* **Geplante Abgabe** zu einer **Durchgeführten Abgabe**
* **id** des Planeintrags, auf welchem die **Geplante Abgabe** basiert
* alle **Geplanten Abgaben** zu einem **e-Med groupIdentifier**

1. Die Fachanwendung ermittelt alle den Suchkriterien entsprechenden**Geplanten Abgaben**.
1. Die Fachanwendung liefert das Suchergebnis als**Bundle (type = searchset)**mit sämtlichen den Suchkriterien entsprechenden**MedicationRequest**-Ressourcen.
1. Werden keine passenden Ressourcen gefunden, wird ein**leeres Searchset-Bundle**zurückgegeben.
1. Kann die Anfrage nicht verarbeitet werden, antwortet die Fachanwendung mit einer geeigneten**HTTP-4xx**-Antwort und einem**OperationOutcome**.
1. Optional kann der GDA zusätzlich den**Medikationsplan**oder**Durchgeführte Abgaben**abrufen.

 Offene Frage:
 ad: *Geplante Abgabe* zu einer Durchgeführten Abgabe:
 - Reverse-Include erlaubt oder eigene Operation? 

 Offene Frage:
 ad: Suchparameter:
 - Gültigkeitszeitraum des Rezepts (validityPeriod)? 

##### Sequenzdiagramm

![](plantuml/UC_eMed_03_01.svg)

