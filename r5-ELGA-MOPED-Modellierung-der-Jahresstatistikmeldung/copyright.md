# ELGA.MOPED\Copyright - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Copyright**

## Copyright

### Lizenzinformationen

Die von HL7 Austria erarbeiteten Standards und die Bearbeitungen der Standards von HL7 International stellen Werke im Sinne des österreichischen Urheberrechtsgesetzes dar und unterliegen daher urheberrechtlichem Schutz.

HL7 Austria genehmigt die Verwendung dieser Standards für die Zwecke der Erstellung, des Verkaufs und des Betriebs von Computerprogrammen, sofern nicht anders angegeben oder sich die Standards auf andere urheberrechtlich oder lizenzrechtlich geschützte Werke beziehen.

Die vollständige oder teilweise Veröffentlichung der Standards (zum Beispiel in Spezifikationen, Publikationen oder Schulungsunterlagen) ist nur mit einer ausdrücklichen Genehmigung der HL7 Austria gestattet. Mitglieder von HL7 Austria sind berechtigt, die Standards vollständig oder in Auszügen ausschließlich organisationsintern zu publizieren, zu vervielfältigen oder zu verteilen. Die Veröffentlichung eigener Anpassungen der HL7-Spezifikationen (im Sinne von Lokalisierungen) oder eigener Leitfäden erfordert eine formale Vereinbarung mit der HL7 Austria.

Dieser Implementierungsleitfaden enthält und verweist auf geistiges Eigentum, das Dritten gehört ("Third Party IP"). Mit der Annahme dieser Lizenzbedingungen werden keine Rechte in Bezug auf das geistige Eigentum Dritter gewährt. Der Lizenznehmer ist allein dafür verantwortlich, alle erforderlichen Lizenzen oder Genehmigungen für die Nutzung des geistigen Eigentums Dritter in Verbindung mit der Spezifikation oder auf andere Weise zu ermitteln und einzuholen.

HL7®, HEALTH LEVEL SEVEN® und FHIR® sind Marken im Besitz von Health Level Seven International, eingetragen beim United States Patent and Trademark Office. Die vollständigen Lizenzinformationen finden sich unter [https://hl7.at/nutzungsbedingungen-und-lizenzinformationen/](https://hl7.at/nutzungsbedingungen-und-lizenzinformationen/). Die Lizenzbedingungen von HL7 International finden sich unter [http://www.HL7.org/legal/ippolicy.cfm](http://www.HL7.org/legal/ippolicy.cfm).

#### IP-Statements

This publication includes IP covered under the following statements.

* HL7 Inc.

* [Claim Adjudication Decision Codes](http://hl7.org/fhir/R5/codesystem-claim-decision.html): [ClaimResponse/PJ1LKFResponse1](ClaimResponse-PJ1LKFResponse1.md) and [ClaimResponse/PJ2LKFResponse1](ClaimResponse-PJ2LKFResponse1.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://tx.fhir.org/r5/ValueSet/x-loinc2.82): [Composition/Composition42](Composition-Composition42.md), [Composition/PJ1Composition](Composition-PJ1Composition.md), [Composition/PJ1CompositionAufnehmen](Composition-PJ1CompositionAufnehmen.md), [GeburtenanzahlVS](ValueSet-GeburtenanzahlVS.md) and [MopedObservationGeburtenanzahl](StructureDefinition-at-moped-observation-geburtenanzahl-basis.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* SNOMED Clinical Terms&reg; (SNOMED CT&reg;): [AtMopedProcedureGenerisch](StructureDefinition-at-moped-procedure-generisch.md), [Diagnosetyp](StructureDefinition-moped-ext-Diagnosetyp.md), [LKFDiagnoseTypVS](ValueSet-LKFDiagnoseTypVS.md) and [LKFSeitenlokalisationVS](ValueSet-LKFSeitenlokalisationVS.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Condition Clinical Status Codes](http://terminology.hl7.org/7.1.0/CodeSystem-condition-clinical.html): [Condition/PJ1Condition1](Condition-PJ1Condition1.md), [Condition/PJ2Condition1](Condition-PJ2Condition1.md) and [Condition/PJ2Condition2](Condition-PJ2Condition2.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.1.0/CodeSystem-condition-ver-status.html): [Condition/PJ1Condition1](Condition-PJ1Condition1.md), [Condition/PJ2Condition1](Condition-PJ2Condition1.md) and [Condition/PJ2Condition2](Condition-PJ2Condition2.md)
* [Coverage Class Codes](http://terminology.hl7.org/7.1.0/CodeSystem-coverage-class.html): [AtMopedCoverageVersicherterBasis](StructureDefinition-at-moped-coverage-versicherter-basis.md), [Coverage/PJ1Coverage](Coverage-PJ1Coverage.md) and [Coverage/PJ2Coverage](Coverage-PJ2Coverage.md)
* [Coverage SelfPay Codes](http://terminology.hl7.org/7.1.0/CodeSystem-coverage-selfpay.html): [AtMopedCoverageSelbstzahlerBasis](StructureDefinition-at-moped-coverage-selbstzahler.md)
* [Example Diagnosis on Admission Codes](http://terminology.hl7.org/7.1.0/CodeSystem-ex-diagnosis-on-admission.html): [Claim/LKFRequest42](Claim-LKFRequest42.md), [Claim/PJ1LKFRequest1](Claim-PJ1LKFRequest1.md) and [Claim/PJ2LKFRequest1](Claim-PJ2LKFRequest1.md)
* [Example Related Claim Relationship Codes](http://terminology.hl7.org/7.1.0/CodeSystem-ex-relatedclaimrelationship.html): [AtMopedClaimLKFRequestBasis](StructureDefinition-at-moped-claim-lkfrequest-basis.md), [AtMopedClaimLKFRequestGenerisch](StructureDefinition-at-moped-claim-lkfrequest-generisch.md), [AtMopedClaimVAERequestVerlaengerung](StructureDefinition-at-moped-claim-vaerequest-verlaengerung.md) and [MopedARKRequest](StructureDefinition-MopedARKRequest.md)
* [Service category](http://terminology.hl7.org/7.1.0/CodeSystem-service-category.html): [AtMopedOrganizationOrganisationseinheitKA](StructureDefinition-at-moped-organization-organisationseinheit-KA.md), [HealthcareService/AbteilungHerzJesu1](HealthcareService-AbteilungHerzJesu1.md)... Show 4 more, [HealthcareService/AbteilungKARied1](HealthcareService-AbteilungKARied1.md), [HealthcareService/AbteilungKARied2](HealthcareService-AbteilungKARied2.md), [HealthcareService/AbteilungKARied3](HealthcareService-AbteilungKARied3.md) and [HealthcareService/AbteilungKARied4](HealthcareService-AbteilungKARied4.md)
* [Service type](http://terminology.hl7.org/7.1.0/CodeSystem-service-type.html): [AtMopedOrganizationOrganisationseinheitKA](StructureDefinition-at-moped-organization-organisationseinheit-KA.md), [HealthcareService/AbteilungHerzJesu1](HealthcareService-AbteilungHerzJesu1.md)... Show 12 more, [HealthcareService/AbteilungKARied1](HealthcareService-AbteilungKARied1.md), [HealthcareService/AbteilungKARied2](HealthcareService-AbteilungKARied2.md), [HealthcareService/AbteilungKARied3](HealthcareService-AbteilungKARied3.md), [HealthcareService/AbteilungKARied4](HealthcareService-AbteilungKARied4.md), [HealthcareService/KAK999ABT11111100](HealthcareService-KAK999ABT11111100.md), [HealthcareService/KAK999ABT12111100](HealthcareService-KAK999ABT12111100.md), [HealthcareService/KAK999ABT12118102](HealthcareService-KAK999ABT12118102.md), [HealthcareService/KAK999ABT16075000](HealthcareService-KAK999ABT16075000.md), [HealthcareService/KAK999ABT16111111](HealthcareService-KAK999ABT16111111.md), [HealthcareService/KAK999ABT16111112](HealthcareService-KAK999ABT16111112.md), [HealthcareService/KAK999ABT16211100](HealthcareService-KAK999ABT16211100.md) and [HealthcareService/KAK999ABT16518011](HealthcareService-KAK999ABT16518011.md)
* [UsageContextType](http://terminology.hl7.org/7.1.0/CodeSystem-usage-context-type.html): [AtMopedCompositionAnfragen](StructureDefinition-at-moped-composition-anfragen.md), [AtMopedCompositionAufnehmen](StructureDefinition-at-moped-composition-aufnehmen.md)... Show 9 more, [AtMopedCompositionBasis](StructureDefinition-at-moped-composition-basis.md), [AtMopedCompositionBeantworten](StructureDefinition-at-moped-composition-beantworten.md), [AtMopedCompositionEntlassenAviso](StructureDefinition-at-moped-composition-entlassen-aviso.md), [AtMopedCompositionEntlassenVollstaendig](StructureDefinition-at-moped-composition-entlassen-vollstaendig.md), [AtMopedCompositionGenerisch](StructureDefinition-at-moped-composition-generisch.md), [AtMopedCompositionUpdate](StructureDefinition-at-moped-composition-update.md), [Composition/Composition42](Composition-Composition42.md), [Composition/PJ1Composition](Composition-PJ1Composition.md) and [Composition/PJ1CompositionAufnehmen](Composition-PJ1CompositionAufnehmen.md)
* [identifierType](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0203.html): [AtMopedEncounterAufenthaltBesuchGenerisch](StructureDefinition-at-moped-encounter-aufenthaltbesuch-generisch.md), [Encounter/Encounter42](Encounter-Encounter42.md)... Show 8 more, [Encounter/PJ1Encounter](Encounter-PJ1Encounter.md), [Encounter/PJ1EncounterAufnahme](Encounter-PJ1EncounterAufnahme.md), [Encounter/PJ1EncounterBasis](Encounter-PJ1EncounterBasis.md), [Encounter/PJ1EncounterBund](Encounter-PJ1EncounterBund.md), [Encounter/PJ1EncounterLGF](Encounter-PJ1EncounterLGF.md), [Encounter/PJ1EncounterSV](Encounter-PJ1EncounterSV.md), [Encounter/PJ2Encounter](Encounter-PJ2Encounter.md) and [Patient/Patient42](Patient-Patient42.md)


