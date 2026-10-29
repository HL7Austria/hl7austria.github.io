# Home - ELGA e-Medikation (R4) DRAFT v0.1.0

## Home

Sehr geehrte e-Medikation-Konsensgruppen-Mitglieder,

* Dieser FHIR® Implementation Guide wird von **29.10.2026 bis 26.11.2026** einem **STU-Ballot** unterzogen.
* Abstimmungsberechtigt sind nur aktuelle Mitglieder der HL7 Austria, die sich bis 19.10.2026 für die Konsensgruppe registriert haben.
* Kommentarberechtigt ist jeder. Bitte verwenden Sie das [Excel-Formular](HL7-Ballot-2026-3_e-Medikation_MeineOrganisation.xlsx) und geben Sie immer eine exakte Beschreibung des Problems sowie einen Verweis als Link auf die entsprechende Stelle im Implementation Guide an.
* Die Kommunikation über den Ballot wird über den Verteiler der Konsensgruppe laufen; alle Ballot-Teilnehmer sind angehalten ihre Kommentare und Fragen an [tc-fhir@hl7.at](mailto:tc-fhir@hl7.at) zu melden.
* Für die Auflösungsphase der Kommentare ist eine Dauer von mindestens 2 Wochen vorgesehen.
* Die Widerspruchsphase - nach Aussendung der eingearbeiteten Korrekturen – dauert 2 Wochen.

Wir freuen uns schon jetzt über Ihre wiederum zahlreiche Beteiligung am Ballotierungsprozess, der einen wesentlichen Beitrag zur Qualitätssicherung und zum Erfolg der österreichischen e-Health Anwendungen beiträgt.

Herzlichen Dank für Ihr Engagement!

### FHIR Implementation Guide e‑Medikation Version 4

Dieser Implementation Guide beschreibt die fachliche und technische Weiterentwicklung der österreichischen ELGA e-Medikation auf Basis von HL7® FHIR® R4. Er sieht die Ablösung der bestehenden CDA-basierten Version 2 durch ein FHIR-basiertes Modell vor und erweitert die bisherige Funktionalität um einen eigenständig geführten Medikationsplan.

Der **Medikationsplan** bietet Behandler:innen und Patient:innen eine vollständige, strukturierte Übersicht über die aktuelle und historische Medikation. Die einzelnen Planeinträge enthalten die relevanten Informationen zu Verordnung, Dosierung und Einnahme eines Arzneimittels und bilden die Grundlage für Folgeprozesse wie Weiterverordnung, Rezeptierung und Abgabe.

Ergänzend zum Medikationsplan umfasst die e-Medikation **Geplante Abgaben** (vorgesehene Abgabevorgänge) und **Durchgeführte Abgaben** (tatsächlich erfolgte Abgaben mit und ohne Medikationsplanbezug). Die Verknüpfung dieser Informationen ermöglicht es, Verordnung und Abgabe im fachlichen Zusammenhang nachzuvollziehen und unterstützt die Verfügbarkeit relevanter Medikationsinformationen für die Behandlung und Therapieentscheidungen. Darüber hinaus bildet der Medikationsplan eine Datengrundlage für die automatisierte Übernahme relevanter Medikationsinformationen in die **ELGA Patient Summary**.

![](e_medikation_overview_start.png)

Der Implementation Guide definiert die erforderlichen FHIR-Ressourcen und -Profile, die fachlichen Regeln für deren Zusammenspiel sowie die technischen Interaktionen zwischen den beteiligten Systemen. Die Bereitstellung der Funktionalität erfolgt über definierte FHIR-Schnittstellen und Operationen der zentralen Fachanwendung.

Die Weiterentwicklung der e-Medikation unterstützt die österreichische eHealth-Strategie und trägt zur Umsetzung der Anforderungen des European Health Data Space (EHDS) bei.

