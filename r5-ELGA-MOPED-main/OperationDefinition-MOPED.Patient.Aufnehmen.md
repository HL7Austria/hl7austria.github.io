# ELGA.MOPED\MOPED Patient $aufnehmen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient $aufnehmen**

## OperationDefinition: MOPED Patient $aufnehmen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/OperationDefinition/MOPED.Patient.Aufnehmen | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MOPED_Patient_Aufnehmen |

 
Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird. 

## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.

## Voraussetzungen für den Aufruf

* Es darf keine andere Composition mit der gleichen Kombination aus KH + Aufnahmezahl + Aufnahmedatum geben sonst schlägt die Operation fehl.

## Detaillierte Business-Logik

1. Es wird ein neue Composition Ressource angelegt. Darin muss das zuständige KH und der zuständige LGF laut Informationen aus dem**falldaten**Bundle befüllt werden:
* **Composition.section:zustaendigesKH.entry** wird mit der Encounter.serviceProvider Referenz aus dem Encounter befüllt

* **Composition.section:zustaendigerLGF.entry** wird über die OrganizationAffiliation des Encounter.serviceProvider ermittelt und befüllt

1. Der Rest der Operation wird an $update delegiert und nach der dort definierten Logik ausgeführt.
1. Berechnung der Datensatz-ID:
* Die Datensatz-ID wird aus der Aufnahmezahl lt. LKF Dokumentation als SHA-256 Hash berechnet und in das entsprechende Identifier-Slice des MopedEncounter eingefügt.

## Annahmen an das BeS

* Es wurde vorab geprüft, ob das `system` des Parameters **falldaten**.encounter.identifier dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle aufgenommen werden können.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MOPED.Patient.Aufnehmen",
  "url" : "https://elga.moped.at/OperationDefinition/MOPED.Patient.Aufnehmen",
  "version" : "0.1.0",
  "name" : "MOPED_Patient_Aufnehmen",
  "title" : "MOPED Patient $aufnehmen",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-04-29T07:28:34+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Die $aufnehmen Operation wird aufgerufen, wenn ein(e) Patient*in in das Krankenhaus aufgenommen wird.",
  "affectsState" : true,
  "code" : "aufnehmen",
  "system" : true,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "falldaten",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *falldaten* Parameter beinhaltet die nötigen Elemente um die Details zum Fall zu beschreiben die bei Patientenaufnahme bekannt sind, inklusive Patient, Encounter und Aufnahmediagnose.",
    "type" : "Bundle",
    "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedAufnehmenBundleKH"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation. Wenn der *modus* Parameter auf 'freigeben' gesetzt war, ist die Operation erfolgreich, wenn die Daten validiert wurden und abgespeichert werden konnten. Wenn der *modus* Parameter auf *zwischenspeichern* gesetzt war, ist für eine erfolgreiche Durchführung der Operation lediglich ein erfolgreiches Speichern vorausgesetzt. Schlägt die Operation fehl, wird eine entsprechende Meldung ausgegeben.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
  }]
}

```
