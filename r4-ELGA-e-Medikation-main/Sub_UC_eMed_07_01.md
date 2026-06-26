# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Geplante Abgaben lesen (UC_eMed_07) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Geplante Abgaben lesen (UC_eMed_07)**

## ​Technische Use Cases für Geplante Abgaben lesen (UC_eMed_07)

### Sub_UC_eMed_07_01 - Geplante Abgaben lesen

Ein berechtigter GDA (siehe [Rollen und Berechtigungen](actors.md#rollen-und-berechtigungen)) kann **Geplante Abgaben** eines ELGA-Teilnehmers abrufen, um verordnete (rezeptierte) Arzneimittel bzw. den Status der **Geplanten Abgaben** einzusehen und eine entsprechende Arzneimittelabgabe durchzuführen.

Sofern ein zugehöriges e-Rezept vorliegt, spielgeln **Geplanten Abgaben** den Status der Verordnungen eines e-Rezepts wider.

Der Zugriff auf **Geplante Abgaben** erfolgt unterschiedlich – je nachdem, ob eine Kontaktbestätigung des ELGA-Teilnehmers vorliegt (z.B. über die e-card) oder ob der Zugriff mittels QR-Code des e-Rezepts erfolgt. ELGA-Teilnehmer können **Geplante Abgaben** über das ELGA-Portal einsehen.

#### Prescription-Search

Im folgenden wird exemplarisch der lesende Zugriff auf **Geplante Abgaben** mittels e-card bzw. e-Rezept in der Apotheke dargestellt.

##### Variante A: Zugriff mittels e-card

Erfolgt die Arzneimittelabgabe in der Apotheke nach Identifikation des ELGA-Teilnehmers mittels e-card, erhält der GDA lesenden Zugriff auf alle **Geplante Abgaben** (GET MedicationDispense) und kann entsprechende Arzneimittelabgaben durchführen und dokumentieren (siehe [Sub_UC_eMed_09_01 - Durchgeführte Abgabe erfassen](Sub_UC_eMed_09.md#sub_uc_emed_09_01---durchgeführte-abgabe-erfassen)). 

Zusätzlich kann der Apotheker lesend auf den **Medikationsplan** des ELGA-Teilnehmers zugreifen, um zuvor evtl. Wechselwirkungen zu prüfen ([Plan-Read](interactions.md#plan-read)).  

![](plantuml/UC_eMed_07_01_a.svg)

##### Variante B: Zugriff mittels e-Rezept

Erfolgt die Arzneimittelabgabe in der Apotheke auf Basis eines vorgelegten e‑Rezepts (papiergebunden oder digital), erhält der GDA ausschließlich lesenden Zugriff auf die zugehörigen **Geplanten Abgaben**. Diese werden über den im QR‑Code enthaltenen gemeinsamen **e‑Med GroupIdentifier** in der e‑Medikation identifiziert und abgerufen, sofern sie den Status **active** aufweisen.

Der GDA erhält in diesem Fall keinen Zugriff auf andere offene **Geplante Abgaben**, kann den **Medikationsplan** des ELGA-Teilnehmers zwecks Wechselwirkungsprüfung nicht einsehen und kann auch keine weiteren **Durchgeführten Abgaben** (z.B. OTC oder Notabgaben) in der e-Medikation des ELGA-Teilnehmers speichern.

![](plantuml/UC_eMed_07_01_b.svg)

