# HL7.AT.FHIR.ELGA.EMED.R4\UC_eMed_05 - Medikationsplan lesen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **UC_eMed_05 - Medikationsplan lesen**

## UC_eMed_05 - Medikationsplan lesen

### Beschreibung

GDA sollen in den Medikationsplan von ELGA-Teilnehmer:innen mit Behandlungsbezug einsehen können, um sich einen Überblick zu allen verordneten Medikamenten und der zugehörigen Einnahmeninformation zu verschaffen. 
 Ein:e ELGA-Teilnehmer:in soll ihren Medikationsplan einsehen können, um sich mit der vorgesehenen Einnahmeanordnung vertraut zu machen.

 Details zu Inhalten des Medikationsplans, siehe "[Die e-Medikation: UC_eMed_05_H01 bis UC_eMed_05_H04](requirements.md)"

### Akteure

* GDA
* ELGA-Teilnehmer:in
* Vertretung
* OBST

### Auslöser

* Der Medikationsplan eines:einer ELGA-Teilnehmer:in soll zur Ansicht aufgerufen werden

### Vorbedingungen

* Benutzer:in ist authentifiziert und autorisiert
* ELGA-Teilnehmer:in ist eindeutig identifiziert

### Nachbedingungen/Ergebnis

* Der Medikationsplan des:der ELGA-Teilnehmer:in wird angezeigt
* Zugriff wird protokolliert

### Abläufe

#### Standardablauf

1. Benutzer:in ruft den Medikationsplan auf
1. Der Medikationsplan des:der ELGA-Teilnehmer:in wird angezeigt

#### Alternativabläufe

Keine

### Sub-Usecases

### Beispiel

### Technische Hinweise

### Relevante Profile

### Relevante Invarianten

### Mögliche Notifications

