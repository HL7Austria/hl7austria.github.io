# HL7.AT.FHIR.ELGA.EDIAG.R4\Patient Journey - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Patient Journey**

## Patient Journey

Das folgende Anwendungsbeispiel beschreibt anhand einer fiktiven **Patient Journey**, wie die klinisch relevanten Informationen eines Patienten im Rahmen der e-Diagnose aufgebaut, ergänzt und aktualisiert werden. Dabei werden Diagnosen, Prozeduren sowie Allergien und Intoleranzen strukturiert erfasst und einzelne Summary-Einträge über die jeweilige Summary-Listen zusammengeführt.

Die Patient Journey zeigt den Lebenszyklus der e-Diagnose von der erstmaligen Initialisierung der Summary-Liste über das Hinzufügen und Aktualisieren einzelner Einträge bis hin zur Korrektur bzw. Löschung eines Eintrags.

### 1. Arztbesuch – Erstvorstellung und Initialisierung der e-Diagnose

[Dr Musterärztin Melanie](Practitioner-PractitionerExample.md) sieht [Max Mustermann](Patient-PatientExample.md) am **3. März 2026** erstmals in ihrer Ordination. Zur besseren klinischen Einschätzung ruft sie die vorhandenen medizinischen Informationen aus der e-Diagnose ab.

**Abruf und Initialisierung der Summary-Liste**

Für Herrn Mustermann existiert bisher noch keine strukturierte e-Diagnose-Summary-Liste. Die e-Diagnose wird daher erstmals initialisiert. Für den Patienten wird eine leere Summary-Liste angelegt. Diese enthält den Patienten [Max Mustermann](Patient-PatientExample.md), die erstellende e-Diagnose [Fachanwendung](Device-DeviceExample.md) sowie das Datum der letzten Aktualisierung. Da noch keine Einträge vorhanden sind, wird zusätzlich der Grund für die leere Liste über List.emptyReason mit dem Code [Notstarted](List-ListExample01.md) angegeben.

**Erfassung bestehender Diagnosen und Allergien**

Im Rahmen der Anamnese und körperlichen Untersuchung erhebt die Ärztin die aktuellen gesundheitlichen Probleme sowie bereits länger bestehende Grunderkrankungen und Allergien des Patienten. Herr Mustermann berichtet über einen seit mehreren Jahren bestehenden, medikamentös behandelten Bluthochdruck. Momentan bestehen bei Herrn Mustermann Schmerzen beim Schlucken und Fieber über 38,5 Grad. Die körperliche Untersuchung ergibt eine eitrige Angina. Herr Mustermann gibt an, seit seiner Kindheit an einer Penicillinallergie zu leiden.

Die relevanten Informationen werden in den jeweiligen Ressourcen dokumentiert. Für die [Hypertonie](Condition-ConditionSummaryExample.md) und [Suppurative tonsillitis](Condition-ConditionGesamtlisteExample.md) werden jeweils eine Condition und für die [Amoxicillin](AllergyIntolerance-AllergyExample.md)-Allergie eine AllergyIntolerance angelegt. Bei einem neuerlichen Abruf der e-Diagnose werden die eingetragenen Summary-Einträge (Hypertonie und Amoxicillin-Allergie) in den jeweiligen Kategorien der Summary-Listen zurückgegeben [Condtion-Summary-Liste](List-ListConditionExample.md) und [Allergy-Summary-Liste](List-ListAllergyExample.md). Um eine Gesamtansicht aller Diagnoseneinträge zu erhalten führt Dr. Musterärztin ein [Einträge abrufen](uc_ediag_01_lesen.md#einträge-abrufen) aus.

