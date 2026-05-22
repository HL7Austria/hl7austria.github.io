# ELGA.MOPED\Ka-Org Mapping - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Mappings**](mappings.md)
* **Ka-Org Mapping**

## Ka-Org Mapping

Diese Seite enthält das Mapping der Meldungen des Ka-Org Systems zu FHIR. Die Dokumentation der Ka-Org Meldungen ist unter [diesem Link](https://www.sozialversicherung.at/cdscontent/?contentid=10007.821512) verfügbar.

### E1 -> FHIR

* Feld: Satzart
  * Abkürzung: SART
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Vertragspartnernummer der Krankenanstalt
  * Abkürzung: VPNR
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Abkürzung: AUFZL
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Fallnummer
  * Abkürzung: FANU
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: Wird ermittelt durch die Anzahl der TransferEncounter mit dem Funktionscode `10000000`
* Feld: Kostenträger (leistungszuständig)
  * Abkürzung: KOST
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.section:zustaendigeSV.entry.resolve()
  * Pfad von der Composition aus: Composition.section:zustaendigeSV.entry.resolve()
  * Anmerkungen: Slice mit dem System http://svc.co.at/CodeSystem/ecard-svt-cs
* Feld: zuständiger Versicherungsträger
  * Abkürzung: VSTR
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: noch inhaltlich abzuklären: ggf. über den Träger des KH definiert
* Feld: Aufnahme-/Ereignisdatum
  * Abkürzung: AUFN
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entlassungsdatum
  * Abkürzung: ENTL
  * Ambulant: O
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Kommentarsatz
  * Abkürzung: KOMM
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Versicherungsnummer des Hauptversicherten
  * Abkürzung: VSNR
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: Hauptversicherter
  * FHIR Ressource: RelatedPerson
  * Pfad von der Ressource aus: RelatedPerson.identifier:socialSecurityNumber.value
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve()
  * Anmerkungen: /
* Feld: Zuname des Hauptversicherten
  * Abkürzung: ZUNA
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: Hauptversicherter; MopedBasisPatientKlarname; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.name.family; RelatedPerson.name.family
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Vorname des Hauptversicherten
  * Abkürzung: VONA
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: Hauptversicherter; MopedBasisPatientKlarname; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.name.given; RelatedPerson.name.given
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geschlecht des Hauptversicherten
  * Abkürzung: GESCHL
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: Hauptversicherter; MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.gender; RelatedPerson.gender
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geburtsdatum des Hauptversicherten
  * Abkürzung: GEBDAT
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: Hauptversicherter; MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.birthDate; RelatedPerson.birthDate
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Abkürzung: DSID
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.id
  * Pfad von der Composition aus: Composition.id
  * Anmerkungen: Die KaOrg Datensatz-ID ist vergleichbar mit der technischen ID der Composition, welche einen Fall eindeutig identifiziert (inklusive Version)
* Feld: Versichertengruppe/Kategorie
  * Abkürzung: VGR
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedCoverage
  * FHIR Ressource: Coverage
  * Pfad von der Ressource aus: Coverage.class:Versichertenkategorien.value
  * Pfad von der Composition aus: Composition.section:Versichertenanspruch.entry.resolve()
  * Anmerkungen: /
* Feld: Versicherungsnummer des Mitversicherten
  * Abkürzung: AVSNR
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Notiz zur Kardinalität: *wenn Patient Mitversicherter, dann zwingend
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zuname des Mitversicherten
  * Abkürzung: AZUNA
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Notiz zur Kardinalität: *wenn Patient Mitversicherter, dann zwingend
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.name.family
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Vorname des Mitversicherten
  * Abkürzung: AVONA
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Notiz zur Kardinalität: *wenn Patient Mitversicherter, dann zwingend
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.name.given
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geschlecht des Mitversicherten
  * Abkürzung: AGESCHL
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Notiz zur Kardinalität: *wenn Patient Mitversicherter, dann zwingend
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.gender
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geburtsdatum des Mitversicherten
  * Abkürzung: AGEBDAT
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Notiz zur Kardinalität: *wenn Patient Mitversicherter, dann zwingend
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.birthDate
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Fehlercode
  * Abkürzung: FECO
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: generischer Kommunikationsprozess in Moped ist in Arbeit :)
* Feld: Datensatz-ID-Referenz
  * Abkürzung: DSIDR
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: in neuer Architektur nicht mehr notwendig
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer des Bundesministeriums
  * Abkürzung: BKANR
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend, ausgenommen EREIG 8 (Kurheilverfahren stationär), 9 (Rehabilitationsaufenthalt ambulant) und R (Aufnahme in den Bereich der Rehabilitation); TBD: codes für Moped relevant?
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Datensatzversion ID-Teil
  * Abkürzung: DVERS-ID
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: in neuer Architektur nicht mehr notwendig
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Datensatzversion Satzart-Teil
  * Abkürzung: DVERS-SA
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: in neuer Architektur nicht mehr notwendig
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig

### E1.1 -> FHIR

* Feld: Satzart
  * Abkürzung: SART
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Vertragspartnernummer der Krankenanstalt
  * Abkürzung: VPNR
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Abkürzung: AUFZL
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Fallnummer
  * Abkürzung: FANU
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: Wird ermittelt durch die Anzahl der TransferEncounter mit dem Funktionscode `10000000`
* Feld: Kostenträger (leistungszuständig)
  * Abkürzung: KOST
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.section:zustaendigeSV.entry.resolve()
  * Pfad von der Composition aus: Composition.section:zustaendigeSV.entry.resolve()
  * Anmerkungen: /
* Feld: zuständiger Versicherungsträger
  * Abkürzung: VSTR
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: noch inhaltlich abzuklären: ggf. über den Träger des KH definiert
* Feld: Aufnahme-/Ereignisdatum
  * Abkürzung: AUFN
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entlassungsdatum
  * Abkürzung: ENTL
  * Ambulant: O[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: Unterschied ambulant vs. stationär?
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Kommentarsatz
  * Abkürzung: KOMM
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Geburtsdatum des Hauptversicherten
  * Abkürzung: GEBDAT
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: Hauptversicherter; MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.birthDate; RelatedPerson.birthDate
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Abkürzung: DSID
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.id
  * Pfad von der Composition aus: Composition.id
  * Anmerkungen: Die KaOrg Datensatz-ID ist vergleichbar mit der technischen ID der Composition, welche einen Fall eindeutig identifiziert (inklusive Version)
* Feld: Geburtsdatum des Mitversicherten
  * Abkürzung: GEBDATA
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: optional (Unterschied zu E.1); TBD: klären warum der Patient nicht verpflichtend ist, aber der Hauptversicherte schon (nicht immer der Patient)
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.birthDate
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Fehlercode
  * Abkürzung: FECO
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: generischer Kommunikationsprozess in Moped ist in Arbeit :)
* Feld: Datensatz-ID Referenz
  * Abkürzung: DSIDR
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: in neuer Architektur nicht mehr notwendig
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer des Bundesministeriums
  * Abkürzung: BKANR
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend, ausgenommen EREIG 8 (Kurheilverfahren stationär), 9 (Rehabilitationsaufenthalt ambulant) und R (Aufnahme in den Bereich der Rehabilitation); TBD: codes für Moped relevant?
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Datensatzversion ID-Teil, Versionsnummer vom ID-Teil
  * Abkürzung: DVERS-ID
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: in neuer Architektur nicht mehr notwendig
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil
  * Abkürzung: DVERS-SA
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: in neuer Architektur nicht mehr notwendig
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig

### K01 -> FHIR

* Feld: E.1. Identifikationsteil
  * Abkürzung: 
  * Ambulant: siehe E1
  * Stationär: siehe E1
  * Notiz zur Kardinalität: siehe E1
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: Ereignisart
  * Abkürzung: EREIG
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterBund; MopedEncounterLGF; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:aufnahmeart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Funktionscode der Abteilung lt. LKF
  * Abkürzung: FKRA
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:Bewegungen.entry.resolve()
  * Anmerkungen: /
* Feld: Funktionssubcode der Abteilung lt. LKF
  * Abkürzung: FKRASU
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:Bewegungen.entry.resolve()
  * Anmerkungen: /
* Feld: Allgemeine Gebührenklasse/Sonderklasse
  * Abkürzung: KLAS
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend, ausgenommen EREIG 8 (Kurheilverfahren stationär), 9 (Rehabilitationsaufenthalt ambulant) und R (Aufnahme in den Bereich der Rehabilitation); TBD: codes für Moped relevant?
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Sonderklasse.code
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Staatsbürgerschaftsschlüssel
  * Abkürzung: STAAT
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend, ausgenommen EREIG 8 (Kurheilverfahren stationär), 9 (Rehabilitationsaufenthalt ambulant) und R (Aufnahme in den Bereich der Rehabilitation); TBD: codes für Moped relevant?
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.extension:citizenship.extension:code.value[x]
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohandresse des Patienten - Straße
  * Abkürzung: PASTR
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedPatientKlarnameKA; MopedPatientKlarnameSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.line.extension:street
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnadresse des Patienten - Länderkennzeichen
  * Abkürzung: PALKZ
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.country
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnadresse des Patienten - Postleitzahl
  * Abkürzung: PAPLZL
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.postalCode
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnadresse des Patienten - Ort
  * Abkürzung: PAORT
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.city
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Verdacht auf Arbeits-/Schülerunfall
  * Abkürzung: VERDAU
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.accident.type
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Diganose 1 - ICD10 BMSGPK Schlüssel
  * Abkürzung: DIAG1
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend, ausgenommen EREIG 8 (Kurheilverfahren stationär), 9 (Rehabilitationsaufenthalt ambulant) und R (Aufnahme in den Bereich der Rehabilitation); TBD: codes für Moped relevant?
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 1 - Untergliederung 1
  * Abkürzung: DIAG1U1
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend, ausgenommen EREIG 8 (Kurheilverfahren stationär), 9 (Rehabilitationsaufenthalt ambulant) und R (Aufnahme in den Bereich der Rehabilitation); TBD: codes für Moped relevant?
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 1 - Untergliederung 2
  * Abkürzung: DIAG1U2
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend, ausgenommen EREIG 8 (Kurheilverfahren stationär), 9 (Rehabilitationsaufenthalt ambulant) und R (Aufnahme in den Bereich der Rehabilitation); TBD: codes für Moped relevant?
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diganose 2 - ICD10 BMSGPK Schlüssel
  * Abkürzung: DIAG2
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 2 - Untergliederung 1
  * Abkürzung: DIAG2U1
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 2 - Untergliederung 2
  * Abkürzung: DIAG2U2
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diganose 3 - ICD10 BMSGPK Schlüssel
  * Abkürzung: DIAG3
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 3 - Untergliederung 1
  * Abkürzung: DIAG3U1
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 3 - Untergliederung 2
  * Abkürzung: DIAG3U2
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Fremdverschulden
  * Abkürzung: FREVER
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:VerdachtFremdverschulden.value[x]
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose im Klartext - kann bei Codierung entfallen
  * Abkürzung: DIAG
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Diagnose im Klartext nur bei der Aufnahmediagnose
* Feld: Ursache der Behandlung
  * Abkürzung: URS
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: wird bei Kur-/Rehabilitationsaufenthalten mit „99“ befüllt; Kur/Reha relevant?
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.reason:Ursache.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entbindungstag
  * Abkürzung: ENTBDAT
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Tel der KaOrg (Stand 2026)
* Feld: Überweisende Stelle - Vertragspartnernummer
  * Abkürzung: USVPNR
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Überweisende Stelle - Name
  * Abkürzung: USNA
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Überlegung, ob diese Organization 'contained' wird im Encounter
* Feld: Länderkennzeichen der überweisenden Stelle
  * Abkürzung: USLKZ
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Überlegung, ob diese Organization 'contained' wird im Encounter
* Feld: Überweisende Stelle - Postleitzahl
  * Abkürzung: USPLZL
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Überlegung, ob diese Organization 'contained' wird im Encounter
* Feld: Überweisende Stelle - Ort
  * Abkürzung: USORT
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Überlegung, ob diese Organization 'contained' wird im Encounter
* Feld: Ereignis-/Unfalldatum (initiales Aufnahmedatum)
  * Abkürzung: ERDAT
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Notiz zur Kardinalität: *bei Aufnahmeart 1, 7 oder wenn VERDAU 1 - 5
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Ereignis-/Unfalldatum (echtes Unfalldatum)
  * Abkürzung: ERDAT
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Notiz zur Kardinalität: *bei Aufnahmeart 1, 7 oder wenn VERDAU 1 - 5
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.accident.date
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Ereignis-/Unfalldatum (Verlängerungsdatum)
  * Abkürzung: ERDAT
  * Ambulant: O[Inv.]*
  * Stationär: O[Inv.]*
  * Notiz zur Kardinalität: *bei Aufnahmeart 1, 7 oder wenn VERDAU 1 - 5
  * befüllt von: MopedKAActor, MopedKAActor, MopedKAActor
  * Profile: MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.billablePeriod.start
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Anzahl der Verlängerungstage
  * Abkürzung: VTAG
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.billablePeriod.end; Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.value
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: Nicht das Unfalldatum sondern das VAE Verlängerungsdatum; Modellierung der Verlängerung ist in Arbeit
* Feld: VDAS-ID - Ergebnis der Abfrage
  * Abkürzung: VDAS
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: optional
  * befüllt von: MopedKAActor
  * Profile: MopedCoverage
  * FHIR Ressource: Coverage
  * Pfad von der Ressource aus: Coverage.identifier:VDASID
  * Pfad von der Composition aus: Composition.section:Versichertenanspruch.entry.resolve()
  * Anmerkungen: /

### K03 -> FHIR

* Feld: E.1. Identifikationsteil
  * Abkürzung: 
  * Ambulant: siehe E1
  * Stationär: siehe E1
  * Notiz zur Kardinalität: siehe E1
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: Ereignisart
  * Abkürzung: EREIG
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterBund; MopedEncounterLGF; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:aufnahmeart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Allgemeine Gebührenklasse/Sonderklasse
  * Abkürzung: KLAS
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Sonderklasse.code
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: wird in R6 von einer extension zu einem normalen supportingInfo slice
* Feld: VAE Beginndatum
  * Abkürzung: DAT-VON
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: Wenn Rückmeldung „in Bearbeitung“ (VAEST = 18 oder 98) dann nicht zwingend
  * befüllt von: MopedKAActor, MopedKAActor, MopedKAActor; MopedSVActor
  * Profile: MopedVAERequestInitial; MopedVAEResponse
  * FHIR Ressource: Claim; ClaimResponse
  * Pfad von der Ressource aus: Claim.billablePeriod.start; ClaimResponse.preAuthPeriod.start
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve(); Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: /
* Feld: VAE Endedatum
  * Abkürzung: DATBIS
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.preAuthPeriod.end
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: /
* Feld: Fristende
  * Abkürzung: ENDE
  * Ambulant: O[TBD]*
  * Stationär: O[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: Wenn Rückmeldung „in Bearbeitung“ (VAEST = 18 oder 98) dann nicht zwingend
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.preAuthPeriod.end
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: falls das Feld preAuthPeriod.end befüllt ist, gibt es ein Fristende (Fristende = 1)
* Feld: Status der VAE
  * Abkürzung: VAEST
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.decision
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: /
* Feld: Verpflegskosten-Beitragsbefreiung
  * Abkürzung: VKBEFR
  * Ambulant: /[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: Wenn Rückmeldung „in Bearbeitung“ (VAEST = 18 oder 98) dann nicht zwingend
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.extension:VerpflegskostenBeitragsbefreiung
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: /
* Feld: Vortageanzahl auf Kostenbeitrag
  * Abkürzung: VTAGE
  * Ambulant: /[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: Wenn Rückmeldung „in Bearbeitung“ (VAEST = 18 oder 98) dann nicht zwingend
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.extension:MopedSupportingInfoVortageanzahlAufKostenbeitrag
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: wird in R6 von einer extension zu einem normalen supportingInfo slice

### K05 -> FHIR

* Feld: E.1. Identifikationsteil
  * Abkürzung: 
  * Ambulant: siehe E1
  * Stationär: siehe E1
  * Notiz zur Kardinalität: siehe E1
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: Entlassungsschlüssel
  * Abkürzung: ENTS
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.dischargeDisposition
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Hauptdiagnose ICD 10 BMSGPK Schlüssel
  * Abkürzung: HDIAG
  * Ambulant: /
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *in Zukunft immer codiert notwendig?
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: Haupt und Zusatzdiagnosen können durch das Feld Condition.extension:Diagnosetyp unterschieden werden
* Feld: Hauptdiagnose Untergliederung 1
  * Abkürzung: HDIAGU1
  * Ambulant: /
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *in Zukunft immer codiert notwendig?
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptdiagnose Untergliederung 2
  * Abkürzung: HDIAGU2
  * Ambulant: /
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *in Zukunft immer codiert notwendig?
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Zusatzdiagnose 1 - ICD 10 BMSGPK Schlüssel
  * Abkürzung: ZDIAG1
  * Ambulant: /
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: Haupt und Zusatzdiagnosen können durch das Feld Condition.extension:Diagnosetyp unterschieden werden
* Feld: Zusatzdiagnose 1 - Untergliederung 1
  * Abkürzung: ZDIAGU1
  * Ambulant: /
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Zusatzdiagnose 1 - Untergliederung 2
  * Abkürzung: ZDIAGU2
  * Ambulant: /
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptdiagnose im Klartext - entfällt bei Codierung
  * Abkürzung: DAIG
  * Ambulant: /
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig; (nur Aufnahmediagnosen im Klartext möglich - alle anderen Diagnosen werden codiert)
* Feld: Fremdverschulden
  * Abkürzung: FREVER
  * Ambulant: /
  * Stationär: X*
  * Notiz zur Kardinalität: in K01 bereits zwingend daher für K05 nicht mehr optional notwendig
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:VerdachtFremdverschulden.value[x]
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Ursache der Behandlung
  * Abkürzung: URS
  * Ambulant: /
  * Stationär: X*
  * Notiz zur Kardinalität: in K01 bereits zwingend daher für K05 nicht mehr optional notwendig
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.reason:Ursache.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entbindungsdatum
  * Abkürzung: ENTBDAT
  * Ambulant: /
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: MopedKAActor
  * Profile: MopedObservationEntbindungsart; MopedObservationGeburtenanzahl
  * FHIR Ressource: Observation
  * Pfad von der Ressource aus: Observation.effective[x]:effectiveDateTime
  * Pfad von der Composition aus: Composition.section:Entbindung.entry.resolve()
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Anzahl der Lebendgeburten
  * Abkürzung: ENTGM
  * Ambulant: /
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: MopedKAActor
  * Profile: MopedObservationGeburtenanzahl
  * FHIR Ressource: Observation
  * Pfad von der Ressource aus: Observation.value[x]:valueQuantity.value
  * Pfad von der Composition aus: Composition.section:Entbindung.entry.resolve()
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Anzahl der Totgeburten
  * Abkürzung: ENTT
  * Ambulant: /
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: MopedKAActor
  * Profile: MopedObservationGeburtenanzahl
  * FHIR Ressource: Observation
  * Pfad von der Ressource aus: Observation.value[x]:valueQuantity.value
  * Pfad von der Composition aus: Composition.section:Entbindung.entry.resolve()
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Art der Entbindung
  * Abkürzung: ENTBART
  * Ambulant: /
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: MopedKAActor
  * Profile: MopedObservationEntbindungsart
  * FHIR Ressource: Observation
  * Pfad von der Ressource aus: Observation.value[x]:valueCodeableConcept
  * Pfad von der Composition aus: 
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Aufnahme-/Verlegungsdatum
  * Abkürzung: AVDAT
  * Ambulant: /
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Sonderklasse.timing[x]:timingPeriod
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: bei einer Verlegung der Klasse muss die VAE neu eingebracht (und somit auch die alte gecancelt werden)
* Feld: Verlegung Klasse
  * Abkürzung: VKLA
  * Ambulant: /
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Sonderklasse.code
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: bei einer Verlegung der Klasse muss die VAE neu eingebracht (und somit auch die alte gecancelt werden)
* Feld: Avisio-Info
  * Abkürzung: AI
  * Ambulant: /
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: MopedKAActor, MopedDeviceActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.status
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Wenn der Encounter.status = discharged bedeutet das, dass ein Entlassungsaviso vorliegt
* Feld: Anzahl der Tage für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde
  * Abkürzung: KABEFR
  * Ambulant: /
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounterAufnahmeS; MopedEncounterEntlassungS; MopedEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.extension:TageOhneKostenbeitrag
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /

### K09 -> FHIR

* Feld: IDTEIL Landesfonds
  * Abkürzung: 
  * Ambulant: siehe E1.1
  * Stationär: siehe E1.1
  * Notiz zur Kardinalität: siehe E1.1
  * befüllt von: siehe E1.1
  * Profile: siehe E1.1
  * FHIR Ressource: siehe E1.1
  * Pfad von der Ressource aus: siehe E1.1
  * Pfad von der Composition aus: siehe E1.1
  * Anmerkungen: siehe E1.1
* Feld: Urlaubstage im Verrechnungszeitraum
  * Abkürzung: VERURL
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Sonderleistungsnummer
  * Abkürzung: SOND
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Anzahl Sonderleistung
  * Abkürzung: SOANZ
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Entbindungsheimpflegekennzeichen
  * Abkürzung: EBH
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Ablehnungsgrund für Leistungserbringung stationär
  * Abkürzung: KVAB
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Qualifier
  * Abkürzung: QUAL
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Krankenanstaltennummer
  * Abkürzung: BKANR
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Kostenmeldung für (A/R/K)
  * Abkürzung: KOANF
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: 
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Abkürzung: AUFZ
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Geburtsdatum
  * Abkürzung: GEBDAT
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.birthDate
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Geschlecht
  * Abkürzung: GESL
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.gender
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Staatsbürgerschaft
  * Abkürzung: STAATB
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.extension:citizenship.extension:code.value[x]
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Hauptwohnsitz Staat
  * Abkürzung: STAATW
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.country
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Hauptwohnsitz Postleitzahl
  * Abkürzung: PLZLW
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.postalCode
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Aufnahmeart
  * Abkürzung: AUFART
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterBund; MopedEncounterLGF; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:aufnahmeart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Entlassungsart
  * Abkürzung: ENTLART
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.dischargeDisposition
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Entlassungsdatum
  * Abkürzung: ENT DAT
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Kostenträger
  * Abkürzung: KOST
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: LDF-Gruppe Teil1
  * Abkürzung: LDFGRP
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Gruppe Teil2
  * Abkürzung: LDFKNT
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte LDF-Pauschale
  * Abkürzung: LDFPP
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte Verweildauerausreißer unten
  * Abkürzung: VDU
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zusatzpunkte Verweildauerausreißer oben
  * Abkürzung: VDO
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zusatzpunkte Intensiv
  * Abkürzung: ZUINT
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zusatzpunkte Mehrleistungen
  * Abkürzung: ZUMEHR
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte spezieller Bereich
  * Abkürzung: PSPEZ
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte total
  * Abkürzung: PTOT
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Punktewert Netto
  * Abkürzung: LDFFAK
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Betrag Netto
  * Abkürzung: LDFBET
  * Ambulant: /
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Patientenanteil für Angehörige (tägl. Satz) netto
  * Abkürzung: VERSATZ
  * Ambulant: /
  * Stationär: O*
  * Notiz zur Kardinalität: *zwingend wenn bekannt
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Patientenanteil netto
  * Abkürzung: VERPA
  * Ambulant: /
  * Stationär: O*
  * Notiz zur Kardinalität: *zwingend wenn bekannt
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Beihilfenäquivalent
  * Abkürzung: BEIH
  * Ambulant: /
  * Stationär: O*
  * Notiz zur Kardinalität: *zwingend wenn bekannt
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Forderungsbetrag für Ausländerverrechnung
  * Abkürzung: FORDAV
  * Ambulant: /
  * Stationär: O*
  * Notiz zur Kardinalität: *zwingend wenn bekannt
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Forderungsbetrag für den Regress
  * Abkürzung: FORDRG
  * Ambulant: /
  * Stationär: O*
  * Notiz zur Kardinalität: *zwingend wenn bekannt
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: K21 Ausländerverrechnung/Regresse - Rückmeldung
  * Abkürzung: RUE
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: RENR
  * Abkürzung: RENR
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)

### K12 -> FHIR

* Feld: Identifikationsteil
  * Abkürzung: 
  * Ambulant: siehe E1
  * Stationär: siehe E1
  * Notiz zur Kardinalität: siehe E1
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: Zeilennummer
  * Abkürzung: ZEILNR
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Kommentartext
  * Abkürzung: TEXT1
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Kommentartext
  * Abkürzung: TEXT2
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Kommentartext
  * Abkürzung: TEXT3
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Kommentartext
  * Abkürzung: TEXT4
  * Ambulant: O
  * Stationär: O
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein

### K13 -> FHIR

* Feld: IDTEIL Landesfonds
  * Abkürzung: 
  * Ambulant: siehe E1.1
  * Stationär: siehe E1.1
  * Notiz zur Kardinalität: siehe E1.1
  * befüllt von: siehe E1.1
  * Profile: siehe E1.1
  * FHIR Ressource: siehe E1.1
  * Pfad von der Ressource aus: siehe E1.1
  * Pfad von der Composition aus: siehe E1.1
  * Anmerkungen: siehe E1.1
* Feld: Abteilung - Funktionscode der Ambulanz
  * Abkürzung: FKRA
  * Ambulant: X
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:Bewegungen.entry.resolve()
  * Anmerkungen: /
* Feld: Abteilung - Subcode
  * Abkürzung: FKRASU
  * Ambulant: X
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:Bewegungen.entry.resolve()
  * Anmerkungen: /
* Feld: Behandlungsdatum
  * Abkürzung: BDAT
  * Ambulant: X
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: MopedKAActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: LDF-Gruppe 1
  * Abkürzung: LDFGRP
  * Ambulant: X*
  * Stationär: /
  * Notiz zur Kardinalität: Kardinalität LKF
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Gruppe 2
  * Abkürzung: LDFKNR
  * Ambulant: X*
  * Stationär: /
  * Notiz zur Kardinalität: Kardinalität LKF
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Leistungspunkte
  * Abkürzung: ABTFC_LP
  * Ambulant: X*
  * Stationär: /
  * Notiz zur Kardinalität: Kardinalität LKF
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Kontaktpunkte
  * Abkürzung: ABTFC_KP
  * Ambulant: X*
  * Stationär: /
  * Notiz zur Kardinalität: Kardinalität LKF
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte Total
  * Abkürzung: PTOT
  * Ambulant: X
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Punktewert netto
  * Abkürzung: LDFFAK
  * Ambulant: X
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Betrag Netto
  * Abkürzung: LDFBET
  * Ambulant: X
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Beihilfenäquivalent
  * Abkürzung: BEIH
  * Ambulant: X
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Forderungsbetrag für Ausländerverrechnung
  * Abkürzung: FORDAV
  * Ambulant: O
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Forderungsbetrag für den Regress
  * Abkürzung: FORDRG
  * Ambulant: O
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Kostenmeldung für A/R/K
  * Abkürzung: KOANF
  * Ambulant: X
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /

### K20 -> FHIR

* Feld: IDTEIL Landesfonds
  * Abkürzung: 
  * Ambulant: siehe E1.1
  * Stationär: siehe E1.1
  * Notiz zur Kardinalität: siehe E1.1
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: diese Meldung ist in Moped in dieser Form nicht mehr notwendig
* Feld: Aufenthaltsartkennzeichen
  * Abkürzung: AUFKZ
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: diese Meldung ist in Moped in dieser Form nicht mehr notwendig
* Feld: Kostenmeldung für
  * Abkürzung: KOANF
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: diese Meldung ist in Moped in dieser Form nicht mehr notwendig

### K21 -> FHIR

* Feld: IDTEIL Landesfonds
  * Abkürzung: 
  * Ambulant: siehe E1.1
  * Stationär: siehe E1.1
  * Notiz zur Kardinalität: siehe E1.1
  * befüllt von: siehe E1.1
  * Profile: siehe E1.1
  * FHIR Ressource: siehe E1.1
  * Pfad von der Ressource aus: siehe E1.1
  * Pfad von der Composition aus: siehe E1.1
  * Anmerkungen: siehe E1.1
* Feld: Kostenmeldung
  * Abkürzung: KOANF
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zahlungskennzeichen Regress
  * Abkürzung: ZKZ
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Betrag Netto
  * Abkürzung: LDFBET
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Patientenanteil für Angehörige
  * Abkürzung: VERSATZ
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Patientenanteil
  * Abkürzung: VERPA
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Betrag Ausländerverrechnung
  * Abkürzung: BETRAV
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Betrag Regress
  * Abkürzung: BETRRG
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Rechnungsnummer
  * Abkürzung: RENR
  * Ambulant: /
  * Stationär: /
  * Notiz zur Kardinalität: /
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: nicht mehr Teil der KaOrg Meldung (Stand 2026)
* Feld: Abrechnungsart Ausländerverrechnung
  * Abkürzung: ART
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Prozentsatz der Zahlung
  * Abkürzung: PROZ
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Betreuungsschein bei Ausländerverrechnung
  * Abkürzung: SCHEIN
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Landescode
  * Abkürzung: LAND
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Grund, warum keine Zahlung erfolgte
  * Abkürzung: GRUND
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Rechnungsnummer der zwischenstaatlichen Abrechnung
  * Abkürzung: FREMDRE
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: wird in R6 von einer extension zu einem normalen supportingInfo slice
* Feld: Forderungsnummer der ÖGK
  * Abkürzung: ELBNR
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: wird in R6 von einer extension zu einem normalen supportingInfo slice
* Feld: Bezeichnung des ausländischen SV-Trägers
  * Abkürzung: ASVT
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *zwingend wenn zutreffend; TBD: wann zutreffend?
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /

### K27 -> FHIR

* Feld: E.1. Identifikationsteil
  * Abkürzung: 
  * Ambulant: siehe E1
  * Stationär: siehe E1
  * Notiz zur Kardinalität: siehe E1
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: EWR-Versicherungsnummer des Patienten
  * Abkürzung: EVSNR
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Nicht zu befüllen, wenn EFORM mit „ANFO“ belegt ist.
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zuname
  * Abkürzung: EZUNA
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Nicht zu befüllen, wenn EFORM mit „ANFO“ belegt ist.
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.name.family
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Vorname
  * Abkürzung: EVONA
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Nicht zu befüllen, wenn EFORM mit „ANFO“ belegt ist.
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.name.given
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geschlecht
  * Abkürzung: EGESL
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Nicht zu befüllen, wenn EFORM mit „ANFO“ belegt ist.
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.gender
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geburtsdatum
  * Abkürzung: EGEBD
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Nicht zu befüllen, wenn EFORM mit „ANFO“ belegt ist.
  * befüllt von: MopedKAActor
  * Profile: MopedBasisPatientKlarname; MopedBasisPatientvbPK; MopedPatientKlarnameBund; MopedPatientKlarnameKA; MopedPatientKlarnameLGF; MopedPatientKlarnameSV; MopedPatientvbPKBund; MopedPatientvbPKKA; MopedPatientvbPKLGF; MopedPatientvbPKSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.birthDate
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Staatenschlüssel
  * Abkürzung: ESTAAT
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: 
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Institutionscode des zuständen Trägers
  * Abkürzung: EIC
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Wenn EFORM mit „ANFO“ belegt ist, ist entweder EIC oder EAKRO zwingend zu belegen (Belegung beider Felder ebenso möglich).
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Akronym des zuständigen Trägers
  * Abkürzung: EAKRO
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Wenn EFORM mit „ANFO“ belegt ist, ist entweder EIC oder EAKRO zwingend zu belegen (Belegung beider Felder ebenso möglich).
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Kartennummer
  * Abkürzung: EKANR
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Wenn EFORM EKVK ist
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: 
* Feld: Endedatum des Anspruches
  * Abkürzung: EAEND
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Nicht zu befüllen, wenn EFORM mit „ANFO“ belegt ist.
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Art der Anspruchsbescheinigung
  * Abkürzung: EFORM
  * Ambulant: X
  * Stationär: X
  * Notiz zur Kardinalität: 
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: wird mit Terminologen abgeklärt
* Feld: Beginndatum des Anspruches
  * Abkürzung: EABEG
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: *Nicht zu befüllen wenn EFORM mit „ANFO“ belegt ist.
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Bei EFORM " ANFO mit der Wohnort-Stadt des Patienten
  * Abkürzung: ESTADT
  * Ambulant: X[TBD]*
  * Stationär: X[TBD]*
  * Notiz zur Kardinalität: * Wenn EFORM mit "ANFO" belegt ist
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /

