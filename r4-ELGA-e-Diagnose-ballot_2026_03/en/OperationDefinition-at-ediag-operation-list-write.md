# e-Diagnose Operation $write - ELGA e-Diagnose R4 v0.1.0

## OperationDefinition: e-Diagnose Operation $write 

### Wer ruft diese Operation in welchem Zusammenhang auf?

Möchte der GDA die Summary-Liste für eine bestimmte Art von Einträgen (Diagnosen, Prozeduren, Allergien) aktualisieren (Einträge werden hinzugefügt/entfernt) oder möchte der GDA die Reihenfolge der Einträge ändern, so muss diese Operation ausgeführt werden.

### Voraussetzung für den Aufruf

* Der GDA hat durch einen [vorangegangenen Abruf](use_case_read.md#aktuelle-summary-liste-abrufen) die aktuelle `versionId` der Summary-Liste ermittelt. Diese muss beim Aufruf dieser Operation als `If-Match`-Header mitgeschickt werden.

### Detaillierte Business-Logik

1. Als`List.subject`wird durch die e-Diagnose Fachanwendung der Patient dokumentiert.
1. Als`List.source`wird durch die e-Diagnose Fachanwendung der GDA, der die Änderung durchführt, dokumentiert.
1. Als`List.date`wird durch die e-Diagnose Fachanwendung das Datum und die Uhrzeit der Änderung dokumentiert.
1. Nach erfolgreicher Validierung wird die Summary-Liste gespeichert.

### Validierung / Fehlerbehandlung

* Die übermittelte List-Ressource wird laut Profil geprüft.
* Der übermittelte `If-Match`-Header stimmt mit der `versionId` der Ressource am Server überein.
* Für die List-Ressource gilt außerdem `entry.item.empty() implies emptyReason.coding.exists(system='http://terminology.hl7.org/CodeSystem/list-empty-reason' and code='nilknown')`.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-list-write",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-list-write",
  "version" : "0.1.0",
  "name" : "AtDiagListWrite",
  "title" : "e-Diagnose Operation $write",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-10-27T15:15:47+00:00",
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
  "description" : "Die `$write`-Operation wird aufgerufen, wenn eine Summary-Liste geschrieben wird.",
  "purpose" : "### Wer ruft diese Operation in welchem Zusammenhang auf?\n\nMöchte der GDA die Summary-Liste für eine bestimmte Art von Einträgen (Diagnosen, Prozeduren, Allergien) aktualisieren (Einträge werden hinzugefügt/entfernt)\noder möchte der GDA die Reihenfolge der Einträge ändern, so muss diese Operation ausgeführt werden.\n\n### Voraussetzung für den Aufruf\n\n- Der GDA hat durch einen [vorangegangenen Abruf](use_case_read.html#aktuelle-summary-liste-abrufen) die aktuelle `versionId` der Summary-Liste ermittelt. Diese muss beim Aufruf dieser Operation als `If-Match`-Header mitgeschickt werden.\n\n### Detaillierte Business-Logik\n\n1. Als `List.subject` wird durch die e-Diagnose Fachanwendung der Patient dokumentiert.\n2. Als `List.source` wird  durch die e-Diagnose Fachanwendung der GDA, der die Änderung durchführt, dokumentiert.\n3. Als `List.date` wird durch die e-Diagnose Fachanwendung das Datum und die Uhrzeit der Änderung dokumentiert.\n4. Nach erfolgreicher Validierung wird die Summary-Liste gespeichert.\n\n### Validierung / Fehlerbehandlung\n\n* Die übermittelte List-Ressource wird laut Profil geprüft.\n* Der übermittelte `If-Match`-Header stimmt mit der `versionId` der Ressource am Server überein.\n* Für die List-Ressource gilt außerdem `entry.item.empty() implies emptyReason.coding.exists(system='http://terminology.hl7.org/CodeSystem/list-empty-reason' and code='nilknown')`.",
  "affectsState" : true,
  "code" : "write",
  "resource" : ["List"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "list",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der Parameter dient der Übermittlung der Summary-Liste.",
    "type" : "List",
    "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Die Summary-Liste, die nach erfolgreichem Aufruf der Operation gespeichert wurde.",
    "type" : "List",
    "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  }]
}

```
