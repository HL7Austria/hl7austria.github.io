# e-Med Operation für $plan-read - ELGA e-Medikation (R4) DRAFT v0.1.0

## OperationDefinition: e-Med Operation für $plan-read 

### Operation spezifische Business Logik

Die e-Medikation-Fachanwendung erzeugt aus der aktuellen Version der List-Ressource sowie sämtlichen von ihr referenzierten Ressourcen ein temporäres Medikationsplan-Bundle zur Auslieferung.

Vor der Auslieferung prüft die Fachanwendung den Zustand des Medikationsplans:

1. Existiert noch kein Medikationsplan, wird eine initiale List-Ressource mit List.emptyReason = notstarted erstellt und als erste Version persistiert. Für die Auslieferung erfolgt keine Transformation.
1. Existiert ein Medikationsplan mit Planeinträgen, werden für das Auslieferungs-Bundle folgende Transformationen durchgeführt:
* Planeinträge mit List.entry.flag = new oder changed werden auf unchanged gesetzt.
* Bereits mit List.entry.flag = removed gekennzeichnete Planeinträge werden aus dem ausgelieferten Medikationsplan entfernt.
* Planeinträge mit abgelaufenem Behandlungszeitraum werden mit List.entry.flag = removed gekennzeichnet und weiterhin ausgeliefert, damit der GDA die Medikation weiterverordnen kann. Anderenfalls wird der Planeintrag mit dem nächsten Schreibvorgang entfernt.
* Sind nach der Transformation keine Planeinträge mehr vorhanden, wird List.emptyReason = nilknown gesetzt.

1. Existiert ein leerer Medikationsplan mit List.emptyReason, erfolgt keine Transformation.

Die Transformationen für das temporäre Auslieferungs-Bundle verändern die persistierten Ressourcen nicht. Davon ausgenommen ist die oben beschriebene initiale Erstellung eines noch nicht vorhandenen Medikationsplans.

Das zurückgelieferte Medikationsplan-Bundle enthält die gegebenenfalls transformierte List-Ressource sowie sämtliche direkt oder indirekt von ihr referenzierten Ressourcen. Dazu werden alle Referenzen rekursiv aufgelöst: Enthält eine referenzierte Ressource weitere Referenzen, werden auch die darüber verknüpften Ressourcen in das Bundle aufgenommen.

Auf diese Weise umfasst das Bundle beispielsweise auch die Autoren der MedicationRequest-Ressourcen, auf die die List-Ressource verweist.

Der HTTP-Response-Header ETag enthält den ETag der aktuellen persistierten Version der List-Ressource. Dieser dient dem Optimistic Locking beim nachfolgenden Plan-Write.

Im Fehlerfall wird ein HTTP-Fehlerstatus mit einem OperationOutcome zurückgegeben.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-elga-emed-operation-plan-read",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/at-elga-emed-operation-plan-read",
  "version" : "0.1.0",
  "name" : "AtElgaEmedListPlanRead",
  "title" : "e-Med Operation für $plan-read",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-10-28T21:33:03+00:00",
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
  "description" : "Die $plan-read Operation ruft den aktuellen Medikationsplan eines\nELGA-Teilnehmers in einem für die Bearbeitung durch den GDA aufbereiteten\nZustand ab.",
  "affectsState" : true,
  "code" : "plan-read",
  "resource" : ["List"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *return* Parameter enthält je nach Erfolg der Operation OperationOutcome(s)\nund falls die Operation erfolgreich war auch das temporäre, für die Bearbeitung\naufbereitete Medikationsplan-Bundle. Es enthält die aktuelle, gegebenenfalls\ntransformierte oder initial erzeugte List-Ressource sowie sämtliche von ihr\nreferenzierten Ressourcen.\n\nDer ETag der aktuellen persistierten List-Version wird im HTTP-\nResponse-Header übermittelt und ist kein Ausgabeparameter der Operation.",
    "type" : "Resource",
    "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-plan-read"]
  }]
}

```
