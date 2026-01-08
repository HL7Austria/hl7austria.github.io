# ELGA.MOPED\MOPED Patient SV - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient SV**

## Resource Profile: MOPED Patient SV 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedPatientSV | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedPatientSV |

 
MOPED Profil der Patient Ressource aus der Sicht der Rolle: SV 

**Usages:**

* Examples for this Profile: [Patient/Test1PatientSV](Patient-Test1PatientSV.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedPatientSV)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedPatientSV.csv), [Excel](StructureDefinition-MopedPatientSV.xlsx), [Schematron](StructureDefinition-MopedPatientSV.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedPatientSV",
  "url" : "https://elga.moped.at/StructureDefinition/MopedPatientSV",
  "version" : "0.1.0",
  "name" : "MopedPatientSV",
  "title" : "MOPED Patient SV",
  "status" : "draft",
  "date" : "2025-10-15T12:16:02+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "MOPED Profil der Patient Ressource aus der Sicht der Rolle: SV",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "at-core-mapping-patient2cdaatv3",
      "uri" : "https://wiki.hl7.at/index.php?title=ILF:Allgemeiner_Implementierungsleitfaden_(Version_3)",
      "name" : "Allgemeiner Implementierungsleitfaden v3"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "interface",
      "uri" : "http://hl7.org/fhir/interface",
      "name" : "Interface Pattern"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.address.extension:municipalityCode",
        "path" : "Patient.address.extension",
        "sliceName" : "municipalityCode",
        "max" : "0"
      },
      {
        "id" : "Patient.contact.address.extension:municipalityCode",
        "path" : "Patient.contact.address.extension",
        "sliceName" : "municipalityCode",
        "max" : "0"
      }
    ]
  }
}

```
