# HL7.AT.FHIR.ELGA.EMED.R4\Mappings - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](usecases.md)
* **Mappings**

## Mappings

### Medication

| | | |
| :--- | :--- | :--- |
| /@negationInd="true" | set .doNotPerform=true |   |
| @moodCode | .intent | CDA coding ↔ FHIR CodeableConcept Mood to intent See note above on Medication Status |
| /id | .identifier | CDA id ↔ FHIR identifier |
| /statusCode | .status | See note above on Medication Status Pay attention to the definitions of active and completed in the FHIR medicationrequest-status code system. CDA statusCode → FHIR status |
| /effectiveTime[1]/@value | .dosageInstruction.timing.event | Constraint: Use this when effectiveTime@value is populated CDA ↔ FHIR Time/Dates |
| /effectiveTime[1]/low | .dosageInstruction.timing.repeat.boundsPeriod.start | Constraint: Use this when effectiveTime/@value is not populated CDA ↔ FHIR Time/Dates |
| /effectiveTime[1]/high | .dosageInstruction.timing.repeat.boundsPeriod.end | Constraint: Use this when effectiveTime/@value is not populated CDA ↔ FHIR Time/Dates |
| Periodic Frequency /effectiveTime[operator="A" and xsi:type="PIVL_TS"] …/@institutionSpecified …/period/@value …/period/@unit | .dosageInstruction.timing.repeat.frequency .dosageInstruction.timing.repeat.period .dosageInstruction.timing.repeat.periodUnit | unit aus VS: ELGA_MedikationFrequenz; Compare: C-CDA Common Medication Frequencies and FHIR Timing Data Type to determine whether frequency or period should be used. If CDA period contains low and high (e.g. a range like 4-6 hours or 3-4 times a day), map low the same as @value (e.g. to repeat.period or repeat.frequency) and map high to repeat.periodMax or repeat.frequencyMax depending on whether it is a frequency or period. |
| Event-Based Timing /effectiveTime[operator="A" and xsi:type="EIVL_TS"] …/event/@code …/offset | .dosageInstruction.timing.repeat.when .dosageInstruction.timing.repeat.offset | @code vocabulary matches .when CDA offset must be converted to minutes for FHIR |
| /routeCode | .dosageInstruction.route | CDA coding ↔ FHIR CodeableConcept |
| /approachSiteCode | .dosageInstruction.site | CDA coding ↔ FHIR CodeableConcept |
| /doseQuantity | .dosageInstruction.doseAndRate.doseQuantity | @unit: ELGA_MedikationMengenart(nicht-zählbaren Einheiten) oder ELGA_MedikationMengenartAlternativ (zählbaren Einheiten (Tabletten, Kapseln, etc.)) |
| /rateQuantity | .dosageInstruction.doseAndRate.rateQuantity | CDA ↔ FHIR Quantity |
| /maxDoseQuantity/numerator | .dosageInstruction.maxDosePerPeriod.numerator | CDA ↔ FHIR Quantity |
| /maxDoseQuantity/denominator | .dosageInstruction.maxDosePerPeriod.denominator | CDA ↔ FHIR Quantity |
| /administrationUnitCode | Medication.form | See below |
| /consumable/manufacturedProduct/manufacturedMaterial/code | .medicationCodeableConcept OR .medicationReference | CDA coding ↔ FHIR CodeableConcept Only one of these fields may be populated. When generating a Medication resource (see below), use the medicationReference field. |
| /consumable/manufacturedProduct/manufacturerOrganization | Medication.manufacturer | See below |
| /author | .requester & Provenance | CDA ↔ FHIR Provenance |
| /author/time | .authoredOn | Earliest, if more than one. CDA ↔ FHIR Time/Dates |
| Drug Vehicle /participant[@typeCode="CSM"]/playingEntity/code | Medication.ingredient | See below |
| Indication /entryRelationship[@typeCode="RSON"]/observation/value | .reasonCode | CDA coding ↔ FHIR CodeableConcept |
| Free text sig /entryRelationship/substanceAdministration[code/@code="76662-6"]/text | .dosageInstruction.text |   |
| Instruction Activity /entryRelationship[@typeCode="SUBJ" and @inversionInd="true"]/act | .dosageInstruction.patientInstruction .dosageInstruction.additionalInstruction | act/text or act/code/originalText can map to patientInstructions. If coded, can map to additionalInstruction. |
| Supply Order /entryRelationship[@typeCode="REFR"]/substanceAdministration[@moodCode="INT"] |   | Note: moodCode=INT means supply, moodCode=EVN means dispense, which is not documented here. |
| ../effectiveTime/high | .dispenseRequest.validityPeriod.end | CDA ↔ FHIR Time/Dates low would similarly map to start, but only high is called out in C-CDA. |
| ../repeatNumber | .dispenseRequest.numberOfRepeatsAllowed | Caution: in CDA, repeatNumber indicates total number of dispenses allowed. In FHIR, this field is exclusive of the original dispense. So the numberOfRepeatsAllowed will be one less than repeatNumber. |
| ../quantity | .dispenseRequest.quantity | CDA ↔ FHIR Quantity |
| Comment Activity /entryRelationship/act[code/@code="48767-8"]/text | Annotation .note | See Comment → Annotation |
| /precondition | .asNeededBoolean = true | The presence of a precondition element indicates asNeededBoolean should be true. More complex maps may be possible with .asNeededCodeableConcept. |

| | | |
| :--- | :--- | :--- |
| /administrationUnitCode | .form | CDA coding ↔ FHIR CodeableConcept |
| /consumable/manufacturedProduct/manufacturedMaterial/code | .code | CDA coding ↔ FHIR CodeableConcept |
| /consumable/manufacturedProduct/manufacturerOrganization | Organization .manufacturer |   |
| Drug Vehicle /participant[@typeCode="CSM"]/playingEntity/code | .ingredient.itemCodeableConcept | Set .isActive = false CDA coding ↔ FHIR CodeableConcept |

Quelle: https://build.fhir.org/ig/HL7/ccda-on-fhir/CF-medications.html

