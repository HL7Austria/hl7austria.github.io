# ELGA.MOPED\MOPED Encounter - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter**

## Resource Profile: MOPED Encounter 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounter | *Version*:0.1.0 | |
| Draft as of 2026-03-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounter |

 
MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung 

**Usages:**

* Derived from this Profile: [MOPED Encounter Ambulant](StructureDefinition-MopedEncounterA.md), [MOPED Encounter Bund](StructureDefinition-MopedEncounterBund.md), [MOPED Encounter LGF](StructureDefinition-MopedEncounterLGF.md), [MOPED Encounter Stationär](StructureDefinition-MopedEncounterS.md) and [MOPED Encounter SV](StructureDefinition-MopedEncounterSV.md)
* Use this Profile: [MOPED Input Bundle KH](StructureDefinition-MopedInputBundleKH.md)
* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [MOPED Condition](StructureDefinition-MopedCondition.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md), [MOPED Procedure](StructureDefinition-MopedProcedure.md)... Show 3 more, [Moped QuestionnaireResponse fallbezogen](StructureDefinition-MopedQuestionnaireResponseFallbezogen.md), [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md) and [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* Examples for this Profile: [Encounter/Encounter42](Encounter-Encounter42.md), [Encounter/PJ1Encounter](Encounter-PJ1Encounter.md), [Encounter/PJ1EncounterAufnahme](Encounter-PJ1EncounterAufnahme.md), [Encounter/PJ1EncounterBasis](Encounter-PJ1EncounterBasis.md)... Show 3 more, [Encounter/PJ1EncounterLGF](Encounter-PJ1EncounterLGF.md), [Encounter/PJ1EncounterSV](Encounter-PJ1EncounterSV.md) and [Encounter/PJ2Encounter](Encounter-PJ2Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounter.csv), [Excel](StructureDefinition-MopedEncounter.xlsx), [Schematron](StructureDefinition-MopedEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounter",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounter",
  "version" : "0.1.0",
  "name" : "MopedEncounter",
  "title" : "MOPED Encounter",
  "status" : "draft",
  "date" : "2026-03-15T19:53:47+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
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
      "id" : "Encounter.extension:Altersgruppe",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.extension",
      "sliceName" : "Altersgruppe",
      "short" : "LKF: Altersgruppe bei Entlassung/Kontakt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"]
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Altersgruppe bei Entlassung/Kontakt"
      }]
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.identifier:Aufnahmezahl",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.identifier",
      "sliceName" : "Aufnahmezahl",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:Aufnahmezahl.type",
      "path" : "Encounter.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0203"
      }
    },
    {
      "id" : "Encounter.identifier:Aufnahmezahl.type.coding.code",
      "path" : "Encounter.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "VN"
    },
    {
      "id" : "Encounter.identifier:Aufnahmezahl.system",
      "path" : "Encounter.identifier.system",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:Aufnahmezahl.value",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.identifier.value",
      "short" : "LKF: Aufnahmezahl; KaOrg: Aufnahmezahl",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Aufnahmezahl"
      },
      {
        "identity" : "KaOrg",
        "map" : "Aufnahmezahl"
      }]
    },
    {
      "id" : "Encounter.identifier:Aufnahmezahl.assigner",
      "path" : "Encounter.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
      }]
    },
    {
      "id" : "Encounter.identifier:DatensatzID",
      "path" : "Encounter.identifier",
      "sliceName" : "DatensatzID",
      "short" : "LKF: Datensatz-ID; SHA-256 verschlüsselte Aufnahmezahl",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:DatensatzID.type",
      "path" : "Encounter.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0203"
      }
    },
    {
      "id" : "Encounter.identifier:DatensatzID.type.coding.code",
      "path" : "Encounter.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "ANON"
    },
    {
      "id" : "Encounter.identifier:DatensatzID.value",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.identifier.value",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Datensatz-ID"
      }]
    },
    {
      "id" : "Encounter.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
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
      "path" : "Encounter.status",
      "short" : "Status der unter anderem auch angibt, ob es sich um eine KaOrg Avisio-Info handelt",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedEncounterStatusVS"
      },
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Avisio-Info"
      }]
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Encounter.class:Behandlungsart",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.class",
      "sliceName" : "Behandlungsart",
      "short" : "LKF: Behandlungsart",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/BehandlungsartVS"
      },
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Behandlungsart"
      }]
    },
    {
      "id" : "Encounter.class:Behandlungsart.coding.system",
      "path" : "Encounter.class.coding.system",
      "min" : 1,
      "patternUri" : "https://elga.moped.at/CodeSystem/BehandlungsartCS"
    },
    {
      "id" : "Encounter.class:Aufnahmeart2",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.class",
      "sliceName" : "Aufnahmeart2",
      "short" : "LKF: Aufnahme-/Zugangsart 2",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/Aufnahmeart2VS"
      },
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Aufnahme-/Zugangsart 2"
      }]
    },
    {
      "id" : "Encounter.class:Aufnahmeart2.coding.system",
      "path" : "Encounter.class.coding.system",
      "min" : 1,
      "patternUri" : "https://elga.moped.at/CodeSystem/Aufnahmeart2CS"
    },
    {
      "id" : "Encounter.type",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
          "code" : "ENC"
        }]
      }
    },
    {
      "id" : "Encounter.subject",
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
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
      }]
    },
    {
      "id" : "Encounter.serviceProvider",
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
      "path" : "Encounter.serviceProvider",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
      }]
    },
    {
      "id" : "Encounter.actualPeriod",
      "path" : "Encounter.actualPeriod",
      "short" : "LKF: Aufnahme- und Entlassungsdatum",
      "min" : 1
    },
    {
      "id" : "Encounter.actualPeriod.start",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.actualPeriod.start",
      "short" : "LKF: Aufnahme-/Kontaktdatum; LKF: Aufnahme-/Kontaktuhrzeit; KaOrg: Aufnahme-/Ereignisdatum; KaOrg: Ereignis-/Unfalldatum (initiales Aufnahmedatum); KaOrg: Behandlungsdatum",
      "min" : 1,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Aufnahme-/Kontaktdatum"
      },
      {
        "identity" : "LKF",
        "map" : "Aufnahme-/Kontaktuhrzeit"
      },
      {
        "identity" : "KaOrg",
        "map" : "Aufnahme-/Ereignisdatum"
      },
      {
        "identity" : "KaOrg",
        "map" : "Ereignis-/Unfalldatum (initiales Aufnahmedatum)"
      },
      {
        "identity" : "KaOrg",
        "map" : "Behandlungsdatum"
      }]
    },
    {
      "id" : "Encounter.actualPeriod.end",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.actualPeriod.end",
      "short" : "LKF: Entlassungsdatum; LKF: Entlassungsuhrzeit; KaOrg: Entlassungsdatum",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Entlassungsdatum"
      },
      {
        "identity" : "LKF",
        "map" : "Entlassungsuhrzeit"
      },
      {
        "identity" : "KaOrg",
        "map" : "Entlassungsdatum"
      }]
    },
    {
      "id" : "Encounter.reason",
      "path" : "Encounter.reason",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use.coding.code"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.reason:Ursache",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.reason",
      "sliceName" : "Ursache",
      "short" : "LKF: Ursache für Behandlung; KaOrg: Ursache der Behandlung",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.reason:Ursache.use",
      "path" : "Encounter.reason.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-reason-use"
      }
    },
    {
      "id" : "Encounter.reason:Ursache.use.coding.code",
      "path" : "Encounter.reason.use.coding.code",
      "min" : 1,
      "fixedCode" : "RV"
    },
    {
      "id" : "Encounter.reason:Ursache.value",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.reason.value",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/UrsacheVS"
      },
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Ursache für Behandlung"
      },
      {
        "identity" : "KaOrg",
        "map" : "Ursache der Behandlung"
      }]
    },
    {
      "id" : "Encounter.admission.extension",
      "path" : "Encounter.admission.extension",
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
      "id" : "Encounter.admission.extension:aufnahmeart",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.admission.extension",
      "sliceName" : "aufnahmeart",
      "short" : "LKF: Aufnahme-/Zugangsart 1; KaOrg: Ereignisart; KaOrg: Aufnahmeart",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart"]
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Aufnahme-/Zugangsart 1"
      },
      {
        "identity" : "KaOrg",
        "map" : "Ereignisart"
      },
      {
        "identity" : "KaOrg",
        "map" : "Aufnahmeart"
      }]
    },
    {
      "id" : "Encounter.admission.extension:Transportart",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.admission.extension",
      "sliceName" : "Transportart",
      "short" : "LKF: Transportart",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/encounter-modeOfArrival"]
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Transportart"
      }]
    },
    {
      "id" : "Encounter.admission.extension:Transportart.value[x]",
      "path" : "Encounter.admission.extension.value[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/TransportartVS"
      }
    },
    {
      "id" : "Encounter.admission.origin",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.admission.origin",
      "short" : "LKF: Zugewiesen von – Krankenanstaltennummer; KaOrg: Überweisende Stelle - Vertragspartnernummer; KaOrg: Überweisende Stelle - Name; KaOrg: Länderkennzeichen der überweisenden Stelle; KaOrg: Überweisende Stelle - Postleitzahl; KaOrg: Überweisende Stelle - Ort;",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Zugewiesen von – Krankenanstaltennummer"
      },
      {
        "identity" : "KaOrg",
        "map" : "Überweisende Stelle - Vertragspartnernummer"
      },
      {
        "identity" : "KaOrg",
        "map" : "Überweisende Stelle - Name"
      },
      {
        "identity" : "KaOrg",
        "map" : "Länderkennzeichen der überweisenden Stelle"
      },
      {
        "identity" : "KaOrg",
        "map" : "Überweisende Stelle - Postleitzahl"
      },
      {
        "identity" : "KaOrg",
        "map" : "Überweisende Stelle - Ort"
      }]
    },
    {
      "id" : "Encounter.admission.destination",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.admission.destination",
      "short" : "LKF: Zugewiesen an – Krankenanstaltennummer",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Zugewiesen an – Krankenanstaltennummer"
      }]
    },
    {
      "id" : "Encounter.admission.dischargeDisposition",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.admission.dischargeDisposition",
      "short" : "LKF: Entlassungs-/Abgangsart; KaOrg: Entlassungsschlüssel; KaOrg: Entlassungsart",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Entlassungs-/Abgangsart"
      },
      {
        "identity" : "KaOrg",
        "map" : "Entlassungsschlüssel"
      },
      {
        "identity" : "KaOrg",
        "map" : "Entlassungsart"
      }]
    }]
  }
}

```
