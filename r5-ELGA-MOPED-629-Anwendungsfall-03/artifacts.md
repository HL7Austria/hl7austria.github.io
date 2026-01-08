# ELGA.MOPED\Artifacts Summary - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MOPED ClaimResponse $entscheiden](OperationDefinition-MOPED.ClaimResponse.Entscheiden.md) | Die $entscheiden Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird. |
| [MOPED Daten $update](OperationDefinition-MOPED.Daten.Update.md) | Die $update Operation wird aufgerufen, wenn zusätzliche Informationen zu einem Fall eingebracht/abgeändert werden. |
| [MOPED Encounter $abrechnen](OperationDefinition-MOPED.Encounter.Abrechnen.md) | Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden soll. |
| [MOPED Kosteninformation $melden](OperationDefinition-MOPED.Claim.Melden.md) | Die $melden Operation wird aufgerufen, wenn eine Kosteninformation an die SV gemeldet werden soll. |
| [MOPED Patient $aufnehmen](OperationDefinition-MOPED.Patient.Aufnehmen.md) | Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird. |
| [MOPED Patient $entlassen](OperationDefinition-MOPED.Patient.Entlassen.md) | Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde. |
| [MOPED Versichertenanspruchserklärung $anfragen](OperationDefinition-MOPED.VAERequest.Anfragen.md) | Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden). |
| [MOPED auf VAERequest oder ARKRequest $antworten](OperationDefinition-MOPED.Auf.Request.Antworten.md) | Die $antworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung oder eine Kosteninformation beantwortet wird. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [KH Organization](StructureDefinition-KHOrganization.md) | MOPED Profil für KH Organizations |
| [LGF Organization](StructureDefinition-LGFOrganization.md) | MOPED Profil für LGF Organizations |
| [MOPED ARK Status Update - PaymentReconciliation](StructureDefinition-MopedARKStatusUpdate.md) | MOPED Profil für Statusupdates zur Ausländerverrechnung oder zum Regress |
| [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md) | MOPED Profil der Claim Ressource für die Kostenmeldung für Ausländerverrechnung und Regresse. |
| [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md) | MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse. |
| [MOPED Abrechnen Bundle KH](StructureDefinition-MopedAbrechnenBundleKH.md) | Bundle für die Input-Ressourcen beim Abrechnen (KH) |
| [MOPED Anfragen Bundle KH](StructureDefinition-MopedAnfragenBundleKH.md) | Bundle für die Input-Ressourcen beim Anfragen (KH) |
| [MOPED Anfragen Composition](StructureDefinition-MopedAnfragenComposition.md) | MOPED Profil der Composition Ressource nach $anfragen |
| [MOPED Antworten Bundle SV](StructureDefinition-MopedAntwortenBundleSV.md) | Bundle für die Input-Ressourcen beim Einbringen von Antworten der SV |
| [MOPED Aufnahme Composition](StructureDefinition-MopedAufnahmeComposition.md) | MOPED Profil der Composition Ressource nach $aufnehmen |
| [MOPED Aufnehmen Bundle KH](StructureDefinition-MopedAufnehmenBundleKH.md) | Bundle für die Input-Ressourcen beim Aufnehmen eines Patienten |
| [MOPED Beantworten Composition](StructureDefinition-MopedBeantwortenComposition.md) | MOPED Profil der Composition Ressource nach $beantworten |
| [MOPED Composition](StructureDefinition-MopedComposition.md) | MOPED Profil der Composition Ressource von der alle anderen Compositions ableiten. |
| [MOPED Condition](StructureDefinition-MopedCondition.md) | MOPED Profil der Condition Ressource für die LDF-Abrechnung |
| [MOPED Coverage](StructureDefinition-MopedCoverage.md) | MOPED Profil der Coverage Ressource für Versicherungen. |
| [MOPED Coverage für Selbstzahler](StructureDefinition-MopedCoverageSelbstzahler.md) | MOPED Profil der Coverage Ressource für Selbstzahler |
| [MOPED Encounter](StructureDefinition-MopedEncounter.md) | MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung |
| [MOPED Encounter Ambulant](StructureDefinition-MopedEncounterA.md) | MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im ambulanten Bereich |
| [MOPED Encounter Aufnahme Stationär](StructureDefinition-MopedEncounterAufnahmeS.md) | MOPED Profil der Encounter Ressource für die Aufnahme im stationären Bereich |
| [MOPED Encounter Bund](StructureDefinition-MopedEncounterBund.md) | MOPED Profil der Encounter Ressource für die Rolle: Bund |
| [MOPED Encounter Entlassung Stationär](StructureDefinition-MopedEncounterEntlassungS.md) | MOPED Profil der Encounter Ressource für die Entlassung im stationären Bereich |
| [MOPED Encounter LGF](StructureDefinition-MopedEncounterLGF.md) | MOPED Profil der Encounter Ressource für die Rolle: LGF |
| [MOPED Encounter SV](StructureDefinition-MopedEncounterSV.md) | MOPED Profil der Encounter Ressource für die Rolle: SV |
| [MOPED Encounter Stationär](StructureDefinition-MopedEncounterS.md) | MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im stationären Bereich |
| [MOPED Entlassen Bundle KH](StructureDefinition-MopedEntlassenBundle.md) | Bundle für die Input-Ressourcen beim Entlassen eines Patienten |
| [MOPED Entlassung Aviso Composition](StructureDefinition-MopedEntlassenAvisoComposition.md) | MOPED Profil der Composition Ressource nach $entlassen bei Entlassung Aviso |
| [MOPED Entlassung vollständig Composition](StructureDefinition-MopedEntlassenVollstaendigComposition.md) | MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig |
| [MOPED Entscheiden Bundle LGF](StructureDefinition-MopedEntscheidenLGFBundle.md) | Bundle für die Input-Ressourcen beim Entscheiden (Bestätigen/Ablehnen) von Punkten/Erorrs/Warnings |
| [MOPED Hauptversicherter](StructureDefinition-Hauptversicherter.md) | MOPED Profil der Person Ressource für den Hauptversicherten |
| [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md) | MOPED Profil der Claim Ressource für die Leistungsabrechnungsanfrage. |
| [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.md) | MOPED Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort. |
| [MOPED Master Composition](StructureDefinition-MopedMasterComposition.md) | MOPED Profil der Composition Ressource für die Composition in der sich der gesamte Moped Datensatz aufbaut. Diese unterstütz durch ihre Invarianten eine konsistente Datenhaltung. |
| [MOPED Melden Bundle LGF](StructureDefinition-MopedMeldenLGFBundle.md) | Bundle für die Input-Ressourcen beim Melden von Informationen |
| [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md) | MOPED Profil für Abteilungen innerhalb einer Krankenanstalt. |
| [MOPED Patient Bund](StructureDefinition-MopedPatientBund.md) | MOPED Profil der Patient Ressource aus der Sicht der Rolle: Bund |
| [MOPED Patient LGF](StructureDefinition-MopedPatientLGF.md) | MOPED Profil der Patient Ressource aus der Sicht der Rolle: LGF |
| [MOPED Patient SV](StructureDefinition-MopedPatientSV.md) | MOPED Profil der Patient Ressource aus der Sicht der Rolle: SV |
| [MOPED Procedure](StructureDefinition-MopedProcedure.md) | MOPED Profil der Procedure Ressource für die LDF-Abrechnung |
| [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md) | MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten |
| [MOPED TransferEncounter Ambulant](StructureDefinition-MopedTransferEncounterA.md) | MOPED Profil der Encounter Ressource für ambulante Kontakte/Bewegungen |
| [MOPED TransferEncounter Intensiv](StructureDefinition-MopedTransferEncounterI.md) | MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen |
| [MOPED TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.md) | MOPED Profil der Encounter Ressource für eine stationäre Verlegung |
| [MOPED Update Bundle KH](StructureDefinition-MopedUpdateBundleKH.md) | Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall |
| [MOPED Update Composition](StructureDefinition-MopedUpdateComposition.md) | MOPED Profil der Composition Ressource nach $update |
| [MOPED VAERequest](StructureDefinition-MopedVAERequest.md) | MOPED Profil für die Anfrage der Versichertenanspruchserklärung VAE. |
| [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md) | MOPED Profil für die Beantwortung der Versichertenanspruchserklärung VAE. |
| [Moped QuestionnaireResponse](StructureDefinition-MopedQuestionnaireResponse.md) | MOPED Profil für QuestionnaireResponses die im Kontext von Moped erhoben werden |
| [SV Organization](StructureDefinition-SVOrganization.md) | MOPED Profil für SV Organizations |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abrechnung - Knoten](StructureDefinition-moped-ext-diagnoseKnoten.md) | Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen. |
| [Abrechnungsart Ausländerverrechnung](StructureDefinition-moped-ext-AbrechnungsartAuslaenderverrechnung.md) | Abrechnungsart Ausländerverrechnung |
| [AddItemCategory](StructureDefinition-moped-ext-AddItemCategory.md) | Benefit classification |
| [Altersgruppe](StructureDefinition-moped-ext-altersgruppe.md) | In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind. |
| [AnzahlBeurlaubungen](StructureDefinition-moped-ext-AnzahlBeurlaubungen.md) | MOPED Extension für die Anzahl der Beurlaubungen |
| [AnzahlVerlegungen](StructureDefinition-moped-ext-AnzahlVerlegungen.md) | MOPED Extension für die Anzahl der Verlegungen |
| [Aufnahmeart](StructureDefinition-moped-ext-aufnahmeart.md) | MOPED Extension für die Aufnahmeart. |
| [Beihilfenaequivalent](StructureDefinition-moped-ext-Beihilfenaequivalent.md) | MOPED Extension für das Beihilfenaequivalent |
| [Betreuungsschein bei Ausländerverrechnung](StructureDefinition-moped-ext-Betreuungsschein.md) | MOPED Extension für den Betreuungsschein bei Ausländerverrechnung |
| [Diagnosetyp](StructureDefinition-moped-ext-Diagnosetyp.md) | Diagnosetyp |
| [Error/Warning](StructureDefinition-moped-ext-fehlerWarnung.md) | MOPED Extension für akzeptierte Errors und Warnings |
| [Fondsrelevanz](StructureDefinition-moped-ext-fondsrelevanz.md) | Hier ist anzugeben, ob der stationäre Aufenthalt/ambulante Besuch gegenüber dem Landesgesundheitsfonds/PRIKRAF abzurechnen ist. |
| [Grund warum keine Zahlung erfolgte](StructureDefinition-moped-ext-ReasonForNonPayment.md) | Grund warum keine Zahlung erfolgte |
| [Kostenstelle](StructureDefinition-moped-ext-Kostenstelle.md) | MOPED Extension für akzeptierte Errors und Warnings |
| [Leistung - Anzahl](StructureDefinition-moped-ext-Leistungsanzahl.md) | MOPED Extension für die Anzahl der zu einem Zeitpunkt erbrachten Leistungen |
| [Medizinische Leistung - Abrechnungsrelevanz](StructureDefinition-moped-ext-AbrechnungsRelevanz.md) | Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist. |
| [Prozentsatz der Zahlung](StructureDefinition-moped-ext-PaymentPercentage.md) | Prozentsatz der Zahlung |
| [Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds](StructureDefinition-moped-ext-RechnungsnummerKHLGF.md) | MOPED Extension für die Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds |
| [Supporting Info Extension for ClaimResponse](StructureDefinition-MopedSupportingInfo.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - FREMDRE Slice](StructureDefinition-MopedSupportingInfoFREMDRE.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - OEGKELBNR Slice](StructureDefinition-MopedSupportingInfoOEGKELBNR.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - Sonderklasse Slice](StructureDefinition-MopedSupportingInfoSonderklasse.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag](StructureDefinition-MopedSupportingInfoVortageanzahlAufKostenbeitrag.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Tage ohne Einhebung des Kostenbeitrags](StructureDefinition-moped-ext-TageOhneKostenbeitrag.md) | Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde |
| [Unfalldatum](StructureDefinition-moped-ext-unfalldatum.md) | MOPED Extension für das Ereignis-/Unfalldatum. |
| [VDAS-ID - VersichertenDatenAbfrageService](StructureDefinition-moped-ext-vdasid.md) | Es handelt sich um eine ID, welche bei der VDAS-Abfrage durch die Krankenanstalt vom e-card System vergeben wird und von der Krankenanstalt in der Aufnahme-/Ereignisanzeige mitgeliefert werden kann. Dadurch kann das Abfrageergebnis eindeutig nachvollzogen werden. Das Ergebnis der VDAS-Abfrage ist im ambulanten Bereich für den Krankenversicherungsträger verbindlich. Eine Ablehnung aus versicherungsrechtlichen Gründen ist nicht möglich, sofern die Ereignisanzeige jenem Träger aus der VDAS-Abfrage (inkl. VDAS-ID) übermittelt wurde. Um eine zwischenstaatliche Verrechnung zu ermöglichen ist bei zwischenstaatlichen Fällen eine Ablehnung zulässig. |
| [VerpflegskostenBeitragsbefreiung](StructureDefinition-moped-ext-verpflegskostenBeitragsbefreiung.md) | VKBEFR – Verpflegskosten-Beitragsbefreiung |
| [Zahlungskennzeichen](StructureDefinition-moped-ext-Zahlungskennzeichen.md) | MOPED Extension für die Kostenmeldung. Konstenmeldung für A = Ausländerverrechnung, R = Regressangelegenheiten oder K = Kosteninformation |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abgangsart des Patienten](ValueSet-AbgangsartVS.md) | ValueSet für die Abgangsart des Patienten |
| [Abrechnungsart Ausländerverrechnung ValueSet](ValueSet-AbrechnungsartAuslaenderverrechnungVS.md) | ValueSet für die Abrechnungsarten in der Ausländerverrechnung |
| [Abrechnungsrelevanz der medizinischen Leistung](ValueSet-AbrechnungsRelevanzVS.md) | Abrechnungsrelevanz der medizinischen Leistung |
| [Akzeptierte Errors/Warnings - Codes 2025](ValueSet-EWCodes2025VS.md) | Der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes |
| [Altersgruppe des Patienten](ValueSet-AltersgruppeVS.md) | ValueSet für die Altersgruppe des Patienten |
| [Anwesenheitsart](ValueSet-AnwesenheitsartVS.md) | ValueSet für die Anwesenheitsart |
| [Arten von Moped Encounter](ValueSet-MopedEncounterTypesVS.md) | Arten von Moped Encounter |
| [Arten von Moped Payment Types VS](ValueSet-MopedPaymentTypesVS.md) | Arten von Moped Payment Types VS |
| [Aufnahmeart des Patienten](ValueSet-AufnahmeartVS.md) | ValueSet für die Aufnahmeart des Patienten (LKF + Ka-Org) |
| [Aufnahmeart2 des Patienten](ValueSet-Aufnahmeart2VS.md) | ValueSet für die Aufnahmeart des Patienten |
| [Befreiung für den Verpflegskostenbeitrag](ValueSet-VerpflegskostenBeitragsbefreiungVS.md) | Befreiung für den Verpflegskostenbeitrag |
| [Behandlungsart](ValueSet-BehandlungsartVS.md) | ValueSet für die Behandlungsart |
| [Encounter Status bei Entlassung](ValueSet-MopedEncounterStatusEntlassungVS.md) | Varianten des Encounter Status bei Entlassung |
| [Encounter Status bei der Aufnahme](ValueSet-MopedEncounterStatusAufnahmeVS.md) | Varianten des Encounter Status bei der Aufnahme |
| [Encounter Status in Moped](ValueSet-MopedEncounterStatusVS.md) | Varianten des Encounter Status bei Aufenthalten in Moped |
| [Entlassungsart des Patienten ambulant](ValueSet-EntlassungsartAVS.md) | ValueSet für die ambulante Entlassungsart des Patienten |
| [Entlassungsart des Patienten ambulant + stationär](ValueSet-EntlassungsartVS.md) | ValueSet für die Entlassungsart des Patienten |
| [Entlassungsart des Patienten stationär](ValueSet-EntlassungsartSVS.md) | ValueSet für die stationäre Entlassungsart des Patienten |
| [Fondsrelevanz](ValueSet-FondsrelevanzVS.md) | ValueSet für die Fondsrelevanz |
| [HTTP Verb Insert Only](ValueSet-HTTPVerbInsertOnlyVS.md) | HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen. |
| [HTTP Verb Insert Update Delete](ValueSet-HTTPVerbInsertUpdateDeleteVS.md) | HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen. |
| [HTTP Verb Update Only](ValueSet-HTTPVerbUpdateOnlyVS.md) | HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen. |
| [ICD-10 AT](ValueSet-ICD10ATVS.md) | ICD-10 BMSGPK 2025+ |
| [Kostenmeldung für (A/R/K)](ValueSet-KostenmeldungARKVS.md) | ValueSet für die Art der Kostenmeldung |
| [LKF Abrechnungsgruppe](ValueSet-LKFAbrechnungsGruppeVS.md) | LKF Abrechnungsgruppe |
| [LKF Abrechnungsknoten](ValueSet-LKFAbrechnungsKnotenVS.md) | LKF Abrechnungsknoten |
| [LKF Diagnosetyp ValueSet](ValueSet-LKFDiagnoseTypVS.md) | LKF Diganosetyp |
| [LKF Hauptdiagnosegruppen](ValueSet-LKFHauptdiagnosegruppenVS.md) | LKF Hauptdiagnosegruppen |
| [LKF Leistungskatalog BMSGPK](ValueSet-LKFLeistungskatalogVS.md) | LKF Hauptdiagnosegruppen |
| [LKF Seitenlokalisation ValueSet](ValueSet-LKFSeitenlokalisationVS.md) | LKF Seitenlokalisation |
| [LKF medizinische Einzelleistungen (MEL)](ValueSet-LKFmedizinischeEinzelleistungenVS.md) | LKF medizinische Einzelleistungen (MEL) |
| [MOPED LKFSupportingInformationCategory](ValueSet-LKFSupportingInformationCategoryVS.md) | Arten von zusätzlichen Informationen im LKFRequest |
| [MOPED RelatedPerson Relationship Type ValueSet](ValueSet-MopedRelatedPersonRelationshipTypeVS.md) | A value set containing codes for the type of relationship of a related person to the patient. |
| [MOPED VAESupportingInformationCategory](ValueSet-ClaimSupportingInformationCategoryVS.md) | Arten von zusätzlichen Informationen in der VAE |
| [MOPED VAESupportingInformationCategory](ValueSet-VAESupportingInformationCategoryVS.md) | Arten von zusätzlichen Informationen in der VAE |
| [Moped Claim Item Category ValueSet](ValueSet-MopedClaimItemCategoryVS.md) | ValueSet für die Arten von Claim Item Kategorien |
| [Moped Composition Sections ValueSet](ValueSet-CompositionSectionsVS.md) | ValueSet für die Moped Sections der Composition Ressource |
| [Sonderklasse ValueSet](ValueSet-SonderklasseVS.md) | ValueSet für die Klasse (KaOrg) |
| [Spezielle Organisationsform](ValueSet-SpezielleOrganisationsformVS.md) | Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen. |
| [Status der Versichertenanspruchserklärung](ValueSet-VAEStatusVS.md) | Status der Versichertenanspruchserklärung |
| [Transportart](ValueSet-TransportartVS.md) | ValueSet für die Transportart des Patienten |
| [Ursache für Behandlung](ValueSet-UrsacheVS.md) | ValueSet für die Ursache der Behandlung laut Ka-Org |
| [ValueSet Zahlungskennzeichen ARK](ValueSet-ZahlungskennzeichenVS.md) | ValueSet für das Zahlungskennzeichen ARK |
| [Verdacht auf Arbeits- oder Schuelerunfall ValueSet](ValueSet-VerdachtArbeitsSchuelerunfallVS.md) | ValueSet für den Verdacht auf einen Arbeits- oder Schuelerunfall |
| [Workflow Status eines Falls](ValueSet-WorkflowStatusVS.md) | ValueSet für die Statusoptionen in denen sich ein Fall befinden kann. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abrechnungsart Ausländerverrechnung CodeSystem](CodeSystem-AbrechnungsartAuslaenderverrechnungCS.md) | CodeSystem für die Abrechnungsarten in der Ausländerverrechnung |
| [Abrechnungsrelevanz der medizinischen Leistung](CodeSystem-AbrechnungsRelevanzCS.md) | Abrechnungsrelevanz der medizinischen Leistung |
| [Akzeptierte Errors/Warnings - Codes 2025](CodeSystem-EWCodes2025CS.md) | Der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes |
| [Altersgruppe des Patienten](CodeSystem-AltersgruppeCS.md) | CodeSystem für die Altersgruppe des Patienten |
| [Anwesenheitsart](CodeSystem-AnwesenheitsartCS.md) | CodeSystem für die Anwesenheitsart |
| [Arten von Moped Encounter](CodeSystem-MopedEncounterTypesCS.md) | Arten von Moped Encounter |
| [Arten von Moped Payment Types CS](CodeSystem-MopedPaymentTypesCS.md) | Arten von Moped Payment Types CS |
| [Aufnahmeart2 des Patienten](CodeSystem-Aufnahmeart2CS.md) | CodeSystem für die Aufnahmeart des Patienten |
| [Befreiung für den Verpflegskostenbeitrag](CodeSystem-VerpflegskostenBeitragsbefreiungCS.md) | CodeSystem für die Befreiung für den Verpflegskostenbeitrag |
| [Behandlungsart](CodeSystem-BehandlungsartCS.md) | CodeSystem für die Behandlungsart |
| [CodeSystem Zahlungskennzeichen Auslaenderverrechnung](CodeSystem-ZahlungskennzeichenAuslaenderverrechnungCS.md) | CodeSystem Zahlungskennzeichen Auslaenderverrechnung |
| [CodeSystem Zahlungskennzeichen Regress](CodeSystem-ZahlungskennzeichenRegressCS.md) | CodeSystem Zahlungskennzeichen Regress |
| [Entlassungsart des Patienten](CodeSystem-EntlassungsartCS.md) | CodeSystem für die Entlassungsart des Patienten |
| [Fondsrelevanz](CodeSystem-FondsrelevanzCS.md) | CodeSystem für die Fondsrelevanz |
| [Kostenmeldung für (A/R/K)](CodeSystem-KostenmeldungARKCS.md) | CodeSystem für die Art der Kostenmeldung |
| [LKF Abrechnungsknoten](CodeSystem-LKFAbrechnungsKnotenCS.md) | LKF Abrechnungsknoten |
| [LKF Hauptdiagnosegruppen](CodeSystem-LKFHauptdiagnosegruppenCS.md) | LKF Hauptdiagnosegruppen |
| [LKF medizinische Einzelleistungen (MEL)](CodeSystem-LKFmedizinischeEinzelleistungenCS.md) | LKF medizinische Einzelleistungen (MEL) |
| [MOPED VAESupportingInformationCategory](CodeSystem-ClaimSupportingInformationCategoryCS.md) | Arten von zusätzlichen Informationen in der VAE |
| [Moped Aufnahmeart des Patienten](CodeSystem-AbgangsartCS.md) | Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg) |
| [Moped Aufnahmeart des Patienten](CodeSystem-AufnahmeartCS.md) | Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg) |
| [Moped Claim Item Category CodeSystem](CodeSystem-MopedClaimItemCategoryCS.md) | CodeSystem für die Arten von Claim Item Kategorien |
| [Moped Composition Sections](CodeSystem-CompositionSectionsCS.md) | CodeSystem für die Moped Sections der Composition Ressource |
| [Sonderklasse CodeSystem](CodeSystem-SonderklasseCS.md) | CodeSystem für die Klasse (KaOrg) |
| [Spezielle Organisationsform](CodeSystem-SpezielleOrganisationsformCS.md) | Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen. |
| [Status der Versichertenanspruchserklärung](CodeSystem-VAEStatusCS.md) | Status der Versichertenanspruchserklärung |
| [Transportart](CodeSystem-TransportartCS.md) | CodeSystem für die Transportart des Patienten |
| [Ursache für Behandlung](CodeSystem-UrsacheCS.md) | CodeSystem für die Ursache der Behandlung laut Ka-Org |
| [Verdacht auf Arbeits- oder Schuelerunfall CodeSystem](CodeSystem-VerdachtArbeitsSchuelerunfallCS.md) | CodeSystem für den Verdacht auf einen Arbeits- oder Schuelerunfall |
| [Workflow Status eines Falls](CodeSystem-WorkflowStatusCS.md) | CodeSystem für die Statusoptionen in denen sich ein Fall befinden kann. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AbteilungHerzJesu1](Organization-AbteilungHerzJesu1.md) | Hackathon Stammdaten: Abteilung 1 des KH Herz Jesu |
| [AbteilungKHRied1](Organization-AbteilungKHRied1.md) | Hackathon Stammdaten: Abteilung 1 des KH Ried |
| [AbteilungKHRied2](Organization-AbteilungKHRied2.md) | Hackathon Stammdaten: Abteilung 2 des KH Ried |
| [AbteilungKHRied3](Organization-AbteilungKHRied3.md) | Hackathon Stammdaten: Abteilung 3 des KH Ried |
| [AbteilungKHRied4](Organization-AbteilungKHRied4.md) | Hackathon Stammdaten: Abteilung 4 des KH Ried |
| [Condition42.1](Condition-Condition42.1.md) |  |
| [Encounter42](Encounter-Encounter42.md) |  |
| [I12 Questionnaire für TISS-A-Daten](Questionnaire-tiss-a-questionnaire.md) |  |
| [I12 QuestionnaireResponse für TISS-A-Daten](QuestionnaireResponse-tiss-a-questionnaireresponse.md) |  |
| [KHK999](Organization-KHK999.md) |  |
| [KHK999ABT11111100](Organization-KHK999ABT11111100.md) |  |
| [KHK999ABT12111100](Organization-KHK999ABT12111100.md) |  |
| [KHK999ABT12118102](Organization-KHK999ABT12118102.md) |  |
| [KHK999ABT16075000](Organization-KHK999ABT16075000.md) |  |
| [KHK999ABT16111111](Organization-KHK999ABT16111111.md) |  |
| [KHK999ABT16111112](Organization-KHK999ABT16111112.md) |  |
| [KHK999ABT16211100](Organization-KHK999ABT16211100.md) |  |
| [KHK999ABT16518011](Organization-KHK999ABT16518011.md) |  |
| [LKF Testdaten Fall](Composition-Composition42.md) |  |
| [LKFRequest42](Claim-LKFRequest42.md) |  |
| [MOPED PJ1 Composition nach $aufnehmen](Composition-PJ1CompositionAufnehmen.md) | PJ1 Beispiel der Composition Ressource nach $aufnehmen |
| [OrganizationAffiliationWgfHerzJesu](OrganizationAffiliation-OrganizationAffiliationWgfHerzJesu.md) | Hackathon Stammdaten: Organization Affiliation zwischen LGF und KH Herz Jesu |
| [OrganizationHerzJesuKrankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md) | Hackathon Stammdaten: KH Herz Jesu |
| [OrganizationKrankenhausRied](Organization-OrganizationKrankenhausRied.md) | Hackathon Stammdaten: KH Ried |
| [OrganizationLGF](Organization-OrganizationLGF.md) | Hackathon Stammdaten: LGF Wien |
| [OrganizationUeberweisendeOrganization1](Organization-OrganizationUeberweisendeOrganization1.md) | Hackathon Stammdaten: Überweisende Organisation 1 |
| [OrganizationUeberweisendeOrganization2](Organization-OrganizationUeberweisendeOrganization2.md) | Hackathon Stammdaten: Überweisende Organisation 2 |
| [PJ1Condition1](Condition-PJ1Condition1.md) | Hackathon Patient Journey 1 Beispiel: Condition 1 |
| [PJ1Coverage](Coverage-PJ1Coverage.md) | Hackathon Patient Journey 1 Beispiel: Coverage |
| [PJ1Encounter](Encounter-PJ1Encounter.md) | Hackathon Patient Journey 1 Beispiel: Encounter |
| [PJ1EncounterAufnahme](Encounter-PJ1EncounterAufnahme.md) | Hackathon Patient Journey 1 Beispiel: Encounter |
| [PJ1EncounterBasis](Encounter-PJ1EncounterBasis.md) | Maskierung Patient Journey 1 Beispiel: Encounter |
| [PJ1EncounterBund](Encounter-PJ1EncounterBund.md) | Maskierung Patient Journey 1 Beispiel: EncounterBund |
| [PJ1EncounterLGF](Encounter-PJ1EncounterLGF.md) | Maskierung Patient Journey 1 Beispiel: EncounterLGF |
| [PJ1EncounterSV](Encounter-PJ1EncounterSV.md) | Maskierung Patient Journey 1 Beispiel: EncounterSV |
| [PJ1LKFRequest1](Claim-PJ1LKFRequest1.md) | Hackathon Patient Journey 1 Beispiel: LKFRequest 1 |
| [PJ1LKFResponse1](ClaimResponse-PJ1LKFResponse1.md) | Hackathon Patient Journey 1 Beispiel: LKFResponse 1 |
| [PJ1Patient](Patient-PJ1Patient.md) | Hackathon Patient Journey 1 Beispiel: Patient |
| [PJ1Procedure1](Procedure-PJ1Procedure1.md) | Hackathon Patient Journey 1 Beispiel: Procedure 1 |
| [PJ1TransferEncounter1](Encounter-PJ1TransferEncounter1.md) | Hackathon Patient Journey 1 Beispiel: TransferEncounter 1 |
| [PJ1TransferEncounter1Aufnahme](Encounter-PJ1TransferEncounter1Aufnahme.md) | Hackathon Patient Journey 1 Beispiel: TransferEncounter 1 |
| [PJ1VAERequest1](Claim-PJ1VAERequest1.md) | Hackathon Patient Journey 1 Beispiel: VAERequest 1 |
| [PJ1VAEResponse1](ClaimResponse-PJ1VAEResponse1.md) | Hackathon Patient Journey 1 Beispiel: VAEResponse 1 |
| [PJ2Condition1](Condition-PJ2Condition1.md) | Hackathon Patient Journey 2 Beispiel: Condition 1 |
| [PJ2Condition2](Condition-PJ2Condition2.md) | Hackathon Patient Journey 2 Beispiel: Condition 2 |
| [PJ2Coverage](Coverage-PJ2Coverage.md) | Hackathon Patient Journey 2 Beispiel: Coverage |
| [PJ2Encounter](Encounter-PJ2Encounter.md) | Hackathon Patient Journey 2 Beispiel: Encounter |
| [PJ2LKFRequest1](Claim-PJ2LKFRequest1.md) | Hackathon Patient Journey 2 Beispiel: LKFRequest 1 |
| [PJ2LKFResponse1](ClaimResponse-PJ2LKFResponse1.md) | Hackathon Patient Journey 2 Beispiel: LKFResponse 1 |
| [PJ2Patient](Patient-PJ2Patient.md) | Hackathon Patient Journey 2 Beispiel: Patient |
| [PJ2Procedure1](Procedure-PJ2Procedure1.md) | Hackathon Patient Journey 2 Beispiel: Procedure 1 |
| [PJ2Procedure2](Procedure-PJ2Procedure2.md) | Hackathon Patient Journey 2 Beispiel: Procedure 2 |
| [PJ2TransferEncounter1](Encounter-PJ2TransferEncounter1.md) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 1 |
| [PJ2TransferEncounter2](Encounter-PJ2TransferEncounter2.md) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 2 |
| [PJ2TransferEncounter3](Encounter-PJ2TransferEncounter3.md) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 3 |
| [PJ2TransferEncounter4](Encounter-PJ2TransferEncounter4.md) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 4 |
| [PJ2TransferEncounter5](Encounter-PJ2TransferEncounter5.md) | Hackathon Patient Journey 2 Beispiel: TransferEncounter 5 |
| [PJ2VAERequest1](Claim-PJ2VAERequest1.md) | Hackathon Patient Journey 2 Beispiel: VAERequest 1 |
| [PJ2VAEResponse1](ClaimResponse-PJ2VAEResponse1.md) | Hackathon Patient Journey 2 Beispiel: VAEResponse 1 |
| [Patient42](Patient-Patient42.md) |  |
| [SAPS3 Questionnaire](Questionnaire-saps3-questionnaire.md) | A questionnaire for collecting SAPS3 data |
| [SAPS42.1](QuestionnaireResponse-SAPS42.1.md) |  |
| [SV11](Organization-SV11.md) | Hackathon Stammdaten: ÖGK Wien |
| [SV12](Organization-SV12.md) | Hackathon Stammdaten: ÖGK Niederösterreich |
| [SV13](Organization-SV13.md) | Hackathon Stammdaten: ÖGK Burgenland |
| [SV14](Organization-SV14.md) | Hackathon Stammdaten: ÖGK Oberösterreich |
| [SV15](Organization-SV15.md) | Hackathon Stammdaten: ÖGK Steiermark |
| [SV16](Organization-SV16.md) | Hackathon Stammdaten: ÖGK Kärnten |
| [SV17](Organization-SV17.md) | Hackathon Stammdaten: ÖGK Salzburg |
| [SV18](Organization-SV18.md) | Hackathon Stammdaten: ÖGK Tirol |
| [SV19](Organization-SV19.md) | Hackathon Stammdaten: ÖGK Vorarlberg |
| [Satzart K03 – KA-Statistik (Ressourcen und Inanspruchnahme)](Questionnaire-ka-statistik-k03.md) | This questionnaire is used to collect KA-Statistik data for K03 message reporting. |
| [Satzart K05 – KA-Statistik (Personal des ärztlichen Dienstes)](Questionnaire-ka-statistik-k05.md) | This questionnaire is used to collect KA-Statistik data for K05 message reporting. |
| [Stroke Unit Registermeldung – Patientendaten](Questionnaire-strokeunit-questionnaire.md) | Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten |
| [Subscription Topic VAE abgelehnt](SubscriptionTopic-vaeAbgelehnt.md) | SubscriptionTopic für das KH, um bei abgelehnten VAEs benachrichtigt zu werden. |
| [Subscription Topic neue VAE](SubscriptionTopic-neueVAE.md) | SubscriptionTopic für die SV, um bei neuen VAEs benachrichtigt zu werden. |
| [TISS42.1](QuestionnaireResponse-TISS42.1.md) |  |
| [TISS42.2](QuestionnaireResponse-TISS42.2.md) |  |
| [TISS42.3](QuestionnaireResponse-TISS42.3.md) |  |
| [Test1PatientBund](Patient-Test1PatientBund.md) | Maskierung Beispiel PatientBund |
| [Test1PatientLGF](Patient-Test1PatientLGF.md) | Maskierung Beispiel PatientLGF |
| [Test1PatientOhneMaskierung](Patient-Test1PatientOhneMaskierung.md) | Maskierung Beispiel Patient |
| [Test1PatientSV](Patient-Test1PatientSV.md) | Maskierung Beispiel PatientSV |
| [Test2SAPS3QuestionnaireResponse1](QuestionnaireResponse-Test2SAPS3QuestionnaireResponse1.md) |  |
| [TransferEncounter42.1](Encounter-TransferEncounter42.1.md) |  |
| [TransferEncounter42.2](Encounter-TransferEncounter42.2.md) |  |
| [register-questionnaire](Questionnaire-register-questionnaire.md) |  |
| [strokeunit-questionnaire-response-1](QuestionnaireResponse-strokeunit-questionnaire-response-1.md) |  |

