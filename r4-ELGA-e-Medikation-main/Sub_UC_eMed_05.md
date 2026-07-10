# HL7.AT.FHIR.ELGA.EMED.R4\​Technische Use Cases für Medikationsplan lesen (UC_eMed_05) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Overview Use Case**](overview_use_case.md)
* **​Technische Use Cases für Medikationsplan lesen (UC_eMed_05)**

## ​Technische Use Cases für Medikationsplan lesen (UC_eMed_05)

Ein [berechtigter GDA](actors.md#rollen-und-berechtigungen) kann den Medikationsplan eines ELGA-Teilnehmers lesen.

Ein ELGA-Teilnehmer kann seinen Medikationsplan über das Zugangsportal einsehen.

Für den lesenden Zugriff werden zwei Zugriffsarten unterschieden:

* **Plan-History-Read** zum Abruf historischer, unveränderlicher Versionen eines persistierten Medikationsplans.
* **Plan-Read** zum Abruf des aktuellen Medikationsplans. Hierfür wird aus dem persistierten Medikationsplan ein temporäres Auslieferungs-Medikationsplan-Collection-Bundle erzeugt, das für eine mögliche Bearbeitung aufbereitet ist. Der Abruf erfolgt mit der Custom Operation [$plan-read](OperationDefinition-AtEmed.List.Planread.md).

#### Sub_UC_eMed_05_01 - Historische Medikationsplanversion lesen (Plan-History-Read)

Beim Plan-History-Read stellt die Fachanwendung eine [persistierte Version des Medikationsplan-Collection-Bundles](design_choices.md#persistiertes-medikationsplan-collection-bundle) einschließlich aller referenzierten Ressourcen **unverändert** bereit.

##### Ablauf

1. Der Client führt einen**POST**$plan-history-read aus.
1. Die Fachanwendung prüft, ob Medikationspläne[persistierte Medikationsplan-Collection-Bundles](design_choices.md#persistiertes-medikationsplan-collection-bundle)entsprechend den Suchparametern existieren.
1. Existieren ein oder mehrere Medikationsplan-Collection-Bundles, werden diese als Bundle (type=searchset) zurückgeliefert. Jedes**Medikationsplan-Collection-Bundle**enthält:

* die List-Ressource des Medikationsplans 

* alle referenzierten Ressourcen vollständig (inline).

1. Existiert**kein**Medikationsplan-Collection-Bundle, wird ein**leeres Bundle**(type=searchset) zurückgegeben.
1. Im Fehlerfall erfolgt eine entsprechende Meldung an den Client.

Beim Plan-History-Read erfolgt **keine Änderung** der Medikationspläne durch die Fachanwendung. Insbesondere werden keine Inhalte, Statusinformationen oder Kennzeichnungen (Flags) verändert. 
 Der Zugriff dient ausschließlich der Anzeige bzw. Informationsabfrage persistierter Medikationsplanversionen.

##### Custom Operations

**$plan-history-read**: in Arbeit.

##### Sequenzdiagramm

###### Beispiele für Zugriffe mittels Suchparameter

* **Aktuelle Planversion** mit dem Suchparameter Patient abrufen: GET [base]/Bundle?type=collection&_count=1&_sort=-timestamp&list.subject={bPK-GH}
* **Alle Planversionen** mit dem Suchparameter Patient abrufen: GET [base]/Bundle?type=collection&_sort=-timestamp&list.subject={bPK-GH}
* Abfrage aller **historischen Medikationsplan-Versionen** eines Patienten, die nach dem angegebenen Datum persistiert wurden und Plan-Einträge enthalten, die als **storniert, beendet oder abgesetzt** gekennzeichnet sind: GET [base]/Bundle?type=collection&_sort=-timestamp&timestamp=ge2025-01-01&list.subject={bPK-GH}&list.entry.flag=removed

#### Sub_UC_eMed_05_02 - Aktuellen Medikationsplan lesen (Plan-Read)

Plan-Read dient dem **Abruf des Medikationsplans** in einem für die Bearbeitung durch den GDA **aufbereiteten Zustand**. Hierfür erzeugt die Fachanwendung aus dem zuletzt persistierten Medikationsplan ein Auslieferungs-Medikationsplan-Collection-Bundle. Der Abruf erfolgt über die Custom Operation [$plan-read](OperationDefinition-AtEmed.List.Planread.md).

##### Ablauf

1. Der Client führt einen**POST**[$plan-read](OperationDefinition-AtEmed.List.Planread.md)aus.
1. Die Fachanwendung prüft, ob bereits ein Medikationsplan für den Patienten existiert.
1. Existiert dieser ([persistiertes Medikationsplan-Collection-Bundle](design_choices.md#persistiertes-medikationsplan-collection-bundle)) und ist nicht leer (nicht mit einem emptyReason gekennzeichnet), wird daraus ein**Auslieferungs-Medikationsplan-Collection-Bundle**erzeugt. Dabei werden folgende Transformationen durchgeführt:
* **List.entry.flag = new** und **changed** werden auf **unchanged** gesetzt.
* Einträge mit **List.entry.flag = removed** werden aus der **List.entry** und aus dem Bundle entfernt.
* Einträge mit abgelaufenem Behandlungszeitraum bleiben erhalten.
* Das persistierte Medikationsplan-Collection-Bundle bleibt unverändert.

1. Die Fachanwendung prüft, ob nach dem Entfernen aller mit**removed**gekennzeichneten Listeneinträge noch Planeinträge vorhanden sind.
1. Sind noch Einträge vorhanden, liefert die Fachanwendung das[Auslieferungs-Medikationsplan-Collection-Bundle](design_choices.md#auslieferungs-medikationsplan-collection-bundle)zurück. Dieses enthält:
* den HTTP **ETag** der zugrunde liegenden persistierten Version für [Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)
* die **List**-Ressource mit sämtlichen referenzierten Ressourcen vollständig (inline)

1. Wurden sämtliche Einträge entfernt, wird**List.emptyReason = nilknown**gesetzt und das[Auslieferungs-Medikationsplan-Collection-Bundle](design_choices.md#auslieferungs-medikationsplan-collection-bundle)mit einer leeren Liste**List.emptyReason = nilknown**zurückgeliefert.
1. Wurde ein leerer Medikationsplan persistiert (**List.emptyReason = nilknown**) (siehe[Sub_UC_eMed_06_02 - Leerer Medikationsplan (keine Medikation)](Sub_UC_eMed_06.md#sub_uc_emed_06_02---leerer-medikationsplan-keine-medikation)) oder nach derm initialen Abruf keine Planänderung vorgenommen (**List.emptyReason = notstarted**), ist keine Transformation erforderlich und das erzeugte[Auslieferungs-Medikationsplan-Collection-Bundle](design_choices.md#auslieferungs-medikationsplan-collection-bundle)wird unverändert inkl.**ETag**zurückgeliefert.
1. Existiert**kein Medikationsplan**, wird dieser gemäß[Sub_UC_eMed_05_03 - Initial erstellter Medikationsplan](Sub_UC_eMed_05.md#sub_uc_emed_05_03---initial-erstellter-medikationsplan)automatisch initial erstellt.

Nachfolgend kann der Medikationsplan vom GDA bearbeitet werden und ein Plan-Write erfolgen.

##### Custom Operations

[$plan-read](OperationDefinition-AtEmed.List.Planread.md)

##### Sequenzdiagramm

#### Sub_UC_eMed_05_03 - Initial erstellter Medikationsplan

Die initiale Erstellung eines Medikationsplans erfolgt ausschließlich durch die e-Medikation-Fachanwendung. Sie wird ausgelöst, wenn im Rahmen eines erstmaligen Aufrufs von [$plan-read](OperationDefinition-AtEmed.List.PlanRead.md) noch kein Medikationsplan für den ELGA-Teilnehmer existiert.

Der dabei erzeugte initiale Medikationsplan besitzt den Wert **List.emptyReason = notstarted**. Dieser kennzeichnet ausschließlich den **Initialzustand** des Medikationsplans. Er bedeutet, dass bisher noch keine Medikationsplaneinträge erfasst wurden, trifft jedoch keine Aussage darüber, ob der Patient Medikamente einnimmt.

Die Initialisierung kann sowohl durch ein GDA-System als auch durch den ELGA-Teilnehmer über das Portal ausgelöst werden, indem erstmals ein **$plan-read** aufgerufen wird.

##### Ablauf

1. Ein Client führt für einen ELGA-Teilnehmer erstmalig ein**POST**[$plan-read](OperationDefinition-AtEmed.List.Planread.md)aus.
1. Die Fachanwendung prüft, ob bereits ein Medikationsplan für den Patienten existiert.
1. Existiert noch kein persistierter Medikationsplan, erstellt die Fachanwendung ein persistiertes Medikationsplan-Collection-Bundle mit:
* Die enthaltene **List** besitzt den Wert **emptyReason = notstarted**.
* einem leerem List.entry

1. Das erzeugte Medikationsplan-Collection-Bundle wird als initialer Medikationsplan persistiert.
1. Für das Plan-Read erzeugt die Fachanwendung daraus ein Auslieferungs-Medikationsplan-Collection-Bundle.
1. Dieses wird mit demselben**List.emptyReason = notstarted**sowie dem zugehörigen ETag an den Client zurückgeliefert.

##### Sequenzdiagramm

##### Relevante Elemente (List)

```
AtElgaEmedListMedikationsplan
    identifier: von der Fachanwendung übermittelt (Integritätsprüfung) 
    status: current
    mode: working
    date: Datum der Erstellung durch die Fachanwendung
    source: Intitiale Erstellung durch die Fachanwendung
    emptyReason: notstarted    // noch keine Medikationsplaneinträge erfasst

```

