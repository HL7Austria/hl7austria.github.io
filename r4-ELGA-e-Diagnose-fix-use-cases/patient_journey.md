# HL7.AT.FHIR.ELGA.EDIAG.R4\Patient Journey - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Patient Journey**

## Patient Journey

Das folgende Anwendungsbeispiel beschreibt anhand einer fiktiven **Patient Journey**, wie die klinisch relevanten Informationen eines Patienten im Rahmen der e-Diagnose aufgebaut, ergänzt und aktualisiert werden. Dabei werden Diagnosen, Prozeduren sowie Allergien und Intoleranzen strukturiert erfasst und einzelne Einträge über die jeweiligen Summary-Listen hervorgehoben.

Die Patient Journey zeigt den Lebenszyklus der e-Diagnose von der erstmaligen Initialisierung der Summary-Listen über das Hinzufügen und Aktualisieren einzelner Einträge bis hin zur Korrektur bzw. Löschung eines Eintrags.

### 1. Arztbesuch - Erstvorstellung und Initialisierung der e-Diagnose

[Dr Musterärztin Melanie](Practitioner-PractitionerExample.md) sieht [Max Mustermann](Patient-PatientExample.md) am **3. März 2026** erstmals in ihrer Ordination. Zur besseren klinischen Einschätzung ruft sie die vorhandenen medizinischen Informationen aus der e-Diagnose ab.

**Abruf und Initialisierung der Summary-Listen**

Für Herrn Mustermann existieren bisher noch keine Summary-Listen, weshalb diese initialisiert werden. Für den Patienten wird für jede Kategorie eine leere Summary-Liste angelegt. Diese enthält den Patienten [Max Mustermann](Patient-PatientExample.md), die erstellende e-Diagnose [Fachanwendung](Device-DeviceExample.md) sowie das Datum der letzten Aktualisierung. Da noch keine Einträge vorhanden sind, wird zusätzlich der Grund für die leere Liste über `List.emptyReason` mit dem Code `notstarted` siehe

* [Beispiel für eine leere Allergy-Summary-Liste](List-AllergyListEmpty.md)
* [Beispiel für eine leere Condition-Summary-Liste](List-ConditionListEmpty.md)
* [Beispiel für eine leere Proceduren-Summary-Liste](List-ProcedureListEmpty.md)

**Erfassung bestehender Diagnosen und Allergien**

Im Rahmen der Anamnese und körperlichen Untersuchung erhebt die Ärztin die aktuellen gesundheitlichen Probleme sowie bereits länger bestehende Grunderkrankungen und Allergien des Patienten. Herr Mustermann berichtet über einen seit mehreren Jahren bestehenden, mit Lisinopril 10 mg medikamentös behandelten Bluthochdruck. Weiters gibt Herr Mustermann an, seit seiner Kindheit an einer Penicillinallergie zu leiden.

Aktuell bestehen bei Herrn Mustermann Schmerzen beim Schlucken und Fieber über 38,5°C. Bei der körperlichen Untersuchung zeigt sich eine eitrige Angina. Aufgrund der bekannten Penicillinallergie wird auf eine Behandlung mit Amoxicillin verzichtet. Die Ärztin entscheidet sich für eine antibiotische Behandlung mit Clarithromycin. Zusätzlich wird Mexalen 500 mg bei Bedarf zur Schmerz- und Fieberbehandlung verordnet.

Die relevanten Informationen werden in den jeweiligen Ressourcen dokumentiert. Für die [Hypertonie](Condition-ConditionEntry01.md) und [Suppurative tonsillitis](Condition-ConditionEntry02.md) werden jeweils eine Condition und für die [Amoxicillin](AllergyIntolerance-AllergyEntry01.md)-Allergie eine AllergyIntolerance angelegt.

Bei einem neuerlichen Abruf der e-Diagnose werden die eingetragenen Summary-Einträge (Hypertonie und Amoxicillin-Allergie) in den jeweiligen Kategorien der Summary-Listen zurückgegeben [Condition-Summary-Liste](List-ConditionList01.md) und [Allergy-Summary-Liste](List-AllergyList01.md).

Um eine Gesamtansicht aller Diagnoseeinträge zu erhalten, ruft Dr. Musterärztin [alle Einträge](uc_ediag_01_lesen.md#alle-einträge-abrufen) ab.

### 2. Arztbesuch - Auftreten von Nebenwirkungen und Bearbeitung

Die Symptome der eitrigen Angina haben sich durch die antibiotische Therapie deutlich gebessert. Allerdings berichtet Herr Mustermann bei seinem Ordinationsbesuch am **9. März 2026** über Durchfall und Juckreiz im Genitalbereich.

Bei der Untersuchung stellt Dr. Musterärztin eine Pilzinfektion fest, die vermutlich im Zusammenhang mit der vorausgegangenen Antibiotikatherapie steht.

Herr Mustermann berichtet weiters, dass seit Beginn der Antibiotikatherapie Beschwerden seines seit 2010 bestehenden Morbus Crohn aufgetreten sind und er vermutet, dass die Behandlung einen Schub ausgelöst hat.

Dr. Musterärztin berücksichtigt diese Angabe bei der weiteren Beurteilung. Da Durchfall sowohl als Nebenwirkung der Antibiotikatherapie als auch im Rahmen eines Morbus-Crohn-Schubs auftreten kann, wird die Ursache entsprechend abgeklärt. Im weiteren Gespräch erfährt Dr. Musterärztin, dass die letzte durchgeführte Koloskopie am 23. September 2025 stattgefunden hat.

Zur Behandlung der Candida-Balanitis verordnet sie Clotrimazol 1 % Creme zur lokalen Anwendung. Bezüglich der Diarrhö wird Herr Mustermann angewiesen, auf eine ausreichende Flüssigkeitszufuhr zu achten. Aufgrund der bestehenden Morbus-Crohn-Erkrankung und der vorausgegangenen Antibiotikatherapie erfolgt eine weitere klinische Abklärung der Beschwerden.

Dr. Musterärztin hält die Erkrankungen [Morbus Crohn](Condition-ConditionEntry03.md), [Medikamenteninduzierte Diarrhö](Condition-ConditionEntry04.md), [Candida Balanitis](Condition-ConditionEntry05.md) fest und die [Koloskopie](Procedure-ProcedureEntry01.md) als Prozedur, wobei sie Morbus Crohn sowie die Koloskopie in die jeweilige Summary-Liste aufnimmt.

Dr. Musterärztin ruft die [Condition-Summary-Liste](List-ConditionList02.md) und [Procedure-Summary-Liste](List-ProcedureList01.md) ab, wobei ihr ein Fehler auffällt. Es steht eine Diagnose in der Summary-Liste, die irrtümlich erfasst wurde. Sie storniert den [irrtümlich erfassten Eintrag](Condition-ConditionEnteredInError.md), welcher in der Folge durch die e-Diagnose Fachanwendung aus der [Condition-Summary-Liste](List-ConditionList03.md) entfernt wird.

### ELGA-Teilnehmer - Eintrag löschen

Am **20. April 2026** nimmt Herr Mustermann über das Portal Einsicht in seine e-Diagnose. Dabei stellt er fest, dass die im März 2026 dokumentierte Pilzinfektion weiterhin in seiner Gesamtansicht aufscheint. Herr Mustermann möchte das nicht und [löscht](uc_ediag_03_teilnehmer.md#eintrag-löschen) den Eintrag.

Dieser Eintrag wird daraufhin aus der Gesamtansicht aller Diagnosen gelöscht. Ist die Diagnose auch Bestandteil der Summary-Liste der Diagnosen, wird sie ebenfalls aus dieser entfernt. In diesem Fall wird List.source auf den Patienten gesetzt.

