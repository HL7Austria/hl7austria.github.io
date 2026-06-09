# ELGA.MOPED\AT MOPED Claim VAERequest generisches Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Claim VAERequest generisches Profil**

## Resource Profile: AT MOPED Claim VAERequest generisches Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-generisch | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedClaimVAERequestGenerisch |

 
MOPED generisches Profil der Claim Ressource für die Anfrage der Versichertenanspruchserklärung VAE. 

**Usages:**

* Derived from this Profile: [AT MOPED Claim VAERequest Basis Profil](StructureDefinition-at-moped-claim-vaerequest-basis.md)
* Refer to this Profile: [AT MOPED Claim LKFRequest generisches Profil](StructureDefinition-at-moped-claim-lkfrequest-generisch.md) and [AT MOPED Claim VAERequest generisches Profil](StructureDefinition-at-moped-claim-vaerequest-generisch.md)
* Examples for this Profile: [Claim/PJ1VAERequest1](Claim-PJ1VAERequest1.md) and [Claim/PJ2VAERequest1](Claim-PJ2VAERequest1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-claim-vaerequest-generisch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-claim-vaerequest-generisch.csv), [Excel](StructureDefinition-at-moped-claim-vaerequest-generisch.xlsx), [Schematron](StructureDefinition-at-moped-claim-vaerequest-generisch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-claim-vaerequest-generisch",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-generisch",
  "version" : "0.1.0",
  "name" : "AtMopedClaimVAERequestGenerisch",
  "title" : "AT MOPED Claim VAERequest generisches Profil",
  "status" : "draft",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED generisches Profil der Claim Ressource für die Anfrage der Versichertenanspruchserklärung VAE.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "LKF",
    "uri" : "https://elga.moped.at/mapping/LKF",
    "name" : "LKF"
  },
  {
    "identity" : "KaOrg",
    "uri" : "https://elga.moped.at/mapping/KaOrg",
    "name" : "KaOrg"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.status"
    },
    {
      "id" : "Claim.type",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimTypeVS"
      }
    },
    {
      "id" : "Claim.type.coding",
      "path" : "Claim.type.coding",
      "fixedCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
        "code" : "VAEREQ"
      }
    },
    {
      "id" : "Claim.subType",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.subType",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedVAERequestSubTypeVS"
      }
    },
    {
      "id" : "Claim.use",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.use",
      "patternCode" : "preauthorization"
    },
    {
      "id" : "Claim.patient",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
      }]
    },
    {
      "id" : "Claim.billablePeriod.start",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.billablePeriod.start",
      "min" : 1
    },
    {
      "id" : "Claim.insurer",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.insurer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-SV"]
      }]
    },
    {
      "id" : "Claim.provider",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.provider",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "Claim.related.claim",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.related.claim",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-generisch"]
      }]
    },
    {
      "id" : "Claim.encounter",
      "path" : "Claim.encounter",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "resolve().type"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Claim.encounter:MopedEncounter",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.encounter",
      "sliceName" : "MopedEncounter",
      "short" : "Generelle Informationen zu Aufnahme und Entlassung des Patienten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthaltbesuch-generisch"]
      }]
    },
    {
      "id" : "Claim.encounter:BewegungsEncounter",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.encounter",
      "sliceName" : "BewegungsEncounter",
      "short" : "Informationen zu Verlegungen innerhalb oder zwischen Krankenanstalten",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-generisch"]
      }]
    },
    {
      "id" : "Claim.supportingInfo",
      "path" : "Claim.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "category"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Claim.supportingInfo.code.coding",
      "path" : "Claim.supportingInfo.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/VAESupportingInformationCategoryVS"
      }
    },
    {
      "id" : "Claim.supportingInfo:Sonderklasse",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo",
      "sliceName" : "Sonderklasse",
      "short" : "KaOrg: Allgemeine Gebührenklasse/Sonderklasse",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Claim.supportingInfo:Sonderklasse.category",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
          "code" : "KLAS"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:Sonderklasse.code",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.code",
      "short" : "KaOrg: Verlegung Klasse",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/SonderklasseVS"
      },
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Allgemeine Gebührenklasse/Sonderklasse"
      },
      {
        "identity" : "KaOrg",
        "map" : "Verlegung Klasse"
      }]
    },
    {
      "id" : "Claim.supportingInfo:Sonderklasse.timing[x]",
      "path" : "Claim.supportingInfo.timing[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Claim.supportingInfo:Sonderklasse.timing[x]:timingPeriod",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.timing[x]",
      "sliceName" : "timingPeriod",
      "short" : "KaOrg: Aufnahme-/Verlegungsdatum",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Aufnahme-/Verlegungsdatum"
      }]
    },
    {
      "id" : "Claim.supportingInfo:VerdachtFremdverschulden",
      "path" : "Claim.supportingInfo",
      "sliceName" : "VerdachtFremdverschulden",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Claim.supportingInfo:VerdachtFremdverschulden.category",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
          "code" : "FREVER"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:VerdachtFremdverschulden.value[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.value[x]",
      "short" : "KaOrg: Fremdverschulden",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Fremdverschulden"
      }]
    },
    {
      "id" : "Claim.supportingInfo:Verlaengerungstage",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo",
      "sliceName" : "Verlaengerungstage",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Claim.supportingInfo:Verlaengerungstage.category",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
          "code" : "VERLAENG"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity",
      "path" : "Claim.supportingInfo.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.value",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.value[x].value",
      "short" : "KaOrg: Anzahl der Verlängerungstage",
      "min" : 1,
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Anzahl der Verlängerungstage"
      }]
    },
    {
      "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.unit",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.value[x].unit",
      "patternString" : "day"
    },
    {
      "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.system",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Claim.supportingInfo:Verlaengerungstage.value[x]:valueQuantity.code",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.supportingInfo.value[x].code",
      "patternCode" : "d"
    },
    {
      "id" : "Claim.diagnosis.diagnosis[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.diagnosis.diagnosis[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-condition-basis"]
      }]
    },
    {
      "id" : "Claim.insurance.coverage",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.insurance.coverage",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-coverage-versicherter-basis"]
      }]
    },
    {
      "id" : "Claim.accident.date",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.accident.date",
      "short" : "KaOrg: Ereignis-/Unfalldatum (echtes Unfalldatum)",
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Ereignis-/Unfalldatum (echtes Unfalldatum)"
      }]
    },
    {
      "id" : "Claim.accident.type",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Claim.accident.type",
      "short" : "KaOrg: Verdacht auf Arbeits-/Schülerunfall",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/VerdachtArbeitsSchuelerunfallVS"
      },
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Verdacht auf Arbeits-/Schülerunfall"
      }]
    }]
  }
}

```
