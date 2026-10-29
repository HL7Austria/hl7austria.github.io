# ​Technische Use Cases für Medikationsplan lesen (UC_eMed_01) - ELGA e-Medikation (R4) DRAFT v0.1.0

## ​Technische Use Cases für Medikationsplan lesen (UC_eMed_01)

Dieser technische Use Case beschreibt den lesenden Zugriff berechtigter Akteure auf den Medikationsplan eines ELGA-Teilnehmers.

Für ELGA-Teilnehmer und deren Vertretungen erfolgt der lesende Zugriff über das ELGA-Zugangsportal. Für die übrigen Akteure erfolgt der lesende Zugriff über die e-Medikations-Schnittstelle des jeweiligen GDA-Systems.

Der lesende Zugriff umfasst:

* den Abruf des **aktuellen Medikationsplans**, der für eine mögliche Bearbeitung aufbereitet ist ([Plan-Read](Sub_UC_eMed_01.md#sub_uc_emed_01_01---aktuellen-medikationsplan-lesen-plan-read)),
* die Suche und den Abruf **aktueller Planeinträge** ([Planentry-Search](Sub_UC_eMed_01.md#sub_uc_emed_01_02---medikationsplaneinträge-suchen-planentry-search)) sowie
* die Suche und den Abruf (History-Search):

ℹ️ Die fachlichen Anforderungen dieses Use Cases werden im
[UC_eMed_01 Medikationsplan lesen](https://dev.elga.gv.at/apis/emed/use-cases/assets/pdfs/UC_eMed_01%20Medikationsplan%20lesen.pdf)beschrieben.

Es gelten die dort festgelegten Vorbedingungen. Alle Zugriffe werden protokolliert.

### Sub_UC_eMed_01_01 - Aktuellen Medikationsplan lesen (Plan-Read)

**Plan-Read** dient dem Abruf des aktuellen Medikationsplans in einem für die Bearbeitung durch den GDA **aufbereiteten Zustand**.

Hierfür erzeugt die Fachanwendung aus der aktuellen Version der [List](StructureDefinition-at-elga-emed-list-medikationsplan.md)-Ressource sowie den von ihr referenzierten Ressourcen ein **temporäres** [Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) zur Auslieferung. Der Abruf erfolgt über die Custom Operation [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md).

#### Ablauf

1. Der Client führt**POST**[$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md)aus.
1. Die Fachanwendung prüft den Zustand des Medikationsplans (siehe Kapitel[Prüfung des Planzustands und Erzeugung des Medikationsplan-Bundles](Sub_UC_eMed_01.md#prüfung-des-planzustands-und-erzeugung-des-medikationsplan-bundles)) und erzeugt ein[Medikationsplan-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplan.md)zur Auslieferung.
1. Die Fachanwendung liefert das Medikationsplan-Bundle zurück. Dieses enthält im HTTP-Header den****ETag****der aktuellen Version der**List**-Ressource für das[**Optimistic Locking**](https://hl7.org/fhir/http.html#concurrency)(siehe auch[Designentscheidungen - Optimistisches Locking mit ETags](design_choices.md#optimistisches-locking-mit-etags)).

Nachfolgend kann der Medikationsplan vom GDA bearbeitet und mittels [Plan-Write](Sub_UC_eMed_02.md#sub_uc_emed_02_01---medikationsplan-schreiben-plan-write) gespeichert werden.

 ![](plantuml/UC_eMed_01_01.svg) 

#### Custom Operations

* **POST** [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md)

#### Prüfung des Planzustands und Erzeugung des Medikationsplan-Bundles

Nach Eingang eines **$plan-read** prüft die Fachanwendung den Zustand des Medikationsplans und führt entsprechende Schritte durch, bevor ein Medikationsplan-Bundle zur Auslieferung erstellt wird (siehe [Ablauf](Sub_UC_eMed_01.md#ablauf)).

Die **persistierten Ressourcen am Server** werden durch die Transformationen für das Auslieferungs-Bundle **nicht verändert**.

#### Ablauf

A) **Es existiert kein Medikationsplan**:

* Es wird ein initialer Medikationsplan erstellt (siehe [Sub_UC_eMed_01_01_01 - Initial erstellter Medikationsplan](Sub_UC_eMed_01.md#sub_uc_emed_01_01_01---initial-erstellter-medikationsplan)) mit einer [List](StructureDefinition-at-elga-emed-list-medikationsplan.md)-Ressource und **List.emptyReason = notstarted**.
* Es erfolgt keine Transformation.

B) **Es existiert ein Medikationsplan mit Planeinträgen**:

* Folgende Transformationen werden durchgeführt (siehe [Status des List.entry.flags im Medikationsplan](workflowmanagement.md#status-des-listentryflags-im-medikationsplan)): 
* Neue oder geänderte Planeinträge (**List.entry.flag = new** oder **changed**) werden auf ****unchanged**** gesetzt.
* Stornierte und beendete Planeinträge mit **List.entry.flag = **removed**** werden aus dem Medikationsplan **entfernt**.
* Planeinträge mit **abgelaufenem Behandlungszeitraum** werden mit **List.entry.flag = removed** gekennzeichnet und werden mit **ausgeliefert**, um dem GDA die Möglichkeit zu geben, das Arzneimittel weiterzuverordnen. Anderenfalls nimmt der GDA zur Kenntnis, dass der Planeintrag mit seinem nächsten Schreibvorgang entfernt wird.
* Sind nach der Transformation keine Planeinträge mehr vorhanden, wird **List.emptyReason = nilknown** gesetzt.
 

C) **Es existiert ein leerer Medikationsplan** (mit einem [List.emptyReason](ValueSet-ElgaListEmptyReasonVS.md)).

* Es erfolgt keine Transformation.

D) Das **Medikationsplan-Bundle** ist zur Auslieferung bereit. Es enthält:

* die (ggf. transformierte) [List](StructureDefinition-at-elga-emed-list-medikationsplan.md)-Ressource,
* sämtliche von der **List** referenzierten Ressourcen

 ![](plantuml/UC_eMed_01_01_plancheck.svg) 

#### Sub_UC_eMed_01_01_01 - Initial erstellter Medikationsplan

Die initiale Erstellung eines Medikationsplans erfolgt ausschließlich durch die e-Medikation-Fachanwendung. Sie wird ausgelöst, wenn im Rahmen eines erstmaligen Aufrufs von [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) noch kein Medikationsplan für den ELGA-Teilnehmer existiert.

Der dabei erzeugte initiale Medikationsplan besitzt den Wert **List.emptyReason = notstarted**. Dieser kennzeichnet ausschließlich den **Initialzustand** des Medikationsplans und bedeutet, dass bisher noch keine Medikationsplaneinträge erfasst wurden. Er trifft jedoch keine Aussage darüber, ob der Patient Medikamente einnimmt.

Die Initialisierung kann sowohl durch ein GDA-System als auch durch den ELGA-Teilnehmer über das Zugangsportal ausgelöst werden.

#### Ablauf

1. Ein Client führt**POST**[$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md)aus.
1. Die Fachanwendung prüft, ob bereits ein Medikationsplan existiert.
1. Existiert noch kein Medikationsplan, erstellt die Fachanwendung initial eine List-Ressource mit**emptyReason = notstarted**.
1. Die List-Ressource wird als erste Version persistiert.
1. Für das**Plan-Read**erzeugt die Fachanwendung daraus ein temporäres Medikationsplan-Bundle zur Auslieferung.
1. Dieses wird mit**List.emptyReason = notstarted**sowie dem zugehörigen ETag zurückgeliefert.

 ![](plantuml/UC_eMed_01_01_01.svg) 

### Sub_UC_eMed_01_02 - Medikationsplaneinträge suchen (Planentry-Search)

**Planentry-Search** dient der gezielten Suche nach **aktuellen** Planeinträgen. Als Planeintrag gilt eine im Medikationsplan referenzierte **MedicationRequest**-Ressource mit **category = "Planeintrag"**.

#### Suchparameter

* **Medikation** (PZN, Arzneimittelname oder Wirkstoff)
* **Einnahmezeitraum**
* **Erstellungszeitpunkt**
* [**Status**](ValueSet-PlaneintragStatusVS.md)
* [**StatusReason**](ValueSet-AtElgaEmedValueSetPlaneintragStatusReasonVS.md) 

 Ballot-Feedback: Gibt es zusätzliche Suchparameter die unterstützt werden sollen? [Suchparameter Überblick](interactions.md#suchparameter-überblick) 
 

Die gefundenen Planeinträge können als Ausgangspunkt für weitere Abfragen verwendet werden:

* **Geplante Abgaben** ([Prescription-Search](Sub_UC_eMed_03.md#sub_uc_emed_03_01---geplante-abgaben-lesen-prescription-search))
* **Durchgeführte Abgaben** ([Dispense-Search](Sub_UC_eMed_03.md#sub_uc_emed_03_02---durchgeführte-abgaben-lesen-dispense-search))

#### Ablauf

1. Der Client führt einen**GET**-Request auf den Planentry-Search-Endpunkt mit den gewünschten Suchparametern aus (**MedicationRequest**mit**category = "Planeintrag"**).
1. Die Fachanwendung ermittelt anhand der Suchparameter die passenden Medikationsplaneinträge.
1. Die Fachanwendung liefert die Suchergebnisse als Bundle vom Typ**searchset**zurück.
1. Werden keine passenden Medikationsplaneinträge gefunden, enthält das zurückgelieferte Searchset Bundle keine Einträge.
1. Im Fehlerfall wird ein entsprechender**OperationOutcome**zurückgegeben.

 ![](plantuml/UC_eMed_01_02.svg) 

### Sub_UC_eMed_01_03 Suche und den Abruf historischer Versionen (History-Search)

Diese umfasst die Suche und den Abruf historischer Medikationsplan- und Planeintragsversionen und eine Verzeichnissuche der Medikationspanversionen. Die History-Search ermöglicht die Suche und den Abruf gespeicherter Versionen des Medikationsplans und seiner Planeinträge. Dabei werden drei Abfragen unterschieden:

* Plan-History-Search liefert Medikationsplanversionen einschließlich der jeweils referenzierten Ressourcenversionen.
* Planentry-History-Search liefert aktuelle und historische Versionen einzelner Medikationsplaneinträge.
* Plan-History-Directory-Search liefert ein Verzeichnis der Medikationsplanversionen in Form der jeweiligen List-Ressourcen, ohne die referenzierten Ressourcen mitzuliefern. Dies ermöglicht einen Überblick über die verfügbaren Versionen, bevor ausgewählte Medikationsplanversionen einschließlich aller referenzierten Ressourcen abgerufen werden.

Die Abfragen dienen der Nachvollziehbarkeit der Historie gespeicherter Medikationsinformationen. Anders als bei Plan-Read werden die zurückgegebenen Versionen nicht für eine anschließende Bearbeitung aufbereitet, sondern unverändert ausgeliefert. Die hiefür verwendete Operation [$history-search](Sub_UC_eMed_01.md#custom-operations-1) und die entsprechenden Inputparameter werden in den folgenden Use Cases beschrieben.

#### Sub_UC_eMed_01_03_01 - Historische Medikationsplanversionen suchen (Plan-History-Search)

Bei der **Plan-History-Search** löst die Fachanwendung historische Versionen des Medikationsplans aus Versionen der List-Ressource sowie den von diesen referenzierten Ressourcenversionen auf und liefert diese unverändert aus. Alle diese Ressourcen sind Teil des resultierenden Searchset-Bundles.

Bei der **Plan-History-Search** erfolgt **keine Änderung** der Medikationspläne durch die Fachanwendung. Insbesondere werden keine Inhalte, Statusinformationen oder Kennzeichnungen (Flags) verändert. Der Zugriff dient ausschließlich der Anzeige bzw. Informationsabfrage persistierter historischer Medikationsplanversionen.

##### Inputparameter

Der Abruf erfolgt mittels POST [$history-search](Sub_UC_eMed_01.md#custom-operations-1) auf den **List**-Ressourcen-Endpunkt unter Angabe geeigneter Inputparameter:

* **Zeitraum der Erfassung** von Medikationsplanversionen
* **Medikation** (PZN, Arzneimittelname oder Wirkstoff)
* **Einnahmezeitraum** einer Medikation
* **Planeintragsid ohne Version**: Abrufen aller Medikationsplanversionen, die diesen Planeintrag enthalten
* **Planeintragsid mit Version**: Abrufen der Medikationsplanversionen, die genau diese Planeintragsversion enthalten.
* **StatusReason eines im Plan einthaltenen Planeintrags**: Abrufen aller Planversionen, mit Planeinträgen mit bestimmtem [statusReason](ValueSet-AtElgaEmedValueSetPlaneintragStatusReasonVS.md). 

 Ballot-Feedback: Gibt es zusätzliche Suchparameter die unterstützt werden sollen? [Suchparameter Überblick](interactions.md#suchparameter-überblick) 
 

#### Sub_UC_eMed_01_03_02 - Historische Planeintragsversionen suchen (Planentry-History-Search)

**Planentry-History-Search** ermöglicht den Zugriff auf historische Versionen von Medikationsplaneinträgen und somit die Nachverfolgung von Änderungen, beispielsweise hinsichtlich Präparat, Dosierung oder Einnahmeanweisung.

#### Inputparameter

Der Abruf erfolgt mittels POST [$history-search](Sub_UC_eMed_01.md#custom-operations-1) auf den **MedicationRequest**-Ressourcen-Endpunkt unter Angabe geeigneter Inputparameter:

* **MedicationRequest.category** = "Planteintrag"
* **Medikation** (PZN, Arzneimittelname oder Wirkstoff)
* **Einnahmezeitraum**
* **Erstellungszeitpunkt**
* [**Status**](ValueSet-PlaneintragStatusVS.md)
* [**StatusReason**](ValueSet-AtElgaEmedValueSetPlaneintragStatusReasonVS.md) 

 Ballot-Feedback: Gibt es zusätzliche Suchparameter die unterstützt werden sollen? [Suchparameter Überblick](interactions.md#suchparameter-überblick) 
 

Die gefundenen Planeinträge können als Ausgangspunkt für weitere Abfragen verwendet werden, um jene Ressourcen zu ermittelnt, die genau auf diese Planeintragsversion referenzieren:

* die zugehörigen Medikationsplanversionen ([Plan-History-Search](Sub_UC_eMed_01.md#sub_uc_emed_01_03_01---historische-medikationsplanversionen-suchen-plan-history-search))

#### Sub_UC_eMed_01_03_03 - Verzeichnis der Medikationspanversionen lesen (Plan-History-Directory-Search)

Plan-History-Directory-Search ermöglicht die Suche nach Medikationsplanversionen und liefert ein Verzeichnis der gefundenen Versionen. Im Unterschied zur Plan-History-Search enthält das zurückgegebene searchset-Bundle ausschließlich die jeweiligen List-Ressourcen, ohne die darin referenzierten Ressourcen mitzuliefern. Die List-Ressourcen werden unverändert ausgeliefert.

Die Abfrage dient dazu, einen Überblick über die verfügbaren Medikationsplanversionen zu erhalten. Ausgewählte Versionen können anschließend mittels Plan-History-Search einschließlich der jeweils referenzierten Ressourcenversionen abgerufen werden.

#### Ablauf

1. Der Client führt POST[$history-search](Sub_UC_eMed_01.md#custom-operations-1)mit geeigneten Inputparametern aus.
1. Die Fachanwendung ermittelt anhand dieser die historischen Ressourcen-Versionen und löst die darin referenzierten Versionen auf.
1. Die Fachanwendung liefert das Ergebnis in einem Bundle vom Typ searchset zurück.
1. Werden keine passenden Ressourcen-Versionen gefunden, enthält das zurückgelieferte**searchset**Bundle keine Einträge.
1. Im Fehlerfall wird ein entsprechender**OperationOutcome**zurückgegeben.

 ![](plantuml/UC_eMed_01_03.svg) 

#### Custom Operations

 Offene Punkte: 
$history-search: in Arbeit. 

