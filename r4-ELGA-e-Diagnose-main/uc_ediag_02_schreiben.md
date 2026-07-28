# HL7.AT.FHIR.ELGA.EDIAG.R4\Schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Schreiben**

## Schreiben

# Schreiben

> UC-02 -Dieses Kapitel beschreibt die Schreiboperationen der e-Diagnose-Fachanwendung. Im Mittelpunkt stehen die Aktualisierung von Listen sowie die Erfassung, Zuordnung, Entfernung, Stornierung und Löschung von Diagnosen, Prozeduren oder Allergien und Intoleranzen.

## Interaktionen auf Listenressourcen

### Leere Liste fachlich bestätigen

> Sub:UC_02_01 Dieser Ablauf beschreibt die fachliche Bestätigung einer initialisierten, leeren Liste durch den GDA und die anschließende Speicherung des bestätigten Zustands in der Fachanwendung. Eine leere Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von relevanten Einträgen und ist von einer noch nicht befüllten Liste **emptyReason = notstarted** zu unterscheiden.

#### Ablauf

1. Der GDA führt einen**POST $list-read**aus.
1. Die Fachanwendung prüft die angeforderte Liste und stellt fest, dass keine List.entry vorhanden sind.
1. Ist**List.emptyReason = notstarted**, handelt es sich um eine initialisierte, aber noch nicht fachlich bestätigte leere Liste.
1. Bestätigt der GDA, dass für die Person aktuell keine Einträge dokumentiert werden müssen, setzt er**List.emptyReason = nilknown**.
1. Der GDA führt anschließend einen**POST $list-write**mit der aktualisierten Liste durch, um den bestätigten Zustand zu speichern.
1. Die Fachanwendung speichert die aktualisierte Liste inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)zurück.

#### Sequenzdiagramm

### Liste aktualisieren (List-Write)

> Sub:UC_02_02 List Write, siehe [List-Write](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/branches/main/interactions.html#list-write) ist eine eigenständige Operation, die ausschließlich im Kontext eines **zuvor ausgeführten** [List-Read](uc_ediag_01_lesen.md#list-read) erfolgen darf. Nach dem Erfassen einer neuen medizinischen Ressource, siehe [Diagnose erfassen](uc_ediag_02_schreiben.md#diagnose-erfassen), kann diese in einer Summary-Liste aufgenommen werden. Die Fachanwendung kennzeichnet die Ressource anschließend als relevant (meta.tag = relevant).

ToDo: Patient Compartment für die Endpunkte

</g></svg></div> 

#### Alternativ - Abgelehnter List Write

#### Ablauf

1. **GDA 1**führt ein**POST $list-read**auf die Liste einer Person aus.
1. Die Fachanwendung prüft, ob eine Liste existiert.
1. Die Fachanwendung liefert die aktuelle Liste als**List Bundle**mit dem aktuellen**ETag**„123" an GDA 1 aus.
1. **GDA 1**beginnt mit der**fachlichen Bearbeitung**der Liste.
1. Währenddessen führt**GDA 2**ebenfalls ein**List-Read**auf dieselbe Liste durch.
1. Die Fachanwendung liefert auch an GDA 2 die aktuelle Liste mit dem ETag „123" aus.
1. GDA 2 bearbeitet die Liste.
1. GDA 2 sendet zuerst mittels**POST $list-write**ein Transaction Bundle mit den vorgenommenen Änderungen.
1. Die Fachanwendung prüft, ob der im Transaction Bundle enthaltene**List.identifier**mit dem aktuellen List.identifier der zuletzt gespeicherten Liste übereinstimmt.
1. Die Prüfung verläuft erfolgreich, da beide den Wert „123" besitzen.
1. Die Fachanwendung validiert die übermittelten Änderungen und prüft insbesondere, ob keine unzulässigen Zustandsübergänge vorliegen.
1. Die Änderungen werden übernommen und eine neue Version der Liste wird persistiert.
1. Dabei wird ein neuer List.identifier erzeugt, beispielsweise „124".
1. GDA 2 erhält eine Meldung, dass die Aktualisierung erfolgreich durchgeführt wurde.
1. Anschließend sendet GDA 1 mittels**POST $ListWrite**seine ebenfalls auf Basis des ursprünglichen List.identifier „123" vorgenommenen Änderungen.
1. Die Fachanwendung prüft erneut den übermittelten List.identifier gegen die aktuell persistierte Diagnosenliste.
1. Die Prüfung schlägt fehl, da die aktuelle Liste mittlerweile den List.identifier „124" besitzt.
1. Die Fachanwendung lehnt das Speichern ab.
1. GDA 1 erhält eine Fehlermeldung, dass zwischenzeitlich eine neuere Version der Liste gespeichert wurde.
1. GDA 1 muss erneut einen**POST $list-read**durchführen, die zwischenzeitlich vorgenommenen Änderungen prüfen und gegebenenfalls in die aktuelle Version übernehmen, bevor ein neuer Schreibvorgang erfolgen kann.

#### Sequenzdiagramm

 –>

### Einträge zur Liste hinzufügen

> Sub:UC_02_03 Nach dem Erfassen einer neuen medizinischen Ressource [Ressource erfassen](uc_ediag_02_schreiben.md#ressource-erfassen) kann dieser Eintrag in eine Liste aufgenommen werden. Die Fachanwendung kennzeichnet die Ressource anschließend als relevant (meta.tag = relevant).

#### Ablauf

1. Der GDA legt eine neue (Condition, Procedure oder AllergyIntolerance), siehe[Ressource erfassen](uc_ediag_02_schreiben.md#ressource-erfassen)an oder eine bestehende Ressource, die in die Liste aufgenommen werden soll.
1. Dafür führt der GDA ein**POST $list-read**aus und erhält das aktuelle Search-Bundle der ausgewählten List-Ressource.
1. Der GDA wählt die bestehende Ressource aus und fügt sie als neuen List.entry in die Liste ein.
* **List.entry.flag = new**
* **List.entry.item** referenziert die bestehende Ressource.

1. Der GDA führt ein**POST $list-write**aus und übermittelt die aktualisierte Liste an die Fachanwendung.
1. Die Fachanwendung kennzeichnet die referenzierte Ressource mit**meta.tag = relevant**, wodurch ihre Zugehörigkeit zur Liste gekennzeichnet wird.

#### Sequenzdiagramm

### Einträge aus einer Liste entfernen

> Sub:UC_02_04 Nur entfernen, das weitere Vorgehen wird hier nicht beschrieben. Stornieren kann als Folge sein Die Referenz auf die Ressource wird aus der Liste entfernt (removed). Die referenzierte Ressource bleibt unverändert bestehen. Die Fachanwendung entfernt die Kennzeichnung als relevant (meta.tag = relevant). ToDo: Aus Liste entfernen, Ressource bleibt bestehen, verliert nur Listzugehörigkeit oder Löschen - Ressource wird vollständig entfernt Ausblenden und Löschen? Löscht der Teilnehmer einen Eintrag, muss die Historienversion mitgelöscht werden? Betsehende Referenzen auf gelöschte Ressourcen. Lösche ich C, sage ich such mir alle List-Versionen mit C, und lösch mir alle C. Wie weit greifen, muss ich mich als Bürger durch alle Vorversionen durchklicken.

FHIR Spezifikation über Historie - nachlesen, wie die Regel ist! Was bedeutet eine Aktualisierung auf eine historische Version?

Vorschlag: Einträge innerhalb einer Liste durch ELGA-Teilnehmer:in löschen. Die Referenz auf die Ressource wird aus der Liste entfernt (removed). Die referenzierte Ressource bleibt unverändert bestehen. Die Fachanwendung entfernt die Kennzeichnung als relevant (meta.tag = relevant).

### Reihenfolge der Listeneinträge ändern

> Sub:UC_02_05 Der GDA kann die gemeinsame Reihenfolge der Summary-Listeinträge ändern. Die Einträge selbst bleiben dabei unverändert. Evtl. auch in den ELGA Core mitnehmen.

### Diagnose in der Liste bearbeiten

> Sub:UC_02_07 Bestehende Einträge fachlich bearbeiten TODo: Dieser UC setzt sich zusammen aus mehreren anderen und wird zur besseren verständnis hier nochmals beschrieben. Der GDA kann Einträge in einer Liste fachlich bearbeiten - stimmt nicht mehr? 1. Schritt, ich erstelle eine neue 2 Schritt: Will ich sie verknüpfen, muss ich auf die bestehenden Ressourcen zugreifen mit dem Identifier 123, der muss vom Client zwischengespeichert werden, damit dieser an die FA mitgesendet werden kann. Änderungen eines Eintrags werden referenziert und sind somit nachverfolgbar.

#### Ablauf

## Interaktionen auf Einzelressourcen

Im Rahmen der Anwendung eDiagnose werden unter dem Begriff „Diagnose“ die FHIR-Ressourcen Condition (Diagnosen), Procedure (Prozeduren) sowie AllergyIntolerance (Allergien und Intoleranzen) zusammengefasst. - gehört in den Hintergrund, auch Gesamtliste, Summary-Liste

### Diagnose erfassen

> Sub:UC_02_06 - Der GDA erfasst eine neue Diagnose, Prozedure oder Allergie und Intoleranz über die e-Diagnose Fachanwendung, die nicht Teil der Summary-Liste ist, siehe [Transaktionen](transaction.md#Transaktionen) kann in der Folge durch eine Änderung, siehe Sub:UC_02_03 zur Liste hinzugefügtr werden.

#### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt eine neue Ressource und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein**POST**auf /Patient/[id]/Condition/, /Patient/[id]/Procedure/ oder /Patient/[id]/AllergyIntolerance/ aus und übermittelt die neue Ressource an die e-Diagnose Fachanwendung.
1. Die**Fachanwendung**validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert und dem GDA eine erfolgreiche Erstellung mittels**HTTP 201 Created**bestätigt. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

#### Sequenzdiagramm

### Diagnose stornieren

> Sub:UC_02_09 Der GDA kann einen oder mehrere Diagnosen aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob eine zu stornierende Diagnose als relevant gekennzeichnet ist oder nicht.

Sollte die Diagnose als relevant gekennzeichnet gewesen sein und will sie der GDA nach der Stornierung nicht mehr in der Liste der relevanten Einträge haben, muss die Diagnose aus der Liste der relevanten Einträge entfernt werden, siehe Einträge aus einer Liste entfernen. In Ergänzung müssen der GDA, der die Stornierung durchgeführt hat, den Stornierungszeitpunkt und den Vermerk festhalten.

#### Ablauf

* Um einen Eintrag zu stornieren, führt der GDA ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu stornierenden Einträge.
* Durch Bestätigung wird die `$storno`-Operation ausgeführt.
* Die Fachanwendung bearbeitet die zu stornierende Diagnose folgendermaßen: 
* `AllergyIntolerance.verificationStatus = entered-in-error`
* `Condition.verificationStatus = entered-in-error`
* `Procedure.status = entered-in-error`
 

