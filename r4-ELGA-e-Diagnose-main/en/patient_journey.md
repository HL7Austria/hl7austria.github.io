# Patient Journey - ELGA e-Diagnose R4 (Draft) v0.1.0

## Patient Journey

Das folgende Anwendungsbeispiel beschreibt anhand einer fiktiven **Patient Journey**, wie die klinisch relevanten Informationen eines Patienten im Rahmen der e-Diagnose aufgebaut, ergänzt und aktualisiert werden. Dabei werden Diagnosen, Prozeduren sowie Allergien und Intoleranzen strukturiert erfasst und einzelne Einträge über die jeweiligen Summary-Listen hervorgehoben.

Die Patient Journey zeigt den Lebenszyklus der e-Diagnose von der erstmaligen Initialisierung der Summary-Listen über das Hinzufügen und Aktualisieren einzelner Einträge bis hin zur Korrektur bzw. Löschung eines Eintrags.

03.03.2026**Initialisierung.** Die e-Diagnose Fachanwendung legt je Kategorie eine leere Summary-Liste an.

03.03.2026**1. Arztbesuch.** Hypertonie und Amoxicillin-Allergie kommen in die Summary-Listen, die akute Angina nur in die Gesamtansicht.

09.03.2026**2. Arztbesuch.** Morbus Crohn und Koloskopie werden in die Summary-Listen aufgenommen – Morbus Crohn allerdings irrtümlich mit dem Code für Hyperthyreose. Diarrhö und Candida-Balanitis kommen nur in die Gesamtansicht.

09.03.2026**Storno und Korrektur.** Die Ärztin storniert den falsch codierten Eintrag, die Fachanwendung entfernt ihn aus der Summary-Liste. Danach erfasst sie Morbus Crohn korrekt und nimmt ihn in die Summary-Liste auf.

20.04.2026**Löschung durch den Patienten.** Max Mustermann löscht die Candida-Balanitis über das Portal aus seiner Gesamtansicht. Der stornierte Eintrag bleibt in der Gesamtansicht sichtbar.

Diagnosen

Summary-Liste
leer

* [Hypertonie](Condition-ConditionEntry01.md)
* [Morbus Crohn (Code: Hyperthyreose)](Condition-ConditionEntry03.md)
* [Morbus Crohn](Condition-ConditionEntry06.md)

* [Eitrige Angina](Condition-ConditionEntry02.md)
* [Diarrhö](Condition-ConditionEntry04.md)
* [Candida-Balanitis](Condition-ConditionEntry05.md)
* [Morbus Crohn (Code: Hyperthyreose)](Condition-ConditionEntry03EnteredInError.md)

Prozeduren

Summary-Liste
leer

* [Koloskopie](Procedure-ProcedureEntry01.md)

Allergien und Intoleranzen

Summary-Liste
leer

* [Amoxicillin-Allergie](AllergyIntolerance-AllergyEntry01.md)

Datenaustausch in diesem Schritt

Client – GDA-Software bzw. ELGA-Portal
e-Diagnose Fachanwendung

`GET /List?code=11450-4&_include=*`
aktuelle Summary-Liste abrufen

`200 Bundle`
[leere Liste](List-ConditionListEmpty.md), emptyReason notstarted, v1

ebenso für [47519-4 (Prozeduren)](List-ProcedureListEmpty.md) und [48765-2 (Allergien)](List-AllergyListEmpty.md) · List.source = [e-Diagnose Fachanwendung](Device-DeviceExample.md)

`POST /Condition`
2× Diagnose ([Hypertonie](Condition-ConditionEntry01.md), [Angina](Condition-ConditionEntry02.md)), dazu 1× POST /AllergyIntolerance ([Amoxicillin](AllergyIntolerance-AllergyEntry01.md))

`201 Created`
je eine id pro Eintrag

`GET /List?code=11450-4&_include=*`
Liste inkl. versionId holen

`200 Bundle`
[List v1, leer](List-ConditionListEmpty.md)

`POST /List/$write`
[Parameters](Parameters-ConditionListWrite01.md): code, list (+ Hypertonie) · If-Match: W/"1"

`200 OK`
[List v2](List-ConditionList01.md) gespeichert

gleicher Ablauf für die Allergie-Summary-Liste (48765-2): [$write](Parameters-AllergyListWrite01.md) → [List v2](List-AllergyList01.md)

`GET /List?code=11450-4&_include=*`
Summary-Liste erneut abrufen

`200 Bundle`
[List v2 + Hypertonie](Bundle-ConditionListSearchSet01.md) · Allergien: [List v2 + Amoxicillin](Bundle-AllergyListSearchSet01.md)

`GET /Condition?patient=[id]`
Gesamtansicht abrufen

`200 Bundle`
[2 Diagnosen](Bundle-ConditionSearchSet01.md)

`POST /Condition`
3× Diagnose ([Morbus Crohn, falsch codiert](Condition-ConditionEntry03.md), [Diarrhö](Condition-ConditionEntry04.md), [Candida](Condition-ConditionEntry05.md)), dazu 1× POST /Procedure ([Koloskopie](Procedure-ProcedureEntry01.md))

`201 Created`
je eine id pro Eintrag

`GET /List?code=11450-4&_include=*`
Liste inkl. versionId holen

`200 Bundle`
[List v2, 1 Eintrag](Bundle-ConditionListSearchSet01.md)

`POST /List/$write`
[Parameters](Parameters-ConditionListWrite02.md): + Morbus Crohn (Code: Hyperthyreose) · If-Match: W/"2"

`200 OK`
[List v3](List-ConditionList02.md) gespeichert

ebenso für die Prozeduren-Liste (47519-4): [$write](Parameters-ProcedureListWrite01.md) mit If-Match: W/"1" → [List v2 + Koloskopie](Bundle-ProcedureListSearchSet01.md)

`GET /List?code=11450-4&_include=*`
Summary-Liste prüfen

`200 Bundle`
[List v3](Bundle-ConditionListSearchSet02.md) – falscher Code für Morbus Crohn

`POST /Condition/[id]/$entered-in-error`
[Parameters](Parameters-ConditionEnteredInErrorParameters01.md): reason = "Falscher Code ausgewählt"

`200 OK`
[Storno vermerkt](Condition-ConditionEntry03EnteredInError.md): practitioner, datetime, reason

die Fachanwendung entfernt den Eintrag selbst aus der Summary-Liste – kein $write durch den Client · [List v4](Bundle-ConditionListSearchSet03.md), List.source = e-Diagnose Fachanwendung

`POST /Condition`
[Morbus Crohn](Condition-ConditionEntry06.md), korrekt codiert

`201 Created`
neue id

`POST /List/$write`
[Parameters](Parameters-ConditionListWrite03.md): + Morbus Crohn · If-Match: W/"4"

`200 OK`
[List v5](Bundle-ConditionListSearchSet04.md) gespeichert

`GET /Condition?patient=[id]`
Gesamtansicht über das Portal abrufen

`200 Bundle`
[6 Diagnosen](Bundle-ConditionSearchSet02.md), inkl. storniertem Eintrag

`POST /Condition/[id]/$delete`
Candida-Balanitis, durch den ELGA-Teilnehmer über das Portal

`200 OK`
Eintrag unwiderruflich gelöscht

`GET /Condition?patient=[id]`
Ergebnis prüfen

`200 Bundle`
[5 Diagnosen](Bundle-ConditionSearchSet03.md), ohne Candida-Balanitis

wäre der Eintrag in der Summary-Liste: neue Listenversion ohne ihn, List.source = Patient

‹
‹
‹
‹
‹

03.03.2026
Initialisierung

03.03.2026
1. Arztbesuch

09.03.2026
2. Arztbesuch

09.03.2026
Storno & Korrektur

20.04.2026
Löschung

›
›
›
›
›

### Erster Arztbesuch - Erstvorstellung und Initialisierung der e-Diagnose

**Abruf und Initialisierung der Summary-Listen**

[Dr. Musterärztin](Practitioner-PractitionerExample.md) sieht [Max Mustermann](Patient-PatientExample.md) am **3. März 2026** erstmals in ihrer Ordination. Zur besseren klinischen Einschätzung ruft sie die vorhandenen medizinischen Informationen aus der e-Diagnose ab.

Für Herrn Mustermann existieren bisher noch keine Summary-Listen, weshalb diese initialisiert werden. Für den Patienten wird für jede Kategorie eine leere Summary-Liste angelegt. Diese referenziert den Patienten [Max Mustermann](Patient-PatientExample.md), die [e-Diagnose-Fachanwendung](Device-DeviceExample.md) als erstellendes System sowie das Initialisierungsdatum. Außerdem wird im Rahmen der Initialisierung der `List.emptyReason` auf `notstarted` gesetzt als Begründung dafür, warum die Summary-Liste leer ist, siehe:

* [Beispiel für eine leere Allergy-Summary-Liste](List-AllergyListEmpty.md)
* [Beispiel für eine leere Condition-Summary-Liste](List-ConditionListEmpty.md)
* [Beispiel für eine leere Procedure-Summary-Liste](List-ProcedureListEmpty.md)

**Erfassung bestehender Diagnosen und Allergien**

Im Rahmen der Anamnese und körperlichen Untersuchung erhebt die Ärztin die aktuellen gesundheitlichen Probleme sowie bereits länger bestehende Grunderkrankungen und Allergien des Patienten. Herr Mustermann berichtet über einen seit mehreren Jahren bestehenden, mit Lisinopril 10 mg medikamentös behandelten Bluthochdruck. Weiters gibt Herr Mustermann an, seit seiner Kindheit an einer Penicillinallergie zu leiden.

Aktuell bestehen bei Herrn Mustermann Schmerzen beim Schlucken und Fieber über 38,5°C. Bei der körperlichen Untersuchung zeigt sich eine eitrige Angina. Aufgrund der bekannten Penicillinallergie wird auf eine Behandlung mit Amoxicillin verzichtet. Die Ärztin entscheidet sich für eine antibiotische Behandlung mit Clarithromycin. Zusätzlich wird Mexalen 500 mg bei Bedarf zur Schmerz- und Fieberbehandlung verordnet.

Die relevanten Informationen werden in den jeweiligen Ressourcen dokumentiert. Für die [Hypertonie](Condition-ConditionEntry01.md) und die [eitrige Angina](Condition-ConditionEntry02.md) werden jeweils eine Condition angelegt. Die Hypertonie wird dabei explizit in der Summary-Liste der Diagnosen angelegt, damit sie auch anderen GDA in Zukunft bei Abruf der Summary-Liste in dieser angezeigt wird. Für die [Amoxicillin](AllergyIntolerance-AllergyEntry01.md)-Allergie wird eine AllergyIntolerance angelegt. Aufgrund der medizinischen Relevanz wird dieser Eintrag durch Dr. Musterärztin in der Summary-Liste der Allergien und Intoleranzen gespeichert.

**Abruf der Summary-Listen und aller Diagnoseeinträge**

Bei einem neuerlichen Abruf der e-Diagnose werden die eingetragenen Summary-Einträge (Hypertonie und Amoxicillin-Allergie) in den jeweiligen Kategorien der Summary-Listen zurückgegeben [Condition-Summary-Liste](Bundle-ConditionListSearchSet01.md) und [Allergy-Summary-Liste](Bundle-AllergyListSearchSet01.md).

Um eine Gesamtansicht aller Diagnoseeinträge zu erhalten, ruft Dr. Musterärztin [alle Einträge](use_case_read.md#alle-einträge-abrufen) ab und erhält [alle dokumentierten Diagnosen](Bundle-ConditionSearchSet01.md) von Herrn Mustermann.

### Zweiter Arztbesuch - Auftreten von Nebenwirkungen und Bearbeitung

**Neue Beschwerden und diagnostische Abklärung**

Die Symptome der eitrigen Angina haben sich durch die antibiotische Therapie deutlich gebessert. Allerdings berichtet Herr Mustermann bei seinem Ordinationsbesuch am **9. März 2026** über Durchfall und Juckreiz im Genitalbereich.

Bei der Untersuchung stellt Dr. Musterärztin eine Pilzinfektion fest, die vermutlich im Zusammenhang mit der vorausgegangenen Antibiotikatherapie steht.

Herr Mustermann berichtet weiters, dass seit Beginn der Antibiotikatherapie Beschwerden aufgrund seines seit 2010 bestehenden Morbus Crohn aufgetreten sind und er vermutet, dass die Behandlung einen Schub ausgelöst hat.

Dr. Musterärztin berücksichtigt diese Angabe bei der weiteren Beurteilung. Da Durchfall sowohl als Nebenwirkung der Antibiotikatherapie als auch im Rahmen eines Morbus-Crohn-Schubs auftreten kann, wird die Ursache entsprechend abgeklärt. Im weiteren Gespräch erfährt Dr. Musterärztin, dass die letzte durchgeführte Koloskopie am 23. September 2025 stattgefunden hat.

**Behandlung und Dokumentation**

Zur Behandlung der Candida-Balanitis verordnet sie Clotrimazol 1 % Creme zur lokalen Anwendung. Bezüglich der Diarrhö wird Herr Mustermann angewiesen, auf eine ausreichende Flüssigkeitszufuhr zu achten. Aufgrund der bestehenden Morbus-Crohn-Erkrankung und der vorausgegangenen Antibiotikatherapie erfolgt eine weitere klinische Abklärung der Beschwerden.

Dr. Musterärztin dokumentiert die Diagnosen [Morbus Crohn](Condition-ConditionEntry03.md), [Medikamenteninduzierte Diarrhö](Condition-ConditionEntry04.md), sowie [Candida Balanitis](Condition-ConditionEntry05.md). Die [Koloskopie](Procedure-ProcedureEntry01.md) wird als Prozedur dokumentiert. Die Diagnose Morbus Crohn sowie die Prozedur Koloskopie werden durch Dr. Musterärztin in die jeweilige Summary-Liste aufgenommen, siehe [Procedure-Summary-Liste](Bundle-ProcedureListSearchSet01.md).

**Abruf und Korrektur der Summary-Listen**

Dr. Musterärztin befürchtet, dass ihr bei einer Diagnose ein Fehler unterlaufen ist und ruft die [Condition-Summary-Liste](Bundle-ConditionListSearchSet02.md) ab, wobei ihr auffällt, dass sie einen falschen Code für Morbus Crohn gewählt hat. Sie storniert den [Eintrag mit dem falschen Code](Condition-ConditionEntry03EnteredInError.md), der in Folge durch die e-Diagnose-Fachanwendung aus der [Condition-Summary-Liste](Bundle-ConditionListSearchSet03.md) entfernt wird. Anschließend erfasst sie [Morbus Crohn](Condition-ConditionEntry06.md) richtig und nimmt die Diagnose in die [Condition-Summary-Liste](Bundle-ConditionListSearchSet04.md) auf.

### Einsicht in e-Diagnose durch ELGA-Teilnehmer - Eintrag löschen

Am **20. April 2026** nimmt Herr Mustermann über das Portal Einsicht in seine e-Diagnose und ruft [alle Diagnosen](Bundle-ConditionSearchSet02.md) ab. Dabei stellt er fest, dass die im März 2026 dokumentierte Pilzinfektion in seiner Gesamtansicht aufscheint. Herr Mustermann möchte das nicht und [löscht](use_case_participant.md#eintrag-löschen) den Eintrag.

Dieser Eintrag wird daraufhin aus der Gesamtansicht [aller Diagnosen](Bundle-ConditionSearchSet03.md) gelöscht. Ist die Diagnose auch Bestandteil der Summary-Liste der Diagnosen, wird sie ebenfalls aus dieser entfernt. In diesem Fall wird `List.source` auf den Patienten gesetzt.

In der Gesamtansicht sind auch stornierte Einträge enthalten, weshalb der falsch codierte Morbus-Crohn-Eintrag Teil eines jeden Abrufs ist.

