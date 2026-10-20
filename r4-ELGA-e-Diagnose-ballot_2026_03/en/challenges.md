# Herausforderungen - ELGA e-Diagnose R4 v0.1.0

## Herausforderungen

### FHIR® R4

Aktuell liegen die IPS und APS nur auf Basis von FHIR® R4 vor. Ob und wann die beiden auch in R5 bzw. R6 zur Verfügung stehen, ist noch nicht klar. Deshalb wird die e-Diagnose zurzeit auch nur in FHIR® R4 spezifiziert.

Die e-Diagnose ist als langlebige nationale Infrastruktur angelegt, während sich der FHIR-Standard in Zyklen weiterentwickelt. Ein Wechsel auf FHIR R6 erfordert eine Migration sämtlicher Profile, Operationen, Value Sets und Client-Anbindungen. Im Falle einer Umstellung ist eine entsprechende Vorlaufzeit und ein Migrationskonzept einzuplanen.

### Dependency Management

Der Leitfaden baut auf IPS-Profilen und internationalen Value Sets (z.B. eHDSI des MyHealth@EU-Master-ValueSet-Catalogue) auf. Änderungen in diesen Abhängigkeiten müssen laufend nachgezogen werden, ohne die Stabilität einer produktiven Fachanwendung zu gefährden.

### Nebenläufigkeit

Eine der wichtigsten Herausforderungen einer zentralen, gemeinsam genutzten FHIR-Anwendung betrifft die Nebenläufigkeit: Die Summary-Liste ist ein klassisches Read-Modify-Write-Konstrukt mit Optimistic Locking. Das bedeutet, konkurrierende Schreibvorgänge werden verworfen, nicht gemerged; die fachliche Konfliktauflösung bleibt beim Client. Details sind bei den [Designentscheidungen](design_choices.md#nebenläufigkeit-optimistic-locking) bzw. unter [Schreibender Zugriff](use_case_write.md) zu finden.

### Interpretationslast beim Lesen

Da Einträge keine inhaltlichen Versionen besitzen, müssen Clients aus mehreren, über den Business Identifier verknüpften Einträgen die fachlich aktuelle Aussage ableiten (siehe [Kein Update auf einzelne Einträge](design_choices.md#update-entry)). Die e-Diagnose definiert dafür keine kanonische Auswertungsregel (z.B. "letzter Eintrag je Identifier gewinnt"), sondern überlässt die Darstellung den Clients. Da alte Einträge nie überschrieben und im Normalfall nicht gelöscht werden, wächst die Gesamtansicht kontinuierlich. Clients müssen den Nutzer bei der Filterung und Anzeige unterstützen.

### Deutsche Übersetzung

Wo es einfach möglich ist (narrative Texte, Erklärungen in Profilen), wird die deutsche Sprache verwendet. Dort, wo auf die FHIR-Spezifikation aufgebaut wird (z. B. Elemente in Profilen) oder wo die Texte vom IG Publisher vorgegeben werden, sind die Texte in Englisch.

