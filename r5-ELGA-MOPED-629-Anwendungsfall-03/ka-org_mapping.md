# ELGA.MOPED\Ka-Org Mapping - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Ka-Org Mapping**

## Ka-Org Mapping

Diese Seite enthält das Mapping der Meldungen des Ka-Org Systems zu FHIR. Die Dokumentation der Ka-Org Meldungen ist unter [diesem Link](https://www.sozialversicherung.at/cdscontent/?contentid=10007.821512) verfügbar.

### Identifikationsteil -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.1 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K01, K02, K03, K04, K05, K06, K12, K27 |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| VSNR | Versicherungsnummer des Hauptversicherten | RelatedPerson | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| ZUNA | Zuname des Hauptversicherten | RelatedPerson | .name.given |  | falldaten | $aufnehmen |  |
| VONA | Vorname des Hauptversicherten | RelatedPerson | .name.family |  | falldaten | $aufnehmen |  |
| GESCHL | Geschlecht des Hauptversicherten | RelatedPerson | .gender |  | falldaten | $aufnehmen |  |
| GEBDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| VGR | Versichertengruppe/Kategorie | MopedCoverage | .class:Versichertenkategorien |  | falldaten | $aufnehmen |  |
| AVSNR | Versicherungsnummer des Mitversicherten | HL7ATCorePatient | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| AZUNA | Zuname de Mitversicherten | HL7ATCorePatient | .name.family |  | falldaten | $aufnehmen |  |
| AVONA | Vorname de Mitversicherten | HL7ATCorePatient | .name.given |  | falldaten | $aufnehmen |  |
| AGESCHL | Geschlecht des Mitversicherten | HL7ATCorePatient | .gender |  | falldaten | $aufnehmen |  |
| AGEBDAT | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID-Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |

### Identifikationsteil für den Landesgesundheitsfonds -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E1.1 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K09, K10, K13, K14, K20, K21, K22 |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| GEVDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| GEBDATA | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil, Versionsnummer vom ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |

### K01 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.4 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K01 - Aufnahmeanzeige, Ereignisanzeige; K02 - Storno Aufnahmeanzeige, Storno Ereignisanzeige |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| VSNR | Versicherungsnummer des Hauptversicherten | RelatedPerson | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| ZUNA | Zuname des Hauptversicherten | RelatedPerson | .name.given |  | falldaten | $aufnehmen |  |
| VONA | Vorname des Hauptversicherten | RelatedPerson | .name.family |  | falldaten | $aufnehmen |  |
| GESCHL | Geschlecht des Hauptversicherten | RelatedPerson | .gender |  | falldaten | $aufnehmen |  |
| GEBDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| VGR | Versichertengruppe/Kategorie | MopedCoverage | .class:Versichertenkategorien |  | falldaten | $aufnehmen |  |
| AVSNR | Versicherungsnummer des Mitversicherten | HL7ATCorePatient | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| AZUNA | Zuname de Mitversicherten | HL7ATCorePatient | .name.family |  | falldaten | $aufnehmen |  |
| AVONA | Vorname de Mitversicherten | HL7ATCorePatient | .name.given |  | falldaten | $aufnehmen |  |
| AGESCHL | Geschlecht des Mitversicherten | HL7ATCorePatient | .gender |  | falldaten | $aufnehmen |  |
| AGEBDAT | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID-Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| EREIG | Ereignisart | MopedEncounter | .admission.extension | Aufnahmeart | falldaten | $aufnehmen | EREIG=AUFART -> MOPEDEncounter.admission.extension:Zugangsart |
| FKRA | Funktionscode der Abteilung lt. LKF | MopedOrganizationAbteilung | .identifier:Funktionscode |  | funktionscode | Stammdaten; $aufnehmen und $verlegen |  |
| FKRASU | Funktionssubcode der Abteilung lt. LKF | MopedOrganizationAbteilung | .identifier:Funktionssubcode |  | funktionssubcode | Stammdaten; $aufnehmen und $verlegen |  |
| KLAS | Allgemeine Gebührenklasse/Sonderklasse | MopedVAERequest | .Sonderklasse | Sonderklasse | sonderklasse | $anfragen |  |
| STAAT | Staatsbürgerschaftsschlüssel | HL7ATCorePatient | .extension | citizenship | falldaten | $aufnehmen |  |
| PASTR | Wohandresse des Patienten, Straße | HL7ATCorePatient | .address.line |  | falldaten | $aufnehmen |  |
| PALKZ | Wohnadresse des Patienten, Länderkennzeichen | HL7ATCorePatient | address.country | TBD | falldaten | $aufnehmen |  |
| PAPLZL | Wohnadresse des Patienten, Postleitzahl | HL7ATCorePatient | .address.postalCode |  | falldaten | $aufnehmen |  |
| PAORT | Wohnadresse des Patienten, Ort | HL7ATCorePatient | .address.city |  | falldaten | $aufnehmen |  |
| VERDAU | Verdacht auf Arbeits-/Schülerunfall | MopedVAERequest | .VerdachtArbeitsSchuelerUnfall | VerdachtArbeitsSchülerUnfall | verdachtArbeitsSchuelerunfall | $anfragen |  |
| DIAG1 | Diganose 1, ICD10 BMSGPK Schlüssel | Condition | .code |  | diagnose | $erfassen |  |
| DIAG1U1 | Diagnose 1, Untergliederung 1 | Condition | .code |  | diagnose | $erfassen |  |
| DIAG1U2 | Diagnose 1, Untergliederung 2 | Condition | .code |  | diagnose | $erfassen |  |
| DIAG2 | Diganose 2, ICD10 BMSGPK Schlüssel | Condition | .code |  | diagnose | $erfassen |  |
| DIAG2U1 | Diagnose 2, Untergliederung 1 | Condition | .code |  | diagnose | $erfassen |  |
| DIAG2U2 | Diagnose 2, Untergliederung 2 | Condition | .code |  | diagnose | $erfassen |  |
| DIAG3 | Diganose 3, ICD10 BMSGPK Schlüssel | Condition | .code |  | diagnose | $erfassen |  |
| DIAG3U1 | Diagnose 3, Untergliederung 1 | Condition | .code |  | diagnose | $erfassen |  |
| DIAG3U2 | Diagnose 3, Untergliederung 2 | Condition | .code |  | diagnose | $erfassen |  |
| FREVER | Fremdversschluden | MopedVAERequest | .supportingInfo.value | VerdachtFremdverschulden | verdachtFremdverschulden | $anfragen |  |
| DIAG | Diagnose im Klartext,kann bei Codierung entfallen | / | / | / | / | / | ab 2025 Codierung verpflichten |
| URS | Ursache der Behandlung | MopedEncounter | .reason |  | falldaten | $aufnehmen |  |
| ENTBDAT | Entbindungstag JJJJMMTT | Observation | TBD | TBD |  |  |  |
| USVPNR | Überweisende Stelle, Vertragspartnernummer | MopedEncounter | .admission.origin:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| USNA | Überweisende Stelle, Name | HL7ATCoreOrganization | .name |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| USLKZ | Länderkennzeichen der überweisenden Stelle | HL7ATCoreOrganization | .contact.address.country |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| USPLZL | Überweisende Stelle, Postleitzahl | HL7ATCoreOrganization | .contact.address.postalCode |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| USORT | Überweisende Stelle, Ort | HL7ATCoreOrganization | .contact.address.city |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| ERDAT | Ereignis-/Unfalldatum JJJJMMTT | MopedEncounter | .extension | Unfalldatum | falldaten | $aufnehmen |  |
| VTAG | Anzahl der Verlängerungstage | MopedVAERequest | .Verlaengerungstage | Verlaengerungstage | verlaengerungstage | $anfragen |  |
| VDAS | VDAS-ID, Ergebnis der Abfrage | MopedCoverage | .identifier:VDASID | VDASID | falldaten | $aufnehmen |  |

### K03 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.5 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K03 - Versichertenanspruchserklärung; K04 - Storno Versichertenanspruchserklärung |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| VSNR | Versicherungsnummer des Hauptversicherten | RelatedPerson | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| ZUNA | Zuname des Hauptversicherten | RelatedPerson | .name.given |  | falldaten | $aufnehmen |  |
| VONA | Vorname des Hauptversicherten | RelatedPerson | .name.family |  | falldaten | $aufnehmen |  |
| GESCHL | Geschlecht des Hauptversicherten | RelatedPerson | .gender |  | falldaten | $aufnehmen |  |
| GEBDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| VGR | Versichertengruppe/Kategorie | MopedCoverage | .class:Versichertenkategorien |  | falldaten | $aufnehmen |  |
| AVSNR | Versicherungsnummer des Mitversicherten | HL7ATCorePatient | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| AZUNA | Zuname de Mitversicherten | HL7ATCorePatient | .name.family |  | falldaten | $aufnehmen |  |
| AVONA | Vorname de Mitversicherten | HL7ATCorePatient | .name.given |  | falldaten | $aufnehmen |  |
| AGESCHL | Geschlecht des Mitversicherten | HL7ATCorePatient | .gender |  | falldaten | $aufnehmen |  |
| AGEBDAT | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID-Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| EREIG | Ereignisart | MopedEncounter | .admission.extension | Aufnahmeart | falldaten | $aufnehmen | EREIG=AUFART -> MOPEDEncounter.admission.extension:Zugangsart |
| KLAS | Allgemeine Gebührenklasse/Sonderklasse | MopedVAERequest | .Sonderklasse | Sonderklasse | sonderklasse | $anfragen |  |
| DAT-VON | VAE Beginndatum | MopedVAEResponse | .preAuthPeriod.start |  | MopedVAEResponse | $beantworten |  |
| DATBIS | VAE Endedatum | MopedVAEResponse | .preAuthPeriod.end |  | MopedVAEResponse | $beantworten |  |
| ENDE | Fristende | MopedVAEResponse | .preAuthPeriod | Fristende | MopedVAEResponse | $beantworten |  |
| VAEST | Status der VAE | MopedVAEResponse | .decision | VAEStatus | MopedVAEResponse | $beantworten |  |
| VKBEFR | Verpflegskosten-Beitragsbefreiung | MopedVAEResponse | .extension | VerpflegskostenBeitragsbefreiung | MopedVAEResponse | $beantworten |  |
| VTAGE | Vortageanzahl auf Kostenbeitrag | MopedVAEResponse | .extension | VortageanzahlAufKostenbeitrag | MopedVAEResponse | $beantworten |  |

### K05 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.6 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K05 - Entlassungsanzeige; K06 - Storno Entlassungsanzeige |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| VSNR | Versicherungsnummer des Hauptversicherten | RelatedPerson | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| ZUNA | Zuname des Hauptversicherten | RelatedPerson | .name.given |  | falldaten | $aufnehmen |  |
| VONA | Vorname des Hauptversicherten | RelatedPerson | .name.family |  | falldaten | $aufnehmen |  |
| GESCHL | Geschlecht des Hauptversicherten | RelatedPerson | .gender |  | falldaten | $aufnehmen |  |
| GEBDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| VGR | Versichertengruppe/Kategorie | MopedCoverage | .class:Versichertenkategorien |  | falldaten | $aufnehmen |  |
| AVSNR | Versicherungsnummer des Mitversicherten | HL7ATCorePatient | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| AZUNA | Zuname de Mitversicherten | HL7ATCorePatient | .name.family |  | falldaten | $aufnehmen |  |
| AVONA | Vorname de Mitversicherten | HL7ATCorePatient | .name.given |  | falldaten | $aufnehmen |  |
| AGESCHL | Geschlecht des Mitversicherten | HL7ATCorePatient | .gender |  | falldaten | $aufnehmen |  |
| AGEBDAT | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID-Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| HDIAG | Hauptdiagnose ICD 10 BMSGPK Schlüssel | Condition | .code |  | diagnose | $erfassen |  |
| HDIAGU1 | Hauptdiagnose Untergliederung 1 | Condition | .code |  | diagnose | $erfassen |  |
| HDIAGU2 | Hauptdiagnose Untergliederung 2 | Condition | .code |  | diagnose | $erfassen |  |
| ZDIAG1 | Zusatzdiagnose 1, ICD 10 BMSGPK Schlüssel | Condition | .code |  | diagnose | $erfassen |  |
| ZDIAGU1 | Zusatzdiagnose 1, Untergliederung 1 | Condition | .code |  | diagnose | $erfassen |  |
| ZDIAGU2 | Zusatzdiagnose 1, Untergliederung 2 | Condition | .code |  | diagnose | $erfassen |  |
| FREVER | Fremdverschulden | MopedVAERequest | .supportingInfo.value | VerdachtFremdverschulden | verdachtFremdverschulden | $anfragen |  |
| DAIG | Hauptdiagnose im Klartext, entfällt bei Codierung | / | / | / | / | / | ab 2025 Codierung verpflichten |
| URS | Ursache der Behandlung | MopedEncounter | .reason |  | falldaten | $aufnehmen |  |
| ENTBDAT | Entbindungsdatum JJJJMMTT | Observation | TBD | TBD |  |  |  |
| ENTGM | Anzahl der Lebendgeburten, männliche Kinder | Observation | TBD | TBD |  |  |  |
| ENTGW | Anzahl der Lebendgeburten, weibliche Kinder | Observation | TBD | TBD |  |  |  |
| ENTT | Anzahl der Totgeburten | Observation | TBD | TBD |  |  |  |
| ENTBART | Art der Entbindung | Observation | TBD | TBD |  |  |  |
| ENTS | Entlassungsschlüssel | MopedEncounter | .admission.dischargeDisposition |  | entlassungsart | $entlassen |  |
| AVDAT | Aufnahme-, Verlegungsdatum JJJJMMTT | TBD | TBD | TBD |  | (nicht Teil des Hackathon) |  |
| VKLA | Verlegung Klasse | TBD | TBD | TBD |  | (nicht Teil des Hackathon) |  |
| AI | Avisio-Info | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (über Encounter Status abgebildet) |
| KABEFR | Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde | MopedAccount | .extension | TageOhneKostenbeitrag | tageOhneKostenbeitrag | $entlassen |  |

### K09 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.8 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K09 - Kostenmeldung stationär RG/AV/KO; K10 - Storno Kostenmeldung stationär RG/AV/KO |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| AUFART | Aufnahmeart | MopedEncounter | .admission.extension | Aufnahmeart | falldaten | $aufnehmen |  |
| ENTLART | Entlassungsart | MopedEncounter | .admission.dischargeDisposition |  | entlassungsart | $entlassen | ENTLART = ENTS -> MOPEDEncounter.admission.dischargeDisposition |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| VSNR | Versicherungsnummer des Hauptversicherten | RelatedPerson | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| GESL | Geschlecht | RelatedPerson | .gender |  | falldaten | $aufnehmen |  |
| GEBDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| VGR | Versichertengruppe/Kategorie | MopedCoverage | .class:Versichertenkategorien |  | falldaten | $aufnehmen |  |
| GEBDATA | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID-Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| STAATB | Staatsbürgerschaft | HL7ATCorePatient | .extension | citizenship | falldaten | $aufnehmen |  |
| STAATW | Hauptwohnsitz Staat | HL7ATCorePatient | address.country | TBD | falldaten | $aufnehmen |  |
| PLZLW | Hauptwohnsitz Postleitzahl | HL7ATCorePatient | .address.postalCode |  | falldaten | $aufnehmen |  |
| EBH | Entbindungsheimpflegekennzeichen | Observation | TBD | TBD |  |  |  |
| VERURL | Urlaubstage im Verrechnungszeitraum | Claim | TBD | TBD |  | (nicht Teil des Hackathon) |  |
| SOND | Sonderleistungsnummer | MopedLKFResponse | .extension | Sonderleistungsnummer | MopedLKFResponse | $freigeben |  |
| SOANZ | Anzahl Sonderleistung | MopedLKFResponse | .extension | AnzahlSonderleistungen | MopedLKFResponse | $freigeben |  |
| KVAB | Ablehnungsgrund für Leistungserbringung stationär | MopedLKFResponse | .adjudication.reason |  | MopedLKFResponse | $freigeben |  |
| QUAL | Qualifier | ClaimResponse | TBD | TBD |  | (nicht Teil des Hackathon) |  |
| KOANF | Kostenmeldung für (A/R/K) | MopedLKFResponse | .extension | KostenmeldungARK | MopedLKFResponse | $freigeben |  |
| LDFGRP | LDF-Gruppe Teil1 | MopedLKFRequest & MopedLKFResponse | .diagnosisRelatedGroup |  | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| LDFKNT | LDF-Gruppe Teil2 | MopedLKFRequest & MopedLKFResponse | .extension | DiagnoseKnoten | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| LDFPP | Punkte LDF-Pauschale | MopedLKFResponse | .extension | PunkteLDFPauschale | MopedLKFResponse | $freigeben |  |
| VDU | Punkte Verweildauerausreißer unten | MopedLKFRequest & MopedLKFResponse | .extension | PunkteBelagsdauerausreisseruntenLeistungskomponente | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| VDO | Zusatzpunkte Verweildauerausreißer oben | MopedLKFRequest & MopedLKFResponse | .extension | ZusatzpunkteBelagsdauerausreisserNachOben | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| ZUINT | Zusatzpunkte Intensiv | MopedLKFRequest & MopedLKFResponse | .extension | ZusatzpunkteIntensiv | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| ZUMEHR | Zusatzpunkte Mehrleistungen | MopedLKFRequest & MopedLKFResponse | .extension | ZusatzpunkteMehrfachleistungen | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| PSPEZ | Punkte spezieller Bereich | MopedLKFRequest & MopedLKFResponse | .extension | PunkteSpeziellerBereicheTageweise | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| PTOT | Punkte total | MopedLKFRequest & MopedLKFResponse | .extension | TotalPoints | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| LDFFAK | LDF-Punktewert Netto | MopedLKFResponse | .extension | LDFPunktewertNetto | MopedLKFResponse | $freigeben |  |
| LDFBET | LDF-Betrag Netto | MopedLKFResponse | .extension | LDFBetragNetto | MopedLKFResponse | $freigeben |  |
| VERSATZ | Patientenanteil für Angehörige (tägl. Satz) netto | MopedLKFResponse | .extension | PatientenanteilAngehoerige | MopedLKFResponse | $freigeben |  |
| VERPA | Patientenanteil netto | MopedLKFResponse | .extension | Patientenanteil | MopedLKFResponse | $freigeben |  |
| BEIH | Beihilfenäquivalent | MopedLKFResponse | .extension | Beihilfenaequivalent | MopedLKFResponse | $freigeben |  |
| FORDAV | Forderungsbetrag für Ausländerverrechnung | MopedLKFResponse | .extension | ForderungsbetragAuslaenderverrechnungRegress | MopedLKFResponse | $freigeben |  |
| FORDRG | Forderungsbetrag für den Regress | MopedLKFResponse | .extension | ForderungsbetragAuslaenderverrechnungRegress | MopedLKFResponse | $freigeben |  |
| RUE | K21 Ausländerverrechnung/Regresse - Rückmeldung | / | / | / | / | / | in neuer Architektur nicht notwendig (Notifications) |
| RENR | RENR | MopedLKFResponse | .extension | RechnungsnummerKHLGF | MopedLKFResponse | $freigeben |  |

### K20 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.9 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K20 - Kostenmeldungsanforderung |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| GEVDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| GEBDATA | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil, Versionsnummer vom ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| AUFKZ | Aufenthaltsartkennzeichen | / | / | / | / | / | in neuer Architektur nicht mehr notwendig: kann abgeleitet werden aus AUFART(KaOrg)/Zugangsart oder AUFART2(LKF)/Aufnahmeart |
| KOANF | Kostenmeldung für | MopedLKFResponse | .extension | KostenmeldungARK | MopedLKFResponse | $freigeben |  |

### K12 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.10 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K12 - Kommentar |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| VSNR | Versicherungsnummer des Hauptversicherten | RelatedPerson | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| ZUNA | Zuname des Hauptversicherten | RelatedPerson | .name.given |  | falldaten | $aufnehmen |  |
| VONA | Vorname des Hauptversicherten | RelatedPerson | .name.family |  | falldaten | $aufnehmen |  |
| GESCHL | Geschlecht des Hauptversicherten | RelatedPerson | .gender |  | falldaten | $aufnehmen |  |
| GEBDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| VGR | Versichertengruppe/Kategorie | MopedCoverage | .class:Versichertenkategorien |  | falldaten | $aufnehmen |  |
| AVSNR | Versicherungsnummer des Mitversicherten | HL7ATCorePatient | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| AZUNA | Zuname de Mitversicherten | HL7ATCorePatient | .name.family |  | falldaten | $aufnehmen |  |
| AVONA | Vorname de Mitversicherten | HL7ATCorePatient | .name.given |  | falldaten | $aufnehmen |  |
| AGESCHL | Geschlecht des Mitversicherten | HL7ATCorePatient | .gender |  | falldaten | $aufnehmen |  |
| AGEBDAT | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID-Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| ZEILNR | Zeilennummer | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| TEXT1 | Kommentartext | MopedLKFRequest & MopedLKFResponse | .extension | note | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| TEXT2 | Kommentartext | MopedLKFRequest & MopedLKFResponse | .extension | note | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| TEXT3 | Kommentartext | MopedLKFRequest & MopedLKFResponse | .extension | note | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| TEXT4 | Kommentartext | MopedLKFRequest & MopedLKFResponse | .extension | note | claim und MopedLKFResponse | $abrechnen & $freigeben |  |

### K13 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.11 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K13 - Leistungsdaten ambulant; K14 - Storno Leistungsdaten ambulant |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| GEVDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| GEBDATA | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil, Versionsnummer vom ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| FKRA | Abteilung - Funktionscode der Ambulanz | MopedOrganizationAbteilung | .identifier:Funktionscode |  | funktionscode | Stammdaten; $aufnehmen und $verlegen |  |
| FKRASU | Abteilung - Subcode | MopedOrganizationAbteilung | .identifier:Funktionssubcode |  | funktionssubcode | Stammdaten; $aufnehmen und $verlegen |  |
| BDAT | Behandlungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| KOANF | Kostenmeldung | MopedLKFResponse | .extension | KostenmeldungARK | MopedLKFResponse | $freigeben |  |
| LDFGRP | LDF-Gruppe 1 | MopedLKFRequest & MopedLKFResponse | .diagnosisRelatedGroup |  | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| LDFKNR | LDF-Gruppe 2 | MopedLKFRequest & MopedLKFResponse | .extension | DiagnoseKnoten | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| PTOT | Punkte Total | MopedLKFRequest & MopedLKFResponse | .extension | TotalPoints | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| LDFFAK | LDF-Punktewert netto | MopedLKFResponse | .extension | LDFPunktewertNetto | MopedLKFResponse | $freigeben |  |
| LDFBET | LDF-Betrag Netto | MopedLKFResponse | .extension | LDFBetragNetto | MopedLKFResponse | $freigeben |  |
| BEIH | Beihilfenäquivalent | MopedLKFResponse | .extension | Beihilfenaequivalent | MopedLKFResponse | $freigeben |  |
| FORDAV | Forderungsbetrag für Ausländerverrechnung | MopedLKFResponse | .extension | ForderungsbetragAuslaenderverrechnungRegress | MopedLKFResponse | $freigeben |  |
| FORDRG | Forderungsbetrag für den Regress | MopedLKFResponse | .extension | ForderungsbetragAuslaenderverrechnungRegress | MopedLKFResponse | $freigeben |  |
| ABTFC_LP | Leistungspunkte | MopedLKFRequest & MopedLKFResponse | .extension | LeistungskomponenteLeistungspunkte | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| ABTFC_KP | Kontaktpunkte | MopedLKFRequest & MopedLKFResponse | .extension | TageskomponenteKontaktpunkte | claim und MopedLKFResponse | $abrechnen & $freigeben |  |

### K21 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.13 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K21 - Rückmeldung Ausländerverrechnung/Regresse; K22 - Storno Rückmeldung Ausländerverrechnung/Regresse |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| GEVDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| GEBDATA | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil, Versionsnummer vom ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil, Versionsnummer vom Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| KOANF | Kostenmeldung | MopedLKFResponse | .extension | KostenmeldungARK | MopedLKFResponse | $freigeben |  |
| LDFBET | LDF-Betrag Netto | MopedLKFResponse | .extension | LDFBetragNetto | MopedLKFResponse | $freigeben |  |
| VERSATZ | Patientenanteil für Angehörige | MopedLKFResponse | .extension | PatientenanteilAngehoerige | MopedLKFResponse | $freigeben |  |
| VERPA | Patientenanteil | MopedLKFResponse | .extension | Patientenanteil | MopedLKFResponse | $freigeben |  |
| ZKZ | Zahlungskennzeichen Regress | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| BETRAV | Betrag Ausländerverrechnung | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| BETRRG | Betrag Regress | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| RENR | Rechnungsnummer | / | / | / |  | / | nicht notwendig: Entscheidung der MOPED Stakeholder |
| ART | Abrechnungsart Ausländerverrechnung | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| PROZ | Prozentsatz der Zahlung | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| SCHEIN | Betreuungsschein bei Ausländerverrechnung | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| LAND | Landescode | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| GRUND | Grund, warum keine Zahlung erfolgte | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| FREMDRE | Rechnungsnummer der zwischenstaatlichen Abrechnung | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| ELBNR | Roderungsnummer der ÖGK | ClaimResponse | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| ASVT | Bezeichnung des ausländischen SV-Trägers | TBD Organization | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |

### K27 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| E.15 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| K27 - EKVK-Datenmeldung (nur an ÖGK) |  |  |  |  |  |  |  |
| SART | Satzart | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| VPNR | Vertragspartnernummer der Krankenanstalt | HL7ATCoreOrganization | .identifier:VPNR |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| AUFZL | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| FANU | Fallnummer | MopedAccount | .extension | .AnzahlBeurlaubungen |  | generiert in $aufnehmen; befüllt (in Zukunft in $beurlauben - nicht Teil des Hackathon) | Anzahl der Wiederaufnahmen nach Urlaub |
| KOST | Kostenträger (leistungszuständig) | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
| VSTR | zuständiger Versicherungsträger | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFN | Aufnahme-/Ereignisdatum JJJJMMTT | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen | AUFN = AUFDAT; SV (erstes im Quartal mit der gleichen Aufnahmezahl) |
| ENTL | Entlassungsdatum JJJJMMTT | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| KOMM | Kommentarsatz | / | / | / | / | / | für den Identifikationsteil nicht notwendig: Entscheidung der MOPED Stakeholder |
| VSNR | Versicherungsnummer des Hauptversicherten | RelatedPerson | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| ZUNA | Zuname des Hauptversicherten | RelatedPerson | .name.given |  | falldaten | $aufnehmen |  |
| VONA | Vorname des Hauptversicherten | RelatedPerson | .name.family |  | falldaten | $aufnehmen |  |
| GESCHL | Geschlecht des Hauptversicherten | RelatedPerson | .gender |  | falldaten | $aufnehmen |  |
| GEBDAT | Geburtsdatum des Hauptversicherten JJJJMMTT | RelatedPerson | .birthDate |  | falldaten | $aufnehmen |  |
| DSID | Datensatz-ID | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| VGR | Versichertengruppe/Kategorie | MopedCoverage | .class:Versichertenkategorien |  | falldaten | $aufnehmen |  |
| AVSNR | Versicherungsnummer des Mitversicherten | HL7ATCorePatient | identifier:socialSecurityNumber |  | falldaten | $aufnehmen |  |
| AZUNA | Zuname de Mitversicherten | HL7ATCorePatient | .name.family |  | falldaten | $aufnehmen |  |
| AVONA | Vorname de Mitversicherten | HL7ATCorePatient | .name.given |  | falldaten | $aufnehmen |  |
| AGESCHL | Geschlecht des Mitversicherten | HL7ATCorePatient | .gender |  | falldaten | $aufnehmen |  |
| AGEBDAT | Geburtsdatum des Mitversicherten JJJJMMTT | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| FECO | Fehlercode | / | / | / | / | / | in neuer Architektur nicht mehr notwendig (Validierung gegen die Profile - Formalabweisung) |
| DSIDR | Datensatz-ID-Referenz | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| BKANR | Krankenanstaltennummer des Bundesministeriums | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| DVERS-ID | Datensatzversion ID-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| DVERS-SA | Datensatzversion Satzart-Teil | / | / | / | / | / | in neuer Architektur nicht mehr notwendig |
| EVSNR | EWR-Versicherungsnummer des Patienten | Patient | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| EZUNA | Zuname | HL7ATCorePatient | .name.family |  |  | A/R/K (nicht Teil des Hackathon) |  |
| EVONA | Vorname | HL7ATCorePatient | .name.given |  |  | A/R/K (nicht Teil des Hackathon) |  |
| EGESL | Geschlecht | HL7ATCorePatient | .gender |  |  | A/R/K (nicht Teil des Hackathon) |  |
| EGEBD | Geburtsdatum JJJJMMTT | HL7ATCorePatient | .birthDate |  |  | A/R/K (nicht Teil des Hackathon) |  |
| ESTAAT | Staatenschlüssel | TBD Organization | .contact.address.country |  |  | A/R/K (nicht Teil des Hackathon) |  |
| EIC | Instituionscode des zuständen Trägers | TBD Organization | .identifier:institutionCode |  |  | A/R/K (nicht Teil des Hackathon) |  |
| EAKRO | Akronym des zuständigen Trägers | HL7ATCoreOrganization | .identifier:alias |  |  | A/R/K (nicht Teil des Hackathon) |  |
| EKANR | Kartennummer | Claim | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| EAEND | Endedatum des Anspruches JJJJMMTT | Claim | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| EFORM | Art der Anspruchsbescheinigung | Claim | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| EABEG | Beginndatum des Anspruches JJJJMMTT | Claim | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |
| ESTADT | Bei EFORM " ANFO mit der Wohnort-Stadt des Patienten | Claim | TBD | TBD |  | A/R/K (nicht Teil des Hackathon) |  |

