# Patient Journey - ELGA e-Diagnose R4 (Draft) v0.1.0

## Patient Journey

Das folgende Anwendungsbeispiel beschreibt anhand einer fiktiven **Patient Journey**, wie die klinisch relevanten Informationen eines Patienten im Rahmen der e-Diagnose aufgebaut, ergänzt und aktualisiert werden. Dabei werden Diagnosen, Prozeduren sowie Allergien und Intoleranzen strukturiert erfasst und einzelne Einträge über die jeweiligen Summary-Listen hervorgehoben.

Die Patient Journey zeigt den Lebenszyklus der e-Diagnose von der erstmaligen Initialisierung der Summary-Listen über das Hinzufügen und Aktualisieren einzelner Einträge bis hin zur Korrektur bzw. Löschung eines Eintrags.

Übermittelte Ressourcen (Beispiele mit Suffix `Request`) enthalten logische Referenzen auf Patient und GDA, abgerufene Ressourcen die von der e-Diagnose-Fachanwendung aufgelösten Referenzen, siehe [Designentscheidungen](design_choices.md#logische-referenzen).

‹
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
Storno

09.03.2026
Korrektur

20.04.2026
Löschung

›
›
›
›
›
›

03.03.2026**Initialisierung.** Die e-Diagnose Fachanwendung legt je Kategorie eine leere Summary-Liste an.

03.03.2026**1. Arztbesuch.** Hypertonie und Amoxicillin-Allergie kommen in die Summary-Listen, die eitrige Angina nur in die Gesamtansicht.

09.03.2026**2. Arztbesuch.** Morbus Crohn und Koloskopie werden in die Summary-Listen aufgenommen – Morbus Crohn allerdings irrtümlich mit dem Code für Hyperthyreose. Diarrhö und Candida-Balanitis kommen nur in die Gesamtansicht.

09.03.2026**Storno.** Die Ärztin bemerkt den falschen Code und storniert den Eintrag. Die Fachanwendung entfernt ihn selbst aus der Summary-Liste.

09.03.2026**Korrektur.** Die Ärztin erfasst Morbus Crohn korrekt und nimmt ihn in die Summary-Liste auf. Der stornierte Eintrag bleibt in der Gesamtansicht sichtbar.

20.04.2026**Löschung durch den Patienten.** Max Mustermann löscht die Candida-Balanitis über das Portal aus seiner Gesamtansicht.

[Dr. Musterärztin](Practitioner-PractitionerExample.md) sieht [Max Mustermann](Patient-PatientExample.md) am 3. März 2026 erstmals in ihrer Ordination. Zur besseren klinischen Einschätzung ruft sie die vorhandenen medizinischen Informationen aus der e-Diagnose ab.

Für Herrn Mustermann existieren bisher noch keine Summary-Listen, weshalb diese initialisiert werden: Je Kategorie wird eine leere Summary-Liste angelegt. Sie referenziert den Patienten, die [e-Diagnose-Fachanwendung](Device-DeviceExample.md) als erstellendes System sowie das Initialisierungsdatum. Als Begründung, warum die Liste leer ist, wird `List.emptyReason` auf `notstarted` gesetzt.

Im Rahmen der Anamnese berichtet Herr Mustermann über einen seit mehreren Jahren bestehenden, mit Lisinopril 10 mg behandelten Bluthochdruck sowie über eine Penicillinallergie seit seiner Kindheit.

Aktuell hat er Schmerzen beim Schlucken und Fieber über 38,5 °C; die Untersuchung zeigt eine eitrige Angina. Wegen der Penicillinallergie verzichtet die Ärztin auf Amoxicillin und verordnet Clarithromycin, dazu Mexalen 500 mg bei Bedarf.

Hypertonie und eitrige Angina werden jeweils als Condition erfasst, die Amoxicillin-Allergie als AllergyIntolerance. Hypertonie und Allergie nimmt die Ärztin in die Summary-Listen auf, damit sie auch anderen GDA beim Abruf angezeigt werden. Ein neuerlicher Abruf liefert die Summary-Einträge; über [alle Einträge abrufen](use_case_read.md#alle-einträge-abrufen) erhält sie die Gesamtansicht aller Diagnosen.

Am 9. März 2026 hat sich die Angina deutlich gebessert. Herr Mustermann berichtet jedoch über Durchfall und Juckreiz im Genitalbereich. Die Ärztin stellt eine Pilzinfektion (Candida-Balanitis) fest, vermutlich als Folge der Antibiotikatherapie, und verordnet Clotrimazol 1 % Creme.

Herr Mustermann vermutet zudem, dass die Antibiotikatherapie einen Schub seines seit 2010 bestehenden Morbus Crohn ausgelöst hat. Da der Durchfall sowohl Nebenwirkung als auch Teil eines Schubs sein kann, wird die Ursache weiter abgeklärt; bis dahin soll er auf ausreichende Flüssigkeitszufuhr achten. Die letzte Koloskopie fand am 23. September 2025 statt.

Die Ärztin dokumentiert Morbus Crohn, die medikamenteninduzierte Diarrhö und die Candida-Balanitis sowie die Koloskopie als Prozedur. Morbus Crohn und Koloskopie nimmt sie in die jeweilige Summary-Liste auf.

Die Ärztin befürchtet, dass ihr ein Fehler unterlaufen ist, und ruft die Condition-Summary-Liste ab. Dabei fällt ihr auf, dass sie für Morbus Crohn den Code für Hyperthyreose gewählt hat.

Sie [storniert](use_case_write.md#eintrag-stornieren) den Eintrag. Die e-Diagnose-Fachanwendung vermerkt die Stornierung und entfernt den Eintrag selbst aus der Summary-Liste.

Der stornierte Eintrag ist Version 2 derselben Diagnose. Da Beispiele im Leitfaden eindeutige IDs benötigen, ist er als [eigenes Beispiel](Condition-ConditionEntry03EnteredInError.md) abgebildet; auf dem Server behält er seine ursprüngliche ID.

Anschließend erfasst die Ärztin Morbus Crohn mit dem richtigen Code und nimmt die Diagnose in die Summary-Liste auf.

Stornierte Einträge bleiben Teil der Gesamtansicht. Der falsch codierte Eintrag ist daher in jedem Abruf aller Diagnosen enthalten – als storniert gekennzeichnet.

Am 20. April 2026 nimmt Herr Mustermann über das Portal Einsicht in seine e-Diagnose und ruft alle Diagnosen ab. Dabei sieht er, dass die im März dokumentierte Pilzinfektion in seiner Gesamtansicht aufscheint. Er möchte das nicht und [löscht](use_case_participant.md#eintrag-löschen) den Eintrag.

Der Eintrag wird daraufhin aus der Gesamtansicht gelöscht. Wäre die Diagnose auch Bestandteil der Summary-Liste, würde sie ebenfalls aus dieser entfernt; `List.source` wird in diesem Fall auf den Patienten gesetzt.

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

`GET /Condition`
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

die Fachanwendung entfernt den Eintrag selbst aus der Summary-Liste – kein $write durch den Client · List.source = e-Diagnose Fachanwendung

`GET /List?code=11450-4&_include=*`
Ergebnis prüfen

`200 Bundle`
[List v4](Bundle-ConditionListSearchSet03.md), ohne den stornierten Eintrag

`POST /Condition`
[Morbus Crohn](Condition-ConditionEntry06.md), korrekt codiert

`201 Created`
neue id

`POST /List/$write`
[Parameters](Parameters-ConditionListWrite03.md): + Morbus Crohn · If-Match: W/"4"

`200 OK`
[List v5](Bundle-ConditionListSearchSet04.md) gespeichert

der stornierte Eintrag ist weiterhin Teil der Gesamtansicht

`GET /Condition`
Gesamtansicht über das Portal abrufen

`200 Bundle`
[6 Diagnosen](Bundle-ConditionSearchSet02.md), inkl. storniertem Eintrag

`POST /Condition/[id]/$delete`
Candida-Balanitis, durch den ELGA-Teilnehmer über das Portal

`200 OK`
Eintrag unwiderruflich gelöscht

`GET /Condition`
Ergebnis prüfen

`200 Bundle`
[5 Diagnosen](Bundle-ConditionSearchSet03.md), ohne Candida-Balanitis

wäre der Eintrag in der Summary-Liste: neue Listenversion ohne ihn, List.source = Patient

