# ELGA.MOPED\LKF Mapping - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **LKF Mapping**

## LKF Mapping

Diese Seite enthält das Mapping der Meldungen des MBDS Datensatzes (X01-X07, I11-I12, K01*) des LKF Systems zu FHIR. Die Dokumentation der LKF Meldungen ist unter [diesem Link](https://www.sozialministerium.at/dam/jcr:8553d407-cc41-4b15-bace-5c4e155e8d88/ANHANG1%20-%20AUFBAU%20UND%20INHALT%20DER%20DATENMELDUNGEN%202025%20SP1%2020250131.pdf) verfügbar.

### X01 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| X01 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| KOSTCODE | Leistungszuständiger Kostenträger – Code | MopedAccount + MopedLKFRequest | MopedAccount.coverage.paymentBy.party:HL7ATCoreOrganization.identifier |MopedLKFRequest.insurance.coverage:MopedCoverage.paymentBy.party | payer | falldaten:Coverage |  |  |
|  | Abrechnender Kostenträger – Code | MopedAccount + MopedLKFRequest | MopedAccount.coverage.insurer:Organization.identifier + MopedLKFRequest.insurer:Organization.identifier |  | falldaten:Coverage | Stammdaten; verlinkt in $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| AUFZEIT | Aufnahme-/Kontaktuhrzeit | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| ENTDAT | Entlassungsdatum | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| ENTZEIT | Entlassungsuhrzeit | MopedEncounter | .actualPeriod.end |  | zeitpunkt | $entlassen |  |
| AUFART1 | Aufnahme-/Zugangsart 1 | MopedEncounter | .admission.extension | Aufnahmeart | falldaten | $aufnehmen |  |
| AUFART2 | Aufnahme-/Zugangsart 2 | MopedEncounter | .class | Aufnahmeart2 | falldaten | $aufnehmen |  |
| ENTART | Entlassungs-/Abgangsart | MopedEncounter | .admission.dischargeDisposition |  | entlassungsart | $entlassen |  |
| GESCHL | Geschlecht | HL7ATCorePatient | .gender |  | falldaten | $aufnehmen |  |
| GEBDAT | Geburtsdatum | HL7ATCorePatient | .birthDate |  | falldaten | $aufnehmen |  |
| ALTERSGRUPPE | Altersgruppe bei Entlassung/Kontakt | MopedTransferEncounter | .extension | Altersgruppe.beiEntlassung | von Operation aus birthdate und period.end berechnet | $verlegen oder $entlassen |  |
| AUFNR_ID | Datensatz-ID | MopedEncounter | .identifier:DatensatzID |  | falldaten | $aufnehmen |  |
| STAATSB | Staatsbürgerschaft | HL7ATCorePatient | .extension | citizenship | falldaten | $aufnehmen |  |
| WSTAAT | Wohnsitz – Staat | HL7ATCorePatient | address.country |  | falldaten | $aufnehmen |  |
| WPLZ | Wohnsitz – Postleitzahl | HL7ATCorePatient | .address.postalCode |  | falldaten | $aufnehmen |  |
| WGC | Wohnsitz – Gemeindecode | HL7ATCorePatient | .address.extension:municipalityCode |  | falldaten | $aufnehmen |  |
| AUFID | Zugewiesen von – Krankenanstaltennummer | MopedEncounter | .admission.origin:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; verlinkt in $aufnehmen |  |
| ENTID | Zugewiesen an – Krankenanstaltennummer | MopedEncounter | .admission.destination:HL7ATCoreOrganization.identifier |  |  |  |  |
| BHART | Behandlungsart | MopedEncounter | .class | Behandlungsart | falldaten | $aufnehmen |  |
| TRANSART | Transportart | MopedEncounter | .extension | Transportart | falldaten | $aufnehmen |  |
| FONDSREL | Fondsrelevanz | MopedLKFRequest | .extension | Fondsrelevanz | claim | $abrechnen |  |
| PFLAG | Plausibilitätskennzeichen | MopedLKFRequest | .extension | Plausibilitaetskennzeichen | claim | $abrechnen |  |
|  | Abrechnungsquartal der Sozialversicherung | MopedLKFRequest | .extension | SVAbrechnungsquartal | claim | $abrechnen |  |

### X02 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| X02 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| ALTERSGRUPPE | Altersgruppe bei Zugang/Kontakt | MopedTransferEncounter | .extension | Altersgruppe.beiZugang | von Operation aus birthdate und period.start berechnet | $aufnehmen |  |
| AUFNR_ID | Datensatz-ID | MopedEncounter | .identifier:DatensatzID |  | falldaten | $aufnehmen |  |
| ABTPOS | Hauptkostenstelle/Fachgebiet – Positionsnummer | MopedAccount | .extension | AnzahlVerlegungen | wird von Operation berechnet | $verlegen | fortlaufende Nummer; wird bei jeder Verlegung & Urlaub erhöht => count(TransferEncounter)-1 |
| ABTFC | Hauptkostenstelle – Funktionscode/Fachgebiet | MopedOrganizationAbteilung | .identifier:Funktionscode |  | funktionscode | Stammdaten; $aufnehmen und $verlegen |  |
| ABTZDAT | Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum | MopedTransferEncounter | .actualPeriod.start |  | zeitpunkt | $aufnehmen und $verlegen |  |
| ABTZZEIT | Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit | MopedTransferEncounter | .actualPeriod.start |  | zeitpunkt | $aufnehmen und $verlegen |  |
| ANWESEND | Physische Anwesenheit | MopedTransferEncounter |  .subjectStatus |  | physischeAnwesenheit | $aufnehmen |  |
| ABTADAT | Hauptkostenstelle – Abgangsdatum | MopedTransferEncounter | .actualPeriod.end |  | zeitpunkt | in $verlegen oder $entlassen |  |
| ABTAZEIT | Hauptkostenstelle – Abgangsuhrzeit | MopedTransferEncounter | .actualPeriod.end |  | zeitpunkt | in $verlegen oder $entlassen |  |
| ABTAART | Hauptkostenstelle – Abgangsart | MopedTransferEncounter | .admission.dischargeDisposition |  | abgangsart | $entlassen |  |
| ABTFC_FACH | Hauptkostenstelle – Fachlicher Funktionscode | MopedOrganizationAbteilung | .identifier:Funktionscode |  | funktionscode | Stammdaten; in $aufnehmen oder $verlegen |  |
| ABTFC_PFLEGE | Hauptkostenstelle – Pflegerischer Funktionscode | MopedAbteilungsOrganization | .identifier:Funktionscode |  | funktionscode | Stammdaten; in $aufnehmen oder $verlegen |  |
| NEUGEBORENES | Neugeborenes | MopedTransferEncounter | .extension | Neugeborenes | von Operation aus birthdate und period.start berechnet | $aufnehmen und $verlegen |  |

### X03 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| X03 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| AUFNR_ID | Datensatz-ID | MopedEncounter | .identifier:DatensatzID |  | falldaten | $aufnehmen |  |
| DIAGCODE | Diagnose – Code | Condition | .code |  |  |  |  |
| DIAGTYP | Diagnose – Typ | MopedLKFRequest | .item[ConditionItem].category |  | claim | $abrechnen |  |
| DIAGART | Diagnose – Art | Condition | .verificationStatus |  | diagnose | $erfassen |  |
| DIAGERW | Diagnose – im stationären Aufenthalt erworben | MopedLKFRequest | .diagnosis.onAdmission |  | claim | $abrechnen |  |

### X04 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| X04 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| AUFNR_ID | Datensatz-ID | MopedEncounter | .identifier:DatensatzID |  | falldaten | $aufnehmen |  |
| MELCODE | Medizinische Leistung – Code | Procedure | .code |  | leistung | $erfassen |  |
| MELCODESL | Medizinische Leistung – Seitenlokalisation | Procedure | .bodysite |  | leistung | $erfassen |  |
| MELCODEREL | Medizinische Leistung – Abrechnungsrelevanz | MopedLKFRequest | .procedure.extension | AbrechnungsRelevanz | claim | $abrechnen |  |
| MELANZ | Medizinische Leistung – Anzahl | TBD | TBD | TBD |  |  |  |
| MELDAT | Medizinische Leistung – Datum der Erbringung | Procedure | .occurrenceDateTime |  | leistung | $erfassen |  |
| MELZEIT | Medizinische Leistung – Uhrzeit der Erbringung | Procedure | .occurrenceDateTime |  | leistung | $erfassen |  |
| MELABTFC | Funktionscode/Fachgebiet leistungserbringend | Procedure | .performer.actor |  | leistung | $erfassen |  |
| MELKANR | Krankenanstaltennummer leistungserbringend | Procedure | .performer.actor.partOf.identifier:GDA-OID |  | leistung | $erfassen |  |

### X05 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| X05 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| AUFNR_ID | Datensatz-ID | MopedEncounter | .identifier:DatensatzID |  | falldaten | $aufnehmen |  |
| LDFGRP | Abrechnung – Gruppe | MopedLKFRequest & MopedLKFResponse | .diagnosisRelatedGroup |  | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| LDFKNT | Abrechnung – Knoten | MopedLKFRequest & MopedLKFResponse | .extension | DiagnoseKnoten | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| BDZU | Zusatzpunkte Belagsdauerausreißer nach oben | MopedLKFRequest & MopedLKFResponse | .extension | ZusatzpunkteBelagsdauerausreisserNachOben | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| INTZU | Zusatzpunkte Intensiv | MopedLKFRequest & MopedLKFResponse | .extension | ZusatzpunkteIntensiv | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| MELZU | Zusatzpunkte Mehrfachleistungen | MopedLKFRequest & MopedLKFResponse | .extension | ZusatzpunkteMehrfachleistungen | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| SCSPEZ | Punkte spezieller Bereiche (tageweise) | MopedLKFRequest & MopedLKFResponse | .extension | PunkteSpeziellerBereicheTageweise | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| SCGES | Punkte total | MopedLKFRequest & MopedLKFResponse | .extension | TotalPoints | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
|  | Leistungskomponente/Leistungspunkte | MopedLKFRequest & MopedLKFResponse | .extension | LeistungskomponenteLeistungspunkte | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
|  | Tageskomponente/Kontaktpunkte | MopedLKFRequest & MopedLKFResponse | .extension | TageskomponenteKontaktpunkte | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| SCULK | Punkte Belagsdauerausreißer nach unten – Leistungskomponente | MopedLKFRequest & MopedLKFResponse | .extension | PunkteBelagsdauerausreisseruntenLeistungskomponente | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| SCUTK | Punkte Belagsdauerausreißer nach unten – Tageskomponente | MopedLKFRequest & MopedLKFResponse | .extension | PunkteBelagsdauerausreisseruntenTageskomponente | claim und MopedLKFResponse | $abrechnen & $freigeben |  |

### X06 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| X06 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| Akzeptierte Errors/Warnings |  |  |  |  |  |  |  |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| AUFNR_ID | Datensatz-ID | MopedEncounter | .identifier:DatensatzID |  | falldaten | $aufnehmen |  |
| EWWERT | Error/Warning – Wert | MopedLKFRequest | .extension | FehlerWarnung.value | MopedLKFResponse | $auffordern (nicht Teil des Hackathon) |  |
| EWCODE | Error/Warning – Code | MopedLKFRequest | .extension | FehlerWarnung.code | MopedLKFResponse | $auffordern (nicht Teil des Hackathon) |  |
| EWKOMMENTAR | Error/Warning – Kommentar | MopedLKFRequest | .extension | FehlerWarnung.comment | MopedLKFResponse | $auffordern (nicht Teil des Hackathon) |  |

### X07 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| X07 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| Kommentare |  |  |  |  |  |  |  |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| AUFNR_ID | Datensatz-ID | MopedEncounter | .identifier:DatensatzID |  | falldaten | $aufnehmen |  |
| KOMMENTAR1 | Kommentar 1 | MopedLKFRequest & MopedLKFResponse | .extension | note | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| KOMMENTAR2 | Kommentar 2 | MopedLKFRequest & MopedLKFResponse | .extension | note | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| KOMMENTAR3 | Kommentar 3 | MopedLKFRequest & MopedLKFResponse | .extension | note | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| KOMMENTAR4 | Kommentar 4 | MopedLKFRequest & MopedLKFResponse | .extension | note | claim und MopedLKFResponse | $abrechnen & $freigeben |  |
| KOMMENTAR5 | Kommentar 5 | MopedLKFResponse | .extension | note | note | note |  |
| KOMMENTAR6 | Kommentar 6 |  |  |  |  |  |  |

### I11 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| I11 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| SAPS3 |  |  |  |  |  |  |  |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| ABTPOS | Bettenführende Hauptkostenstelle – Positionsnummer | MopedAccount | .extension | AnzahlVerlegungen | wird von Operation berechnet | $verlegen | fortlaufende Nummer; wird bei jeder Verlegung & Urlaub erhöht => count(TransferEncounter)-1 |
| ERHDAT | Erhebungsdatum | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| ADM_INF | Akute Infektion bei Aufnahme | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_OTHER | Aufnahmegrund: Anderer, nicht klassifiziert | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_BASIC | Aufnahmegrund: Basispflege und Observanz | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_DIGEST | Aufnahmegrund: Gastrointestinal | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_HAEMA | Aufnahmegrund: Hämatologisch | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_CARDIO | Aufnahmegrund: Kardiovaskulär | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_HEPATIC | Aufnahmegrund: Leber | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_METAB | Aufnahmegrund: Metabolisch | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_NEURO | Aufnahmegrund: Neurologisch | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_RENAL | Aufnahmegrund: Renal | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_RESP | Aufnahmegrund: Respiratorisch | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| R_S_TRAUMA | Aufnahmegrund: Schweres Trauma | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| ADM_ART | Aufnahmetyp | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| WBC | Blutbild: Leukozyten (Minimum) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| PH | Blutbild: pH-Wert | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| PLATELETS | Blutbild: Thrombozyten (Minimum) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| ANATOMIC | Chirurgie – Eingriff | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| SURGICAL | Chirurgischer Status | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| GCS_MR | Glasgow Coma Scale: motorische Reaktion | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| GCS_VR | Glasgow Coma Scale: verbale Reaktion | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| GCS_ER | Glasgow Coma Scale: visuelle Reaktion | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| HR | Herzfrequenz (Maximum) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| COKH | Koexistierende Erkrankungen | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TEMP | Körpertemperatur (Maximum) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| MECH_VENT | Mechanische Beatmung | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| ART_PO2 | Sauerstoff-Partialdruck arteriell (PaO2) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| FIO2 | Sauerstoffkonzentration inspiratorisch (FiO2) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| BILIRUBINE | Serum: Bilirubin (Maximum) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| CREA | Serum: Kreatinin (Maximum) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| SAP | Systolischer Blutdruck (Minimum) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| THERA | Therapeutische Maßnahmen (vor IBS) | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| IH_LOC | Zutransferierung | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |

### I12 -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| I12 |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| TISS-A |  |  |  |  |  |  |  |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer/Leistungserbringer-ID | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| AUFNR | Aufnahmezahl | MopedEncounter | .identifier:Aufnahmezahl |  | falldaten | $aufnehmen |  |
| AUFDAT | Aufnahme-/Kontaktdatum | MopedEncounter | .actualPeriod.start |  | falldaten | $aufnehmen |  |
| ABTPOS | Bettenführende Hauptkostenstelle – Positionsnummer | MopedAccount | .extension | AnzahlVerlegungen | wird von Operation berechnet | $verlegen | fortlaufende Nummer; wird bei jeder Verlegung & Urlaub erhöht => count(TransferEncounter)-1 |
| ERHDAT | Erhebungsdatum | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_STAND_MON | Standard-Monitoring | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_LAB | Labor | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_MED | Medikamente | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_DRESS | Verbandswechsel | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_DRAIN | Drainagenpflege | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_VENT_MOD | Atmungsmodus | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_AIRWAY | Atemwegszugang | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_TUBUS | Tubus-/Stomapflege | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_LUNG | Atemtherapie | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_VASODR | Medikamente vasoaktiv | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_L_FLUID | Flüssigkeitsersatz massiv | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_ART | Katheter arteriell | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_HDM | Monitoring hämodynamisch | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_CVL | Katheter zentralvenös | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_CPR | Reanimation kardiopulmonal | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_RENAL | Nierenersatztherapie | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_URINARY | Harnbilanzierung | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_ACT_DIU | Diurese aktiv | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_ICP | Hirndruckmessung | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_MET_SUPP | Behandlung metabolischer Entgleisungen | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_NUT_ENT | Ernährung enteral | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_NUT_PARENT | Ernährung parenteral | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_INT | Interventionen | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_DIAG_EX_ICU | Diagnostik und Therapie außerhalb der IBS | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_AGITATION | Agitation und Delirium | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_CARDASS | Assist kardial | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_PULMASS | Assist pulmonal | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_HYPOTHERMIA | Hypothermie therapeutisch | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_LIVER_SUPP | Lebersupport extrakorporal | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |
| TA_ANTIEPI | Kontinuierliche intravenöse antikonvulsive Therapie | Intensivdokumentation als FHIR Questionnaire |  |  |  | $erheben (nicht Teil des Hackathon) |  |

### K01* -> FHIR

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| K01* |  | Resource | FHIRPath | Extension | befüllt in | Operation | Anmerkung |
| Kostenstellenplan |  |  |  |  |  |  |  |
|  | Satzartenkennzeichen | / | / | / |  |  | in neuer Architektur nicht mehr notwendig |
| KANR | Krankenanstaltennummer | MopedAccount + MopedLKFRequest | MopedAccount.owner:HL7ATCoreOrganization.identifier:GDA-OID | MopedLKFRequest.provider:HL7ATCoreOrganization.identifier |  | falldaten | Stammdaten; $aufnehmen |  |
| FC | Funktionscode | MopedOrganizationAbteilung | .identifier:Funktionscode+.identifier:Funktionssubcode |  | funktionscode/funktionssubcode | Stammdaten; $aufnehmen und $verlegen |  |
| KOSTNR | m | MopedOrganizationAbteilung | .extension | Kostenstelle.InterneKostenstellennummer | wird in Operation verlinkt | Stammdaten; $aufnehmen und $verlegen |  |
| KOSTBEZ | Interne Kostenstellenbezeichnung | MopedOrganizationAbteilung | .extension | Kostenstelle.InterneKostenstellenbezeichnung | wird in Operation verlinkt | Stammdaten; $aufnehmen und $verlegen |  |
| SPEZORG | Spezielle Organisationsform | MopedOrganizationAbteilung | .extension | Kostenstelle.SpezielleOrganisationsform | wird in Operation verlinkt | Stammdaten; $aufnehmen und $verlegen |  |
| JAHR | Jahr | MopedOrganizationAbteilung | .extension | Kostenstelle.period | wird in Operation verlinkt | Stammdaten; $aufnehmen und $verlegen |  |

