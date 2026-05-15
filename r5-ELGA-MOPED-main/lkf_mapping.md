# ELGA.MOPED\MBDS Mapping - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Mappings**](mappings.md)
* **MBDS Mapping**

## MBDS Mapping

Diese Seite enthält das Mapping der Meldungen des MBDS Datensatzes (X01-X07, I11-I12, K01*) des LKF Systems zu FHIR. Die Dokumentation der LKF Meldungen ist unter [ diesem Link](https://www.sozialministerium.at/dam/jcr:8553d407-cc41-4b15-bace-5c4e155e8d88/ANHANG1%20-%20AUFBAU%20UND%20INHALT%20DER%20DATENMELDUNGEN%202025%20SP1%2020250131.pdf) verfügbar.

### X01 -> FHIR

* Feld: Satzartenkennzeichen
  * Ambulant: /
  * Stationär: /
  * Intensiv: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:DatensatzID.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Kontaktdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Kontaktuhrzeit
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Behandlungsart
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.class:Behandlungsart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Geburtsdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.birthDate
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Altersgruppe bei Entlassung/Kontakt
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.extension:Altersgruppe
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Geschlecht
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.gender
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Staatsbürgerschaft
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.extension:citizenship.extension:code.value[x]
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnsitz – Staat
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.country
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnsitz – Postleitzahl
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Intensiv: 
  * Notiz zur Kardinalität: *nur für österreichische Patienten verpflichtend
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.postalCode
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnsitz – Gemeindecode
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Intensiv: 
  * Notiz zur Kardinalität: *nur für österreichische Patienten verpflichtend
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.extension:municipalityCode
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Zugangsart 1
  * Ambulant: O*
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: *Zwingend sofern systematisch erfasst
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterBund; MopedEncounterLGF; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:aufnahmeart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Zugangsart 2
  * Ambulant: O*
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: *Zwingend sofern systematisch erfasst
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.class:Aufnahmeart2
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Transportart
  * Ambulant: O*
  * Stationär: O*
  * Intensiv: 
  * Notiz zur Kardinalität: *Zwingend sofern systematisch erfasst
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:Transportart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Zugewiesen von – Krankenanstaltennummer
  * Ambulant: /
  * Stationär: X*
  * Intensiv: 
  * Notiz zur Kardinalität: *sofern ein Transfer vorliegt
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Zugewiesen an – Krankenanstaltennummer
  * Ambulant: /
  * Stationär: X*
  * Intensiv: 
  * Notiz zur Kardinalität: *sofern ein Transfer vorliegt
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.destination.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entlassungs-/Abgangsart
  * Ambulant: O[Prof.]*
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: Valueset in ambulant und stationär geteilt; *ambulant nur zwingend sofern systematisch erfasst
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.dischargeDisposition
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entlassungsdatum
  * Ambulant: /
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entlassungsuhrzeit
  * Ambulant: /
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Leistungszuständiger Kostenträger – Code
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.section:zustaendigeSV.entry.resolve()
  * Pfad von der Composition aus: Composition.section:zustaendigeSV.entry.resolve()
  * Anmerkungen: Slice mit dem System http://svc.co.at/CodeSystem/ecard-svt-cs
* Feld: Fondsrelevanz
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.extension:Fondsrelevanz
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Plausibilitätskennzeichen
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Plausibilitaetskennzeichen.value[x]
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Abrechnender Kostenträger – Code
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: noch inhaltlich abzuklären: ggf. über den Träger des KH definiert
* Feld: Abrechnungsquartal der Sozialversicherung
  * Ambulant: /
  * Stationär: /
  * Intensiv: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig

### X02 -> FHIR

* Feld: Satzartenkennzeichen
  * Ambulant: /
  * Stationär: /
  * Intensiv: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:DatensatzID.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Kontaktdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Hauptkostenstelle/Fachgebiet – Positionsnummer
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: ggf. über FHIR ID des TransferEncounters lösbar; Details sind noch abzuklären
* Feld: Hauptkostenstelle – Funktionscode/Fachgebiet
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: Funktions- und subcode sind in zwei Felder aufgeteilt
* Feld: Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit
  * Ambulant: /
  * Stationär: /
  * Intensiv: !
  * Notiz zur Kardinalität: nur für Intensiveinheiten auszufüllen, für die eine Intensivdokumentation (TISS-A/ SAPS3) übermittelt wird
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Physische Anwesenheit
  * Ambulant: X
  * Stationär: /
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.subjectStatus
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptkostenstelle – Abgangsdatum
  * Ambulant: /
  * Stationär: /
  * Intensiv: !
  * Notiz zur Kardinalität: nur für Intensiveinheiten auszufüllen, für die eine Intensivdokumentation (TISS-A/ SAPS3) übermittelt wird
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptkostenstelle – Abgangsuhrzeit
  * Ambulant: /
  * Stationär: /
  * Intensiv: !
  * Notiz zur Kardinalität: nur für Intensiveinheiten auszufüllen, für die eine Intensivdokumentation (TISS-A/ SAPS3) übermittelt wird
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptkostenstelle – Abgangsart
  * Ambulant: /
  * Stationär: /
  * Intensiv: !
  * Notiz zur Kardinalität: nur für Intensiveinheiten auszufüllen, für die eine Intensivdokumentation (TISS-A/ SAPS3) übermittelt wird
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.dischargeDisposition
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptkostenstelle – Fachlicher Funktionscode
  * Ambulant: /
  * Stationär: O*
  * Intensiv: 
  * Notiz zur Kardinalität: *zu befüllen, sofern dies auf Ebene der Landes- gesundheitsfonds festgelegt wird
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.participant:FachlichZustaendigeOrganisationseinheit.actor.resolve()
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: wird in AG Moped geklärt
* Feld: Hauptkostenstelle – Pflegerischer Funktionscode
  * Ambulant: /
  * Stationär: O*
  * Intensiv: 
  * Notiz zur Kardinalität: *zu befüllen, sofern dies auf Ebene der Landes- gesundheitsfonds festgelegt wird
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.participant:PflegerischZustaendigeOrganisationseinheit.actor.resolve()
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: wird in AG Moped geklärt
* Feld: Neugeborenes
  * Ambulant: /
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:Altersgruppe.extension:neugeborenes.value[x]
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Altersgruppe bei Zugang/Kontakt
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:Altersgruppe.extension:beiZugang.value[x]
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl – funktionscodebezogen
  * Ambulant: O[TBD]*
  * Stationär: /
  * Intensiv: 
  * Notiz zur Kardinalität: * Nur für Fondshäuser und TBD: nur bei Tagesklammer?
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounterA
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:AufnahmezahlFunktionscodebezogen.value
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /

### X03 -> FHIR

* Feld: Satzartenkennzeichen
  * Ambulant: /
  * Stationär: /
  * Intensiv: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:DatensatzID.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Kontaktdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Diagnose – Code
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose – Typ
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.extension:Diagnosetyp
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose – Art
  * Ambulant: O*
  * Stationär: /
  * Intensiv: 
  * Notiz zur Kardinalität: *zu befüllen, sofern dies im Rahmen der jährlich zu wartenden Abrechnungsmodelle oder von Modellprojekten der Bundesgesundheitsagentur vorgesehen ist
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.verificationStatus
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose – im stationären Aufenthalt erworben
  * Ambulant: /
  * Stationär: O*
  * Intensiv: 
  * Notiz zur Kardinalität: *ist für im Rahmen der jährlichen Wartung ausgewählte Diagnosen zu befüllen
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.diagnosis.onAdmission
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl – funktionscodebezogen
  * Ambulant: O[TBD]*
  * Stationär: /
  * Intensiv: 
  * Notiz zur Kardinalität: * Nur für Fondshäuser und TBD: nur bei Tagesklammer?
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounterA
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:AufnahmezahlFunktionscodebezogen.value
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /

### X04 -> FHIR

* Feld: Satzartenkennzeichen
  * Ambulant: /
  * Stationär: /
  * Intensiv: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer/Leistungserbringer-Stammdaten-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:DatensatzID.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Kontaktdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Medizinische Leistung – Code
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedProcedure
  * FHIR Ressource: Procedure
  * Pfad von der Ressource aus: Procedure.code
  * Pfad von der Composition aus: Composition.section:Leistungen.entry.resolve()
  * Anmerkungen: /
* Feld: Medizinische Leistung – Seitenlokalisation
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedProcedure
  * FHIR Ressource: Procedure
  * Pfad von der Ressource aus: Procedure.bodySite
  * Pfad von der Composition aus: Composition.section:Leistungen.entry.resolve()
  * Anmerkungen: /
* Feld: Medizinische Leistung – Abrechnungsrelevanz
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.procedure.extension:AbrechnungsRelevanz
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Medizinische Leistung – Anzahl
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedProcedure
  * FHIR Ressource: Procedure
  * Pfad von der Ressource aus: Procedure.extension:Leistungsanzahl
  * Pfad von der Composition aus: Composition.section:Leistungen.entry.resolve()
  * Anmerkungen: /
* Feld: Medizinische Leistung – Datum der Erbringung
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedProcedure
  * FHIR Ressource: Procedure
  * Pfad von der Ressource aus: Procedure.occurrence[x]:occurrenceDateTime
  * Pfad von der Composition aus: Composition.section:Leistungen.entry.resolve()
  * Anmerkungen: /
* Feld: Medizinische Leistung – Uhrzeit der Erbringung
  * Ambulant: O*
  * Stationär: O*
  * Intensiv: 
  * Notiz zur Kardinalität: * Zwingend sofern systematisch erfasst
  * befüllt von: MopedKAActor
  * Profile: MopedProcedure
  * FHIR Ressource: Procedure
  * Pfad von der Ressource aus: Procedure.occurrence[x]:occurrenceDateTime
  * Pfad von der Composition aus: Composition.section:Leistungen.entry.resolve()
  * Anmerkungen: /
* Feld: Funktionscode/Fachgebiet leistungserbringend
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Intensiv: 
  * Notiz zur Kardinalität: *Für alle Leistungen außer externe zu befüllen
  * befüllt von: MopedKAActor
  * Profile: MopedProcedure
  * FHIR Ressource: Procedure
  * Pfad von der Ressource aus: Procedure.performer.actor.resolve()
  * Pfad von der Composition aus: Composition.section:Leistungen.entry.resolve()
  * Anmerkungen: Referenz auf eine Abteilung
* Feld: Krankenanstaltennummer leistungserbringend
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Intensiv: 
  * Notiz zur Kardinalität: *Nur befüllt falls extern erbrachte Leistung
  * befüllt von: MopedKAActor
  * Profile: MopedProcedure
  * FHIR Ressource: Procedure
  * Pfad von der Ressource aus: Procedure.performer.actor.resolve()
  * Pfad von der Composition aus: Composition.section:Leistungen.entry.resolve()
  * Anmerkungen: Referenz auf eine Krankenanstalt
* Feld: Aufnahmezahl – funktionscodebezogen
  * Ambulant: O[TBD]*
  * Stationär: /
  * Intensiv: 
  * Notiz zur Kardinalität: * Nur für Fondshäuser und TBD: nur bei Tagesklammer?
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounterA
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:AufnahmezahlFunktionscodebezogen.value
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /

### X05 -> FHIR

* Feld: Satzartenkennzeichen
  * Ambulant: /
  * Stationär: /
  * Intensiv: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:DatensatzID.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Kontaktdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Abrechnung – Gruppe
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.diagnosisRelatedGroup
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Abrechnung – Knoten
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.extension:DiagnoseKnoten
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Leistungskomponente/Leistungspunkte
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:Leistungskomponente.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Tageskomponente/Kontaktpunkte
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:Tageskomponente.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Punkte Belagsdauerausreißer nach unten – Leistungskomponente
  * Ambulant: /
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:PunkteBelagsdauerausreisserUntenLeistungskomponente.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Punkte Belagsdauerausreißer nach unten – Tageskomponente
  * Ambulant: /
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:PunkteBelagsdauerausreisserUntenTageskomponente.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Zusatzpunkte Belagsdauerausreißer nach oben
  * Ambulant: /
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:ZusatzpunkteBelagsdauerausreisserNachOben.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Zusatzpunkte Intensiv
  * Ambulant: /
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:ZusatzpunkteIntensiv.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Zusatzpunkte Mehrfachleistungen
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:ZusatzpunkteMehrfachleistungen.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Punkte spezieller Bereiche (tageweise)
  * Ambulant: /
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:PunkteSpeziellerBereicheTageweise.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /
* Feld: Punkte total
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedLKFRequest
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.item:Gesamtpunkte.quantity.value
  * Pfad von der Composition aus: Composition.section:LKFRequests.entry.resolve()
  * Anmerkungen: /

### X06 -> FHIR

* Feld: Satzartenkennzeichen
  * Ambulant: /
  * Stationär: /
  * Intensiv: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:DatensatzID.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Kontaktdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Error/Warning – Wert
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Error/Warning Prozess in Arbeit
* Feld: Error/Warning – Code
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Error/Warning Prozess in Arbeit
* Feld: Error/Warning – Kommentar
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Error/Warning Prozess in Arbeit

### X07 -> FHIR

* Feld: Satzartenkennzeichen
  * Ambulant: /
  * Stationär: /
  * Intensiv: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:DatensatzID.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Kontaktdatum
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Kommentar 1
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true
* Feld: Kommentar 2
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true
* Feld: Kommentar 3
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true
* Feld: Kommentar 4
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true
* Feld: Kommentar 5
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true
* Feld: Kommentar 6
  * Ambulant: X
  * Stationär: X
  * Intensiv: 
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Kommentare die MBDS relevant sind und als X07 exportiert werden sollen enthalten in der Communication.extension:MBDSRelevanz den Wert true

### I11 SAPS -> FHIR

I11 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. Die Definition des Questionnares kann hier gefunden werden: [Saps Questionnaire](Questionnaire-LKFSAPS3Questionnaire.md)

### I12 TISS-A -> FHIR

I12 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. Die Definition des Questionnares kann hier gefunden werden: [TISS-A Questionnaire](Questionnaire-LKFTISSAQuestionnaire.md)

### LKF K01 -> FHIR

K01 wird als Questionnaire/QuestionnaireResponse modelliert. Die Definition des Questionnares kann hier gefunden werden: [K01 Questionnaire](Questionnaire-LKFK01Questionnaire.md)

### LKF L01 -> FHIR

L01 wird als fallbezogenes Questionnaire/QuestionnaireResponse modelliert. Die Definition des Questionnares kann hier gefunden werden: [L01 Questionnaire](Questionnaire-LKFL01Questionnaire.md)

