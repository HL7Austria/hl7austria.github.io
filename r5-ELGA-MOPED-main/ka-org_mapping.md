# ELGA.MOPED\Ka-Org Mapping - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Mappings**](mappings.md)
* **Ka-Org Mapping**

## Ka-Org Mapping

Diese Seite enthält das Mapping der Meldungen des Ka-Org Systems zu FHIR. Die Dokumentation der Ka-Org Meldungen ist unter [diesem Link](https://www.sozialversicherung.at/cdscontent/?contentid=10007.821512) verfügbar.

### E1 -> FHIR

* Feld: Satzart
  * Abkürzung: SART
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Vertragspartnernummer der Krankenanstalt
  * Abkürzung: VPNR
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Abkürzung: AUFZL
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Fallnummer
  * Abkürzung: FANU
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.extension:AnzahlBeurlaubungen
  * Pfad von der Composition aus: Composition.extension:AnzahlBeurlaubungen
  * Anmerkungen: /
* Feld: Kostenträger (leistungszuständig)
  * Abkürzung: KOST
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.section:zustaendigeSV.entry.resolve()
  * Pfad von der Composition aus: Composition.section:zustaendigeSV.entry.resolve()
  * Anmerkungen: Slice mit dem System http://svc.co.at/CodeSystem/ecard-svt-cs
* Feld: zuständiger Versicherungsträger
  * Abkürzung: VSTR
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: noch inhaltlich abzuklären: ggf. über den Träger des KH definiert
* Feld: Aufnahme-/Ereignisdatum
  * Abkürzung: AUFN
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entlassungsdatum
  * Abkürzung: ENTL
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Kommentarsatz
  * Abkürzung: KOMM
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Versicherungsnummer des Hauptversicherten
  * Abkürzung: VSNR
  * befüllt von: MopedKHActor
  * Profile: Hauptversicherter; MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.identifier:socialSecurityNumber; RelatedPerson.identifier:socialSecurityNumber.value
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Zuname des Hauptversicherten
  * Abkürzung: ZUNA
  * befüllt von: MopedKHActor
  * Profile: Hauptversicherter; MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.name.family; RelatedPerson.name.family
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Vorname des Hauptversicherten
  * Abkürzung: VONA
  * befüllt von: MopedKHActor
  * Profile: Hauptversicherter; MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.name.given; RelatedPerson.name.given
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geschlecht des Hauptversicherten
  * Abkürzung: GESCHL
  * befüllt von: MopedKHActor
  * Profile: Hauptversicherter; MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.gender; RelatedPerson.gender
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geburtsdatum des Hauptversicherten
  * Abkürzung: GEBDAT
  * befüllt von: MopedKHActor
  * Profile: Hauptversicherter; MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.birthDate; RelatedPerson.birthDate
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Abkürzung: DSID
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.id
  * Pfad von der Composition aus: Composition.id
  * Anmerkungen: Die KaOrg Datensatz-ID ist vergleichbar mit der technischen ID der Composition, welche einen Fall eindeutig identifiziert (inklusive Version)
* Feld: Versichertengruppe/Kategorie
  * Abkürzung: VGR
  * befüllt von: MopedKHActor
  * Profile: MopedCoverage
  * FHIR Ressource: Coverage
  * Pfad von der Ressource aus: Coverage.class:Versichertenkategorien.value
  * Pfad von der Composition aus: Composition.section:Coverages.entry.resolve()
  * Anmerkungen: /
* Feld: Versicherungsnummer des Mitversicherten
  * Abkürzung: AVSNR
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.identifier:socialSecurityNumber
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Zuname des Mitversicherten
  * Abkürzung: AZUNA
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.name.family
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Vorname des Mitversicherten
  * Abkürzung: AVONA
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.name.given
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geschlecht des Mitversicherten
  * Abkürzung: AGESCHL
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.gender
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geburtsdatum des Mitversicherten
  * Abkürzung: AGEBDAT
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.birthDate
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Fehlercode
  * Abkürzung: FECO
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: generischer Kommunikationsprozess in Moped ist in Arbeit :)
* Feld: Datensatz-ID-Referenz
  * Abkürzung: DSIDR
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer des Bundesministeriums
  * Abkürzung: BKANR
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Datensatzversion ID-Teil
  * Abkürzung: DVERS-ID
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Datensatzversion Satzart-Teil
  * Abkürzung: DVERS-SA
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig

### E1.1 -> FHIR

* Feld: Satzart
  * Abkürzung: SART
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Vertragspartnernummer der Krankenanstalt
  * Abkürzung: VPNR
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Aufnahmezahl
  * Abkürzung: AUFZL
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.identifier:Aufnahmezahl.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Fallnummer
  * Abkürzung: FANU
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.extension:AnzahlBeurlaubungen
  * Pfad von der Composition aus: Composition.extension:AnzahlBeurlaubungen
  * Anmerkungen: /
* Feld: Kostenträger (leistungszuständig)
  * Abkürzung: KOST
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.section:zustaendigeSV.entry.resolve()
  * Pfad von der Composition aus: Composition.section:zustaendigeSV.entry.resolve()
  * Anmerkungen: /
* Feld: zuständiger Versicherungsträger
  * Abkürzung: VSTR
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: noch inhaltlich abzuklären: ggf. über den Träger des KH definiert
* Feld: Aufnahme-/Ereignisdatum
  * Abkürzung: AUFN
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entlassungsdatum
  * Abkürzung: ENTL
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.end
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Kommentarsatz
  * Abkürzung: KOMM
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Geburtsdatum des Hauptversicherten
  * Abkürzung: GEBDAT
  * befüllt von: MopedKHActor
  * Profile: Hauptversicherter; MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient; RelatedPerson
  * Pfad von der Ressource aus: Patient.birthDate; RelatedPerson.birthDate
  * Pfad von der Composition aus: Composition.section:Hauptversicherter.entry.resolve(); Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Datensatz-ID
  * Abkürzung: DSID
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.id
  * Pfad von der Composition aus: Composition.id
  * Anmerkungen: Die KaOrg Datensatz-ID ist vergleichbar mit der technischen ID der Composition, welche einen Fall eindeutig identifiziert (inklusive Version)
* Feld: Geburtsdatum des Mitversicherten
  * Abkürzung: GEBDATA
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.birthDate
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Fehlercode
  * Abkürzung: FECO
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: generischer Kommunikationsprozess in Moped ist in Arbeit :)
* Feld: Datensatz-ID Referenz
  * Abkürzung: DSIDR
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Krankenanstaltennummer des Bundesministeriums
  * Abkürzung: BKANR
  * befüllt von: MopedDeviceActor
  * Profile: MopedAnfragenComposition; MopedAufnahmeComposition; MopedBeantwortenComposition; MopedComposition; MopedEntlassenAvisoComposition; MopedEntlassenVollstaendigComposition; MopedMasterComposition; MopedUpdateComposition
  * FHIR Ressource: Composition
  * Pfad von der Ressource aus: Composition.author.resolve()
  * Pfad von der Composition aus: Composition.author.resolve()
  * Anmerkungen: /
* Feld: Datensatzversion ID-Teil, Versionsnummer vom ID-Teil
  * Abkürzung: DVERS-ID
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil
  * Abkürzung: DVERS-SA
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig

### K01 -> FHIR

* Feld: E.1. Identifikationsteil
  * Abkürzung: 
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: Ereignisart
  * Abkürzung: EREIG
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterBund; MopedEncounterLGF; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:aufnahmeart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Funktionscode der Abteilung lt. LKF
  * Abkürzung: FKRA
  * befüllt von: MopedKHActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Funktionssubcode der Abteilung lt. LKF
  * Abkürzung: FKRASU
  * befüllt von: MopedKHActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Allgemeine Gebührenklasse/Sonderklasse
  * Abkürzung: KLAS
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Sonderklasse.code
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Staatsbürgerschaftsschlüssel
  * Abkürzung: STAAT
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.extension:citizenship
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohandresse des Patienten - Straße
  * Abkürzung: PASTR
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.line.extension:street
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnadresse des Patienten - Länderkennzeichen
  * Abkürzung: PALKZ
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.country
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnadresse des Patienten - Postleitzahl
  * Abkürzung: PAPLZL
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.postalCode
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Wohnadresse des Patienten - Ort
  * Abkürzung: PAORT
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.city
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Verdacht auf Arbeits-/Schülerunfall
  * Abkürzung: VERDAU
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.accident.type
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Diganose 1 - ICD10 BMSGPK Schlüssel
  * Abkürzung: DIAG1
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 1 - Untergliederung 1
  * Abkürzung: DIAG1U1
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 1 - Untergliederung 2
  * Abkürzung: DIAG1U2
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diganose 2 - ICD10 BMSGPK Schlüssel
  * Abkürzung: DIAG2
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 2 - Untergliederung 1
  * Abkürzung: DIAG2U1
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 2 - Untergliederung 2
  * Abkürzung: DIAG2U2
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diganose 3 - ICD10 BMSGPK Schlüssel
  * Abkürzung: DIAG3
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 3 - Untergliederung 1
  * Abkürzung: DIAG3U1
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose 3 - Untergliederung 2
  * Abkürzung: DIAG3U2
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Fremdverschulden
  * Abkürzung: FREVER
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:VerdachtFremdverschulden.value[x]
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Diagnose im Klartext - kann bei Codierung entfallen
  * Abkürzung: DIAG
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Diagnose im Klartext nur bei der Aufnahmediagnose
* Feld: Ursache der Behandlung
  * Abkürzung: URS
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.reason:Ursache.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entbindungstag
  * Abkürzung: ENTBDAT
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: erst in K05 relevant
* Feld: Überweisende Stelle - Vertragspartnernummer
  * Abkürzung: USVPNR
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Überweisende Stelle - Name
  * Abkürzung: USNA
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Überlegung, ob diese Organization 'contained' wird im Encounter
* Feld: Länderkennzeichen der überweisenden Stelle
  * Abkürzung: USLKZ
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Überlegung, ob diese Organization 'contained' wird im Encounter
* Feld: Überweisende Stelle - Postleitzahl
  * Abkürzung: USPLZL
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Überlegung, ob diese Organization 'contained' wird im Encounter
* Feld: Überweisende Stelle - Ort
  * Abkürzung: USORT
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.origin.resolve()
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Überlegung, ob diese Organization 'contained' wird im Encounter
* Feld: Ereignis-/Unfalldatum (initiales Aufnahmedatum)
  * Abkürzung: ERDAT
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Ereignis-/Unfalldatum (echtes Unfalldatum)
  * Abkürzung: ERDAT
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.accident.date
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Ereignis-/Unfalldatum (Verlängerungsdatum)
  * Abkürzung: ERDAT
  * befüllt von: MopedKHActor, MopedKHActor, MopedKHActor
  * Profile: MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.billablePeriod.start
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Anzahl der Verlängerungstage
  * Abkürzung: VTAG
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.billablePeriod.end; Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.value
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: Nicht das Unfalldatum sondern das VAE Verlängerungsdatum; Modellierung der Verlängerung ist in Arbeit
* Feld: VDAS-ID - Ergebnis der Abfrage
  * Abkürzung: VDAS
  * befüllt von: MopedKHActor
  * Profile: MopedCoverage
  * FHIR Ressource: Coverage
  * Pfad von der Ressource aus: Coverage.identifier:VDASID
  * Pfad von der Composition aus: Composition.section:Coverages.entry.resolve()
  * Anmerkungen: /

### K03 -> FHIR

* Feld: E.1. Identifikationsteil
  * Abkürzung: 
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: Ereignisart
  * Abkürzung: EREIG
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterBund; MopedEncounterLGF; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:aufnahmeart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Allgemeine Gebührenklasse/Sonderklasse
  * Abkürzung: KLAS
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Sonderklasse.code
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: wird in R6 von einer extension zu einem normalen supportingInfo slice
* Feld: VAE Beginndatum
  * Abkürzung: DAT-VON
  * befüllt von: MopedKHActor, MopedKHActor, MopedKHActor; MopedSVActor
  * Profile: MopedVAERequestInitial; MopedVAEResponse
  * FHIR Ressource: Claim; ClaimResponse
  * Pfad von der Ressource aus: Claim.billablePeriod.start; ClaimResponse.preAuthPeriod.start
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve(); Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: /
* Feld: VAE Endedatum
  * Abkürzung: DATBIS
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.preAuthPeriod.end
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: /
* Feld: Fristende
  * Abkürzung: ENDE
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.preAuthPeriod.end
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: falls das Feld preAuthPeriod.end befüllt ist, gibt es ein Fristende (Fristende = 1)
* Feld: Status der VAE
  * Abkürzung: VAEST
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.decision
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: /
* Feld: Verpflegskosten-Beitragsbefreiung
  * Abkürzung: VKBEFR
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.extension:VerpflegskostenBeitragsbefreiung
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: /
* Feld: Vortageanzahl auf Kostenbeitrag
  * Abkürzung: VTAGE
  * befüllt von: MopedSVActor
  * Profile: MopedVAEResponse
  * FHIR Ressource: ClaimResponse
  * Pfad von der Ressource aus: ClaimResponse.extension:MopedSupportingInfoVortageanzahlAufKostenbeitrag
  * Pfad von der Composition aus: Composition.section:VAEResponses.entry.resolve()
  * Anmerkungen: wird in R6 von einer extension zu einem normalen supportingInfo slice

### K05 -> FHIR

* Feld: E.1. Identifikationsteil
  * Abkürzung: 
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: Hauptdiagnose ICD 10 BMSGPK Schlüssel
  * Abkürzung: HDIAG
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: Haupt und Zusatzdiagnosen können durch das Feld Condition.extension:Diagnosetyp unterschieden werden
* Feld: Hauptdiagnose Untergliederung 1
  * Abkürzung: HDIAGU1
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptdiagnose Untergliederung 2
  * Abkürzung: HDIAGU2
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Zusatzdiagnose 1 - ICD 10 BMSGPK Schlüssel
  * Abkürzung: ZDIAG1
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: Haupt und Zusatzdiagnosen können durch das Feld Condition.extension:Diagnosetyp unterschieden werden
* Feld: Zusatzdiagnose 1 - Untergliederung 1
  * Abkürzung: ZDIAGU1
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Zusatzdiagnose 1 - Untergliederung 2
  * Abkürzung: ZDIAGU2
  * befüllt von: MopedKHActor
  * Profile: MopedCondition
  * FHIR Ressource: Condition
  * Pfad von der Ressource aus: Condition.code.coding:ICD10
  * Pfad von der Composition aus: Composition.section:Diagnosen.entry.resolve()
  * Anmerkungen: /
* Feld: Fremdverschulden
  * Abkürzung: FREVER
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:VerdachtFremdverschulden.value[x]
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: /
* Feld: Hauptdiagnose im Klartext - entfällt bei Codierung
  * Abkürzung: DAIG
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig; (nur Aufnahmediagnosen im Klartext möglich - alle anderen Diagnosen werden codiert)
* Feld: Ursache der Behandlung
  * Abkürzung: URS
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.reason:Ursache.value
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entbindungsdatum
  * Abkürzung: ENTBDAT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Anzahl der Lebendgeburten - männliche Kinder
  * Abkürzung: ENTGM
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Anzahl der Lebendgeburten - weibliche Kinder
  * Abkürzung: ENTGW
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Anzahl der Totgeburten
  * Abkürzung: ENTT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Art der Entbindung
  * Abkürzung: ENTBART
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: Thema Geburt in Arbeit
* Feld: Entlassungsschlüssel
  * Abkürzung: ENTS
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.dischargeDisposition
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Aufnahme-/Verlegungsdatum
  * Abkürzung: AVDAT
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Sonderklasse.timing[x]:timingPeriod
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: bei einer Verlegung der Klasse muss die VAE neu eingebracht (und somit auch die alte gecancelt werden)
* Feld: Verlegung Klasse
  * Abkürzung: VKLA
  * befüllt von: MopedKHActor
  * Profile: MopedVAERequest; MopedVAERequestInitial; MopedVAERequestVerlaengerung
  * FHIR Ressource: Claim
  * Pfad von der Ressource aus: Claim.supportingInfo:Sonderklasse.code
  * Pfad von der Composition aus: Composition.section:VAERequests.entry.resolve()
  * Anmerkungen: bei einer Verlegung der Klasse muss die VAE neu eingebracht (und somit auch die alte gecancelt werden)
* Feld: Avisio-Info
  * Abkürzung: AI
  * befüllt von: MopedKHActor, MopedDeviceActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.status
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: Wenn der Encounter.status = discharged bedeutet das, dass ein Entlassungsaviso vorliegt
* Feld: Anzahl der Tage für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde
  * Abkürzung: KABEFR
  * befüllt von: MopedKHActor
  * Profile: MopedEncounterAufnahmeS; MopedEncounterEntlassungS; MopedEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.extension:TageOhneKostenbeitrag
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /

### K09 -> FHIR

* Feld: IDTEIL Landesfonds
  * Abkürzung: 
  * befüllt von: siehe E1.1
  * Profile: siehe E1.1
  * FHIR Ressource: siehe E1.1
  * Pfad von der Ressource aus: siehe E1.1
  * Pfad von der Composition aus: siehe E1.1
  * Anmerkungen: siehe E1.1
* Feld: Staatsbürgerschaft
  * Abkürzung: STAATB
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.extension:citizenship
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Hauptwohnsitz Staat
  * Abkürzung: STAATW
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.country
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Hauptwohnsitz Postleitzahl
  * Abkürzung: PLZLW
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.address.postalCode
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Aufnahmeart
  * Abkürzung: AUFART
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterBund; MopedEncounterLGF; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.extension:aufnahmeart
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entlassungsart
  * Abkürzung: ENTLART
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.admission.dischargeDisposition
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Entbindungsheimpflegekennzeichen
  * Abkürzung: EBH
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt
* Feld: Urlaubstage im Verrechnungszeitraum
  * Abkürzung: VERURL
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt
* Feld: Sonderleistungsnummer
  * Abkürzung: SOND
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt
* Feld: Anzahl Sonderleistung
  * Abkürzung: SOANZ
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt
* Feld: Ablehnungsgrund für Leistungserbringung stationär
  * Abkürzung: KVAB
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt
* Feld: Qualifier
  * Abkürzung: QUAL
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt
* Feld: Kostenmeldung für (A/R/K)
  * Abkürzung: KOANF
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Gruppe Teil1
  * Abkürzung: LDFGRP
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Gruppe Teil2
  * Abkürzung: LDFKNT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte LDF-Pauschale
  * Abkürzung: LDFPP
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte Verweildauerausreißer unten
  * Abkürzung: VDU
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zusatzpunkte Verweildauerausreißer oben
  * Abkürzung: VDO
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zusatzpunkte Intensiv
  * Abkürzung: ZUINT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zusatzpunkte Mehrleistungen
  * Abkürzung: ZUMEHR
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte spezieller Bereich
  * Abkürzung: PSPEZ
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte total
  * Abkürzung: PTOT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Punktewert Netto
  * Abkürzung: LDFFAK
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Betrag Netto
  * Abkürzung: LDFBET
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Patientenanteil für Angehörige (tägl. Satz) netto
  * Abkürzung: VERSATZ
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Patientenanteil netto
  * Abkürzung: VERPA
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Beihilfenäquivalent
  * Abkürzung: BEIH
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Forderungsbetrag für Ausländerverrechnung
  * Abkürzung: FORDAV
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Forderungsbetrag für den Regress
  * Abkürzung: FORDRG
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: K21 Ausländerverrechnung/Regresse - Rückmeldung
  * Abkürzung: RUE
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt
* Feld: RENR
  * Abkürzung: RENR
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt

### K12 -> FHIR

* Feld: Identifikationsteil
  * Abkürzung: 
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: Zeilennummer
  * Abkürzung: ZEILNR
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: in neuer Architektur nicht mehr notwendig
* Feld: Kommentartext
  * Abkürzung: TEXT1
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Kommentartext
  * Abkürzung: TEXT2
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Kommentartext
  * Abkürzung: TEXT3
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein
* Feld: Kommentartext
  * Abkürzung: TEXT4
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: bei Kommentaren der SV muss die Communication.extension:MBDSRelevanz = false sein

### K13 -> FHIR

* Feld: IDTEIL Landesfonds
  * Abkürzung: 
  * befüllt von: siehe E1.1
  * Profile: siehe E1.1
  * FHIR Ressource: siehe E1.1
  * Pfad von der Ressource aus: siehe E1.1
  * Pfad von der Composition aus: siehe E1.1
  * Anmerkungen: siehe E1.1
* Feld: Abteilung - Funktionscode der Ambulanz
  * Abkürzung: FKRA
  * befüllt von: MopedKHActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Abteilung - Subcode
  * Abkürzung: FKRASU
  * befüllt von: MopedKHActor
  * Profile: MopedTransferEncounter; MopedTransferEncounterA; MopedTransferEncounterI; MopedTransferEncounterS
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.serviceType:MopedServiceType.reference.resolve()
  * Pfad von der Composition aus: Composition.section:TransferEncounter.entry.resolve()
  * Anmerkungen: /
* Feld: Behandlungsdatum
  * Abkürzung: BDAT
  * befüllt von: MopedKHActor
  * Profile: MopedEncounter; MopedEncounterA; MopedEncounterAufnahmeS; MopedEncounterBund; MopedEncounterEntlassungS; MopedEncounterLGF; MopedEncounterS; MopedEncounterSV
  * FHIR Ressource: Encounter
  * Pfad von der Ressource aus: Encounter.actualPeriod.start
  * Pfad von der Composition aus: Composition.encounter.resolve()
  * Anmerkungen: /
* Feld: Kostenmeldung für A/R/K
  * Abkürzung: KOANF
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Gruppe 1
  * Abkürzung: LDFGRP
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Gruppe 2
  * Abkürzung: LDFKNR
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Punkte Total
  * Abkürzung: PTOT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Punktewert netto
  * Abkürzung: LDFFAK
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Betrag Netto
  * Abkürzung: LDFBET
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Beihilfenäquivalent
  * Abkürzung: BEIH
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Forderungsbetrag für Ausländerverrechnung
  * Abkürzung: FORDAV
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Forderungsbetrag für den Regress
  * Abkürzung: FORDRG
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Leistungspunkte
  * Abkürzung: ABTFC_LP
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Kontaktpunkte
  * Abkürzung: ABTFC_KP
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /

### K20 -> FHIR

* Feld: IDTEIL Landesfonds
  * Abkürzung: 
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: diese Meldung ist in Moped in dieser Form nicht mehr notwendig
* Feld: Aufenthaltsartkennzeichen
  * Abkürzung: AUFKZ
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: diese Meldung ist in Moped in dieser Form nicht mehr notwendig
* Feld: Kostenmeldung für
  * Abkürzung: KOANF
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: diese Meldung ist in Moped in dieser Form nicht mehr notwendig

### K21 -> FHIR

* Feld: IDTEIL Landesfonds
  * Abkürzung: 
  * befüllt von: siehe E1.1
  * Profile: siehe E1.1
  * FHIR Ressource: siehe E1.1
  * Pfad von der Ressource aus: siehe E1.1
  * Pfad von der Composition aus: siehe E1.1
  * Anmerkungen: siehe E1.1
* Feld: Kostenmeldung
  * Abkürzung: KOANF
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zahlungskennzeichen Regress
  * Abkürzung: ZKZ
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: LDF-Betrag Netto
  * Abkürzung: LDFBET
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Patientenanteil für Angehörige
  * Abkürzung: VERSATZ
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Patientenanteil
  * Abkürzung: VERPA
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Betrag Ausländerverrechnung
  * Abkürzung: BETRAV
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Betrag Regress
  * Abkürzung: BETRRG
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Rechnungsnummer
  * Abkürzung: RENR
  * befüllt von: /
  * Profile: /
  * FHIR Ressource: /
  * Pfad von der Ressource aus: /
  * Pfad von der Composition aus: /
  * Anmerkungen: laut Abstimmung: vorläufige Überarbeitung KaOrg - Feld wird voraussichtlich entfernt
* Feld: Abrechnungsart Ausländerverrechnung
  * Abkürzung: ART
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Prozentsatz der Zahlung
  * Abkürzung: PROZ
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Betreuungsschein bei Ausländerverrechnung
  * Abkürzung: SCHEIN
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Landescode
  * Abkürzung: LAND
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Grund, warum keine Zahlung erfolgte
  * Abkürzung: GRUND
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Rechnungsnummer der zwischenstaatlichen Abrechnung
  * Abkürzung: FREMDRE
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: wird in R6 von einer extension zu einem normalen supportingInfo slice
* Feld: Forderungsnummer der ÖGK
  * Abkürzung: ELBNR
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: wird in R6 von einer extension zu einem normalen supportingInfo slice
* Feld: Bezeichnung des ausländischen SV-Trägers
  * Abkürzung: ASVT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /

### K27 -> FHIR

* Feld: E.1. Identifikationsteil
  * Abkürzung: 
  * befüllt von: siehe E1
  * Profile: siehe E1
  * FHIR Ressource: siehe E1
  * Pfad von der Ressource aus: siehe E1
  * Pfad von der Composition aus: siehe E1
  * Anmerkungen: siehe E1
* Feld: EWR-Versicherungsnummer des Patienten
  * Abkürzung: EVSNR
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Zuname
  * Abkürzung: EZUNA
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.name.family
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Vorname
  * Abkürzung: EVONA
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.name.given
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geschlecht
  * Abkürzung: EGESL
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.gender
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Geburtsdatum
  * Abkürzung: EGEBD
  * befüllt von: MopedKHActor
  * Profile: MopedPatient; MopedPatientBund; MopedPatientLGF; MopedPatientSV
  * FHIR Ressource: Patient
  * Pfad von der Ressource aus: Patient.birthDate
  * Pfad von der Composition aus: Composition.subject.resolve()
  * Anmerkungen: /
* Feld: Staatenschlüssel
  * Abkürzung: ESTAAT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Instituionscode des zuständen Trägers
  * Abkürzung: EIC
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Akronym des zuständigen Trägers
  * Abkürzung: EAKRO
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Kartennummer
  * Abkürzung: EKANR
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Endedatum des Anspruches
  * Abkürzung: EAEND
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Art der Anspruchsbescheinigung
  * Abkürzung: EFORM
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: wird mit Terminologen abgeklärt
* Feld: Beginndatum des Anspruches
  * Abkürzung: EABEG
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /
* Feld: Bei EFORM " ANFO mit der Wohnort-Stadt des Patienten
  * Abkürzung: ESTADT
  * befüllt von: 
  * Profile: 
  * FHIR Ressource: 
  * Pfad von der Ressource aus: 
  * Pfad von der Composition aus: 
  * Anmerkungen: /

