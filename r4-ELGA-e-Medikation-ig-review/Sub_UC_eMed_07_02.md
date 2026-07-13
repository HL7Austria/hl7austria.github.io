# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Durchgeführte Abgaben lesen (UC_eMed_07) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Durchgeführte Abgaben lesen (UC_eMed_07)**

## ​Technische Use Cases für Durchgeführte Abgaben lesen (UC_eMed_07)

### Sub_UC_eMed_07_02 - Durchgeführte Abgaben lesen (Dispense-Search)

Ein [berechtigter GDA](actors.md#rollen-und-berechtigungen) kann **Durchgeführte Abgaben** eines ELGA-Teilnehmers abrufen, um bereits abgegebene Arzneimittel bzw. den Status der **Durchgeführten Abgaben** einzusehen.

ELGA-Teilnehmer können **Durchgeführte Abgaben** über das ELGA-Portal einsehen.

Sofern ein zugehöriges e-Rezept vorliegt, spiegeln die **Durchgeführten Abgaben** den Status der Abgaben des e-Rezepts Anwendung wider.

Der Standardzugriff auf **Durchgeführte Abgaben** erfolgt mittels Kontaktbestätigung des ELGA-Teilnehmers (z.B. über die e-card). Dadurch erhält der GDA lesenden Zugriff auf alle **Durchgeführten Abgaben**. Zusätzlich kann der GDA lesend auf **Geplante Abgaben** und den **Medikationsplan** zugreifen, um die **Durchgeführten Abgaben** im Kontext der gesamten Medikation zu beurteilen. 

Der Zugriff mittels **e-Med GroupIdentifier** (z.B. mittels DataMatrix-Code eines e-Rezepts) ermöglicht nur eingeschränkten ELGA-Zugriff und wird in [Sub_UC_eMed_07_03 - Geplante und Durchgeführte Abgaben mit e-Med GroupIdentifier lesen](Sub_UC_eMed_07_03.md) beschrieben.

Bei der **Dispense-Search** stellt die Fachanwendung alle **MedicationDispense**-Ressourcen des ELGA-Teilnehmers bereit, die den angegebenen Suchkriterien entsprechen. Die Suche kann insbesondere nach Status und Zeitraum eingeschränkt werden.

##### Ablauf

1. Der GDA führt ein**GET**auf**MedicationDispense**aus. Die Suche kann optional anhand von Suchparametern eingeschränkt werden (siehe Suchparameter).
1. Die Fachanwendung ermittelt alle den Suchkriterien entsprechenden**Durchgeführten Abgaben**des ELGA-Teilnehmers.
1. Die Fachanwendung liefert das Suchergebnis als**Bundle (type = searchset)**mit sämtlichen den Suchkriterien entsprechenden**MedicationDispense**-Ressourcen.
1. Werden keine passenden Ressourcen gefunden, wird ein**leeres Searchset-Bundle**zurückgegeben.
1. Kann die Anfrage nicht verarbeitet werden, antwortet die Fachanwendung mit einer geeigneten**HTTP-4xx**-Antwort und einem**OperationOutcome**.
1. Optional kann der GDA zusätzlich den**Medikationsplan**oder**Geplante Abgaben**abrufen.

##### Sequenzdiagramm

![](plantuml/UC_eMed_07_02.svg)

###### Suchparameter

Mögliche Suchparamter: (in Arbeit)

* identifier (e-Med GroupIdentifier)
*  

| | | |
| :--- | :--- | :--- |
| [status](ValueSet-DurchgefuehrteAbgabeStatusVS.md)[completed | cancelled | entered-in-error] |

 
* [type](ValueSet-DurchgefuehrteAbgabeTypVS.md) (Abgabeart)
* recorded (Datum und Uhrzeit der Erfassung) 

