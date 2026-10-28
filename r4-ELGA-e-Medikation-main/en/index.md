# Home - ELGA e-Medikation (R4) DRAFT v0.1.0

## Home

### FHIR Implementation Guide e‑Medikation Version 4

Dieser Implementation Guide beschreibt die fachliche und technische Weiterentwicklung der österreichischen ELGA e-Medikation auf Basis von HL7® FHIR® R4. Er sieht die Ablösung der bestehenden CDA-basierten Version 2 durch ein FHIR-basiertes Modell vor und erweitert die bisherige Funktionalität um einen eigenständig geführten Medikationsplan.

Der **Medikationsplan** bietet Behandler:innen und Patient:innen eine vollständige, strukturierte Übersicht über die aktuelle und historische Medikation. Die einzelnen Planeinträge enthalten die relevanten Informationen zu Verordnung, Dosierung und Einnahme eines Arzneimittels und bilden die Grundlage für Folgeprozesse wie Weiterverordnung, Rezeptierung und Abgabe.

Ergänzend zum Medikationsplan umfasst die e-Medikation **Geplante Abgaben** (vorgesehene Abgabevorgänge) und **Durchgeführte Abgaben** (tatsächlich erfolgte Abgaben mit und ohne Medikationsplanbezug). Die Verknüpfung dieser Informationen ermöglicht es, Verordnung und Abgabe im fachlichen Zusammenhang nachzuvollziehen und unterstützt die Verfügbarkeit relevanter Medikationsinformationen für die Behandlung und Therapieentscheidungen. Darüber hinaus bildet der Medikationsplan eine Datengrundlage für die automatisierte Übernahme relevanter Medikationsinformationen in die **ELGA Patient Summary**.

![](e_medikation_overview_start.png)

Der Implementation Guide definiert die erforderlichen FHIR-Ressourcen und -Profile, die fachlichen Regeln für deren Zusammenspiel sowie die technischen Interaktionen zwischen den beteiligten Systemen. Die Bereitstellung der Funktionalität erfolgt über definierte FHIR-Schnittstellen und Operationen der zentralen Fachanwendung.

Die Weiterentwicklung der e-Medikation unterstützt die österreichische eHealth-Strategie und trägt zur Umsetzung der Anforderungen des European Health Data Space (EHDS) bei.

