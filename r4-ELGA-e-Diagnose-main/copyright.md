# HL7.AT.FHIR.ELGA.EDIAG.R4\Copyright - FHIR® v4.0.1

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

* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.2.0/CodeSystem-v3-loinc.html): [AtDiagListWrite](OperationDefinition-at-ediag-operation-list-write.md), [AtEdiagList](StructureDefinition-at-elga-ediag-list.md)... Show 9 more, [AtEdiagListCodeVS](ValueSet-at-ediag-list-code-vs.md), [List/ListAllergyEmptyExample](List-ListAllergyEmptyExample.md), [List/ListAllergyExample1](List-ListAllergyExample1.md), [List/ListConditionEmptyExample](List-ListConditionEmptyExample.md), [List/ListConditionExample1](List-ListConditionExample1.md), [List/ListConditionExample2](List-ListConditionExample2.md), [List/ListConditionExample3](List-ListConditionExample3.md), [List/ListProcedureEmptyExample](List-ListProcedureEmptyExample.md) and [List/ListProcedureExample1](List-ListProcedureExample1.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [AllergyIntolerance/AllergySummaryExample1](AllergyIntolerance-AllergySummaryExample1.md), [AtEDiagDiagnosenCodes](ValueSet-at-ediag-diagnosen-codes.md)... Show 11 more, [AtEDiagProzedurenCodes](ValueSet-at-ediag-prozeduren-codes.md), [AtEdiagAllergyIntoleranceCodes](ValueSet-at-ediag-allergyintolerance-codes.md), [AtEdiagProcedure](StructureDefinition-at-elga-ediag-procedure.md), [Condition/ConditionGesamtlisteExample1](Condition-ConditionGesamtlisteExample1.md), [Condition/ConditionGesamtlisteExample2](Condition-ConditionGesamtlisteExample2.md), [Condition/ConditionGesamtlisteExample3](Condition-ConditionGesamtlisteExample3.md), [Condition/ConditionSummaryExample1](Condition-ConditionSummaryExample1.md), [Condition/ConditionSummaryExample2](Condition-ConditionSummaryExample2.md), [Condition/ConditionSummaryExample3](Condition-ConditionSummaryExample3.md), [Device/DeviceExample](Device-DeviceExample.md) and [Procedure/ProcedureSummaryExample1](Procedure-ProcedureSummaryExample1.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [AllergyIntolerance Clinical Status Codes](http://terminology.hl7.org/7.3.0/CodeSystem-allergyintolerance-clinical.html): [AllergyIntolerance/AllergySummaryExample1](AllergyIntolerance-AllergySummaryExample1.md)
* [AllergyIntolerance Verification Status](http://terminology.hl7.org/7.3.0/CodeSystem-allergyintolerance-verification.html): [AllergyIntolerance/AllergySummaryExample1](AllergyIntolerance-AllergySummaryExample1.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.3.0/CodeSystem-condition-clinical.html): [Condition/ConditionGesamtlisteExample1](Condition-ConditionGesamtlisteExample1.md), [Condition/ConditionGesamtlisteExample2](Condition-ConditionGesamtlisteExample2.md)... Show 4 more, [Condition/ConditionGesamtlisteExample3](Condition-ConditionGesamtlisteExample3.md), [Condition/ConditionSummaryExample1](Condition-ConditionSummaryExample1.md), [Condition/ConditionSummaryExample2](Condition-ConditionSummaryExample2.md) and [Condition/ConditionSummaryExample3](Condition-ConditionSummaryExample3.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.3.0/CodeSystem-condition-ver-status.html): [Condition/ConditionGesamtlisteExample1](Condition-ConditionGesamtlisteExample1.md), [Condition/ConditionGesamtlisteExample2](Condition-ConditionGesamtlisteExample2.md)... Show 4 more, [Condition/ConditionGesamtlisteExample3](Condition-ConditionGesamtlisteExample3.md), [Condition/ConditionSummaryExample1](Condition-ConditionSummaryExample1.md), [Condition/ConditionSummaryExample2](Condition-ConditionSummaryExample2.md) and [Condition/ConditionSummaryExample3](Condition-ConditionSummaryExample3.md)
* [List Empty Reasons](http://terminology.hl7.org/7.3.0/CodeSystem-list-empty-reason.html): [AtEdiagList](StructureDefinition-at-elga-ediag-list.md), [AtEdiagListEmptyReasonVS](ValueSet-at-ediag-list-emptyreason-vs.md), [List/ListAllergyEmptyExample](List-ListAllergyEmptyExample.md), [List/ListConditionEmptyExample](List-ListConditionEmptyExample.md) and [List/ListProcedureEmptyExample](List-ListProcedureEmptyExample.md)
* [identifierType](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0203.html): [Patient/PatientExample](Patient-PatientExample.md)


