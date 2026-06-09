# ELGA.MOPED\Artifacts Summary - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

Diese Seite enthält eine Liste der FHIR-Artefakte, die im Rahmen dieses Implementierungsleitfadens definiert wurden.

Verordnungsrelevante Artefakte

Die folgenden Profile werden im Rahmen einer Verordnung festgelegt. Änderungen an diesen Profilen, die zu zwingenden Softwareanpassungen in den beteiligten Systemen führen, bedürfen einer neuerlichen Verordnung.

Nicht verordnungsrelevante Artefakte

Alle weiteren Artefakte dienen der technischen Spezifikation, Interaktion oder Prozessbeschreibung und sind
**nicht verordnungsrelevant**.

-------

### Verordnungsrelevante Datenfelder

#### Datenfelder für die KA 

VERORDNUNGSRELEVANT

| | |
| :--- | :--- |
| [MOPED Encounter Ambulant KA](StructureDefinition-at-moped-encounter-besuch-ambulant-KA.md) | MOPED Profil der ambulanten Encounter Ressource für die Rolle: KA |
| [MOPED Encounter Stationär KA](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-KA.md) | MOPED Profil der stationären Encounter Ressource für die Rolle: KA |
| [MOPED vbPK Patient KA](StructureDefinition-AtMopedPatientvbPKKA.md) | MOPED Profil der Patient Ressource mit vbPKs für die Rolle KA |
| [MOPED Patient mit Klarname KA](StructureDefinition-AtMopedPatientKlarnameKA.md) | MOPED Profil der Patient Ressource mit Klarname für die Rolle: KA |

#### Datenfelder für den Bund 

VERORDNUNGSRELEVANT

| | |
| :--- | :--- |
| [MOPED Encounter Ambulant Bund](StructureDefinition-at-moped-encounter-besuch-ambulant-Bund.md) | MOPED Profil der ambulanten Encounter Ressource für die Rolle: Bund |
| [MOPED Encounter Stationär Bund](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-Bund.md) | MOPED Profil der stationären Encounter Ressource für die Rolle: Bund |
| [MOPED vbPK Patient Bund](StructureDefinition-AtMopedPatientvbPKBund.md) | MOPED Profil der Patient Ressource mit vbPKs für die Rolle: Bund |
| [MOPED Patient mit Klarname Bund](StructureDefinition-AtMopedPatientKlarnameBund.md) | MOPED Profil der Patient Ressource mit Klarname für die Rolle: Bund |

#### Datenfelder für den LGF 

VERORDNUNGSRELEVANT

| | |
| :--- | :--- |
| [MOPED Encounter Ambulant LGF](StructureDefinition-at-moped-encounter-besuch-ambulant-LGF.md) | MOPED Profil der ambulanten Encounter Ressource für die Rolle: LGF |
| [MOPED Encounter Stationär LGF](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-LGF.md) | MOPED Profil der stationären Encounter Ressource für die Rolle: LGF |
| [MOPED vbPK Patient LGF](StructureDefinition-AtMopedPatientvbPKLGF.md) | MOPED Profil der Patient Ressource mit vbPKs für die Rolle: LGF |
| [MOPED Patient mit Klarname LGF](StructureDefinition-AtMopedPatientKlarnameLGF.md) | MOPED Profil der Patient Ressource mit Klarname für die Rolle: LGF |

#### Datenfelder für die SV 

VERORDNUNGSRELEVANT

| | |
| :--- | :--- |
| [MOPED Encounter Ambulant SV](StructureDefinition-at-moped-encounter-besuch-ambulant-SV.md) | MOPED Profil der ambulanten Encounter Ressource für die Rolle: SV |
| [MOPED Encounter Stationär SV](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-SV.md) | MOPED Profil der stationären Encounter Ressource für die Rolle: SV |
| [MOPED vbPK Patient SV](StructureDefinition-AtMopedPatientvbPKSV.md) | MOPED Profil der Patient Ressource mit vbPKs für die Rolle: SV |
| [MOPED Patient mit Klarname SV](StructureDefinition-AtMopedPatientKlarnameSV.md) | MOPED Profil der Patient Ressource mit Klarname für die Rolle: SV |

-------

### Fallbezogene Questionnaires für die Intensivdokumentation

Questionnaires für die Modellierung von Intensivdokumentation

| | |
| :--- | :--- |
| [I12 Questionnaire für TISS-A-Daten](Questionnaire-LKFTISSAQuestionnaire.md) | TISS-A Questionnaire |
| [SAPS3 Questionnaire](Questionnaire-LKFSAPS3Questionnaire.md) | SAPS3 Questionnaire |

### Questionnaires - Registermeldungen

Questionnaires zur Definition von Registermeldungen in Moped.

| | |
| :--- | :--- |
| [register-questionnaire](Questionnaire-register-questionnaire.md) |   |
| [Stroke Unit Registermeldung – Patientendaten](Questionnaire-StrokeUnitQuestionnaire2025.md) | Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten |

### Questionnaires - Jahresstatistikmeldung/Monatsstatistikmeldung

Jahresstatistikmeldungen von der Krankenanstalt für den LGF und Bund.

| | |
| :--- | :--- |
| [LKF Jahresstatistikmeldung](Questionnaire-LKFJahresstatistikmeldung.md) | LKF Jahresstatistikmeldung |
| [LKF Monatsstatistikmeldung](Questionnaire-LKFMonatsstatistikmeldung.md) | LKF Monatsstatistikmeldung |

### Requirements: Actor Definitions

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [Moped Bund Actor](ActorDefinition-MopedBundActor.md) | Moped ActorDefnition für den Bund |
| [Moped Device Actor](ActorDefinition-MopedDeviceActor.md) | Moped ActorDefnition für Moped selbst |
| [Moped KA Actor](ActorDefinition-MopedKAActor.md) | Moped ActorDefnition für Krankenanstalten in Österreich |
| [Moped LGF Actor](ActorDefinition-MopedLGFActor.md) | Moped ActorDefnition für LGFs in Österreich |
| [Moped SV Actor](ActorDefinition-MopedSVActor.md) | Moped ActorDefnition für eine SV in Österreich |

### Behavior: Operation Definitions

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MOPED ClaimResponse $entscheiden](OperationDefinition-MOPED.ClaimResponse.Entscheiden.md) | Die $entscheiden Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird. |
| [MOPED Daten $update](OperationDefinition-MOPED.Daten.Update.md) | Die $update Operation wird aufgerufen, wenn zusätzliche Informationen zu einem Fall eingebracht/abgeändert werden. |
| [MOPED Encounter $abrechnen](OperationDefinition-MOPED.Encounter.Abrechnen.md) | Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden soll. |
| [MOPED Kosteninformation $melden](OperationDefinition-MOPED.Claim.Melden.md) | Die $melden Operation wird aufgerufen, wenn eine Kosteninformation an die SV gemeldet werden soll. |
| [MOPED Patient $aufnehmen](OperationDefinition-MOPED.Patient.Aufnehmen.md) | Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in die Krankenanstalt aufgenommen wird. |
| [MOPED Patient $entlassen](OperationDefinition-MOPED.Patient.Entlassen.md) | Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde. |
| [MOPED QuestionnaireResponse $einmelden](OperationDefinition-MOPED.QuestionnaireResponse.Einmelden.md) | Die $einmelden Operation wird aufgerufen, wenn eine (nicht fallbezogene) QuestionnaireResponse eingemeldet werden soll. |
| [MOPED Versichertenanspruchserklärung $anfragen](OperationDefinition-MOPED.VAERequest.Anfragen.md) | Die $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden). |
| [MOPED auf VAERequest oder ARKRequest $antworten](OperationDefinition-MOPED.Auf.Request.Antworten.md) | Die $antworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung oder eine Kosteninformation beantwortet wird. |

### Structures: Resource Profiles

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT MOPED Bundle $abrechnen KA Profil](StructureDefinition-at-moped-bundle-abrechnen-KA.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Abrechnen (KA) |
| [AT MOPED Bundle $anfragen KA Profil](StructureDefinition-at-moped-bundle-anfragen-KA.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim $anfragen (KA) |
| [AT MOPED Bundle $antworten SV Profil](StructureDefinition-at-moped-bundle-antworten-SV.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einbringen von Antworten der SV |
| [AT MOPED Bundle $aufnehmen KA Profil](StructureDefinition-at-moped-bundle-aufnehmen-KA.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Aufnehmen eines Patienten |
| [AT MOPED Bundle $entlassen KA Profil](StructureDefinition-at-moped-bundle-entlassen-KA.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Entlassen eines Patienten |
| [AT MOPED Bundle $entscheiden LGF Profil](StructureDefinition-at-moped-bundle-entscheiden-LGF.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Entscheiden (Bestätigen/Ablehnen) von Punkten/Erorrs/Warnings |
| [AT MOPED Bundle $melden LGF](StructureDefinition-at-moped-bundle-melden-LGF.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Melden von Informationen |
| [AT MOPED Bundle $update KA](StructureDefinition-at-moped-bundle-update-KA.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Update von Informationen zu einem Fall |
| [AT MOPED Bundle Input KA Profil](StructureDefinition-at-moped-bundle-input-KA.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Update von Informationen zu einem Fall |
| [AT MOPED Bundle QuestionnaireResponse $einmelden Profil](StructureDefinition-at-moped-bundle-questionnaireresponse-einmelden-KA.md) | MOPED Profil der Bundle Ressource für die Input-Ressourcen beim Einmelden von nicht fallspezifischen QuestionnaireResponses |
| [AT MOPED Claim LKFRequest Basis Profil](StructureDefinition-at-moped-claim-lkfrequest-basis.md) | MOPED Basis Profil der Claim Ressource für die Leistungsabrechnungsanfrage. |
| [AT MOPED Claim LKFRequest generisches Profil](StructureDefinition-at-moped-claim-lkfrequest-generisch.md) | MOPED generisches Profil der Claim Ressource die Leistungsabrechnungsanfrage. |
| [AT MOPED Claim VAERequest Basis Profil](StructureDefinition-at-moped-claim-vaerequest-basis.md) | MOPED Basis Profil der Claim Ressource für die Anfrage der Versichertenanspruchserklärung VAE. |
| [AT MOPED Claim VAERequest Initiales Profil](StructureDefinition-at-moped-claim-VAE-request-initial.md) | MOPED Profile der Claim Ressource für die initiale Anfrage der Versichertenanspruchserklärung (VAE) |
| [AT MOPED Claim VAERequest Verlängerungs Profil](StructureDefinition-at-moped-claim-vaerequest-verlaengerung.md) | MOPED Profil der Claim Ressource für die Verlängerung der Versichertenanspruchserklärung (VAE) |
| [AT MOPED Claim VAERequest generisches Profil](StructureDefinition-at-moped-claim-vaerequest-generisch.md) | MOPED generisches Profil der Claim Ressource für die Anfrage der Versichertenanspruchserklärung VAE. |
| [AT MOPED ClaimResponse LKFResponse Basis Profil](StructureDefinition-at-moped-claimresponse-lkfresponse-basis.md) | MOPED Basis Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort. |
| [AT MOPED ClaimResponse LKFResponse generisches Profil](StructureDefinition-at-moped-claimresponse-lkfresponse-generisch.md) | MOPED generisches Profil der ClaimResponse Ressource für die Leistungsabrechnungsantwort. |
| [AT MOPED ClaimResponse VAEResponse Basis Profil](StructureDefinition-at-moped-claimresponse-vaeresponse-basis.md) | MOPED Basis Profil der ClaimResponse Ressource für die Beantwortung der Versichertenanspruchserklärung VAE. |
| [AT MOPED ClaimResponse VAEResponse generisches Profil](StructureDefinition-at-moped-claimresponse-vaeresponse-generisch.md) | MOPED generisches Profil der ClaimResponse Ressource für die Beantwortung der Versichertenanspruchserklärung VAE. |
| [AT MOPED Composition $anfragen Profil](StructureDefinition-at-moped-composition-anfragen.md) | MOPED Profil der Composition Ressource nach $anfragen |
| [AT MOPED Composition $aufnehmen Profil](StructureDefinition-at-moped-composition-aufnehmen.md) | MOPED Profil der Composition Ressource nach $aufnehmen |
| [AT MOPED Composition $beantworten Profil](StructureDefinition-at-moped-composition-beantworten.md) | MOPED Profil der Composition Ressource nach $beantworten |
| [AT MOPED Composition $entlassen Aviso Profil](StructureDefinition-at-moped-composition-entlassen-aviso.md) | MOPED Profil der Composition Ressource nach $entlassen bei Entlassung Aviso |
| [AT MOPED Composition $entlassen vollständig Profil](StructureDefinition-at-moped-composition-entlassen-vollstaendig.md) | MOPED Profil der Composition Ressource nach $entlassen bei Entlassung vollständig |
| [AT MOPED Composition $update Profil](StructureDefinition-at-moped-composition-update.md) | MOPED Profil der Composition Ressource nach $update |
| [AT MOPED Composition Basis Profil](StructureDefinition-at-moped-composition-basis.md) | MOPED Basis Profil der Composition Ressource in der sich der gesamte Moped Datensatz aufbaut. Diese unterstütz durch ihre Invarianten eine konsistente Datenhaltung. |
| [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md) | MOPED generisches Profil der Composition Ressource von der alle anderen Compositions ableiten |
| [AT MOPED Condition Basis Profil](StructureDefinition-at-moped-condition-basis.md) | MOPED Basis Profil der Condition Ressource für Diagnosen |
| [AT MOPED Condition generisches Profil](StructureDefinition-at-moped-condition-generisch.md) | MOPED generisches Profil der Condition Ressource für Diagnosen |
| [AT MOPED Coverage Selbstzahler Basis Profil](StructureDefinition-at-moped-coverage-selbstzahler.md) | MOPED Basis Profil der Coverage Ressource für Personen, welche kein relevantes Versicherungsverhältnis haben und die Behandlung selbst bezahlen müssen. |
| [AT MOPED Coverage Versicherter Basis Profil](StructureDefinition-at-moped-coverage-versicherter-basis.md) | MOPED Basis Profil der Coverage Ressource für Personen, welche ein Versicherungsverhältnis mit der Sozialversicherung haben. |
| [AT MOPED Coverage generisches Profil](StructureDefinition-at-moped-coverage-generisch.md) | MOPED generisches Profil der Coverage Ressource |
| [AT MOPED Device XDok Profil](StructureDefinition-at-moped-device-XDok.md) | MOPED Profil der Device Ressource für XDok |
| [AT MOPED Device generisches Profil](StructureDefinition-at-moped-device-generisch.md) | MOPED generisches Profil der Device Ressource |
| [AT MOPED Encounter Aufenthalt Stationär Aufnahme Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-Aufnahme.md) | MOPED Profil der Encounter Ressource für die Aufnahme im stationären Bereich |
| [AT MOPED Encounter Aufenthalt Stationär Basis Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-basis.md) | MOPED Basis Profil der Encounter Ressource für den stationären Aufenthalt |
| [AT MOPED Encounter Aufenthalt Stationär Entlassung Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-Entlassung.md) | MOPED Profil der Encounter Ressource für die Entlassung im stationären Bereich |
| [AT MOPED Encounter Aufenthalt/Besuch generisches Profil](StructureDefinition-at-moped-encounter-aufenthaltbesuch-generisch.md) | MOPED generisches Profil der Encounter Ressource für ambulante Besuche und stationäre Aufenthaltes |
| [AT MOPED Encounter Besuch Ambulantes Profil](StructureDefinition-at-moped-encounter-besuch-ambulant-basis.md) | MOPED Basis Profil der Encounter Ressource für den ambulanten Besuch |
| [AT MOPED Encounter Bewegung Ambulant Basis Profil](StructureDefinition-at-moped-encounter-bewegung-ambulant-basis.md) | MOPED Profil der Encounter Ressource für ambulante Kontakte/Bewegungen |
| [AT MOPED Encounter Bewegung Intensiv Basis Profil](StructureDefinition-at-moped-encounter-bewegung-intensiv-basis.md) | MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen |
| [AT MOPED Encounter Bewegung Stationär Basis Profil](StructureDefinition-at-moped-encounter-bewegung-stationaer-basis.md) | MOPED Profil der Encounter Ressource für eine stationäre Verlegung |
| [AT MOPED Encounter Bewegung generisches Profil](StructureDefinition-at-moped-encounter-bewegung-generisch.md) | MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten |
| [AT MOPED Observation Entbindungsart Basis Profil](StructureDefinition-at-moped-observation-entbindungsart-basis.md) | MOPED Basis Profil der Observation Ressource für die Entbindungsart |
| [AT MOPED Observation Geburtenanzahl Basis Profil](StructureDefinition-at-moped-observation-geburtenanzahl-basis.md) | MOPED Basis Profil der Observation Ressource für die Anzahl der Geburten |
| [AT MOPED Observation generisches Profil](StructureDefinition-at-moped-observation-generisch.md) | MOPED generisches Profil der Observation Ressource |
| [AT MOPED Organization Bund Profil](StructureDefinition-at-moped-organization-bund.md) | MOPED Profil der Organization Ressource für den Bund |
| [AT MOPED Organization Dachverband Profil](StructureDefinition-at-moped-organization-dachverband.md) | MOPED Profil der Organization Ressource für den Dachverband |
| [AT MOPED Organization KA Profil](StructureDefinition-at-moped-organization-KA.md) | MOPED Profil der Organization Ressource für KA Organizations |
| [AT MOPED Organization LGF Profil](StructureDefinition-at-moped-organization-LGF.md) | MOPED Profil der Organization Ressource für den LGF |
| [AT MOPED Organization Organisationseinheite KA Profil](StructureDefinition-at-moped-organization-organisationseinheit-KA.md) | MOPED Profil der Organization Ressource für Organisationseinheiten innerhalb einer Krankenanstalt. |
| [AT MOPED Organization SV Profil](StructureDefinition-at-moped-organization-SV.md) | MOPED Profil der Organization Ressource für die SV |
| [AT MOPED Patient Klarname Basis Profil](StructureDefinition-at-moped-patient-klarname-basis.md) | MOPED Basis Profil der Patienten Ressource mit Klarname |
| [AT MOPED Patient generisches Profil](StructureDefinition-at-moped-patient-generisch.md) | MOPED generisches Profil der Patienten Ressource für Moped |
| [AT MOPED Patient vbPK Basis Profil](StructureDefinition-at-moped-patient-vbPK-basis.md) | MOPED Profil der Patienten Ressource mit vbPKs |
| [AT MOPED Procedure Basis Profil](StructureDefinition-at-moped-procedure-basis.md) | MOPED Basis Profil der Procedure Ressource für Leistungen |
| [AT MOPED Procedure generisches Profil](StructureDefinition-at-moped-procedure-generisch.md) | MOPED generisches Profil der Procedure Ressource für Leistungen |
| [AT MOPED QuestionnaireResponse fallbezogenes Profil](StructureDefinition-at-moped-questionnaireresponse-fallbezogen.md) | MOPED Profil der QuestionnaireResponse Ressource für QuestionnnaireResponses die im Kontext von Moped mit Fallbezug erhoben werden |
| [AT MOPED QuestionnaireResponse nicht fallbezogenes Profil](StructureDefinition-at-moped-questionnaireresponse-nicht-fallbezogen.md) | MOPED Profil der QuestionnaireResponse Ressource für QuestionnaireResponses die im Kontext von Moped ohne Fallbezug erhoben werden |
| [AT MOPED RelatedPerson Hauptversicherter Basis Profil](StructureDefinition-at-moped-relatedperson-hauptversicherter-basis.md) | MOPED generisches Profil der RelatedPerson Ressource für Daten zum Hauptversicherten |
| [AT MOPED RelatedPerson generisches Profil](StructureDefinition-at-moped-relatedperson-hauptversicherter-generisch.md) | MOPED generisches Profil der RelatedPerson Ressource |
| [MOPED ARK Status Update - PaymentReconciliation](StructureDefinition-MopedARKStatusUpdate.md) | MOPED Profil für Statusupdates zur Ausländerverrechnung oder zum Regress |
| [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md) | MOPED Profil der Claim Ressource für die Kostenmeldung für Ausländerverrechnung und Regresse. |
| [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md) | MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse. |

### Structures: Extension Definitions

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Abrechnung - Knoten](StructureDefinition-moped-ext-diagnoseKnoten.md) | Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen. |
| [Abrechnungsart Ausländerverrechnung](StructureDefinition-moped-ext-AbrechnungsartAuslaenderverrechnung.md) | Abrechnungsart Ausländerverrechnung |
| [AddItemCategory](StructureDefinition-moped-ext-AddItemCategory.md) | Benefit classification |
| [Altersgruppe](StructureDefinition-moped-ext-altersgruppe.md) | In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind. |
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
| [Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds](StructureDefinition-moped-ext-RechnungsnummerKALGF.md) | MOPED Extension für die Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds |
| [Supporting Info Extension for ClaimResponse](StructureDefinition-MopedSupportingInfo.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - FREMDRE Slice](StructureDefinition-MopedSupportingInfoFREMDRE.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - OEGKELBNR Slice](StructureDefinition-MopedSupportingInfoOEGKELBNR.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag](StructureDefinition-MopedSupportingInfoVortageanzahlAufKostenbeitrag.md) | Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues |
| [Tage ohne Einhebung des Kostenbeitrags](StructureDefinition-moped-ext-TageOhneKostenbeitrag.md) | Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde |
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
| [Claim Type ValueSet](ValueSet-MopedClaimTypeVS.md) | ValueSet für die Arten der Claims/ClaimResponses |
| [Encounter Status bei Entlassung](ValueSet-MopedEncounterStatusEntlassungVS.md) | Varianten des Encounter Status bei Entlassung |
| [Encounter Status bei der Aufnahme](ValueSet-MopedEncounterStatusAufnahmeVS.md) | Varianten des Encounter Status bei der Aufnahme |
| [Encounter Status in Moped](ValueSet-MopedEncounterStatusVS.md) | Varianten des Encounter Status bei Aufenthalten in Moped |
| [Entlassungsart des Patienten ambulant](ValueSet-EntlassungsartAVS.md) | ValueSet für die ambulante Entlassungsart des Patienten |
| [Entlassungsart des Patienten ambulant + stationär](ValueSet-EntlassungsartVS.md) | ValueSet für die Entlassungsart des Patienten |
| [Entlassungsart des Patienten stationär](ValueSet-EntlassungsartSVS.md) | ValueSet für die stationäre Entlassungsart des Patienten |
| [Fondsrelevanz](ValueSet-FondsrelevanzVS.md) | ValueSet für die Fondsrelevanz |
| [HTTP Verb Insert Only](ValueSet-HTTPVerbInsertOnlyVS.md) | HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen. |
| [HTTP Verb Insert Update Delete](ValueSet-HTTPVerbInsertUpdateDeleteVS.md) | HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen. |
| [HTTP Verb Update Only](ValueSet-HTTPVerbInsertUpdateVS.md) | HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen. |
| [HTTP Verb Update Only](ValueSet-HTTPVerbUpdateOnlyVS.md) | HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen. |
| [ICD-10 AT](ValueSet-ICD10ATVS.md) | ICD-10 BMSGPK 2025+ |
| [Kostenmeldung für (A/R/K)](ValueSet-KostenmeldungARKVS.md) | ValueSet für die Art der Kostenmeldung |
| [LKF Abrechnungsgruppe](ValueSet-LKFAbrechnungsGruppeVS.md) | LKF Abrechnungsgruppe |
| [LKF Abrechnungsknoten](ValueSet-LKFAbrechnungsKnotenVS.md) | LKF Abrechnungsknoten |
| [LKF Ambulante MEL-Gruppen](ValueSet-LKFAmbulantenMELGruppenVS.md) | LKF Ambulante MEL-Gruppen |
| [LKF Ambulante Pauschal-Gruppen](ValueSet-LKFAmbulantePauschalGruppenVS.md) | LKF Ambulante Pauschal-Gruppen |
| [LKF ClaimResponse Subtype ValueSet](ValueSet-MopedLKFRequestSubTypeVS.md) | ValueSet für die Art der ClaimResponses |
| [LKF Diagnosetyp ValueSet](ValueSet-LKFDiagnoseTypVS.md) | LKF Diganosetyp |
| [LKF Hauptdiagnosegruppen](ValueSet-LKFHauptdiagnosegruppenVS.md) | LKF Hauptdiagnosegruppen |
| [LKF Leistungskatalog BMSGPK](ValueSet-LKFLeistungskatalogVS.md) | LKF Hauptdiagnosegruppen |
| [LKF Seitenlokalisation ValueSet](ValueSet-LKFSeitenlokalisationVS.md) | LKF Seitenlokalisation |
| [LKF medizinische Einzelleistungen (MEL)](ValueSet-LKFmedizinischeEinzelleistungenVS.md) | LKF medizinische Einzelleistungen (MEL) |
| [MOPED LKFSupportingInformationCategory](ValueSet-LKFSupportingInformationCategoryVS.md) | Arten von zusätzlichen Informationen im LKFRequest |
| [MOPED VAESupportingInformationCategory](ValueSet-ClaimSupportingInformationCategoryVS.md) | Arten von zusätzlichen Informationen in der VAE |
| [MOPED VAESupportingInformationCategory](ValueSet-VAESupportingInformationCategoryVS.md) | Arten von zusätzlichen Informationen in der VAE |
| [Moped Claim Item Category ValueSet](ValueSet-MopedClaimItemCategoryVS.md) | ValueSet für die Arten von Claim Item Kategorien |
| [Moped Composition Sections ValueSet](ValueSet-CompositionSectionsVS.md) | ValueSet für die Moped Sections der Composition Ressource |
| [Moped Device Types ValueSet](ValueSet-MopedDeviceTypesVS.md) | Types von Moped Devices |
| [Moped Encounter Participant Type ValueSet](ValueSet-MopedEncounterParticipantTypesVS.md) | ValueSet für die Moped Encounter Participant Types |
| [Moped ValueSet für die Art der Entbindung](ValueSet-MopedEntbindungsartVS.md) | KaOrg Varianten der Art der Entbindung |
| [Sonderklasse ValueSet](ValueSet-SonderklasseVS.md) | ValueSet für die Klasse (KaOrg) |
| [Spezielle Organisationsform](ValueSet-SpezielleOrganisationsformVS.md) | Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen. |
| [Status der Versichertenanspruchserklärung](ValueSet-VAEStatusVS.md) | Status der Versichertenanspruchserklärung |
| [Transportart](ValueSet-TransportartVS.md) | ValueSet für die Transportart des Patienten |
| [Ursache für Behandlung](ValueSet-UrsacheVS.md) | ValueSet für die Ursache der Behandlung laut Ka-Org |
| [VAE Claim Subtype ValueSet](ValueSet-MopedVAERequestSubTypeVS.md) | ValueSet für die Art der Claims |
| [ValueSet Zahlungskennzeichen ARK](ValueSet-ZahlungskennzeichenVS.md) | ValueSet für das Zahlungskennzeichen ARK |
| [Valueset für die Art der Geburtenanzahl](ValueSet-GeburtenanzahlVS.md) | Valueset für die Art der Geburtenanzahl in MOPED |
| [Verdacht auf Arbeits- oder Schuelerunfall ValueSet](ValueSet-VerdachtArbeitsSchuelerunfallVS.md) | ValueSet für den Verdacht auf einen Arbeits- oder Schuelerunfall |
| [Workflow Status eines Falls](ValueSet-WorkflowStatusVS.md) | ValueSet für die Statusoptionen in denen sich ein Fall befinden kann. |
| [vbPK ValueSet](ValueSet-VBPKValueSet.md) | ValueSet für die vbPKs |

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
| [Claim Subtype CodeSystem](CodeSystem-MopedClaimSubTypeCS.md) | CodeSystem für die Arten der Claims/ClaimResponses |
| [Claim Type CodeSystem](CodeSystem-MopedClaimTypeCS.md) | CodeSystem für die Arten der Claims/ClaimResponses |
| [CodeSystem Zahlungskennzeichen Auslaenderverrechnung](CodeSystem-ZahlungskennzeichenAuslaenderverrechnungCS.md) | CodeSystem Zahlungskennzeichen Auslaenderverrechnung |
| [CodeSystem Zahlungskennzeichen Regress](CodeSystem-ZahlungskennzeichenRegressCS.md) | CodeSystem Zahlungskennzeichen Regress |
| [Entlassungsart des Patienten](CodeSystem-EntlassungsartCS.md) | CodeSystem für die Entlassungsart des Patienten |
| [Fondsrelevanz](CodeSystem-FondsrelevanzCS.md) | CodeSystem für die Fondsrelevanz |
| [LKF Abrechnungsgruppe Andere](CodeSystem-LKFAbrechnungsGruppeAndereCS.md) | LKF Abrechnungsgruppe Andere |
| [LKF Abrechnungsknoten](CodeSystem-LKFAbrechnungsKnotenCS.md) | LKF Abrechnungsknoten |
| [LKF Ambulante MEL-Gruppen](CodeSystem-LKFAmbulantenMELGruppenCS.md) | LKF Ambulante MEL-Gruppen |
| [LKF Ambulante Pauschal-Gruppen](CodeSystem-LKFAmbulantePauschalGruppenCS.md) | LKF Ambulante Pauschal-Gruppen |
| [LKF Hauptdiagnosegruppen](CodeSystem-LKFHauptdiagnosegruppenCS.md) | LKF Hauptdiagnosegruppen |
| [LKF medizinische Einzelleistungen (MEL)](CodeSystem-LKFmedizinischeEinzelleistungenCS.md) | LKF medizinische Einzelleistungen (MEL) |
| [MOPED VAESupportingInformationCategory](CodeSystem-ClaimSupportingInformationCategoryCS.md) | Arten von zusätzlichen Informationen in der VAE |
| [Moped Aufnahmeart des Patienten](CodeSystem-AbgangsartCS.md) | Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg) |
| [Moped Aufnahmeart des Patienten](CodeSystem-AufnahmeartCS.md) | Zulässige Ausprägungen Aufnahmeart (LKF & KaOrg) |
| [Moped Claim Item Category CodeSystem](CodeSystem-MopedClaimItemCategoryCS.md) | CodeSystem für die Arten von Claim Item Kategorien |
| [Moped CodeSystem für die KaOrg Arten der Entbindung](CodeSystem-MopedEntbindungsartCS.md) | KaOrg Varianten der Art der Entbindung |
| [Moped Composition Sections](CodeSystem-CompositionSectionsCS.md) | CodeSystem für die Moped Sections der Composition Ressource |
| [Moped Device Types CodeSystem](CodeSystem-MopedDeviceTypesCS.md) | CodeSystem für die Moped Device Types |
| [Moped Encounter Participant Type CodeSystem](CodeSystem-MopedEncounterParticipantTypesCS.md) | CodeSystem für die Moped Encounter Participant Types |
| [Moped ValueSet für die Art der Observation](CodeSystem-MopedObservationArtCS.md) | Varianten der Art der Observation |
| [Sonderklasse CodeSystem](CodeSystem-SonderklasseCS.md) | CodeSystem für die Klasse (KaOrg) |
| [Spezielle Betriebsform](CodeSystem-SpezielleBetriebsformenCS.md) | Spezielle Betriebsformen (gemäß ÖSG bzw. KAKuG) |
| [Spezielle Organisationsformen](CodeSystem-SpezielleOrganisationsformenCS.md) | Spezielle Organisationsformen (gemäß ÖSG bzw. KAKuG) |
| [Status der Versichertenanspruchserklärung](CodeSystem-VAEStatusCS.md) | Status der Versichertenanspruchserklärung |
| [Transportart](CodeSystem-TransportartCS.md) | CodeSystem für die Transportart des Patienten |
| [Ursache für Behandlung](CodeSystem-UrsacheCS.md) | CodeSystem für die Ursache der Behandlung laut Ka-Org |
| [Verdacht auf Arbeits- oder Schuelerunfall CodeSystem](CodeSystem-VerdachtArbeitsSchuelerunfallCS.md) | CodeSystem für den Verdacht auf einen Arbeits- oder Schuelerunfall |
| [Workflow Status eines Falls](CodeSystem-WorkflowStatusCS.md) | CodeSystem für die Statusoptionen in denen sich ein Fall befinden kann. |

### Example: Example Instances

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AbteilungHerzJesu1](HealthcareService-AbteilungHerzJesu1.md) | Hackathon Stammdaten: Abteilung 1 der KA Herz Jesu |
| [AbteilungKARied1](HealthcareService-AbteilungKARied1.md) | Hackathon Stammdaten: Abteilung 1 der KA Ried |
| [AbteilungKARied2](HealthcareService-AbteilungKARied2.md) | Hackathon Stammdaten: Abteilung 2 der KA Ried |
| [AbteilungKARied3](HealthcareService-AbteilungKARied3.md) | Hackathon Stammdaten: Abteilung 3 der KA Ried |
| [AbteilungKARied4](HealthcareService-AbteilungKARied4.md) | Hackathon Stammdaten: Abteilung 4 der KA Ried |
| [BewegungsEncounter42.1](Encounter-BewegungsEncounter42.1.md) |   |
| [BewegungsEncounter42.2](Encounter-BewegungsEncounter42.2.md) |   |
| [Condition42.1](Condition-Condition42.1.md) |   |
| [Encounter42](Encounter-Encounter42.md) |   |
| [I12 QuestionnaireResponse für TISS-A-Daten](QuestionnaireResponse-TISSAQuestionnaireResponse.md) |   |
| [KAK999](Organization-KAK999.md) |   |
| [KAK999ABT11111100](HealthcareService-KAK999ABT11111100.md) |   |
| [KAK999ABT12111100](HealthcareService-KAK999ABT12111100.md) |   |
| [KAK999ABT12118102](HealthcareService-KAK999ABT12118102.md) |   |
| [KAK999ABT16075000](HealthcareService-KAK999ABT16075000.md) |   |
| [KAK999ABT16111111](HealthcareService-KAK999ABT16111111.md) |   |
| [KAK999ABT16111112](HealthcareService-KAK999ABT16111112.md) |   |
| [KAK999ABT16211100](HealthcareService-KAK999ABT16211100.md) |   |
| [KAK999ABT16518011](HealthcareService-KAK999ABT16518011.md) |   |
| [LKF Testdaten Fall](Composition-Composition42.md) |   |
| [LKFRequest42](Claim-LKFRequest42.md) |   |
| [LocationKAHerzJesu](Location-LocationKAHerzJesu.md) | Stammdaten: Location der KA Herz Jesu |
| [LocationKAK999](Location-LocationKAK999.md) |   |
| [LocationKARied](Location-LocationKARied.md) | Stammdaten: Location der KA Ried |
| [MOPED PJ1 Composition nach $aufnehmen](Composition-PJ1Composition.md) | PJ1 Beispiel der Composition Ressource nach $aufnehmen |
| [MOPED PJ1 Composition nach $aufnehmen](Composition-PJ1CompositionAufnehmen.md) | PJ1 Beispiel der Composition Ressource nach $aufnehmen |
| [OrganizationAffiliationWgfHerzJesu](OrganizationAffiliation-OrganizationAffiliationWgfHerzJesu.md) | Hackathon Stammdaten: Organization Affiliation zwischen LGF und KA Herz Jesu |
| [OrganizationHerzJesuKrankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md) | Hackathon Stammdaten: KA Herz Jesu |
| [OrganizationKrankenhausRied](Organization-OrganizationKrankenhausRied.md) | Hackathon Stammdaten: KA Ried |
| [OrganizationLGF](Organization-OrganizationLGF.md) | Hackathon Stammdaten: LGF Wien |
| [OrganizationUeberweisendeOrganization1](Organization-OrganizationUeberweisendeOrganization1.md) | Hackathon Stammdaten: Überweisende Organisation 1 |
| [OrganizationUeberweisendeOrganization2](Organization-OrganizationUeberweisendeOrganization2.md) | Hackathon Stammdaten: Überweisende Organisation 2 |
| [PJ1BewegungsEncounter1](Encounter-PJ1BewegungsEncounter1.md) | Hackathon Patient Journey 1 Beispiel: BewegungsEncounter 1 |
| [PJ1BewegungsEncounter1Aufnahme](Encounter-PJ1BewegungsEncounter1Aufnahme.md) | Hackathon Patient Journey 1 Beispiel: BewegungsEncounter 1 |
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
| [PJ1VAERequest1](Claim-PJ1VAERequest1.md) | Hackathon Patient Journey 1 Beispiel: VAERequest 1 |
| [PJ1VAEResponse1](ClaimResponse-PJ1VAEResponse1.md) | Hackathon Patient Journey 1 Beispiel: VAEResponse 1 |
| [PJ2BewegungsEncounter1](Encounter-PJ2BewegungsEncounter1.md) | Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 1 |
| [PJ2BewegungsEncounter2](Encounter-PJ2BewegungsEncounter2.md) | Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 2 |
| [PJ2BewegungsEncounter3](Encounter-PJ2BewegungsEncounter3.md) | Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 3 |
| [PJ2BewegungsEncounter4](Encounter-PJ2BewegungsEncounter4.md) | Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 4 |
| [PJ2BewegungsEncounter5](Encounter-PJ2BewegungsEncounter5.md) | Hackathon Patient Journey 2 Beispiel: BewegungsEncounter 5 |
| [PJ2Condition1](Condition-PJ2Condition1.md) | Hackathon Patient Journey 2 Beispiel: Condition 1 |
| [PJ2Condition2](Condition-PJ2Condition2.md) | Hackathon Patient Journey 2 Beispiel: Condition 2 |
| [PJ2Coverage](Coverage-PJ2Coverage.md) | Hackathon Patient Journey 2 Beispiel: Coverage |
| [PJ2Encounter](Encounter-PJ2Encounter.md) | Hackathon Patient Journey 2 Beispiel: Encounter |
| [PJ2LKFRequest1](Claim-PJ2LKFRequest1.md) | Hackathon Patient Journey 2 Beispiel: LKFRequest 1 |
| [PJ2LKFResponse1](ClaimResponse-PJ2LKFResponse1.md) | Hackathon Patient Journey 2 Beispiel: LKFResponse 1 |
| [PJ2Patient](Patient-PJ2Patient.md) | Hackathon Patient Journey 2 Beispiel: Patient |
| [PJ2Procedure1](Procedure-PJ2Procedure1.md) | Hackathon Patient Journey 2 Beispiel: Procedure 1 |
| [PJ2Procedure2](Procedure-PJ2Procedure2.md) | Hackathon Patient Journey 2 Beispiel: Procedure 2 |
| [PJ2VAERequest1](Claim-PJ2VAERequest1.md) | Hackathon Patient Journey 2 Beispiel: VAERequest 1 |
| [PJ2VAEResponse1](ClaimResponse-PJ2VAEResponse1.md) | Hackathon Patient Journey 2 Beispiel: VAEResponse 1 |
| [Patient42](Patient-Patient42.md) |   |
| [SAPS42.1](QuestionnaireResponse-SAPS42.1.md) |   |
| [SV11](Organization-SV11.md) | Hackathon Stammdaten: ÖGK Wien |
| [SV12](Organization-SV12.md) | Hackathon Stammdaten: ÖGK Niederösterreich |
| [SV13](Organization-SV13.md) | Hackathon Stammdaten: ÖGK Burgenland |
| [SV14](Organization-SV14.md) | Hackathon Stammdaten: ÖGK Oberösterreich |
| [SV15](Organization-SV15.md) | Hackathon Stammdaten: ÖGK Steiermark |
| [SV16](Organization-SV16.md) | Hackathon Stammdaten: ÖGK Kärnten |
| [SV17](Organization-SV17.md) | Hackathon Stammdaten: ÖGK Salzburg |
| [SV18](Organization-SV18.md) | Hackathon Stammdaten: ÖGK Tirol |
| [SV19](Organization-SV19.md) | Hackathon Stammdaten: ÖGK Vorarlberg |
| [Stroke Unit Registermeldung – Patientendaten](Questionnaire-strokeunit-questionnaire.md) | Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten |
| [Subscription Topic VAE abgelehnt](SubscriptionTopic-vaeAbgelehnt.md) | SubscriptionTopic für die KA, um bei abgelehnten VAEs benachrichtigt zu werden. |
| [Subscription Topic neue VAE](SubscriptionTopic-neueVAE.md) | SubscriptionTopic für die SV, um bei neuen VAEs benachrichtigt zu werden. |
| [TISS42.1](QuestionnaireResponse-TISS42.1.md) |   |
| [TISS42.2](QuestionnaireResponse-TISS42.2.md) |   |
| [TISS42.3](QuestionnaireResponse-TISS42.3.md) |   |
| [Test1PatientBund](Patient-Test1PatientBund.md) | Maskierung Beispiel Patient Bund |
| [Test1PatientLGF](Patient-Test1PatientLGF.md) | Maskierung Beispiel PatientLGF |
| [Test1PatientOhneMaskierung](Patient-Test1PatientOhneMaskierung.md) | Maskierung Beispiel Patient |
| [Test1PatientSV](Patient-Test1PatientSV.md) | Maskierung Beispiel PatientSV |
| [Test2SAPS3QuestionnaireResponse1](QuestionnaireResponse-Test2SAPS3QuestionnaireResponse1.md) |   |
| [XDokExampleDevice](Device-XDokExampleDevice.md) | Moped Example XDok Device |
| [strokeunit-questionnaire-response-1](QuestionnaireResponse-strokeunit-questionnaire-response-1.md) |   |

