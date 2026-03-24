# ELGA.MOPED\MOPED ARKResponse - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED ARKResponse**

## Resource Profile: MOPED ARKResponse 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedARKResponse | *Version*:0.1.0 | |
| Draft as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedARKResponse |

 
MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse. 

**Usages:**

* Use this Profile: [MOPED Antworten Bundle SV](StructureDefinition-MopedAntwortenBundleSV.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedARKResponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedARKResponse.csv), [Excel](StructureDefinition-MopedARKResponse.xlsx), [Schematron](StructureDefinition-MopedARKResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedARKResponse",
  "url" : "https://elga.moped.at/StructureDefinition/MopedARKResponse",
  "version" : "0.1.0",
  "name" : "MopedARKResponse",
  "title" : "MOPED ARKResponse",
  "status" : "draft",
  "date" : "2026-03-24T20:07:54+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der ClaimResponse Ressource für die Rückmeldung der SV für Ausländerverrechnung und Regresse.",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse",
      "path" : "ClaimResponse"
    },
    {
      "id" : "ClaimResponse.extension",
      "path" : "ClaimResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.extension:AbrechnungsartAuslaenderverrechnung",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.extension",
      "sliceName" : "AbrechnungsartAuslaenderverrechnung",
      "short" : "KaOrg: Abrechnungsart Ausländerverrechnung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung"]
      }]
    },
    {
      "id" : "ClaimResponse.extension:Betreuungsschein",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.extension",
      "sliceName" : "Betreuungsschein",
      "short" : "KaOrg: Betreuungsschein bei Ausländerverrechnung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-Betreuungsschein"]
      }]
    },
    {
      "id" : "ClaimResponse.extension:SupportingInfo",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.extension",
      "sliceName" : "SupportingInfo",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedSupportingInfo"]
      }]
    },
    {
      "id" : "ClaimResponse.extension:MopedSupportingInfoFREMDRE",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.extension",
      "sliceName" : "MopedSupportingInfoFREMDRE",
      "short" : "KaOrg: Rechnungsnummer der zwischenstaatlichen Abrechnung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedSupportingInfoFREMDRE"]
      }]
    },
    {
      "id" : "ClaimResponse.extension:MopedSupportingInfoOEGKELBNR",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.extension",
      "sliceName" : "MopedSupportingInfoOEGKELBNR",
      "short" : "KaOrg: Forderungsnummer der ÖGK",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedSupportingInfoOEGKELBNR"]
      }]
    },
    {
      "id" : "ClaimResponse.extension:Beihilfenaequivalent",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.extension",
      "sliceName" : "Beihilfenaequivalent",
      "short" : "KaOrg: Beihilfenäquivalent",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-Beihilfenaequivalent"]
      }]
    },
    {
      "id" : "ClaimResponse.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
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
      "path" : "ClaimResponse.status"
    },
    {
      "id" : "ClaimResponse.type",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedClaimTypeVS"
      }
    },
    {
      "id" : "ClaimResponse.type.coding",
      "path" : "ClaimResponse.type.coding",
      "fixedCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
        "code" : "ARKRESP"
      }
    },
    {
      "id" : "ClaimResponse.subType",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.subType",
      "short" : "Kostenmeldung für Ausländerverrechnung, Regressangelegenheiten und Kosteninformation",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/KostenmeldungARKVS"
      }
    },
    {
      "id" : "ClaimResponse.use",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.use",
      "patternCode" : "claim"
    },
    {
      "id" : "ClaimResponse.patient",
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
      "path" : "ClaimResponse.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
      }]
    },
    {
      "id" : "ClaimResponse.request",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.request",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedARKRequest"]
      }]
    },
    {
      "id" : "ClaimResponse.addItem",
      "path" : "ClaimResponse.addItem",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "extension('https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory').value.coding"
        }],
        "ordered" : true,
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.addItem.extension",
      "path" : "ClaimResponse.addItem.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.addItem.extension:AddItemCategory",
      "path" : "ClaimResponse.addItem.extension",
      "sliceName" : "AddItemCategory",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory"]
      }]
    },
    {
      "id" : "ClaimResponse.addItem:Patientenanteil",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.addItem",
      "sliceName" : "Patientenanteil",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "ClaimResponse.addItem:Patientenanteil.extension:AddItemCategory",
      "path" : "ClaimResponse.addItem.extension",
      "sliceName" : "AddItemCategory",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory"]
      }]
    },
    {
      "id" : "ClaimResponse.addItem:Patientenanteil.extension:AddItemCategory.value[x].coding",
      "path" : "ClaimResponse.addItem.extension.value[x].coding",
      "patternCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "Patientenanteil"
      }
    },
    {
      "id" : "ClaimResponse.addItem:Patientenanteil.unitPrice",
      "path" : "ClaimResponse.addItem.unitPrice",
      "short" : "KaOrg: Patientenanteil für Angehörige (tägl. Satz) netto",
      "min" : 1
    },
    {
      "id" : "ClaimResponse.addItem:Patientenanteil.factor",
      "path" : "ClaimResponse.addItem.factor",
      "patternDecimal" : -1
    },
    {
      "id" : "ClaimResponse.addItem:Patientenanteil.net",
      "path" : "ClaimResponse.addItem.net",
      "short" : "KaOrg: Patientenanteil",
      "min" : 1
    },
    {
      "id" : "ClaimResponse.total",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "ClaimResponse.total"
    },
    {
      "id" : "ClaimResponse.total.amount",
      "path" : "ClaimResponse.total.amount",
      "short" : "KaOrg: Betrag Ausländerverrechnung/Regress"
    }]
  }
}

```
