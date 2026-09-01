# Überblick & Anwendungsbeispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* **Überblick & Anwendungsbeispiel**

## Überblick & Anwendungsbeispiel

### Überblick über die Anwendungsfälle

Folgendes Use Case Diagramm stellt die relevanten Funktionen der Austrian Patient Summary dar.

### Anwendungsbeispiel

Das folgende Anwendungsbeispiel beschreibt den primären Einsatzfall der Austrian Patient Summary und zeigt, wie die zu einem bestimmten Zeitpunkt verfügbaren Informationen im Rahmen der APS dargestellt werden.

Da derzeit noch nicht abschließend festgelegt ist, welche Dokumente und Systeme als Datenquellen für die APS herangezogen werden, werden im Folgenden bestimmte Annahmen getroffen. So könnten relevante Informationen beispielsweise aus Laborbefunden oder Ambulanzbefunden extrahiert werden (siehe auch [Datenherkunft](design_choices.md#datenherkunft)).

**Beispiel**

**1. Arztbesuch**

Frau [Maria Musterfrau](Patient-at-aps-example-patient-01.md), geboren am 17. April 1989, nimmt am 8. Februar 2025 bei ihrer neuen Ärztin [Dr. Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md) eine Vorsorgeuntersuchung in Anspruch. Diese ruft die aktuelle [APS (Journey-1)](Bundle-AtApsExampleBundle-Journey-1.md) ihrer Patientin ab, um eine Zusammenfassung bereits dokumentierter Erkrankungen und Befunde einsehen zu können:

* Die [Medikationsliste](Bundle-AtApsExampleBundle-Journey-1.md#medikationsliste) zeigt Dr. Hausärztin, die in der zentralen Anwendung e-Medikation verfügbaren Medikationsdaten der Patientin an. Dieser wurden vor ca. 2 Monaten nach einem Krankenhausaufenthalt aufgrund von zu hohem Blutdruck Ramipril (5 mg) verordnet.
* Um sich das genauer anzusehen, kann Dr. Hausärztin in der Sektion [Gesundheitsprobleme und Risiken](Bundle-AtApsExampleBundle-Journey-1.md#gesundheitsprobleme-und-risiken) unter der dort angeführten "Arteriellen Hypertonie" das zugrundeliegende Quelldokument, nämlich den Entlassungsbrief aus dem AKH Amadeus einsehen. Weiters ist in dieser Sektion ersichtlich, dass eine familiäre Vorbelastung bezüglich Diabetes mellitus vorliegt.
* In der Sektion [Vergangene Gesundheitsprobleme und Risiken](Bundle-AtApsExampleBundle-Journey-1.md#vergangene-gesundheitsprobleme-und-risiken) sieht Dr. Hausärztin eine in der Kindheit durchgemachte Windpocken-Erkrankung, basierend auf einem referenzierten Ambulanzbefund.
* Aus der Sektion [Allergien und Intoleranzen](Bundle-AtApsExampleBundle-Journey-1.md#allergien-und-intoleranzen) geht eine Hausstaubmilbenallergie hervor.
* Die Sektion [Eingriffe und Therapien](Bundle-AtApsExampleBundle-Journey-1.md#eingriffe-und-therapien) gibt Auskunft darüber, dass bei Frau Musterfrau im Jahr 2010 das Hüftgelenk ersetzt werden musste und sie daher links ein Hüftimplantat trägt, wie im Abschnitt [Implantate, medizinische Geräte und Heilbehelfe](Bundle-AtApsExampleBundle-Journey-1.md#implantate-medizinische-geräte-und-heilbehelfe) hervorgeht. Weiters ersichtlich ist eine Blinddarmentfernung (2015) und eine durchgeführte Koloskopie (2012).
* Bei der Kontrolle der eingetragenen [Impfungen](Bundle-AtApsExampleBundle-Journey-1.md#impfungen) sieht Dr. Hausärztin, dass am 8. Jänner eine Diphtherie-Pertussis-Poliomyelitis-Tetanus-Impfung durchgeführt wurde.

Im Anschluss untersucht Dr. Hausärztin die Patientin und misst Körpergröße und -gewicht, Blutdruck und Puls (**Vitalparameter**) und erhebt den Raucherstauts, Alkoholkonsum und körperliche Aktivität (**Lebensstil**) der Patientin und dokumentiert dies in einem neuen Befund. Bei der Untersuchung wird eine Parodontalerkrankung diagnostiziert.

Zuletzt veranlasst Dr. Hausärztin eine Labordiagnostik und empfiehlt einen Zahnarztbesuch.

Dr. Hausärztin speichert ihren soeben erstellten Befund und kontrolliert die automatisch von der zentralen Anwendung aktualisierte [APS (Journey-2)](Bundle-AtApsExampleBundle-Journey-2.md) durch erneute Abfrage.

**2. Arztbesuch**

Dr. Hausarzt bespricht die Laborergebnisse, die am 13. Februar eingetroffen sind, mit der Patientin. Die Ergebnisse sind in der APS in der Sektion [Diagnostische Resultate (Journey-3)](Bundle-AtApsExampleBundle-Journey-3.md#diagnostische-resultate) ersichtlich.

