# Designentscheidungen - ELGA e-Medikation (R4) DRAFT v0.1.0

## Designentscheidungen

### Übersicht der Relevanten Ressourcen

Die folgende Abbildung veranschaulicht den Aufbau der e-Medikation und das Zusammenspiel der verwendeten FHIR-Ressourcen.

Zentrale Ressource ist der Medikationsplan (**List**), der die einzelnen Planeinträge (**MedicationRequest**) referenziert. Auf Basis der Planeinträge werden **Geplante Abgaben** (MedicationRequest) erstellt. Diese bilden die Grundlage für die Dokumentation der tatsächlich erfolgten **Durchgeführten Abgaben** (MedicationDispense).

Die Fachanwendung persistiert ausschließlich die einzelnen FHIR-Ressourcen. Historische Zustände werden durch versionierte Ressourcen und versionierte Referenzen abgebildet. Medikationsplan-Bundles dienen ausschließlich der Auslieferung eines Medikationsplans und werden bei Bedarf aus den entsprechenden Ressourcenversionen erzeugt.

 ![](Uebersicht_e_Medikation_Ressourcen.svg)

#### Medikationsplan: AtElgaEmedListMedikationsplan (List)

Der Medikationsplan eines ELGA-Teilnehmers wird durch eine [List](StructureDefinition-at-elga-emed-list-medikationsplan.md)-Ressource abgebildet, welche keinen oder mehrere Planeinträge referenziert. Jeder Planeintrag ist im **List.entry.flag** durch einen Status gekennzeichnet (siehe [Status der List.entry.flag (Medikationsplan)](workflowmanagement.md#status-des-listentryflags-im-medikationsplan)).

Die List-Ressource bildet gemeinsam mit den referenzierten Ressourcenversionen die Grundlage für den Aufbau des aktuellen bzw. eines historischen Medikationsplans.

#### Medikationsplaneintrag bzw. Planeintrag: AtElgaEmedMedicationRequestPlaneintrag (MedicationRequest)

Ein Planeintrag wird durch eine [MedicationRequest](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)-Ressource der Kategorie "Planeintrag" abgebildet. Die Ressource enthält genau ein verordnetes Arzneimittel mit der zugehörigen Dosierung.

Der Planeintrag kann in weiterer Folge als Grundlage für die Erstellung einer **Geplanten Abgabe** dienen.

In Abhängigkeit des zugehörigen List.entry.flags im Medikationsplan kann der Planeintrag unterschiedliche Status einnehmen (siehe [Status des MedicationRequests im Planeintrag](workflowmanagement.md#status-des-medikationsplaneintrags-medicationrequest)).

Abhängig vom List.entry.flag kann der Planeintrag nur bestimmte Statuswerte annehmen (siehe [Konsistenzregeln zwischen List.entry.flags und MedicationRequest-Status](workflowmanagement.md#konsistenzregeln-zwischen-listentryflags-und-medicationrequest-status)).

#### Geplante Abgabe: AtElgaEmedMedicationRequestGeplanteAbgabe (MedicationRequest)

Eine geplante Ausgabe eines Arzneimittels wird durch eine **MedicationRequest**-Ressource der Kategorie **Geplante Abgabe** abgebildet und dient der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation, siehe [Profil **Geplante Abgabe**](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md).

#### Durchgeführte Abgabe: AtElgaEmedMedicationDispenseDurchgefuehrteAbgabe (MedicationDispense)

Die tatsächliche Ausgabe eines Arzneimittels wird mit einer **Durchgeführte Abgaben** in einer **MedicationDispense**-Ressource dokumentiert und dient der Nachvollziehbarkeit der abgegebenen Arzneimittel in der e-Medikation, siehe [Profil Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md).

### Fachliche Designentscheidungen

#### Abhängigkeit von Planeintrag und Geplanter Abgabe

Gemäß Fachkonzept müssen Arzneimittel und Dosierung einer **Geplanten Abgabe** zum Zeitpunkt ihrer Erstellung mit dem zugehörigen Planeintrag identisch sein (siehe [Sub_UC_eMed_04_01](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write)). Dies umfasst insbesondere das verordnete Arzneimittel einschließlich seiner PZN, beziehungsweise die dokumentierten Wirkstoffe, sowie die Dosierungsangaben. Enthält der Planeintrag nur Wirkstoffe, muss der Planeintrag zuvor angepasst und ein Präparat ausgewählt werden, bevor eine **Geplante Abgabe** erstellt werden kann.

Ziel dieser Vorgabe ist es, die Erstellung einer **Geplanten Abgabe** verbindlich mit der Aktualisierung des Medikationsplans zu verknüpfen. Der verordnende GDA soll die vorgesehene Medikation nicht ausschließlich in der **Geplanten Abgabe** dokumentieren, sondern erforderliche Änderungen auch im zugehörigen Planeintrag vornehmen. Der Medikationsplan soll dadurch die zum Zeitpunkt der Verordnung vorgesehene Medikation widerspiegeln. Eine neue **Geplante Abgabe** kann somit nicht auf Grundlage eines inhaltlich abweichenden Planeintrags erstellt werden.

Die Übereinstimmung wird ausschließlich zum Zeitpunkt der Erstellung der **Geplanten Abgabe** gefordert. Eine spätere Änderung des Planeintrags macht eine bereits erstellte **Geplante Abgabe** nicht automatisch ungültig. Da `basedOn` unversioniert ist, verweist diese Referenz auf den jeweils aktuellen Zustand des Planeintrags und hält nicht fest, welche Planeintragsversion bei der Erstellung der **Geplanten Abgabe** zugrunde lag.

**Vergleichsumfang**

| | |
| :--- | :--- |
| Arzneimittel (`medication`) | identisch |
| Dosierung (`dosageInstruction`) | identisch |
| Einnahmezeitraum (`effectiveDosePeriod`) | nicht identisch; Im Planeintrag kann der Beginn in der Vergangenheit liegen (z.B. bei Nacherfassung oder Dauermedikation seit Monaten). |
| Status, Kategorie, Ersteller,`dispenseRequest.*` | nicht vergleichbar |

**Abgrenzung der drei Ebenen**

| | |
| :--- | :--- |
| Planeintrag ↔**Geplante Abgabe** | Arzneimittel und Dosierung identisch (bei Erstellung) |
| **Geplante Abgabe**↔**Durchgeführte Abgabe** | Abweichungen möglich, dokumentiert in der**Durchgeführten Abgabe**(z.B. verordnetes Präparat nicht lieferbar, andere Packungsgröße o.ä.) |

* Wie bleibt der Medikationsplan verständlich, wenn das abgegebene Arzneimittel vom Präparat im Planeintrag abweicht?

* Soll `basedOn` versioniert werden, um die geprüfte Planeintrag-Version nachvollziehen zu können?

#### Automatische Statusänderungen der beim Plan-Read ausgelieferten Ressourcen

**Plan-Read** liefert den Medikationsplan in einem für die Bearbeitung aufbereiteten Zustand. Die Fachanwendung erzeugt dazu aus der aktuellen **List**-Version ein **temporäres** Bundle. Die persistierten Ressourcen bleiben unverändert:

* **List.entry.flag** **new** und **changed** werden als **unchanged** ausgeliefert.
* Einträge mit **removed** werden nicht ausgeliefert. Bleibt kein Eintrag übrig, wird **List.emptyReason = nilknown** gesetzt.
* Abgelaufene Planeinträge werden mit **removed** und **stopped** ausgeliefert.

**Plan-History-Search** liefert dagegen alle Inhalte, Status und Flags unverändert.

*  
* Soll der GDA den aufbereiteten Zustand erhalten (aktuell), welcher den Schreibvorgang vereinfacht, bei dem er aber den Originalstatus der persistierten Ressourcen nicht sieht, oder den persistierten Originalzustand?
 

#### Gruppierung von Medikamenten

Manche Arzneimittel müssen gemeinsam oder in einem festgelegten zeitlichen Abstand zueinander eingenommen werden. Beispiele sind die gleichzeitige Einnahme mehrerer Arzneimittel im Rahmen einer Eradikationstherapie oder ein Abstand von mehreren Stunden zwischen Levothyroxin und Eisen- bzw. Calciumpräparaten. Es ist zu entscheiden, ob und wie dieser Zusammenhang zwischen mehreren Planeinträgen im Medikationsplan abgebildet wird.

**Aktueller Stand**

Jedes Arzneimittel wird als eigenständiger Planeintrag (**MedicationRequest**) dokumentiert. Eine strukturierte Verknüpfung zwischen Planeinträgen ist derzeit nicht vorgesehen:

* Auf Ebene des Medikationsplans gibt es keinen Freitext (`List.note` ist auf 0..0 eingeschränkt).
* `MedicationRequest.groupIdentifier` ist im Planeintrag ausgeschlossen. In der **Geplanten Abgabe** bildet der `MedicationRequest.groupIdentifier` als **e-Med GroupIdentifier** die Rezept-Klammer. Der Basisstandard definiert [groupIdentifier](https://hl7.org/fhir/R4/medicationrequest-definitions.html#MedicationRequest.groupIdentifier) außerdem als Kennung für gemeinsam verordnete Requests und nicht für gemeinsam einzunehmende Arzneimittel.
* Die strukturierte Dosierung kann Einnahmezeitpunkte relativ zu Tagesereignissen abbilden, nicht jedoch relativ zur Einnahme eines anderen Arzneimittels.

Ein Hinweis zur gemeinsamen bzw. zeitlich versetzten Einnahme muss daher als Freitext in jeden betroffenen Planeintrag übernommen werden.

**Mögliche Abbildungsvarianten**

| | |
| :--- | :--- |
| A: Freitext in jedem Planeintrag (aktuell) | Der Hinweis wird in jedem betroffenen Planeintrag als Freitext dokumentiert, z.B. in`dosageInstruction.patientInstruction`oder`note`(siehe[Textdarstellungen und ergänzende Hinweise](dosages.md#textdarstellungen-und-ergänzende-hinweise)). |
| B: Übergeordneter**MedicationRequest** | Ein zusätzlicher**MedicationRequest**enthält die gemeinsame Dosierungsangabe. Die zugehörigen Planeinträge verweisen über[basedOn](https://hl7.org/fhir/R4/medicationrequest-definitions.html#MedicationRequest.basedOn)auf diesen. |

**Vorteile von A:**

* Es sind keine zusätzlichen Ressourcen, Referenzen oder Konsistenzregeln erforderlich.
* Wird der Hinweis in `dosageInstruction.patientInstruction` dokumentiert, ist er Teil der Dosierung und wird damit auch in die **Geplante Abgabe** übernommen (siehe [Abhängigkeit von Planeintrag und Geplanter Abgabe](#abhängigkeit-von-planeintrag-und-geplanter-abgabe)).

**Nachteile von A:**

* Der Hinweis wird redundant in mehreren Planeinträgen geführt und ist nicht maschinenlesbar. Die Zusammengehörigkeit kann nicht als Gruppe dargestellt werden.
* Wird einer der Planeinträge geändert oder abgesetzt, müssen die Hinweise in den übrigen Planeinträgen manuell angepasst werden. Anderenfalls verweist ein Hinweis auf ein nicht mehr eingenommenes Arzneimittel.
* Eine Änderung des Hinweises erzeugt neue Versionen aller betroffenen Planeinträge.

**Vorteile von B:**

* Die gemeinsame Dosierungsangabe wird nur einmal dokumentiert.
* Die Zusammengehörigkeit ist strukturiert und maschinenlesbar abgebildet.

**Nachteile von B:**

* [MedicationRequest.medication[x]](https://hl7.org/fhir/R4/medicationrequest-definitions.html#MedicationRequest.medication_x_) ist im Basisstandard verpflichtend (1..1). Ein übergeordneter **MedicationRequest** ohne eigenes Arzneimittel ist damit nicht ohne Hilfskonstrukt abbildbar.
* Die Semantik von `basedOn` („Plan oder Request, der durch diesen Request ganz oder teilweise erfüllt wird“) passt nur bedingt zu einer gemeinsamen Einnahmeanweisung.
* Es sind zusätzliche Regeln erforderlich: Wird der übergeordnete **MedicationRequest** als eigener Eintrag im Medikationsplan geführt? Wie hängen Status und **List.entry.flag** zusammen? Welche Dosierung gilt für den Abgleich mit der **Geplanten Abgabe**?
* Die strukturierte Eingabe und Darstellung ist für Client-Anwendungen aufwändig.

* Ist die Abbildung als Freitext in den einzelnen Planeinträgen (Variante A) für die Praxis ausreichend oder wird eine strukturierte Gruppierung benötigt? Welche konkreten Anwendungsfälle gibt es und wie häufig treten diese auf?
* Falls Variante A beibehalten wird: Soll der Hinweis in `dosageInstruction.patientInstruction` (Teil der Dosierung, wird in die *Geplante Abgabe* übernommen) oder in `note` dokumentiert werden?
* Falls eine strukturierte Gruppierung benötigt wird: Ist Variante B oder eine andere Alternative zu bevorzugen? Können Client-Anwendungen die Eingabe und Darstellung einer solchen Gruppierung umsetzen?
* Wie soll mit einer Gruppierung umgegangen werden, wenn einer der zugehörigen Planeinträge geändert, abgesetzt oder durch ELGA-Teilnehmer:innen gelöscht wird?

### Technische Designentscheidungen

#### Kennzeichnung der relevanten Elemente

Die in der e-Medikation relevanten Elemente werden nach einem Whitelisting-Ansatz festgelegt. Hierzu werden Elemente, die fachlich verarbeitet, gespeichert und in weiterer Folge für die Anzeige bereitgestellt werden sollen, in den Profilen explizit mit dem **Must Support Flag MS** gekennzeichnet.

Bei der Profilierung gelten folgende Regeln:

* Elemente, die von der zentralen Fachanwendung fachlich verarbeitet werden sollen, MÜSSEN mit Must Support gekennzeichnet werden.
* Elemente, deren Verwendung aufgrund einer fachlichen Entscheidung ausgeschlossen wird, MÜSSEN auf die Kardinalität 0..0 eingeschränkt werden. Der Ausschluss MUSS fachlich begründet und dokumentiert werden.
* Liegt keine fachliche Entscheidung zur Verwendung eines Elements vor, bleibt dessen Definition unverändert. Insbesondere wird ein Element nicht allein deshalb auf 0..0 eingeschränkt, weil es derzeit nicht verwendet wird. Ohne Must-Support-Kennzeichnung wird es jedoch nicht in die fachliche Verarbeitung aufgenommen.
* Für Modifier-Elemente MUSS eine explizite Entscheidung über deren Zulässigkeit und Verarbeitung getroffen und dokumentiert werden. Sie DÜRFEN NICHT ohne fachliche Bewertung der allgemeinen Regel für nicht unterstützte Elemente unterliegen.

Damit wird zwischen dem expliziten Ausschluss eines Elements und seiner fehlenden Unterstützung unterschieden: Ein auf 0..0 eingeschränktes Element DARF NICHT übermittelt werden. Ein anderweitig zulässiges Element ohne Must-Support-Kennzeichnung kann übermittelt werden, wird jedoch gemäß den nachfolgend beschriebenen Regeln ignoriert.

##### Kardinalitäten

Die in den anzuwendenden Profilen festgelegten Kardinalitäten MÜSSEN eingehalten werden. Fehlt ein verpflichtendes Element oder wird die zulässige maximale Anzahl von Wiederholungen überschritten, MUSS die Operation abgelehnt werden. Dies gilt insbesondere für die Übermittlung von Elementen, deren Kardinalität auf 0..0 eingeschränkt wurde. Die Ablehnung MUSS durch ein entsprechendes OperationOutcome begründet werden.

##### Must Support Profilierung

Die Must-Support-Kennzeichnung legt in diesem Implementierungsleitfaden fest, welche Elemente die zentrale Fachanwendung fachlich unterstützt. Übermittelte Werte dieser Elemente MÜSSEN entsprechend den jeweiligen fachlichen Regeln verarbeitet, gespeichert und für eine nachgelagerte Anzeige bereitgestellt werden.

Die Kennzeichnung begründet für sich allein keine Pflicht, ein Element in jeder Instanz zu übermitteln. Ob ein Element vorhanden sein muss, ergibt sich aus seiner Mindestkardinalität sowie aus gegebenenfalls zusätzlich festgelegten Bedingungen und Invarianten.

Bei der Kennzeichnung komplexer Elemente wird eindeutig festgelegt, welche ihrer Unterelemente unterstützt werden. Aus der Must-Support-Kennzeichnung eines übergeordneten Elements wird keine pauschale Unterstützung sämtlicher Unterelemente abgeleitet.

Ergänzend könnten Obligations eingesetzt werden, um die mit der Kennzeichnung verbundenen Pflichten für die beteiligten Akteure präziser festzulegen. International werden Obligations von vielen Ländern für unterschiedliche Use Cases eingesetzt.
 Sollen Obligations eingesetzt werden, um die MS Markierungen noch aussagekräftiger zu machen? Feedback aus der Community ist erwünscht.

##### Serverhalten bei Elementen ohne MS Markierung

Werden Elemente ohne Must-Support-Kennzeichnung übermittelt, MUSS die zentrale Fachanwendung diese Elemente ignorieren. Sie werden nicht fachlich verarbeitet, gespeichert oder für die Anzeige im Portal bereitgestellt.

Die Response MUSS ein OperationOutcome enthalten, das mit `OperationOutcome.issue.severity = information` auf die ignorierten Elemente hinweist. Die Meldung MUSS die betroffenen Elemente eindeutig benennen und deutlich machen, dass deren Inhalte weder verarbeitet noch gespeichert wurden. Die Übermittlung solcher Elemente allein führt nicht zur Ablehnung der Operation.

Diese Regel DARF NICHT verwendet werden, um Profilverletzungen zu tolerieren. Insbesondere MÜSSEN übermittelte Elemente mit der Kardinalität 0..0 zur Ablehnung führen. Für Modifier-Elemente gelten die jeweils explizit festgelegten Entscheidungen.

#### Profile für die Abbildung von Operation In & Output

Die Ressourcen und Bundles unterscheiden sich abhängig davon, ob sie als Eingabe einer schreibenden Operation, als Ergebnis eines Schreibvorgangs oder als Ausgabe einer lesenden Operation verwendet werden. Diese Unterschiede entstehen durch serverseitige Ergänzungen, die Auflösung von Referenzen sowie durch operationsspezifische Transformationen bei der Auslieferung.

Es ist daher zu entscheiden, ob für diese unterschiedlichen Verwendungszwecke eigene Ressourcen- und Bundle-Profile definiert werden sollen oder ob gemeinsame Profile in Verbindung mit ergänzenden Regeln in den jeweiligen OperationDefinitions ausreichen.

##### Unterschiede zwischen Eingabe, persistiertem Zustand und Ausgabe

Bei schreibenden Operationen übermittelt der Client Ressourcen, die durch die zentrale Fachanwendung vor der Persistierung ergänzt und aufbereitet werden. Insbesondere werden serverseitig verwaltete Elemente wie meta.versionId, meta.lastUpdated und die gemäß IG zu erzeugende Narrative (Resource.text) durch die Fachanwendung gesetzt beziehungsweise erzeugt. Die erfolgreiche Schreibantwort enthält hingegen die Ressourcen in ihrem tatsächlich persistierten Zustand einschließlich der serverseitigen Ergänzungen.

Für die Eingabe ist noch festzulegen, ob diese serverseitig verwalteten Elemente ausdrücklich ausgeschlossen werden sollen oder ob bereits vorhandene Werte übermittelt werden dürfen, vom Server jedoch ignoriert beziehungsweise ersetzt werden. Diese Unterscheidung ist insbesondere für Clients relevant, die zuvor gelesene Ressourcen als Grundlage eines nachfolgenden Schreibvorgangs verwenden.

Auch die Darstellung von Referenzen unterscheidet sich zwischen Eingabe und Ausgabe:

* Logische Referenzen über Reference.identifier, beispielsweise auf Patient oder Practitioner, werden beim Schreiben durch die Fachanwendung aufgelöst und durch Referenzen auf die tatsächlich zugeordneten Ressourcen ersetzt.
* Die für Medication vorgesehenen Conditional References (PZN+Displayname) werden serverseitig aufgelöst. Die Medication wird anschließend als enthaltene Ressource (contained) abgebildet. Diese Darstellung wird dann beim Lesen ausgeliefert.

Die für die Eingabe zulässige Darstellung ist damit nicht in allen Fällen mit der persistierten und zurückgegebenen Darstellung identisch.

###### Sonderfall $plan-read

Die Operation **$plan-read** unterscheidet sich von der Rückgabe persistierter Ressourcen, da sie für die Auslieferung einen aufbereiteten Medikationsplan erzeugt. Dabei werden unter anderem Flags angepasst und zum Entfernen markierte Planeinträge aus der ausgelieferten Darstellung entfernt. Diese Transformationen verändern die persistierten Ressourcen nicht.

Für die Profilierung sind somit drei unterschiedliche Darstellungen zu berücksichtigen:

* die vom Client übermittelte Eingabe eines Schreibvorgangs;
* die persistierten Ressourcen und deren Rückgabe nach einem erfolgreichen Schreibvorgang;
* die für **$plan-read** transformierte Auslieferungsdarstellung.

##### Mögliche Ansätze zur Profilierung

Für die Abbildung dieser Unterschiede werden folgende Ansätze zur Diskussion gestellt:

* **Eigene Profile für Eingabe und Ausgabe**: Unterschiede hinsichtlich serverseitig verwalteter Elemente, zulässiger Referenzdarstellungen und erforderlicher Inhalte werden durch getrennte Ressourcenprofile beschrieben. Eigene Bundle-Profile legen zusätzlich die Struktur und Zusammensetzung der jeweiligen Eingabe und Ausgabe fest.
* **Gemeinsame Profile mit operationsspezifischen Regeln**: Gemeinsame Ressourcenprofile beschreiben die fachlichen Inhalte. Abweichende Anforderungen für Eingabe und Ausgabe werden in den jeweiligen OperationDefinitions und der zugehörigen Business-Logik festgelegt. Hierzu gehören insbesondere das Verhalten bei übermittelten serverseitigen Metadaten sowie die Auflösung und Umwandlung von Referenzen.

##### Ausgabeprofile für weitere lesende Interaktionen

Zusätzlich ist zu entscheiden, ob für lesende Interaktionen, beispielsweise GET von **Geplanten Abgaben** oder **$history-search**, eigene Ausgabe-Bundle-Profile definiert werden sollen.

Zur Diskussion steht, ob die Festlegung auf ein Bundle vom Typ **searchset** zusammen mit der Beschreibung der Operation ausreicht oder ob die erwartete Antwortstruktur weiter eingeschränkt werden soll. Ein eigenes Ausgabeprofil würde die strukturellen Erwartungen an die Antwort explizit beschreiben. Operationsspezifische Regeln wären weiterhin erforderlich, um die Auswahl der zurückgegebenen Ressourcen und gegebenenfalls durchzuführende Transformationen festzulegen.

* Sind getrennte Ressourcenprofile für die Eingabe schreibender Operationen und die Rückgabe persistierter Ressourcen erforderlich oder reichen gemeinsame Profile mit operationsspezifischen Regeln aus?
* Sollen serverseitig verwaltete Elemente wie `meta.versionId`, `meta.lastUpdated` und `Resource.text` in Schreibanfragen ausgeschlossen werden, oder sollen vorhandene Werte akzeptiert und serverseitig ignoriert beziehungsweise ersetzt werden?
* Benötigt die transformierte Ausgabe von `$plan-read` eigene Ressourcenprofile, oder reichen ein spezifisches Bundle-Profil und die dokumentierte Transformationslogik aus?
* Sollen für weitere lesende Interaktionen wie z.B. `$history-search` und `GET [base]/MedicationDispense` eigene Ausgabe-Bundle-Profile definiert werden, die über die Festlegung von `Bundle.type = searchset` hinausgehen?

#### Versionierung

Die Fachanwendung speichert alle e-Medikation-Ressourcen versioniert: den Medikationsplan (**List**), die Planeinträge und **Geplanten Abgaben** (**MedicationRequest**) sowie die **Durchgeführten Abgaben** (**MedicationDispense**). Sie unterstützt damit die vollständige Versionierung gemäß [Support for Versions](https://hl7.org/fhir/R4/http.html#versions): `meta.versionId` wird gepflegt und frühere Versionen sind für MedicationRequests und für die List Ressource über $history abrufbar (siehe [Transaktionen](interactions.md)). Enthaltene Ressourcen (**contained**), wie die **Medication**, werden gemeinsam mit der sie enthaltenden Ressource versioniert.

Historische Versionen können von GDAs nicht bearbeitet werden. Änderungen erfolgen immer auf Basis der aktuellen Version (siehe [Sub_UC_eMed_02](Sub_UC_eMed_02.md)). Ausgenommen davon ist das Löschen auf Veranlassung von ELGA-Teilnehmer:innen (siehe [Löschen und Stornieren von versionierten Ressourcen](#löschen-und-stornieren-von-versionierten-ressourcen)).

**Entstehung neuer Versionen**

Jedes Update, das zu einer inhaltlichen Änderung einer Ressource führt, erzeugt eine neue Version. Die Fachanwendung vergibt dabei eine neue `meta.versionId` und setzt `meta.lastUpdated` auf den Speicherzeitpunkt. Die Response enthält die neu vergebene Version.

Ist die übermittelte Ressource inhaltlich identisch mit ihrer aktuellen Version, wird keine neue Version erzeugt. Damit wird verhindert, dass wiederholtes Speichern derselben Daten zu einer Vielzahl inhaltsgleicher Versionen führt. Beim Vergleich bleiben die serverseitig verwalteten Elemente `meta.versionId`, `meta.lastUpdated` und die von der Fachanwendung erzeugte Narrative (`Resource.text`) unberücksichtigt. Die Response enthält in diesem Fall die unveränderte aktuelle Version.

Da `List.date` bei jedem Plan-Write von der Fachanwendung gesetzt wird, führt jeder erfolgreiche Plan-Write zu einer neuen Medikationsplanversion. Dies gilt auch dann, wenn alle Planeinträge unverändert übernommen werden (**List.entry.flag = unchanged**), etwa um die Reihenfolge der bestehenden Medikation zu verändern.

**Versionskennung**

Die `meta.versionId` wird ausschließlich von der Fachanwendung vergeben. Vom Client übermittelte Werte für `meta.versionId` und `meta.lastUpdated` werden gemäß [update](https://hl7.org/fhir/R4/http.html#update) ignoriert.

Der Basisstandard erlaubt dem Server, die Versionskennung in beliebiger Form zu erzeugen, solange sie dem Datentyp **id** entspricht und innerhalb der Versionen derselben Ressource eindeutig ist (siehe [Managing Resource Contention](https://hl7.org/fhir/R4/http.html#concurrency)). Clients DÜRFEN die `meta.versionId` daher nur als opake Kennung verwenden und keine Reihenfolge oder Anzahl von Versionen daraus ableiten. Die zeitliche Reihenfolge der Versionen ergibt sich aus den jeweiligen Datumselementen der Ressourcen.

Die aktuelle Version einer Ressource wird über [read](https://hl7.org/fhir/R4/http.html#read) bzw. für den Medikationsplan über [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md) ermittelt. Historische Medikationsplanversionen sind inhaltlich nicht als solche gekennzeichnet, da `List.status` fix **current** ist. Ob eine abgerufene Version die aktuelle ist, kann nur durch Vergleich mit der aktuellen Version festgestellt werden.

* Welche Elemente sollen beim Vergleich auf inhaltliche Gleichheit unberücksichtigt bleiben?
* Wie soll die Fachanwendung reagieren, wenn ein Planeintrag mit *List.entry.flag = changed* übermittelt wird, der inhaltlich identisch mit der aktuellen Version ist: Ablehnen oder ohne neue Planeintragsversion als *unchanged* behandeln?
* Soll ein Plan-Write, bei dem alle Planeinträge unverändert bleiben, eine neue Medikationsplanversion erzeugen (aktuell) oder nur dann, wenn sich Planeinträge ändern?
* Soll es eine zusätzliche Kennung in den Daten des Medikationsplans geben, um die aktuelle Version des Medikationsplans zu markieren? Aus den Ergebnissen einer historischen Suche kann nicht abgeleitet werden, ob die aktuelle Version der Liste enthalten ist. Derzeit kann die aktuelle Version nur über plan-read ermittelt werden. 

##### Versionierte Referenzen

Eine Referenz kann [versionsspezifisch](https://hl7.org/fhir/R4/references.html#versions) auf eine bestimmte Ressourcenversion verweisen (`[type]/[id]/_history/[vid]`) oder unversioniert auf die jeweils aktuelle Version (`[type]/[id]`). In diesem Implementierungsleitfaden werden die Referenzen wie folgt verwendet:

| | | |
| :--- | :--- | :--- |
| Medikationsplan → Planeintrag (`List.entry.item`) | ja | Jede Medikationsplanversion muss den zum Zeitpunkt der Speicherung gültigen Stand der Planeinträge wiedergeben. Nur so kann ein historischer Medikationsplan rekonstruiert werden. |
| **Geplante Abgabe**→ Planeintrag (`basedOn`) | nein | Die**Geplante Abgabe**verweist immer auf den aktuellen Planeintrag (siehe[Sub_UC_eMed_04_01](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write)). |
| **Durchgeführte Abgabe**→ Planeintrag bzw.**Geplante Abgabe**(`authorizingPrescription`) | nein | Die**Durchgeführte Abgabe**verweist immer auf die aktuellen Versionen (siehe[Sub_UC_eMed_03](Sub_UC_eMed_03.md)). |
| Ressourcen → Patient und GDA (z.B.`subject`,`requester`,`List.source`,`performer`) | nein | Die Identität ist über die logische Referenz (bPK-GH bzw. OID) dauerhaft festgelegt (siehe[Informationen über GDA und Patienten](#informationen-über-gda-und-patienten)). |
| Planeintrag bzw. Abgabe →**Medication** | – | Die**Medication**ist als**contained**Ressource enthalten und wird mit der enthaltenden Ressource versioniert. |

**Erzeugung der versionierten Referenzen im Medikationsplan**

Bei der Verarbeitung einer [Transaction](https://hl7.org/fhir/R4/http.html#trules) ersetzt der Server Referenzen auf neu angelegte Ressourcen (**urn:uuid**) durch die vergebenen Ressourcen-IDs. Bereits versionsspezifische Referenzen bleiben versionsspezifisch. Unversionierte Referenzen werden im jedoch nicht in versionierte Referenzen umgewandelt.

Der Client kennt die Version eines neuen oder geänderten Planeintrags erst nach dem Plan-Write. Daher wird im [Medikationsplan-Transaction-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md) jede Referenz in `List.entry.item` verpflichtend mit der Extension [resolve-as-version-specific](https://hl7.org/fhir/extensions/StructureDefinition-resolve-as-version-specific.html) (`valueBoolean = true`) gekennzeichnet. Die Extension stammt aus dem FHIR Extensions Pack und ist auch für R4 anwendbar. Die Fachanwendung ersetzt die gekennzeichneten Referenzen durch versionierte Referenzen auf jene Planeintragsversion, die nach Abschluss der Transaktion aktuell ist:

* **neue Planeinträge** (POST): Die **urn:uuid** wird durch die Referenz auf die neu angelegte Version ersetzt.
* **geänderte bzw. zu entfernende Planeinträge** (PUT): Die Referenz verweist auf die durch die Transaktion entstandene Version.
* **unveränderte Planeinträge** (nur referenziert, nicht im Bundle enthalten): Die Referenz verweist auf die aktuelle, unveränderte Version.

In der persistierten **List**-Ressource ist die Extension nicht mehr enthalten. Ein Beispiel zeigen das [Transaction Bundle](Bundle-At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx.md) und das zugehörige [plan-write Response Bundle](Bundle-At-Emed-Journey-01-02-Bundle-plan-write-response.md).

**Unversionierte Referenzen der Abgaben auf Planeinträge**

Die Referenzen von **Geplanten Abgaben** und **Durchgeführten Abgaben** auf Planeinträge sind nicht versioniert. Eine spätere Änderung des Planeintrags ist damit über die Abgabe sichtbar, es ist jedoch nicht nachvollziehbar, auf welcher Planeintragsversion die Abgabe beruht.

| | |
| :--- | :--- |
| A: unversioniert (aktuell) | Die Referenz verweist immer auf die aktuelle Version des Planeintrags bzw. der**Geplanten Abgabe**. |
| B: versioniert | Die Fachanwendung löst die Referenz beim Speichern der Abgabe auf die zu diesem Zeitpunkt aktuelle Version auf (analog zu`List.entry.item`). |

**Vorteile von A:**

* Die Abgabe zeigt immer den aktuellen Zustand des Planeintrags, z.B. ob dieser inzwischen pausiert oder abgesetzt wurde.

**Nachteile von A:**

* Es ist nicht nachvollziehbar, welche Planeintragsversion der Erstellung der **Geplanten Abgabe** zugrunde lag. Die bei der Erstellung geforderte Übereinstimmung von Arzneimittel und Dosierung kann im Nachhinein nicht überprüft werden.
* Ressourcen, die auf eine bestimmte Planeintragsversion verweisen, können nicht gezielt gesucht werden (siehe [Sub_UC_eMed_01](Sub_UC_eMed_01.md)).

**Vorteile von B:**

* Der Zusammenhang zwischen Abgabe und Planeintragsversion ist eindeutig dokumentiert.
* Die aktuelle Version bleibt ermittelbar, da sich die unversionierte Referenz durch Weglassen von `/_history/[vid]` ergibt.

**Nachteile von B:**

* Beim Löschen von Planeintragsversionen müssen auch die Referenzen aus **Geplanten Abgaben** und **Durchgeführten Abgaben** berücksichtigt werden.
* Clients müssen die aktuelle Version des Planeintrags gesondert abrufen, um dessen aktuellen Zustand anzuzeigen.
* Suchparameter auf diese Referenzen müssen auch versionierte Referenzwerte berücksichtigen.

**Referenzen auf Patient und GDA**

Referenzen auf Patient, Practitioner, PractitionerRole und Organization sind nicht versioniert. Die Identität des Patienten bzw. GDA ist über die logische Referenz dauerhaft festgelegt. Die angezeigten Stammdaten (z.B. Name, Fachrichtung, Organisation) entsprechen jedoch dem aktuellen Stand der jeweiligen Ressource und nicht zwingend dem Stand zum Zeitpunkt der Dokumentation.

* Sollen die Referenzen von *Geplanten Abgaben* und *Durchgeführten Abgaben* auf Planeinträge versioniert werden oder soll der Verweis weiterhin auf die jeweils aktuelle Version zeigen? (siehe auch [Abhängigkeit von Planeintrag und Geplanter Abgabe](#abhängigkeit-von-planeintrag-und-geplanter-abgabe))
* Wie soll die Fachanwendung reagieren, wenn ein Client im Medikationsplan-Transaction-Bundle bereits eine versionierte Referenz in `List.entry.item` übermittelt: Ablehnen, oder akzeptieren, sofern sie auf die aktuelle Version verweist?

#### ID-Management

Die logische ID (`Resource.id`) aller persistierten Ressourcen wird ausschließlich von der Fachanwendung vergeben. Sie bleibt über alle Versionen einer Ressource unverändert und ist bei der Auslieferung durch die Fachanwendung immer befüllt.

Die Ressourcen werden in Transaction Bundles übermittelt. Dabei gelten die [Transaction Processing Rules](https://hl7.org/fhir/R4/http.html#trules) sowie die Regeln zur [Auflösung von Referenzen in Bundles](https://hl7.org/fhir/R4/bundle.html#references):

| | | |
| :--- | :--- | :--- |
| `Bundle.entry.fullUrl` | temporäre, vom Client erzeugte**urn:uuid** | absolute URL der bestehenden Ressource (`[base]/[type]/[id]`) |
| `Bundle.entry.request.url` | `[type]` | `[type]/[id]` |
| `Resource.id` | optional, wird ignoriert | verpflichtend, identisch mit der`[id]`in`request.url` |
| `meta.versionId`,`meta.lastUpdated` | werden ignoriert | werden ignoriert |

**Neue Ressourcen (POST)**

Neue Ressourcen erhalten im Transaction Bundle eine temporäre **urn:uuid** als `fullUrl`. Andere Ressourcen im selben Bundle verweisen über diese **urn:uuid** auf die neue Ressource. Die Fachanwendung vergibt während der Verarbeitung die IDs und ersetzt alle Referenzen auf die temporären **urn:uuid** durch Referenzen auf die angelegten Ressourcen. Wo dies festgelegt ist, werden die Referenzen dabei durch versionierte Referenzen ersetzt (siehe [Versionierte Referenzen](#versionierte-referenzen)).

**Bestehende Ressourcen (PUT)**

Bei einer Änderung referenzieren `fullUrl` und `request.url` die bestehende Ressource über ihre logische ID. Diese ist dem Client aus dem vorangegangenen Lesezugriff bekannt, z.B. aus dem Medikationsplan-Bundle des [$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md). Die Ressource erhält eine neue `meta.versionId`, sofern sich ihr Inhalt geändert hat (siehe [Versionierung](#versionierung)). Gemäß [update](https://hl7.org/fhir/R4/http.html#update) MUSS die Operation abgelehnt werden, wenn `Resource.id` fehlt oder von der ID in `request.url` abweicht.

Das Anlegen von Ressourcen mit einer vom Client festgelegten ID über PUT ([Update as Create](https://hl7.org/fhir/R4/http.html#upsert)) ist nicht vorgesehen. Ein PUT auf eine nicht vorhandene Ressource wird abgelehnt.

Für die einzelnen Ressourcen ergibt sich daraus:

* **Medikationsplan** (**List**): Pro ELGA-Teilnehmer existiert genau eine Medikationsplan **List**-Ressource (`List.code = http://snomed.info/sct#736378000`). Diese wird von der Fachanwendung angelegt (**List.emptyReason = notstarted**). Clients ändern den Medikationsplan daher immer über PUT.
* **Planeinträge**: neue Planeinträge über POST, geänderte und zu entfernende Planeinträge über PUT im [Medikationsplan-Transaction-Bundle](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md).
* ****Geplante Abgaben** und **Durchgeführte Abgaben****: neue Abgaben über POST im jeweiligen Transaction Bundle. Spätere Änderungen erfolgen über eigene Operations auf die bestehende Ressource (z.B. [$prescription-discard](OperationDefinition-at-elga-emed-operation-prescription-discard.md)).

**Response**

Die Response auf ein Transaction Bundle ist ein Bundle vom Typ **transaction-response**. Für jede Ressource enthält [Bundle.entry.response](https://hl7.org/fhir/R4/bundle-definitions.html#Bundle.entry.response):

* `status`: **201** bei neu angelegten, **200** bei geänderten Ressourcen,
* `location`: die versionierte URL der persistierten Version (`[base]/[type]/[id]/_history/[vid]`), 
* `lastModified`: der Speicherzeitpunkt.

Ein Beispiel zeigt das [plan-write Response Bundle](Bundle-At-Emed-Journey-01-02-Bundle-plan-write-response.md).

* Kann die `Resource.id` bei neuen Ressourcen (POST) befüllt sein und wird von der Fachanwendung ignoriert oder darf das Element gar nicht vorhanden sein?

#### Optimistisches Locking mit ETags

Der Basisstandard beschreibt unter [Managing Resource Contention](https://hl7.org/fhir/R4/http.html#concurrency) ein Verfahren, um gleichzeitige Schreibinteraktionen zu verhindern: Der Server liefert mit einer Ressource einen ETag. Bei einem Update sendet der Client diesen Wert im Header `If-Match` zurück. Weicht er von der aktuellen Version ab, lehnt der Server das Update ab (**Optimistic Locking**).

**Anwendung auf den Medikationsplan**

In der e-Medikation schützt der ETag den Medikationsplan als Ganzes. Er bezieht sich auf die aktuelle persistierte Version der **List**-Ressource. Planeinträge können nur gemeinsam mit dem Medikationsplan über Plan-Write geändert werden und jeder Plan-Write erzeugt eine neue **List**-Version. Der ETag der **List** erkennt damit auch zwischenzeitliche Änderungen an den Planeinträgen.

Der Ablauf ist in [Sub_UC_eMed_01_01](Sub_UC_eMed_01.md#sub_uc_emed_01_01---aktuellen-medikationsplan-lesen-plan-read) und [Sub_UC_eMed_02_01](Sub_UC_eMed_02.md#sub_uc_emed_02_01---medikationsplan-schreiben-plan-write) beschrieben:

1. Die Fachanwendung liefert bei[$plan-read](OperationDefinition-at-elga-emed-operation-plan-read.md)im HTTP-Response-Header den ETag der aktuellen persistierten**List**-Version.
1. Der Client übermittelt diesen ETag beim[$plan-write](OperationDefinition-at-elga-emed-operation-plan-write.md)im HTTP-Request-Header`If-Match`.
1. Die Fachanwendung vergleicht den übermittelten ETag mit dem ETag der aktuell persistierten**List**-Version:
* Stimmen beide überein, wurde der Medikationsplan seit dem $plan-read nicht geändert und der Schreibvorgang wird verarbeitet.
* Stimmen sie nicht überein, wird der Schreibvorgang mit einem OperationOutcome abgelehnt. Der Client muss den Medikationsplan erneut mittels $plan-read abrufen und seine Änderungen auf Basis der aktuellen Version durchführen.
* Fehlt der Header `If-Match`, wird der Schreibvorgang ebenfalls abgelehnt.

Abweichend vom Basisstandard wird der ETag hier für das Ergebnis einer Operation (Plan-Read) geliefert und bezieht sich auf die darin enthaltene **List**-Ressource. Im Basisstandard wird für Ressourcen in einem Bundle kein gemeinsamer ETag geliefert, sondern `Bundle.request.ifMatch` und `Bundle.response.etag` verwendet. Zu beachten ist außerdem, dass die bei $plan-read ausgelieferte **List** transformiert ist (siehe [Automatische Statusänderungen](#automatische-statusänderungen-der-beim-plan-read-ausgelieferten-ressourcen)). Der ETag bezieht sich dennoch auf die persistierte Version.

**Wert des ETags**

Die Bildung des ETags ist implementierungsabhängig. Clients DÜRFEN den Wert nur unverändert zurücksenden und nicht interpretieren. Die Verwendung der `meta.versionId` der **List** ist eine mögliche Variante, die dem Basisstandard entspricht.

**Alternative: ETag im Transaction Bundle**

Anstelle des HTTP-Headers kann der ETag im Medikationsplan-Transaction-Bundle über [Bundle.entry.request.ifMatch](https://hl7.org/fhir/R4/bundle-definitions.html#Bundle.entry.request.ifMatch) des **List**-Eintrags übermittelt werden. Damit wäre das Bundle in sich vollständig. Ein zusätzlicher HTTP-Header für die Custom Operation wäre nicht erforderlich.

#### Informationen über GDA und Patienten

Stammdaten zu Gesundheitsdiensteanbietern (GDA) und Patienten werden ausschließlich von der e-Medikation-Fachanwendung, bzw. von den darüberliegenden zentralen Registern, verwaltet. Client-Anwendungen dürfen daher keine eigenen `Patient`-, `Practitioner`-, `PractitionerRole`- oder `Organization`-Ressourcen übermitteln. Es genügt, diese über ihren Identifier als logische Referenz (`Reference.identifier`) anzugeben:

* **GDA:** OID des GDA laut GDA-Index (GDA-I)
* **Patient:** bereichsspezifisches Personenkennzeichen Gesundheit (bPK-GH)

Die e-Medikation-Fachanwendung löst diese Identifier gegen den GDA-I bzw. den Zentralen Patientenindex (ZPI) auf. Bei Bedarf legt sie die zugehörigen Ressourcen an und ergänzt die logischen Referenzen um Referenzen auf diese Ressourcen (`Reference.reference`). Die übermittelten logischen Referenzen (`Reference.identifier`) dürfen dabei nicht ersetzt werden, sondern bleiben unverändert erhalten. Beim Abruf von Daten enthalten die Ressourcen daher sowohl die logischen als auch die aufgelösten Referenzen.

Bei Referenzen, die auf mehrere Ressourcentypen verweisen können (z. B. `requester`, `performer` oder `List.source`), ergibt sich aus dem jewiligen `Reference.identifer.system`, ob es sich um eine OID oder ein bPK-GH handelt. Die e-Medikation-Fachanwendung kann daraus den Identifier eindeutig zuordnen. Verweise auf Einträge (`List.entry.item`) sind hingegen immer Referenzen auf bereits in der e-Medikation-Fachanwendung gespeicherte Ressourcen (`Reference.reference`) oder Ressourcen, welche im TransactionBundle mitgeliefert werden.

Aktuell wird in einer AG des TC FHIR daran gearbeitet, wie die e-Medikation-Fachanwendung die Informationen aus dem GDA-I auf Basis einer OID auf die `Practitioner`-, `PractitionerRole`- und/oder `Organization`-Ressourcen umlegen kann. Die Ergebnisse dieser AG werden in die Implementierung der e-Medikation-Fachanwendung einfließen.

Das folgende Beispiel zeigt denselben Eintrag einmal als übermittelte und einmal als gespeicherte Ressource:

* : **Beispieldateien**
  * Request: [Transaction Bundle](Bundle-At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx.md)
  * Gespeichert: [plan-write Response Bundle](Bundle-At-Emed-Journey-01-02-Bundle-plan-write-response.md)
* : **Beispielfragmente**
  * Request: 
  * Gespeichert: 

#### Befüllung der Narrativen Teile

Für die im IG festgelegten Ressourcen wird die menschenlesbare Darstellung (Resource.text) zentral durch die Fachanwendung erzeugt. Ziel ist eine einheitliche und nachvollziehbare Darstellung der wesentlichen Ressourceninhalte. Die Narrative muss dem jeweils gespeicherten bzw. ausgelieferten Zustand entsprechen und nach serverseitigen Änderungen oder Transformationen entsprechend angepasst werden. Ebenso wird `extension:renderedDosageInstruction` immer durch die Fachanwendung generiert; `Dosage.text` wird bei strukturierten Dosierungen generiert und enthält nur bei der Dosierungskategorie `freitext` die vom GDA erfasste Dosierungsanweisung.

Die Generierung berücksichtigt sowohl strukturierte Angaben als auch Freitextinformationen. Die Narrative ergänzt die strukturierten Daten, ersetzt diese jedoch nicht. Davon zu unterscheiden sind fachlich erfasste Freitexte, beispielsweise ergänzende Hinweise oder eine nicht strukturiert abbildbare Dosierungsanweisung; diese bleiben eigenständige Inhalte und werden bei der Generierung berücksichtigt. Die unterschiedlichen Textfelder und ihr jeweiliger Geltungsbereich sind im Abschnitt [Textdarstellungen und ergänzende Hinweise im Kapitel der Dosierungen](dosages.md#textdarstellungen-und-ergänzende-hinweise) beschrieben.

Der finale Algorithmus für die Generierung der menschenlesbaren Textdarstellungen der einzelnen Ressourcen und Dosierschemata wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt. Feedback aus der Community ist erwünscht.

#### Löschen und Stornieren von versionierten Ressourcen

Dieser Abschnitt beschreibt die zur Diskussion stehenden Konzepte für das Löschen und Stornieren versionierter Ressourcen sowie deren Auswirkungen auf den Medikationsplan und seine Historie. Die beschriebenen Löschvarianten sind bislang nicht im IG umgesetzt. Insbesondere zur Behandlung historischer Ressourcenversionen, zur Referenzintegrität und zur technischen Umsetzbarkeit wird Feedback aus der Community erbeten.

 Das fachliche Stornieren durch einen GDA ist vom Löschen auf Veranlassung von ELGA-Teilnehmer:innen zu unterscheiden.

Beim Stornieren wird ein fachlicher Sachverhalt zurückgenommen beziehungsweise als nicht mehr gültig gekennzeichnet. Die betroffenen Ressourcen bleiben erhalten und es wird nur der **status** geändert, sodass die ursprüngliche Dokumentation und die nachfolgende Stornierung nachvollziehbar bleiben. Die konkrete Abbildung erfolgt entsprechend den für die jeweilige Ressource festgelegten Status- und Workflowregeln.

Das Löschen auf Veranlassung von ELGA-Teilnehmer:innen verfolgt hingegen das Ziel, die betroffenen Inhalte dauerhaft aus dem verfügbaren Datenbestand einschließlich der jeweils betroffenen Historie zu entfernen. Eine reine Statusänderung oder das Ausblenden aus dem aktuellen Medikationsplan reicht dafür nicht aus.

Der genaue Umfang dieser Löschung wird im Rahmen der Teilnehmerrechte festgelegt.

##### Löschen von Medikationsplan und Medikationsplaneinträgen

Für das Löschen sind zwei unterschiedliche Konzepte zu unterscheiden: das **horizontale Löschen von Medikationsplaneinträgen** und das **vertikale Löschen von Medikationsplänen**.

* Horizontales Löschen: Ein bestimmter Medikationsplaneintrag wird über alle Medikationsplanversionen hinweg einschließlich seiner gesamten Versionshistorie gelöscht.
* Vertikales Löschen: Eine bestimmte Medikationsplanversion wird gelöscht. Zusätzlich werden jene Versionen der darin referenzierten Planeinträge gelöscht, die von keiner verbleibenden Medikationsplanversion mehr benötigt werden.

Die Begriffe „horizontal“ und „vertikal“ beschreiben hier den fachlichen Löschumfang und keine eigenständigen FHIR-Interaktionen.

Das horizontale Löschen ermöglicht es, einen bestimmten Medikationsplaneintrag einschließlich seines Verlaufs zu entfernen, ohne zugleich die Dokumentation anderer Medikationen zu verlieren. Stünde ausschließlich das vertikale Löschen zur Verfügung, müssten alle Medikationsplanversionen gelöscht werden, in denen der betreffende Eintrag enthalten ist. Abhängig davon, wie lange dieser Eintrag im Medikationsplan geführt wurde, könnte dies einen erheblichen Teil der Planhistorie betreffen. Dabei würden auch Informationen zu anderen Medikationen entfernt, auf die sich das Löschanliegen nicht bezieht. Das horizontale Löschen soll solche zusätzlichen Informationsverluste möglichst vermeiden.

Das vertikale Löschen setzt hingegen an einem bestimmten dokumentierten Planstand an und nicht am gesamten Verlauf einer einzelnen Medikation. Es ermöglicht, eine ausgewählte Medikationsplanversion zu entfernen, während andere Planversionen und die dafür weiterhin benötigten Planeintragsversionen erhalten bleiben. Beide Konzepte unterscheiden sich somit darin, worauf sich das Löschanliegen bezieht: auf einen einzelnen Eintrag über seinen Verlauf hinweg oder auf einen bestimmten Stand des gesamten Medikationsplans.

![](Löschen_horizontal_vertikal.png)

**Horizontales Löschen von Medikationsplaneinträgen**

Beim horizontalen Löschen wird ein Medikationsplaneintrag (`MedicationRequest`) einschließlich aller Versionen unwiderruflich gelöscht. Der Eintrag ist damit weder in aktuellen noch in historischen Medikationsplanversionen oder über einen direkten Abruf seiner Ressourcenversionen verfügbar.

Der zur Diskussion stehende Ablauf umfasst:

1. Ermitteln aller Versionen der betroffenen MedicationRequest-Ressource.
1. Ermitteln aller aktuellen und historischen List-Versionen, die eine dieser Versionen referenzieren.
1. Entfernen der betroffenen List.entry-Elemente aus diesen Medikationsplanversionen.
1. Kennzeichnen der betroffenen Medikationsplanversionen mit List.extension:PatientModified = true.
1. Dauerhaftes Löschen sämtlicher Versionen der betroffenen MedicationRequest-Ressource.

Das `extension:PatientModified`-Flag kennzeichnet, dass die ursprüngliche Dokumentation des jeweiligen Medikationsplans aufgrund einer durch Teilnehmer:innen veranlassten Löschung nicht mehr vollständig verfügbar ist.

Die übrigen Planeinträge und deren Versionshistorie bleiben von der Löschung unberührt.

Enthält eine betroffene Medikationsplanversion nach der Bereinigung keine Einträge mehr, ist zusätzlich festzulegen, wie dieser Zustand durch List.emptyReason abgebildet wird.

Die Löschung muss auch bei der Erzeugung von Narrativen und Auslieferungs-Bundles berücksichtigt werden. Bereits entfernte Inhalte dürfen nicht über solche Darstellungen weiterhin verfügbar sein.

**Technische Einordnung des horizontalen Löschens**

Ein reguläres FHIR-delete ist nicht mit der vollständigen Entfernung aller Ressourcenversionen gleichzusetzen. Bei versionierenden Servern bleibt die bisherige Historie grundsätzlich erhalten; die Löschung wird als weiterer Zustand in der Historie dokumentiert. FHIR R4 erlaubt jedoch eine vollständige Entfernung einschließlich Historie, wenn entsprechende Richtlinien oder fachliche Regeln dies vorsehen.

Im aktuellen FHIR-CI-Build sind zusätzlich folgende Interaktionen beschrieben:

```
DELETE [base]/MedicationRequest/[id]
DELETE [base]/MedicationRequest/[id]/_history

```

Die erste Interaktion löscht die Ressource im Sinne des regulären [delete](https://build.fhir.org/http.html#delete). Die zweite Interaktion [delete-history](https://build.fhir.org/http.html#delete-history) entfernt die historischen Versionen, nicht jedoch den aktuellen Zustand. Die Kombination ist daher eine technische Orientierung für die Entfernung der Ressourceninhalte und ihrer Historie.

Diese zusätzlichen History-Löschinteraktionen sind nicht Bestandteil der REST-Interaktionen von FHIR R4. Daher würde eine custom Operation `[base]/MedicationRequest/[id] $planentry-delete` zum Einsatz kommen.

**Umgang mit betroffenen historischen Medikationsplanversionen**

Das horizontale Löschen betrifft nicht nur die zu löschende MedicationRequest, sondern auch bereits gespeicherte historische List-Versionen: Sowohl das Entfernen von List.entry als auch das Setzen von PatientModified verändern deren bisherigen Inhalt.

Hier besteht ein grundlegender Konflikt mit der Verwendung der FHIR-Historie als Abbildung unveränderlicher Ressourcenversionen. Ein reguläres FHIR-update erzeugt eine neue aktuelle Version; eine Aktualisierung einer bestimmten historischen Version ist nicht vorgesehen.

| | | |
| :--- | :--- | :--- |
| A: Bereinigung unter Beibehaltung der meta.versionId | Die betroffene historische List-Version wird bereinigt und mit PatientModified = true gekennzeichnet. Ihre bisherige meta.versionId bleibt erhalten. | Bestehende versionierte Referenzen bleiben verwendbar. Unter derselben Versionskennung wäre jedoch nach der Löschung ein anderer Inhalt verfügbar. Der Umgang mit meta.lastUpdated, ETags, Caches und bereits abgerufenen Darstellungen müsste ausdrücklich geregelt werden. |
| B: Ersatz durch eine bereinigte Version mit neuer meta.versionId | Für den betroffenen historischen Planstand wird eine bereinigte Ersatzdarstellung mit neuer Versionskennung erzeugt. Die ursprüngliche Version wird dauerhaft gelöscht. | Die geänderte Darstellung erhält eine eigene Versionskennung. Allerdings müssen die Zuordnung zum ursprünglichen fachlichen Planstand, die zeitliche Einordnung und der Umgang mit Referenzen auf die entfernte Version geregelt werden. |

Variante B ist nicht allein durch ein reguläres update umsetzbar: Dieses erzeugt eine neue aktuelle Version und ersetzt nicht gezielt eine Version innerhalb der bestehenden Historie. Auch diese Variante benötigt daher ein ausdrücklich beschriebenes Konzept für die Abbildung historischer Planstände.

Als weitere fachliche Alternative kann diskutiert werden, gelöschte Einträge durch einen Hinweis auf nicht mehr verfügbare Inhalte zu ersetzen (broken-link oder Referenz ersetzt durch data-absent-reason-extension), anstatt das jeweilige List.entry vollständig zu entfernen. Damit bliebe erkennbar, dass und gegebenenfalls wie viele Einträge gelöscht wurden. Ob diese Information erhalten bleiben darf und wie sie profiliert werden könnte, ist gesondert zu entscheiden. Das Problem der nachträglichen Veränderung historischer Planversionen würde dadurch nicht entfallen.

**Vertikales Löschen von Medikationsplänen**

Beim vertikalen Löschen werden einzelne Medikationsplanversionen (Versionen der `List`-Ressource) unwiderruflich gelöscht. Die darin referenzierten Planeinträge werden nicht pauschal einschließlich ihrer gesamten Historie gelöscht. Stattdessen wird für jede referenzierte MedicationRequest-Version geprüft, ob sie von einer verbleibenden Medikationsplanversion weiterhin referenziert wird.

Nur die MedicationRequest-Versionen auf die keine Referenz mehr zeigt, sollen zusätzlich gelöscht werden. Andere Versionen des MedicationRequests bleiben erhalten. Dadurch bleiben bestehende Referenzen auflösbar.

**Löschen einer historischen Medikationsplanversion**

Für das Löschen einer historischen Medikationsplanversion wird folgender Ablauf vorgeschlagen:

1. Ermitteln der zu löschenden List-Version und der darin referenzierten MedicationRequest-Versionen.
1. Ermitteln, welche dieser MedicationRequest-Versionen von keiner verbleibenden Medikationsplanversion mehr referenziert werden.
1. Dauerhaftes Löschen der ausgewählten historischen List-Version.
1. Dauerhaftes Löschen der gemäß Schritt 2 nicht mehr benötigten MedicationRequest-Versionen.

Die verbleibenden Medikationsplanversionen und die weiterhin benötigten Planeintragsversionen bleiben unverändert. Die gelöschte Planversion ist anschließend nicht mehr Teil der Historie.

Die Entfernung einer einzelnen historischen Ressourcenversion entspricht konzeptionell der im FHIR-CI-Build beschriebenen Interaktion [delete-history-version](https://build.fhir.org/http.html#delete-history-version):

```
DELETE [base]/List/[id]/_history/[vid]
DELETE [base]/MedicationRequest/[id]/_history/[vid]

```

Diese Interaktion schließt die jeweils aktuelle Ressourcenversion ausdrücklich aus. Sollte eine zu entfernende MedicationRequest-Version zugleich deren aktuelle Version sein, ist daher ein gesondertes Vorgehen erforderlich. Daher würde auch hier eine Custom Operation `[base]/List $history-delete` zum Einsatz kommen.

**Löschen der aktuellen Medikationsplanversion** Beim Löschen des aktuellen Medikationsplans soll verhindert werden, dass eine ältere Medikationsplanversion unbeabsichtigt wieder als aktueller Plan verwendet wird.

Für diesen Fall wird folgender fachlicher Zielzustand vorgeschlagen:

1. Die bisher aktuelle List-Version wird dauerhaft gelöscht.
1. Die darin referenzierten MedicationRequest-Versionen werden gelöscht, sofern sie von keiner verbleibenden Medikationsplanversion mehr referenziert werden.
1. Unter derselben List.id wird eine neue, leere Medikationsplanversion mit einer neuen meta.versionId bereitgestellt.
1. Als Autor beziehungsweise Quelle des neuen leeren Medikationsplans wird das Device der Fachanwendung eingetragen.
1. Der neue leere Medikationsplan wird mit List.extension:PatientModified = true gekennzeichnet.

Die verbleibenden historischen Medikationsplanversionen bleiben verfügbar. Der aktuelle Medikationsplan ist jedoch leer und wird nicht aus einer älteren Version wiederhergestellt. Die konkrete Belegung von List.emptyReason ist noch festzulegen.

**Auswirkungen auf die aktuelle Version von Medikationsplaneinträgen**

Beim vertikalen Löschen kann eine MedicationRequest-Version betroffen sein, die zwar von keiner verbleibenden Medikationsplanversion mehr benötigt wird, technisch aber die aktuelle Version dieser Ressource darstellt.

Für diesen Fall ist zu entscheiden, ob eine ältere verbleibende MedicationRequest-Version wieder als aktuelle Version bereitgestellt werden soll.

Die Entscheidung ist insbesondere für unversionierte Referenzen relevant. Im bisherigen Design ist beispielsweise die Referenz einer **Geplanten Abgabe** auf ihren Planeintrag über basedOn unversioniert. Daher muss geprüft werden, welche Auswirkungen eine Löschung oder ein Wechsel des aktuellen Planeintragszustands auf diese Referenzen hat.

**Übergreifende Anforderungen und offene Abgrenzungen**

Unabhängig von der gewählten technischen Variante sind folgende Punkte festzulegen:

* Referenzintegrität: Die Prüfung darf sich nicht ausschließlich auf List.entry.item beschränken, wenn weitere Ressourcen auf den betroffenen Planeintrag oder eine seiner Versionen verweisen. Insbesondere ist zu entscheiden, wie Referenzen aus **Geplanten Abgaben** und **Durchgeführten Abgaben** behandelt werden.
* Abgeleitete Inhalte: Narrative, Suchergebnisse und erzeugte Bundles dürfen die gelöschten Inhalte nicht weiterhin enthalten.

Die beschriebenen Löschkonzepte sind bislang nicht im IG umgesetzt. Zu diesem Abschnitt wird besonders um fachliches und technisches Feedback gebeten. Insbesondere sollen Erfahrungen aus der Implementierung versionierender FHIR-Server und vergleichbarer Konzepte berücksichtigt werden.

* Ist die Unterscheidung zwischen horizontalem Löschen eines Planeintrags einschließlich aller Versionen und vertikalem Löschen einzelner Medikationsplanversionen fachlich ausreichend?
* Wie sollen historische Medikationsplanversionen beim horizontalen Löschen bereinigt werden: unter Beibehaltung ihrer bisherigen `meta.versionId` oder durch bereinigte Ersatzdarstellungen mit neuer Versionskennung? Welche Alternativen vermeiden eine Veränderung bereits identifizierter historischer Inhalte?
* Wie können bei einer Ersatzdarstellung die ursprüngliche zeitliche Einordnung, die Zuordnung zum fachlichen Planzustand und bestehende versionierte Referenzen erhalten beziehungsweise nachvollziehbar behandelt werden?
* Sollen betroffene `List.entry`-Elemente vollständig entfernt werden oder soll ein Hinweis auf gelöschte Inhalte erhalten bleiben? Darf daraus die Anzahl gelöschter Einträge erkennbar sein?
* Ist es fachlich richtig, beim Löschen der aktuellen Medikationsplanversion einen neuen leeren Plan mit der Fachanwendung als Autor und `PatientModified = true` bereitzustellen? Welcher Wert für `List.emptyReason` soll diesen Zustand beschreiben?
* Wie soll eine zu löschende aktuelle `MedicationRequest`-Version behandelt werden, wenn ältere Versionen weiterhin benötigt werden? Darf eine ältere Version wieder zur aktuellen Version werden, insbesondere im Hinblick auf unversionierte Referenzen?
* Welche weiteren Referenzen, insbesondere aus Geplanten und Durchgeführten Abgaben, müssen bei der Bestimmung des Löschumfangs berücksichtigt werden?
* Welche der beschriebenen Varianten können bestehende FHIR-R4-Server umsetzen? Welche zusätzlichen Operationen oder serverinternen Funktionen wären erforderlich?
* Wie sollen `meta.versionId`, `meta.lastUpdated`, ETags nach einer Löschung behandelt werden?

