# Herausforderungen - ELGA e-Medikation (R4) DRAFT v0.1.0

## Herausforderungen

 Zum Stand der Entscheidungen: Zu Parallelbetrieb, Migration und Mapping wurden noch **keine finalen Entscheidungen** getroffen. 

 Die im Folgenden beschriebenen Herausforderungen sind daher theoretischer Natur: Sie zeigen Spannungsfelder und Risiken auf, die entstehen können, wenn v2 (CDA) und v4 (FHIR) über eine Übergangszeit hinweg koexistieren und bestehende Daten sowie laufende Prozesse weitergeführt werden. Sie dienen als Entscheidungsgrundlage für die künftige Ausgestaltung von Migrations- und Parallelbetriebskonzepten, nicht als Festlegung eines solchen Konzepts. 

 **Hinweise, Erfahrungswerte und zusätzliche Perspektiven der Ballot-Teilnehmer:innen sind explizit erwünscht!** 

### Potenzielle Herausforderungen im Mapping

* **Struktur Dokument vs. Ressource:** Was im CDA-Modell ein zusammengehöriges Dokument ist, wird im FHIR-Modell zu einer Menge eigenständiger, versionierter Objekte. Jegliche Migration muss daher klären, wie Zusammengehörigkeit, Historie und fachliche Klammer übertragen werden. Beide Modelle sehen dies grundsätzlich unterschiedlich vor.
* **Identitäten und Referenzierbarkeit:** Die Geschäftsidentitäten (eMED-ID, Verordnungs- und Abgabe-Identitäten) sind in den beiden Modellen unterschiedlich verankert.
* **Status, Storno und Versionierung:** Das CDA-Modell führt den fachlichen Zustand implizit über die Dokumentlage (fester Statuscode, Korrekturen und Storni als eigene Dokumente); das FHIR-Modell führt ihn explizit pro Ressource (Statuswerte, Konsistenzregeln, Versionierung). Wird ein Vorgang in einer Welt storniert oder geändert, während er in der anderen noch als gültig geführt wird, entsteht ein Risiko.
* **Verlustbehaftetes Mapping:** Die Modelle sind nicht bijektiv: Inhalte und Strukturierungen können ohne direktes Pendant in der jeweils anderen Welt bestehen. Eine Abbildung kann daher grundsätzlich nicht verlustfrei erfolgen. Offen bleibt, wie Konvertierungen nachvollziehbar dokumentiert werden.
* **Geänderte Geschäftsregeln:** Zwischen den Leitfäden können sich fachliche Regeln ändern (z.B. Gültigkeitszeiträume, Anzahl möglicher Einlösungen, Verbindlichkeit von Angaben). Bestandsdaten sind nach den damaligen Regeln entstanden; werden sie nach den neuen Regeln interpretiert, können fachlich falsche Ergebnisse entstehen.

### Potenzielle Herausforderungen im Parallelbetrieb

* **Gemischter Datenbestand:** Pro Patient könnten historische CDA-Dokumente und neue FHIR-Ressourcen nebeneinander bestehen. Ohne konsolidierte Führung wären Duplikate und widersprüchliche Zustände möglich. Besonders spannungsreich ist der Konzeptwechsel von der generierten Medikationsliste zum explizit geführten Medikationsplan, da für Bestandsdaten keine Referenzen auf Planeinträge existieren.
* **Zeitliche Überlappung:** Rezepte sind je nach Rezeptart zwischen einem Monat und über einem Jahr gültig und überlappen damit jeden denkbaren Umstellungszeitpunkt. Jedes Parallelbetriebs- oder Migrationsszenario müsste sicherstellen, dass Einlösungen, Teilabgaben und laufende Korrekturen auch über die Formatgrenze hinweg möglich bleiben. Zugleich bestimmen Aufbewahrungs- und Archivierungsfristen, wie lange Alt-Daten lesbar bleiben müssen.
* **Konsistenz und Nebenläufigkeit:** Der CDA-Leitfaden 2.06 definiert kein Locking für gleichzeitige Schreibzugriffe; das FHIR-Modell sichert diese über ETags und Versionierung ab. In einer Koexistenz könnten konkurrierende Zugriffe auf denselben fachlichen Vorgang aus beiden Welten eintreffen. Konflikterkennung und -behandlung müssten systemübergreifend wirken, obwohl nur eine Seite über ein entsprechendes Verfahren verfügt.

### FHIR® R4 vs. R5 vs. R6

* Dieser Leitfaden beruht auf FHIR R4 (Version 4.0.1). Für diese Entscheidung sprechen technische wie strategische Gründe: R4 ist seit 2019 verfügbar und ist die erste Version, in der ein Großteil der klinischen und administrativen Kernressourcen normativ ist – ihre Strukturen dürfen sich in künftigen Versionen also nicht mehr inkompatibel ändern. Zugleich existiert für R4 das mit Abstand breiteste Ökosystem an Referenzimplementierungen, Werkzeugen und Herstellerverbreitung; auch die nationalen und internationalen Bezugspunkte dieses Leitfadens (u.a. HL7® AT Core Profiles, International Patient Summary, EHDS HL7 EU IGs) beruhen auf R4. 
 R5 wurde 2023 als Standard for Trial Use und zeitgleich angekündigt, dass die Folgeversion R6 normativen Status erreichen wird. Die Nutzung von FHIR R5 hält sich daher in engen Grenzen. R6 befindet sich noch im Ballot-Verfahren; eine finale Veröffentlichung steht aus. Beide Versionen kommen damit als Grundlage für ein produktives System (noch) nicht in Frage.
* Mit der Wahl von R4 ist jedoch eine eigene Herausforderung verbunden: FHIR-Versionen haben einen langen Lebenszyklus, und die hier erforderliche Übergangszeit, von der Erstellung dieses Leitfadens über seine verbindliche Festlegung bis zur Ablöse der CDA-Welt, könnte Jahre umspannen. Innerhalb dieses Zeitraums wird die Nachfolgeversion R6 höchstwahrscheinlich veröffentlicht und von Teilen des Umfelds angenommen werden. Spätestens dann stellte sich eine Variante der bereits beschriebenen Koexistenzproblematik auf einer neuen Ebene: Bestandsdaten, Clients und Schnittstellen auf R4 müssten über Jahre hinweg neben solchen auf einer neueren Version betrieben werden, und ein späterer Wechsel der FHIR-Version könnte zu einer zweiten, der CDA-Migration in vielerlei Hinsicht analogen Migration werden – inklusive der Frage, wie Übergangszeiträume gegenüber Herstellern und Betreibern festgelegt und durchgesetzt werden.

