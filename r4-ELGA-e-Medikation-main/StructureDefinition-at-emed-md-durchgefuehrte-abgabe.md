# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med Durchgeführte Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med Durchgeführte Abgabe**

## Resource Profile: ELGA e-Med Durchgeführte Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-md-durchgefuehrte-abgabe | *Version*:0.1.1 | |
| Draft as of 2026-04-13 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMDDurchgefuehrteAbgabe |

 
Dokumentiert eine durchgeführte Abgabe eines Arzneimittels ("MedicationDispense"-Ressource). In der durchgeführten Abgabe können Abweichungen hinsichtlich der Dosierung des Medikaments dokumentiert werden. Sofern eine zugehörige geplante Abgabe vorliegt, muss diese referenziert werden. Einer mögliche Substitution des Medikaments ist implizit, durch die Referenz auf die zugehörige geplante Abgabe, ersichtlich. 

**Usages:**

* Examples for this Profile: [MedicationDispense/At-Emed-Example-Durchgefuehrte-Abgabe-01](MedicationDispense-At-Emed-Example-Durchgefuehrte-Abgabe-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-md-durchgefuehrte-abgabe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.csv), [Excel](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.xlsx), [Schematron](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-md-durchgefuehrte-abgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-md-durchgefuehrte-abgabe",
  "version" : "0.1.1",
  "name" : "AtEmedMDDurchgefuehrteAbgabe",
  "title" : "ELGA e-Med Durchgeführte Abgabe",
  "status" : "draft",
  "date" : "2026-04-13T20:12:42+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Dokumentiert eine durchgeführte Abgabe eines Arzneimittels (\"MedicationDispense\"-Ressource). \nIn der durchgeführten Abgabe können Abweichungen hinsichtlich der Dosierung des Medikaments dokumentiert werden.\nSofern eine zugehörige geplante Abgabe vorliegt, muss diese referenziert werden. Einer mögliche Substitution des Medikaments ist implizit, durch die Referenz auf die zugehörige geplante Abgabe, ersichtlich.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense",
      "short" : "Durchgeführte Abgabe eines Arzneimittels mit oder ohne Bezug zum Medikationsplan. Verwendet R5 Backport Extensions."
    },
    {
      "id" : "MedicationDispense.extension",
      "path" : "MedicationDispense.extension",
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
      "id" : "MedicationDispense.extension:renderedDosageInstruction",
      "path" : "MedicationDispense.extension",
      "sliceName" : "renderedDosageInstruction",
      "short" : "Vollständige Darstellung der Dosierungsanweisungen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"]
      }]
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "short" : "Durchgeführte-Abgabe-ID. TODO: Verwendung zu prüfen.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.partOf",
      "path" : "MedicationDispense.partOf",
      "short" : "Auslösendes Ereignis. Referenz auf Procedure-Ressource, daher keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.status",
      "path" : "MedicationDispense.status",
      "short" : "Status der durchgeführten Abgabe: completed | entered-in-error | stopped. Details siehe Definition.",
      "definition" : "* **\\\"completed\\\"**: Die durchgeführte Abgabe ist abgeschlossen. \n* **\\\"entered-in-error\\\"**: Die durchgeführte Abgabe wird aufgrund falscher Eingabe storniert.\n* **\\\"stopped\\\"**: Die Abgabe wird nicht durchgeführt (Medikament wird abgesetzt). \nhttp://hl7.org/fhir/ValueSet/medicationdispense-status|4.0.1\n\nTODO: zu prüfen: \n* ob es einen Status in-progress / preparation geben soll, z.B. wenn Bestellvorgang gestartet wurde und der typ First Fill - Part Fill ist.\n* Technische Prüfungen bezüglich Abhängigkeiten von status, typ, Rezeptart? automatisch geprüft werden? Falls der Status vom Typ der geplanten Abgabe (Rezeptart) abhängig sein kann (z.B. in-progress bei Bestellung o.ä.), evtl Operation ",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]",
      "path" : "MedicationDispense.statusReason[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Grund für den aktuellen Status, z.B. warum keine Abgabe erfolgte (zB. Allergie, Produkt nicht verfügbar). Code oder Referenz (DetectedIssue)"
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept",
      "path" : "MedicationDispense.statusReason[x]",
      "sliceName" : "statusReasonCodeableConcept",
      "short" : "Bsp: https://hl7.org/fhir/R4/valueset-medicationdispense-status-reason.html",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonReference",
      "path" : "MedicationDispense.statusReason[x]",
      "sliceName" : "statusReasonReference",
      "short" : "Referenz auf DetectedIssue-Ressource, daher keine Verwendung in der durchgeführten Abgabe.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DetectedIssue"]
      }]
    },
    {
      "id" : "MedicationDispense.category",
      "path" : "MedicationDispense.category",
      "short" : "Angabe, wo das abgegebene Medikament voraussichtlich eingenommen oder verabreicht wird (z.B. stationär oder ambulant), https://hl7.org/fhir/R4/valueset-medicationdispense-category.html. Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "short" : "Abgegebenes Medikament. Das Medikament wird immer in einer contained Medication Ressource dokumentiert, damit \nArzneimittel mit und ohne PZN einheitlich dokumentiert werden können.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"],
        "aggregation" : ["contained"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "short" : "Patient, für den die durchgeführte Abgabe ausgestellt wird (über Zentralen Patientenindex identifiziert und Teilnehmer von ELGA e-Medikation).",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.context",
      "path" : "MedicationDispense.context",
      "short" : "Referenz auf Encounter oder EpisodeOfCare. Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.supportingInformation",
      "path" : "MedicationDispense.supportingInformation",
      "short" : "Referenz (Any) auf zusätzliche Informationen, die die Abgabe des Medikaments unterstützen. Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.performer",
      "path" : "MedicationDispense.performer",
      "short" : "Durchführende Person",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.function",
      "path" : "MedicationDispense.performer.function",
      "short" : "Rolle: https://hl7.org/fhir/R4/valueset-medicationdispense-performer-function.html; Keine Verwendung in der durchgeführten Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "short" : "Refrenz auf Practitioner, PractitionerRole, Organization, \ndie die durchgeführte Abgabe erstellt hat und für den Inhalt verantwortlich ist (identifiziert über den GDA-Index und berechtigt \nauf die ELGA e-Medikation des Patienten zuzugreifen).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole",
        "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "short" : "Ort der Abgabe (Referenz auf Location Ressource). Keine Verwendung in durchgeführter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "short" : "Verpflichtende Referenz auf zugehörige geplante Abgabe (MedicationRequest), sofern diese existiert.\nzu prüfen (gemäß CDA): 'Ohne Verordnungsbezug kann nur die Abgabe jener OTC-Präparate in der e-Medikation \ngespeichert werden, die auch wechselwirkungsrelevant sind.'",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "short" : "Mögliche Werte z.B. FFC (First-Fill Complete für vollständig erfüllte Bestellungen), FFP (First-Fill Part Fill für teilweise erfüllte Bestellungen), \nBsp: http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType  //ffc, ffp, Refill - Part Fill, refill complete: evtl. selbst definieren\n// für leerabgabe: complete-ausprägung; emergency supply offen (OTC), complete\n\nDer Prozess des „Besorgers“ (wenn ein Arzneimittel nicht lagernd ist und bestellt werden muss) wird in der e-Medikation abgebildet. \nDabei wird das Rezept von der Apotheke eingelöst, und die Abgabe wird als Teilabgabe gekennzeichnet \n(siehe Markierung FFP „First Fill, Part Fill“ oder RFP „Refill - Part Fill“). Die Verordnung wird nicht in den Status EINGELÖST versetzt und es können solange weitere Abgaben dispensiert werden, bis eine Abgabe mit der Markierung RFC „Refill - Complete“ gespeichert wird. Die Kennzeichnung zeigt, dass das Arzneimittel dem Patienten noch nicht ausgehändigt wurde. Die Kennzeichnung zeigt auch, ob alle Packungen einer Verordnung bzw. teilweise Packungen einer Verordnung bestellt werden. Solange eine Abgabe mit der Kennzeichnung „Besorger“ vorhanden ist, muss die Abgabe mit der eMED-ID abrufbar sein.\n\n\"FFC\": First Fill - Complete:  <br>\n\"FFP\": First Fill - Part Fill <br>  \n\"RFP\": Refill - Part Fill <br> \n\"RFC\": Refill - Complete <br>\n",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "short" : "Abgegebene Packungsanzahl.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.daysSupply",
      "path" : "MedicationDispense.daysSupply",
      "short" : "Medikamentenmenge, ausgedrückt als zeitliche Menge",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.whenPrepared",
      "path" : "MedicationDispense.whenPrepared",
      "short" : "Verpackungs- und Prüfdatum.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.whenHandedOver",
      "path" : "MedicationDispense.whenHandedOver",
      "short" : "Der Zeitpunkt, zu dem das abgegebene Produkt dem Patienten oder seinem Vertreter zur Verfügung gestellt wurde.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.destination",
      "path" : "MedicationDispense.destination",
      "short" : "Ort an den das Medikament geschickt wurde (Referenz auf Location Ressource). Keine Verwendung in durchgeführter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.receiver",
      "path" : "MedicationDispense.receiver",
      "short" : "Person, die das Medikament abgeholt hat. Referenz auf Patient oder Practitioner. Keine Verwendung in durchgeführter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.note",
      "path" : "MedicationDispense.note",
      "short" : "Zusätzliche Informationen zur Abgabe, die nicht anders dokumentiert werden kann.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction",
      "path" : "MedicationDispense.dosageInstruction",
      "short" : "Gibt an, wie das Medikament vom Patienten einzunehmen ist. TODO: Dosiervarianten.\nDer Apotheker überprüft die Medikamentenbestellung vor der Abgabe und aktualisiert die Dosierungsanweisung auf der Grundlage \ndes tatsächlich abgegebenen Produkts.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution",
      "path" : "MedicationDispense.substitution",
      "short" : "Gibt an, ob im Rahmen der Abgabe eine Substitution vorgenommen wurde oder nicht. \nWenn nichts angegeben ist, wurde keine Substitution vorgenommen.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.detectedIssue",
      "path" : "MedicationDispense.detectedIssue",
      "short" : "Referenenz auf DetectedIssue Ressource, daher keine Verwendung in durchgeführter Abgabe.",
      "max" : "0"
    },
    {
      "id" : "MedicationDispense.eventHistory",
      "path" : "MedicationDispense.eventHistory",
      "short" : "Bezeichnet eine Liste von Provenance-Ressourcen, die verschiedene relevante Versionen \ndieser Ressource dokumentieren. Verwendung prüfen.",
      "max" : "0"
    }]
  }
}

```
