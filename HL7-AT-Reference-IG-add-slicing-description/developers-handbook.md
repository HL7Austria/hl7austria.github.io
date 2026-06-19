# HL7.AT.FHIR.REFERENCE-IG\Developer's Handbook - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Developer's Handbook**

## Developer's Handbook

This page contains helpful information for IG authors.

### TBD

Possible topics:

* how to specify the dependency on another IG
* references to other IG guides
* convention on IG's ID and canonical
* …

### Naming conventions

In general the HL7 [FHIR naming conventions](http://wiki.hl7.org/index.php?title=FHIR_Guide_to_Designing_Resources###Naming_Rules_.26_Guidelines) apply. Essentially these conventions ask for **consistency** and **precision** (i.e. minimizing ambiguity, while ensuring the meaning is easily understood) when naming fields, resources or operations.

Most of these guidelines are suggestions, except the following rules that **must** be followed:

* be U.S. English (spelled correctly!)
* be expressed as a noun, with a preceding adjective where necessary to clarify the semantics and to make unique
* not make use of trade-marked terms
* case style must be followed: 
* resources must be lower case - ex. `at-core-patient`, patient resource is all lower case
* elements must be lowerCamelCase - ex. `at-core-ext-address-additionalInformation`, the element address.additionalInformation is lowerCamelCase
* operations must be lower case - e. `at-core-exampleoperation` example operation is all lower case
 

#### Profile Naming conventions

The **StructureDefintion Id** of a profile follows a prefix pattern, meaning that a name from left to right goes from specific to generic. It uses UpperCamelCase.

**ProfileName** = [**Realm**-], **Use-**, **ParentProfile**

**Realm** = Is this profile supposed to be used in a realm? Then use the **countryCode**[1](#fn:ISO3166-3)

**Use** = What is this profile used for? **lower case**

**ParentProfile** = Which profile does this profile extend from? **lower case**

Example: Patient used in Austria, for ELGA.

```
Realm = Austria -> at- (country code)
Use = HL7 Austria FHIR Core -> core-
ParentProfile = Patient -> patient
at-core-patient

```

Example: Immunization information for ELGA

```
Realm = Austria -> at-
Use = ELGA -> elga-
ParentProfile = Immunization -> immunization
at-elga-immunization

```

#### Extension Naming conventions

The **StructureDefintion Id** of an extension follows a suffix pattern, meaning that a name from left to right goes from generic to specific.

**ExtensionName** = [**Realm**-], **Use-**, **ext-** **ProfileItIsFor-**, **FieldItAdds**

**Realm** = Is this profile supposed to be used in a realm? Then use the **countryCode**[1](#fn:ISO3166-3)

**Use** = What is this profile used for? **lower case**

**ext-** = indication that this is an Extension **lower case**

**ProfileItIsFor** = Either Base Profile or **Profile** previously defined (optional if extension can occur anywhere -> Ex. NullFlavor), without the Realm. **lower case**

**FieldItAdds** = **unique naming** for field **lowerCamelCase**

Example: Religions for a patient registered in Austria

```
Realm = Austria -> at-
Use = HL7 Austria FHIR Core -> core-
Profile = Patient -> patient-
FieldItAdds = Religion -> religion
at-core-ext-patient-religion

```

Example: Extra field in Address

```
Realm = Austria -> at-
Use = HL7 Austria FHIR Core -> core-
Profile = Address -> address
FieldItAdds = Additional Information -> additionalInformation
at-core-ext-address-additionalInformation

```

1. country codes are [ISO 3166-3](https://www.iso.org/iso-3166-country-codes.html) in the Alpha-2 code format, all lowercase. [↩](#fnref:ISO3166-3) [↩2](#fnref:ISO3166-3:1)

