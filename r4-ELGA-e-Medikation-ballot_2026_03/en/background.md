# Hintergrund - ELGA e-Medikation (R4) DRAFT v0.1.0

## Hintergrund

Die ELGA e-Medikation ist seit 2015 auf Basis des „ELGA CDA Implementierungsleitfaden: e-Medikation“ (V2.06.6) produktiv; die Festlegungen dieses Leitfadens sind über die ELGA-Verordnung 2015 verbindlich. Der vorliegende FHIR Implementation Guide (IG) beschreibt die Ablöse der bestehenden Lösung in zwei Dimensionen: fachlich durch die Einführung eines eigenständig geführten Medikationsplans und technisch durch die Ablöse des dokumentenorientierten CDA-Standards durch den ressourcenorientierten FHIR-Standard.

Ausgangspunkt der Neuentwicklung ist eine strukturelle Lücke in der bestehenden e-Medikation: Die automatisch generierte Medikationsliste bildet ausschließlich einen IST-Zustand ab, also das, was über die ELGA e-Medikation verordnet und abgegeben wurde. Der medizinische SOLL-Zustand – die Festlegung, welche Medikation ein ELGA-Teilnehmer für welchen Zeitraum einnehmen soll – war strukturell nicht dokumentierbar. Erst der neue Medikationsplan schließt diese Lücke. Im Zuge der fachlichen Erweiterung wird zugleich die technische Basis erneuert: ein ressourcenbasiertes FHIR-Modell mit zentraler Fachanwendung und REST-Schnittstelle anstelle dokumentbasierter CDA-Nachrichten.

### Die bestehende e-Medikation auf Basis von CDA

Die e-Medikation nach dem CDA-Leitfaden (V2.06.6) ist dokumentenorientiert. Bei den Dokumenten der e-Medikation handelt es sich fachlich nicht um Befund-Dokumente im engeren Sinne, sondern um zwischen IT-Systemen ausgetauschte Nachrichtentypen, die technisch als CDA-Dokumente realisiert sind:

* **Rezept** (mit genau einer Verordnung je Arzneimittel; das Rezept bildet die Klammer über die Verordnungen),
* **Abgabe** (Dokumentation der erfolgten Arzneimittelabgabe),
* **Pharmazeutische Empfehlung** (Korrekturmeldung, mit der Verordnungen und Abgaben geändert, storniert oder abgesetzt werden),
* **Medikationsliste** (automatisch generiertes, konsolidiertes On-Demand-Dokument aus Verordnungen und Abgaben).

Der Leitfaden beschreibt zwölf Anwendungsfälle für die Akteure Arztpraxis, Krankenanstalt, Apotheke, Pflegeeinrichtung sowie ELGA-Teilnehmer und deren Vertretungen: Verordnung(en) mit Rezept anlegen, Rezept abrufen, Verordnung/Rezept ändern und stornieren; Abgabe mittels eMED-ID, über e-card oder ohne Verordnung durchführen; Abgabe abrufen, ändern, stornieren und absetzen; sowie das Abrufen der Medikationsliste. Änderungen und Stornierungen werden nicht am ursprünglichen Dokument vorgenommen, sondern als eigene Korrekturmeldungsdokumente abgelegt. Der fachliche Zustand ergibt sich aus der Dokumentlage (fixer Statuscode je Dokumentart: Verordnungen mit OFFEN, EINGELÖST, STORNIERT, ABGELAUFEN, NICHT_ABGEGEBEN; Abgaben mit ABGEGEBEN, ABGESETZT, STORNIERT).

### Ausgangspunkt: die strukturellen Grenzen der Medikationsliste

Die Medikationsliste wird bei jedem Aufruf serverseitig aus den gespeicherten Verordnungen und Abgaben neu erstellt. Es handelt sich damit um ein abgeleitetes Dokument; hieraus ergibt sich seine strukturelle Unvollständigkeit:

* **IST statt SOLL:** Die Medikationsliste gibt Verordnungen und Abgaben wieder. Der Therapieverlauf – welche Medikation für welchen Zeitraum einzunehmen ist – ist nicht als eigenständige, geführte Information abgebildet.
* **Unvollständiger Medikationsüberblick:** Dauermedikation, die nicht über ELGA-Rezepte läuft (u. a. Medikation in Krankenanstalten, private Verordnungswege, Auslandsrezepte), ist in der Liste nicht enthalten.
* **Therapieentscheidungen nur indirekt abgebildet:** Ein Absetzen wird als Korrekturmeldung an der jeweiligen Abgabe dokumentiert, nicht als Entscheidung im Therapieverlauf.
* **Keine geführte Historie:** Es existiert jeweils nur die aktuelle, konsolidierte Sicht; frühere Zustände der Medikation sind nicht reproduzierbar.
* **Keine dokumentierte Abwesenheit von Medikation:** Die Aussage, dass ein ELGA-Teilnehmer bewusst keine Medikation einnimmt, ist mit einem generierten Dokument nicht abbildbar.

Aufgrund dieser Grenzen ist die Medikationsliste als vollständige und verlässliche Datengrundlage nur eingeschränkt geeignet, etwa für die Übernahme von Medikationsinformationen in andere ELGA-Anwendungen wie die **Austrian Patient Summary**.

### Fachliche Weiterentwicklung: der Medikationsplan dokumentiert das medizinische SOLL

Kern des neuen Modells ist der Medikationsplan (siehe [Designentscheidungen](design_choices.md)): eine eigenständig geführte **List**-Ressource, die Medikationsplaneinträge (**MedicationRequest**) referenziert. Jeder Planeintrag dokumentiert genau ein verordnetes Arzneimittel samt Dosierung, unabhängig davon, ob und auf welchem Weg es abgegeben wurde. Auf Basis der Planeinträge werden **Geplante Abgaben (MedicationRequest)** erstellt; auf diesen aufbauend werden **Durchgeführte Abgaben (MedicationDispense)** dokumentiert.

Der Medikationsplan schließt die beschriebenen Grenzen der bisherigen e-Medikation:

* **Dokumentation des SOLL-Zustands:** Die Medikation eines ELGA-Teilnehmers wird aktiv geführt – mit Einnahmezeitraum, Dosierung und Status – und nicht aus Verordnungen und Abgaben abgeleitet.
* **Geführte Therapieentscheidungen:** Pausieren, Beenden und Absetzen eines Medikaments werden am Planeintrag dokumentiert; die fachliche Entscheidung ist damit Teil des geführten Medikationsplans statt einer Kennzeichnung an einzelnen Abgaben.
* **Durchgängige Bezüge:** **Geplante Abgaben** und **Durchgeführte Abgaben** referenzieren, soweit möglich, den zugrunde liegenden Planeintrag; Arzneimittel und Dosierung der **Geplanten Abgabe** dürfen sich vom Planeintrag nicht unterscheiden.
* **Vollständigkeit durch Kenntnisnahme:** Fremde Verordnungen (u.a. nachgetragene Auslandsrezepte, Medikation aus Krankenanstalten) können als Planeintrag unverändert zur Kenntnis genommen werden; auch Medikamente außerhalb der ELGA-Prozesse sind damit Teil des Plans.
* **Explizite Abwesenheit von Medikation:** Ein leerer Medikationsplan kann ausdrücklich dokumentiert werden.
* **Nachvollziehbare Historie:** Änderungen erzeugen neue versionierte Ressourcen; historische Medikationspläne sind über die History-Suche abrufbar.

### Technische Weiterentwicklung: FHIR statt CDA

Die fachliche Erweiterung ist zugleich Anlass einer grundlegenden Erneuerung der technischen Basis. Der Wechsel von CDA auf FHIR (R4) verändert das Grundmodell der e-Medikation (siehe [Designentscheidungen](design_choices.md)):

* **Ressourcen statt Dokumente:** Anstelle unveränderlicher, abgelegter Dokumente werden versionierte Einzelressourcen (List, MedicationRequest, MedicationDispense) geführt. Änderungen und Stornierungen werden über Statuswechsel und neue Versionen abgebildet; eigene Korrekturmeldungsdokumente entfallen.
* **Fachanwendung mit REST-Schnittstelle:** Die bisherige dokumentbasierte Ablage und der dokumentbezogene Abruf werden durch eine zentrale Fachanwendung mit standard FHIR Interaktionen und definierten Custom-Operations ($plan-read, $prescription-write, $prescription-discard, $dispense-write u. a.) abgelöst.
* **Explizite Konsistenz- und Nebenläufigkeitskontrolle:** Konsistenzregeln zwischen Plan und Planeinträgen sowie ETag-basiertes Locking steuern gleichzeitige Schreibzugriffe.
* **Historie als Basisfunktion:** Versionierte Ressourcen und versionierte Referenzen ermöglichen die Rekonstruktion jedes früheren Zustands des Medikationsplans.
* **Anschluss an das FHIR-Ökosystem:** R4 ist die am weitesten verbreitete FHIR-Version und die Basis der nationalen und internationalen Bezugspunkte dieses Leitfadens (u.a. HL7® AT Core Profiles, International Patient Summary, EHDS HL7 EU IGs). Der Medikationsplan wird damit zur konsistenten Datengrundlage für Anwendungen wie die **Austrian Patient Summary**.

