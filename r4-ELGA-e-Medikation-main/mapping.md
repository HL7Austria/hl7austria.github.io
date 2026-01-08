# HL7.AT.FHIR.ELGA.EMED.R4\Mappings - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Überblick Anwendungsfälle**](anwendungsfaelle.md)
* **Mappings**

## Mappings

### Mappings CDA -> FHIR R4 -> FHIR R5

#### Verordnung (Prescription)

EHDS Medication Prescription model allows multiple items prescribed on one prescription. In such case, EHDS.MedicationPrescription.identifier maps to MedicationRequest.groupIdentifier, and RequestOrchestration/RequestGroup may be the target of some of the prescription elements. Please read [implementation notes](implementationnotes.md) for more information.

| | | |
| :--- | :--- | :--- |
| substanceAdministration.header.identifier | MedicationRequest.identifier or .groupIdentifier | MedicationRequest.identifier or .groupIdentifier |
| substanceAdministration.header.authorship.author | MedicationRequest.requester | MedicationRequest.requester |
| substanceAdministration.header.authorship.datetime | MedicationRequest.authoredOn | MedicationRequest.authoredOn |
| substanceAdministration.header.subject | MedicationRequest.subject | MedicationRequest.subject |
| substanceAdministration.header.validFrom | MedicationRequest.dispenseRequest.validityPeriod.start | MedicationRequest.dispenseRequest.validityPeriod.start |
| substanceAdministration.header.validUntil | MedicationRequest.dispenseRequest.validityPeriod.end | MedicationRequest.dispenseRequest.validityPeriod.end |
| substanceAdministration.header.recorder | MedicationRequest.recorder | MedicationRequest.recorder |
| substanceAdministration.header.recordingDate | MedicationRequest.eventhistory.recorded | MedicationRequest.eventhistory.recorded |
| substanceAdministration.header.status | MedicationRequest.status or RequestOrchestration.status (for multi-item) | MedicationRequest.status or RequestGroup.status (for multi-item) |
| substanceAdministration.header.statusReason[x] | MedicationRequest.statusReason | MedicationRequest.statusReason |
| substanceAdministration.comment | MedicationRequest.note.text, RequestOrchestration.note.text | MedicationRequest.note.text, RequestGroup.note.text |
| substanceAdministration.prescriptionItem | MedicationRequest | MedicationRequest |
| substanceAdministration.prescriptionItem.identifier | MedicationRequest.identifier | MedicationRequest.identifier |
| substanceAdministration.prescriptionItem.category | MedicationRequest.category | MedicationRequest.category |
| substanceAdministration.prescriptionItem.status | MedicationRequest.status | MedicationRequest.status |
| substanceAdministration.prescriptionItem.statusReason[x] | MedicationRequest.statusReason | MedicationRequest.statusReason |
| substanceAdministration.prescriptionItem.medication | MedicationRequest.medication | MedicationRequest.medication[x] |
| substanceAdministration.prescriptionItem.indication[x] | MedicationRequest.reason | MedicationRequest.reasonCode or .reasonReference |
| substanceAdministration.prescriptionItem.indicationText | MedicationRequest.reason.concept.text | MedicationRequest.reasonCode.text |
| substanceAdministration.prescriptionItem.prescriptionIntent | MedicationRequest.reason | MedicationRequest.reason |
| substanceAdministration.prescriptionItem.treatmentPeriod | MedicationRequest.effectiveDosePeriod | MedicationRequest.extension:effectiveDosePeriod |
| substanceAdministration.prescriptionItem.quantityPrescribed | MedicationRequest.dispenseRequest.extension: prescribedQuantity | MedicationRequest.dispenseRequest.extension: prescribedQuantity |
| substanceAdministration.prescriptionItem.dosageInstructions | MedicationRequest.dosageInstruction | MedicationRequest.dosageInstruction |
| substanceAdministration.prescriptionItem.preparationInstructions | MedicationRequest.dispenseRequest.dispenserInstruction |   |
| substanceAdministration.prescriptionItem.substitution | MedicationRequest.substitution | MedicationRequest.substitution |
| substanceAdministration.prescriptionItem.substitution.allowed[x] | MedicationRequest.substitution.allowed[x] | MedicationRequest.substitution.allowed[x] |
| substanceAdministration.prescriptionItem.substitution.reason[x] | MedicationRequest.substitution.reason | MedicationRequest.substitution.reason |
| substanceAdministration.prescriptionItem.repeatsAllowed | MedicationRequest.dispenseRequest.numberOfRepeatsAllowed | MedicationRequest.dispenseRequest.numberOfRepeatsAllowed |
| substanceAdministration.prescriptionItem.minimumDispenseInterval | MedicationRequest.dispenseRequest.dispenseInterval | MedicationRequest.dispenseRequest.dispenseInterval |
| substanceAdministration.prescriptionItem.offLabel | MedicationRequest.extension:offLabelUse | MedicationRequest.extension:offLabelUse |
| substanceAdministration.prescriptionItem.comment | MedicationRequest.note.text | MedicationRequest.note.text |

#### Medication

| | | |
| :--- | :--- | :--- |
| EHDSMedication.identifyingCode[x] | Medication.code OR Medication.identifier | Medication.code OR Medication.identifier |
| EHDSMedication.classification | Medication.extension:classification | Medication.extension:classification |
| EHDSMedication.productName | Medication.extension:productName | Medication.extension:productName |
| EHDSMedication.marketingAuthorisationHolder | Medication.marketingAuthorizationHolder | Medication.manufacturer |
| EHDSMedication.doseForm | Medication.doseForm | Medication.form |
| EHDSMedication.packSize | Medication.totalVolume | Medication.amount |
| EHDSMedication.item | Medication.ingredient.item.reference(Medication) | Medication.ingredient.itemReference(Medication) |
| EHDSMedication.item.doseForm | Medication.doseForm | Medication.form |
| EHDSMedication.item.ingredient |   |   |
| EHDSMedication.item.ingredient.isActive | Medication.ingredient.isActive | Medication.ingredient.isActive |
| EHDSMedication.item.ingredient.substance | Medication.ingredient.item | Medication.ingredient.itemCodeableConcept |
| EHDSMedication.item.ingredient.strengthInfo | Medication.ingredient.strength[x] | Medication.ingredient.strength |
| EHDSMedication.item.ingredient.strengthInfo.strength | Medication.ingredient.strengthRatio | Medication.ingredient.strengthRatio |
| EHDSMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance | Medication.ingredient.strength[x].extension:basisOfStrengthSubstance | Medication.ingredient.strength[x].extension:basisOfStrengthSubstance |
| EHDSMedication.item.unitOfPresentation | Medication.extension:unitOfPresentation | Medication.extension:unitOfPresentation |
| EHDSMedication.item.containedQuantity | Medication.extension:sizeOfItem | Medication.extension:sizeOfItem |
| EHDSMedication.item.amount | Medication.totalVolume | Medication.amount |
| EHDSMedication.item.packageType | Medication.extension:packageType | Medication.extension:packageType |
| EHDSMedication.device | Medication.extension:device | Medication.extension:device |
| EHDSMedication.characteristic | Medication.extension:characteristic | Medication.extension:characteristic |
| EHDSMedication.batch | Medication.batch | Medication.batch |
| EHDSMedication.batch.lotNumber | Medication.batch.lotNumber | Medication.batch.lotNumber |
| EHDSMedication.batch.expirationDate | Medication.batch.expirationDate | Medication.batch.expirationDate |

#### Dosaging

| | | |
| :--- | :--- | :--- |
| EHDSDosaging.sequence | Dosage.sequence | Dosage.sequence |
| EHDSDosaging.text | Dosage.text | Dosage.text |
| EHDSDosaging.additionalInstruction | Dosage.additionalInstruction | Dosage.additionalInstruction |
| EHDSDosaging.patientInstruction | patientInstruction | patientInstruction |
| EHDSDosaging.doseAndRate | Dosage.doseAndRate | Dosage.doseAndRate |
| EHDSDosaging.doseAndRate.type | Dosage.doseAndRate.type | Dosage.doseAndRate.type |
| EHDSDosaging.doseAndRate.dose[x] | Dosage.doseAndRate.dose[x] | Dosage.doseAndRate.dose[x] |
| EHDSDosaging.doseAndRate.rate[x] | Dosage.doseAndRate.rate[x] | Dosage.doseAndRate.rate[x] |
| EHDSDosaging.timing | Dosage.timing | Dosage.timing |
| EHDSDosaging.timing.event | Dosage.timing.event | Dosage.timing.event |
| EHDSDosaging.timing.code | Dosage.timing.code | Dosage.timing.code |
| EHDSDosaging.timing.repeat | Dosage.timing.repeat | Dosage.timing.repeat |
| EHDSDosaging.timing.repeat.bounds | Dosage.timing.repeat.bounds[x] | Dosage.timing.repeat.bounds[x] |
| EHDSDosaging.timing.repeat.bounds.duration | Dosage.timing.repeat.boundsDuration | Dosage.timing.repeat.boundsDuration |
| EHDSDosaging.timing.repeat.bounds.range | Dosage.timing.repeat.boundsRange | Dosage.timing.repeat.boundsRange |
| EHDSDosaging.timing.repeat.bounds.period | Dosage.timing.repeat.boundsPeriod | Dosage.timing.repeat.boundsPeriod |
| EHDSDosaging.timing.repeat.count |   |   |
| EHDSDosaging.timing.repeat.count.count | Dosage.timing.repeat.count | Dosage.timing.repeat.count |
| EHDSDosaging.timing.repeat.count.countMax | Dosage.timing.repeat.countMax | Dosage.timing.repeat.countMax |
| EHDSDosaging.timing.repeat.duration |   |   |
| EHDSDosaging.timing.repeat.duration.duration | Dosage.timing.repeat.duration + Dosage.timing.repeat.durationUnit | Dosage.timing.repeat.duration + Dosage.timing.repeat.durationUnit |
| EHDSDosaging.timing.repeat.duration.durationMax | Dosage.timing.repeat.durationMax + Dosage.timing.repeat.durationUnit | Dosage.timing.repeat.durationMax + Dosage.timing.repeat.durationUnit |
| EHDSDosaging.timing.repeat.frequency |   |   |
| EHDSDosaging.timing.repeat.frequency.numberOfTimes | Dosage.timing.repeat.frequency | Dosage.timing.repeat.frequency |
| EHDSDosaging.timing.repeat.frequency.maxNumberOfTimes | Dosage.timing.repeat.frequencyMax | Dosage.timing.repeat.frequencyMax |
| EHDSDosaging.timing.repeat.frequency.period | Dosage.timing.repeat.period + Dosage.timing.repeat.periodUnit | Dosage.timing.repeat.period + Dosage.timing.repeat.periodUnit |
| EHDSDosaging.timing.repeat.frequency.periodMax | Dosage.timing.repeat.periodMax + Dosage.timing.repeat.periodUnit | Dosage.timing.repeat.periodMax + Dosage.timing.repeat.periodUnit |
| EHDSDosaging.timing.repeat.dayOfWeek | Dosage.timing.repeat.dayOfWeek | Dosage.timing.repeat.dayOfWeek |
| EHDSDosaging.timing.repeat.timeOfDay | Dosage.timing.repeat.timeOfDay | Dosage.timing.repeat.timeOfDay |
| EHDSDosaging.timing.repeat.eventTime |   |   |
| EHDSDosaging.timing.repeat.eventTime.when | Dosage.timing.repeat.when | Dosage.timing.repeat.when |
| EHDSDosaging.timing.repeat.eventTime.offset | Dosage.timing.repeat.offset | Dosage.timing.repeat.offset |
| EHDSDosaging.asNeeded | Dosage.asNeeded | Dosage.asNeededBoolean |
| EHDSDosaging.asNeededFor | Dosage.asNeededFor | Dosage.asNeededCodeableConcept |
| EHDSDosaging.bodySite | Dosage.site | Dosage.site |
| EHDSDosaging.routeOfAdministration | Dosage.route | Dosage.route |
| EHDSDosaging.methodOfAdministration | Dosage.method | Dosage.method |
| EHDSDosaging.maxDose |   |   |
| EHDSDosaging.maxDose.maxDosePerPeriod | Dosage.maxDosePerPeriod | Dosage.maxDosePerPeriod |
| EHDSDosaging.maxDose.maxDosePerAdministration | Dosage.maxDosePerAdministration | Dosage.maxDosePerAdministration |
| EHDSDosaging.maxDose.maxDosePerLifetime | Dosage.maxDosePerLifetime | Dosage.maxDosePerLifetime |

#### Medication Dispense

| | | |
| :--- | :--- | :--- |
| EHDSMedicationDispense.header.identifier | MedicationDispense.identifier | MedicationDispense.identifier |
| EHDSMedicationDispense.header.status | MedicationDispense.status | MedicationDispense.status |
| EHDSMedicationDispense.header.statusReason[x] | MedicationDispense.notPerformedReason | MedicationDispense.statusReason |
| EHDSMedicationDispense.header.subject | MedicationDispense.subject | MedicationDispense.subject |
| EHDSMedicationDispense.header.authorship.author | MedicationDispense.performer.actor | MedicationDispense.performer.actor |
| EHDSMedicationDispense.header.authorship.datetime | MedicationDispense.whenHandedOver or .recorded | MedicationDispense.whenHandedOver |
| EHDSMedicationDispense.receiver[x] | MedicationDispense.receiver | MedicationDispense.receiver |
| EHDSMedicationDispense.dispenseLocation | MedicationDispense.location | MedicationDispense.location |
| EHDSMedicationDispense.relatedRequest | MedicationDispense.authorizingPrescription | MedicationDispense.authorizingPrescription |
| EHDSMedicationDispense.medication | MedicationDispense.medication | MedicationDispense.medication[x] |
| EHDSMedicationDispense.dispensedQuantity | MedicationDispense.quantity | MedicationDispense.quantity |
| EHDSMedicationDispense.timeOfDispensation | MedicationDispense.whenHandedOver | MedicationDispense.whenHandedOver |
| EHDSMedicationDispense.substitution | MedicationDispense.substitution | MedicationDispense.substitution |
| EHDSMedicationDispense.substitution.substitutionOccurred | MedicationDispense.substitution.wasSubstituted | MedicationDispense.substitution.wasSubstituted |
| EHDSMedicationDispense.substitution.substitutionType | MedicationDispense.substitution.type | MedicationDispense.substitution.type |
| EHDSMedicationDispense.substitution.substitutionReason | MedicationDispense.substitution.reason | MedicationDispense.substitution.reason |
| EHDSMedicationDispense.dosageInstructions | MedicationDispense.dosageInstruction | MedicationDispense.dosageInstruction |
| EHDSMedicationDispense.comment | MedicationDispense.note | MedicationDispense.note |

#### Dispense Decline

| | | |
| :--- | :--- | :--- |
| EHDSDispenseDecline.header.identifier | MedicationDispense.identifier | MedicationDispense.identifier |
| EHDSDispenseDecline.header.subject | MedicationDispense.subject | MedicationDispense.subject |
| EHDSDispenseDecline.header.status | MedicationDispense.status | MedicationDispense.status |
| EHDSDispenseDecline.header.statusReason[x] | MedicationDispense.notPerformedReason | MedicationDispense.statusReason |
| EHDSDispenseDecline.header.authorship.author | MedicationDispense.performer.actor | MedicationDispense.performer.actor |
| EHDSDispenseDecline.header.authorship.datetime | MedicationDispense.whenHandedOver or .recorded | MedicationDispense.whenHandedOver |
| EHDSDispenseDecline.relatedRequest | MedicationDispense.authorizingPrescription | MedicationDispense.authorizingPrescription |
| EHDSDispenseDecline.comment | MedicationDispense.note | MedicationDispense.note |

