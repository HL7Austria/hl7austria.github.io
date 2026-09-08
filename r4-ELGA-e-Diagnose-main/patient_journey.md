# HL7.AT.FHIR.ELGA.EDIAG.R4\Patient Journey - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Patient Journey**

## Patient Journey

### Anwendungsbeispiel

Das folgende Anwendungsbeispiel beschreibt anhand einer fiktiven **Patient Journey**, wie die klinisch relevanten Informationen eines Patienten im Rahmen der e-Diagnose aufgebaut, ergänzt und aktualisiert werden. Dabei werden Diagnosen, Prozeduren sowie Allergien und Intoleranzen strukturiert erfasst und einzelne Summary-Einträge über die jeweilige Summary-Liste zusammengeführt.

### Patient Journey

Die Patient Journey zeigt den Lebenszyklus der e-Diagnose von der erstmaligen Initialisierung der Summary-Liste über das Hinzufügen und Aktualisieren einzelner Einträge bis hin zur Korrektur bzw. Löschung eines Eintrags.

### 1. Arztbesuch - Initalisierung der Summary-Liste

[Dr Musterärztin Melanie](Practitioner-PractitionerExample.md) sieht Max Mustermann am **3. März 2026** erstmals in ihrer Ordination. Zur besseren klinischen Einschätzung ruft sie die vorhandenen medizinischen Informationen aus der e-Diagnose ab.

Für Herrn Mustermann existiert bisher noch keine strukturierte e-Diagnose Summary-Liste. Die e-Diagnose wird daher erstmals initialisiert. Für den Patienten wird eine leere Summary-Liste angelegt. Diese enthält den Patienten [DI Max Mustermann](Patient-PatientExample.md), die für die Erstellung der Liste verantwortliche Quelle sowie das Datum der letzten Aktualisierung. Da noch keine Einträge vorhanden sind, wird zusätzlich der Grund für die leere Liste über List.emptyReason mit dem Code [Notstarted](List-ListExample01.md) angegeben.

Im Rahmen der Anamnese erhebt Dr. Musterärztin die aktuellen gesundheitlichen Probleme des Patienten. Herr Mustermann berichtet über einen seit mehreren Jahren bestehenden Bluthochdruck. Außerdem gibt er an, seit seiner Kindheit an einer Penicillinallergie zu leiden.

Die relevanten Informationen werden in den jeweiligen e-Diagnose-Ressourcen dokumentiert. Für die Hypertonie wird eine Condition und für die Penicillinallergie eine AllergyIntolerance geführt.

Bei einem neuerlichen Abruf der e-Diagnose-Liste über einen GET-Aufruf werden die vorhandenen Einträge als Search Bundle zurückgegeben.

