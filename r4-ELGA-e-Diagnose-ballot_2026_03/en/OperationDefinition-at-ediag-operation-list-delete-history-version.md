# e-Diagnose Operation $delete-history-version - ELGA e-Diagnose R4 v0.1.0

## OperationDefinition: e-Diagnose Operation $delete-history-version 

### Wer ruft diese Operation in welchem Zusammenhang auf?

Möchte der ELGA-Teilnehmer eine Version einer Summary-Liste aus der e-Diagnose Fachanwendung löschen, muss diese Operation ausgeführt werden.

### Anwendungskontext

Die Teilnehmerrechte können – abgesehen vom Widerspruch über die ELGA-Widerspruchstelle (WIST) und der Unterstützung durch die ELGA-Ombudsstelle (OBST) – ausschließlich über das Zugangsportal gemäß § 23 Abs. 1 GTelG 2012 ausgeübt werden.

### Voraussetzung für den Aufruf

* Es sind Versionen der Summary-Liste vorhanden, die gelöscht werden können.

### Detaillierte Business-Logik

1. Die Version einer Summary-Liste wird anhand der übergebenen`versionId`aus der e-Diagnose Fachanwendung gelöscht.
1. Wurde die letzte Version einer Summary-Liste gelöscht, erstellt die e-Diagnose Fachanwendung automatisch eine neue Summary-Liste mit`List.emptyReason=nilknown`. Als Autor (`List.source`) der Summary-Liste wird der Patient dokumentiert.

### Validierung / Fehlerbehandlung

* Die zu löschende Version der Summary-Liste muss in der e-Diagnose Fachanwendung vorhanden sein.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-list-delete-history-version",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-list-delete-history-version",
  "version" : "0.1.0",
  "name" : "AtDiagListDeleteHistoryVersion",
  "title" : "e-Diagnose Operation $delete-history-version",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-10-20T08:47:52+00:00",
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
  "description" : "Die `$delete-history-version`-Operation löscht eine bestimmte Version einer Summary-Liste aus der e-Diagnose Fachanwendung.",
  "purpose" : "### Wer ruft diese Operation in welchem Zusammenhang auf?\n\nMöchte der ELGA-Teilnehmer eine Version einer Summary-Liste aus der e-Diagnose Fachanwendung löschen, muss diese Operation ausgeführt werden.\n\n### Anwendungskontext\n\nDie Teilnehmerrechte können – abgesehen vom Widerspruch über die ELGA-Widerspruchstelle (WIST) und der Unterstützung durch die ELGA-Ombudsstelle (OBST) – ausschließlich über das Zugangsportal gemäß § 23 Abs. 1 GTelG 2012 ausgeübt werden.\n\n### Voraussetzung für den Aufruf\n\n- Es sind Versionen der Summary-Liste vorhanden, die gelöscht werden können.\n\n### Detaillierte Business-Logik\n\n1. Die Version einer Summary-Liste wird anhand der übergebenen `versionId` aus der e-Diagnose Fachanwendung gelöscht.\n2. Wurde die letzte Version einer Summary-Liste gelöscht, erstellt die e-Diagnose Fachanwendung automatisch eine neue Summary-Liste mit `List.emptyReason=nilknown`. Als Autor (`List.source`) der Summary-Liste wird der Patient dokumentiert.\n\n### Validierung / Fehlerbehandlung\n\n- Die zu löschende Version der Summary-Liste muss in der e-Diagnose Fachanwendung vorhanden sein.",
  "affectsState" : true,
  "code" : "delete-history-version",
  "resource" : ["List"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "versionId",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Die versionId der zu löschenden Version der Summary-Liste.",
    "type" : "id"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Die gelöschte Version der Summary-Liste.",
    "type" : "List",
    "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  }]
}

```
