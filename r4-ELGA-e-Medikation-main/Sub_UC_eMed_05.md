# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Medikationsplan lesen (UC_eMed_05) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Medikationsplan lesen (UC_eMed_05)**

## ​Technische Use Cases für Medikationsplan lesen (UC_eMed_05)

#### Sub_UC_eMed_06_01 - Medikationsplan lesen

Ein berechtigter GDA (siehe [Rollen und Berechtigungen](actors.md#rollen-und-berechtigungen)) kann den Medikationsplan eines ELGA-Teilnehmers lesen.

Ein ELGA-Teilnehmer kann seinen Medikationsplan über das Zugangsportal einsehen.

Für den lesenden Zugriff werden zwei Zugriffsarten unterschieden:

* **Plan-History-Read** zum Abruf der aktuellen oder historischer Versionen eines persistierten Medikationsplans.
* **Plan-Read** zum Abruf eines für die nachfolgende Bearbeitung aufbereiteten Medikationsplans. Hierfür wird die Custom Operation [$plan-read](OperationDefinition-AtEmed.List.Planread.md) verwendet.

#### Plan-History-Read

Beim Plan-History-Read stellt die Fachanwendung das **aktuelle oder historische** [persistierte Medikationsplan-Collection-Bundle](design_choices.md#persistiertes-medikationsplan-collection-bundle) einschließlich aller referenzierten Ressourcen **unverändert** bereit.

##### Ablauf

1. Der GDA führt ein**GET**auf das[persistierte Medikationsplan-Collection-Bundle](design_choices.md#persistiertes-medikationsplan-collection-bundle)aus.
1. Die Fachanwendung prüft, ob bereits ein Medikationsplan existiert.
1. Existiert**kein Medikationsplan**, wird ein**leeres Ergebnis**zurückgegeben.
1. Existiert ein Medikationsplan, wird das zuletzt persistierte Medikationsplan-Collection-Bundle zurückgeliefert.
Das**Collection Bundle**enthält:

* die List-Ressource des Medikationsplans 

* alle referenzierten Ressourcen vollständig (inline).

Beim Plan-History-Read erfolgt **keine Änderung** am Medikationsplan durch die Fachanwendung. Insbesondere werden keine Inhalte, Statusinformationen oder Kennzeichnungen (Flags) verändert. 
 Der Zugriff dient ausschließlich der Anzeige bzw. Informationsabfrage von aktuellen bzw. historischen Planversionen.

##### Sequenzdiagramm Plan-History-Read

#### Plan-Read

Plan-Read dient dem **Abruf eines Medikationsplans** in einem für die Bearbeitung durch den GDA **aufbereiteten Zustand**.

Die Operation wird über die Custom Operation [$plan-read](OperationDefinition-AtEmed.List.Planread.md) ausgeführt.

##### Ablauf

1. Der Client führt einen**POST**[$plan-read](OperationDefinition-AtEmed.List.Planread.md)aus.
1. Die Fachanwendung prüft, ob bereits ein Medikationsplan für den Patienten existiert.
1. Existiert**kein Medikationsplan**, wird dieser gemäß[Sub_UC_06_01 - Initial erstellter Medikationsplan](Sub_UC_eMed_06.md#sub_uc_06_01---initial-erstellter-medikationsplan)initial erstellt und
1. es wird ein leerer Medikationsplan mit**List.emptyReason = notstarted**zurückgeliefert.
1. Existiert bereits ein[persistiertes Medikationsplan-Collection-Bundle](design_choices.md#persistiertes-medikationsplan-collection-bundle), erzeugt die Fachanwendung daraus ein[Auslieferungs-Medikationsplan-Collection-Bundle](design_choices.md#auslieferungs-medikationsplan-collection-bundle). Dabei werden folgende Transformationen durchgeführt:

* **List.entry.flag = new** und **changed** werden auf **unchanged** gesetzt.
* Einträge mit **List.entry.flag = removed** werden aus der **List.entry** entfernt.
* Wurden sämtliche Einträge entfernt, wird **List.emptyReason = nilknown** gesetzt.
* Einträge mit beendetem Behandlungszeitraum bleiben erhalten. 

1. Die Fachanwendung liefert das[Auslieferungs-Medikationsplan-Collection-Bundle](design_choices.md#auslieferungs-medikationsplan-collection-bundle)zurück. Dieses enthält:

* den HTTP **ETag** für [Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)
* die **List**-Ressource
* sämtliche referenzierten Ressourcen vollständig (inline).


1. Der GDA bearbeitet den zurückgegebenen Medikationsplan.

##### Custom Operations

[$plan-read](OperationDefinition-AtEmed.List.Planread.md)

##### Sequenzdiagramm Plan-Read

