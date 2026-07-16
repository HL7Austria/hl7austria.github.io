# HL7.AT.FHIR.ELGA.EDIAG.R4\Schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Schreiben**

## Schreiben

# Schreiben

ToDo: Wording Liste, eDiagnosenliste,…

Listenressourcen bilden die organisatorische Struktur der e-Diagnose und dienen der Zusammenstellung fachlicher Einzelressourcen zu den Kategorien Diagnosen, Prozeduren sowie Allergien und Intoleranzen. Die Zugehörigkeit zu einer Liste bestimmt die fachliche Relevanz einer Ressource (meta.tag=relevant). Die nachfolgenden Sub-Use-Cases beschreiben die Initialisierung und Verwaltung dieser Listen sowie das Aufnehmen, Entfernen und Umordnen von Einträgen. Fachliche Änderungen an Diagnosen, Prozeduren sowie Allergien und Intoleranzen erfolgen ausschließlich über die jeweiligen Einzelressourcen.

### Sub_UC_eDiag_06_01 - Nach Initialisierung leere Liste bestätigen

ToDo: Die Überprüfung aus diesem UC wird bereits bei List-Read durchgeführt. Teil des ELGA Core. emptyReason #nilknown. Im eDiag wir müssen zusätzlich angeben welcher ListType es ist. Eine leere Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine relevanten Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von relevanten Einträgen und ist von einer noch nicht befüllten Liste zu unterscheiden.

### Sub_UC_eDiag_06_02 - Bestehende Ressource in eine Liste aufnehmen

Nach dem Erfassen einer neuen medizinischen Ressource [Sub_UC_eDiag_06_09](uc_ediag_06_int_res.md#sub-uc-ediag-06-09) kann diese in eine Liste aufgenommen werden. Die Fachanwendung kennzeichnet die Ressource anschließend als relevant (meta.tag = relevant).

#### Ablauf

### Sub_UC_eDiag_06_03 - Bestehende relevante Listeinträge fachlich bearbeiten

TODo: Der GDA kann Einträge in einer Liste fachlich bearbeiten - stimmt nicht mehr? 1. Schritt, ich erstelle eine neue 2 Schritt: Will ich sie verknüpfen, muss ich auf die bestehenden Ressourcen zugreifen mit dem Identifier 123, der muss vom Client zwischengespeichert werden, damit dieser an die FA mitgesendet werden kann.

#### Ablauf

### Sub_UC_eDiag_06_04 - Reihenfolge von Listeinträge ändern

Der GDA kann die Reihenfolge der Listeinträge ändern. Die Einträge selbst bleiben dabei unverändert. Evtl. auch in den ELGA Core mitnehmen.

#### Ablauf

### Sub_UC_eDiag_06_05 - Einträge aus einer Liste entfernen

Die Referenz auf die Ressource wird aus der Liste entfernt (removed). Die referenzierte Ressource bleibt unverändert bestehen. Die Fachanwendung entfernt die Kennzeichnung als relevant (meta.tag = relevant).

#### Ablauf

### Sub_UC_eDiag_06_07 - Eintrag innerhalb einer Liste durch ELGA-Teilnehmer:in löschen

ToDo: Aus Liste entfernen, Ressource bleibt bestehen, verliert nur Listzugehörigkeit oder Löschen - Ressource wird vollständig entfernt Ausblenden und Löschen? Löscht der Teilnehmer einen Eintrag, muss die Historienversion mitgelöscht werden? Betsehende Referenzen auf gelöschte Ressourcen. Lösche ich C, sage ich such mir alle List-Versionen mit C, und lösch mir alle C. Wie weit greifen, muss ich mich als Bürger durch alle Vorversionen durchklicken. FHIR Spezifikation über Historie - nachlesen, wie die Regel ist! Was bedeutet eine Aktualisierung auf eine historische Version?

### Sub_UC_eDiag_06_08 - Liste durch ELGA-Teilnehmer:in löschen

ToDo: fachliche Auswirkungen klären; gesamte List-Ressouce löschen, alle Referenzen - alle enthaltenen Diagnosen?

Fachliche Einzelressourcen repräsentieren die medizinischen Inhalte der e-Diagnose. Hierzu zählen insbesondere Diagnosen (Condition), Prozeduren (Procedure) sowie Allergien und Intoleranzen (AllergyIntolerance). Die nachfolgenden Sub-Use-Cases beschreiben die Erfassung, das Abrufen und die Stornierung dieser Ressourcen. Bestehende Ressourcen werden weder bearbeitet noch gelöscht; fachliche Änderungen erfolgen durch das Anlegen neuer Ressourcen.

### Sub_UC_eDiag_06_07 - Diagnosen, Prozeduren sowie Allergien und Intoleranzen durch ELGA-Teilnehmer löschen

Der ELGA-Teilnehmer kann via ELGA-Portal einzelne oder alle Diagnosen unwiderruflich löschen. Dabei ist es irrelevant, ob eine zu löschende Diagnose als relevant gekennzeichnet ist oder nicht. Die Inhalte der zu löschenden Diagnose werden durch die Fachanwendung entfernt und die Diagnose als "gelöscht" markiert.

Sollte die Diagnose in der aktuellen Liste referenziert sein, erstellt die Fachanwendung eine neue Version der Liste ohne die gelöschte Diagnose.

#### Ablauf

* Um einen Eintrag zu löschen, führt der ELGA-Teilnehmer über das Portal ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu löschenden Einträge.
* Durch Bestätigung wird die `$delete`-Operation ausgeführt.
* Die Fachanwendung bearbeitet die zu löschende Diagnose folgendermaßen: 
* Alle optionalen Felder `0..` werden geleert.
* Alle verpflichtenden Felder `1..` werden 
* mit der [data-absent-reason-Extension](http://hl7.org/fhir/StructureDefinition/data-absent-reason) und dem Wert `unknown` versehen
* im Fall von den folgenden codierten Elementen mit `required` Bindings auf folgende Werte gesetzt 
* `AllergyIntolerance.clinicalStatus = inactive`
* `AllergyIntolerance.verificationStatus = unconfirmed`
* `Condition.clinicalStatus = inactive`
* `Condition.verificationStatus = unconfirmed`
* `Procedure.status = completed`
 
 
 
* Die Fachanwendung erstellt eine neue Version der Liste, sollte die zu löschende Diagnose Teil der aktuellen Liste gewesen sein.

![](patient_delete.drawio.svg)

### Sub_UC_eDiag_06_09 - Diagnosen, Prozeduren sowie Allergien und Intoleranzen erfassen

Der GDA erfasst neue Diagnosen, Prozeduren sowie Allergien und Intoleranzen über die e-Diagnose Fachanwendung, siehe [Transaktionen](transaction.md#Transaktionen).

#### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt eine neue Ressource und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein**POST**auf /Patient/[id]/Condition/, /Patient/[id]/Procedure/ oder /Patient/[id]/AllergyIntolerance/ aus und übermittelt die neue Ressource an die e-Diagnose Fachanwendung.
1. Die**Fachanwendung**validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert und dem GDA eine erfolgreiche Erstellung mittels**HTTP 201 Created**bestätigt. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

#### Sequenzdiagramm Eintrag erfassen

### Sub_UC_eDiag_06_10 - Diagnosen, Prozeduren sowie Allergien und Intoleranzen stornieren

Der GDA kann einen oder mehrere Diagnosen aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob eine zu stornierende Diagnose als relevant gekennzeichnet ist oder nicht.

Sollte die Diagnose als relevant gekennzeichnet gewesen sein und will sie der GDA nach der Stornierung nicht mehr in der Liste der relevanten Einträge haben, muss die Diagnose aus der Liste der relevanten Einträge entfernt werden (siehe [Sub_UC_eDiag_06_05 - Einträge aus einer Liste entfernen](uc_ediag_06_int_list.md#sub_uc_ediag_06_05---einträge-aus-einer-liste-entfernen)).

#### Ablauf

* Um einen Eintrag zu stornieren, führt der GDA ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu stornierenden Einträge.
* Durch Bestätigung wird die `$storno`-Operation ausgeführt.
* Die Fachanwendung bearbeitet die zu stornierende Diagnose folgendermaßen: 
* `AllergyIntolerance.verificationStatus = entered-in-error`
* `Condition.verificationStatus = entered-in-error`
* `Procedure.status = entered-in-error`
 

