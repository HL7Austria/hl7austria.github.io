# Medikation - Repräsentation von Arzneimitteln - ELGA e-Medikation (R4) DRAFT v0.1.0

## Medikation - Repräsentation von Arzneimitteln

### Medikation mit PZN

Arzneispezialitäten, die in der ASP-Liste mit einer Pharmazentralnummer (PZN) gelistet sind, werden mit dem Profil [AT ELGA e-Medikation Medication Profil für die Standardmedikation mit PZN](StructureDefinition-at-elga-emed-medication-standard-medikation.md) abgebildet. Das Arzneimittel wird über `Medication.code` identifiziert, wobei genau ein Coding aus dem CodeSystem `https://termgit.elga.gv.at/CodeSystem/asp-liste` mit der PZN angegeben werden muss.

Die weiteren Angaben wie Darreichungsform (`form`), Packungsgröße (`amount`) sowie die enthaltenen Wirkstoffe inklusive Stärke (`ingredient`) werden anhand der PZN von der Fachanwendung aus der ASP-Liste abgeleitet und bei lesenden Zugriffen in der contained Medication-Ressource bereitgestellt. Wirkstoffe werden dabei ausschließlich codiert angegeben.

Das Profil wird in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe verwendet. Ein Beispiel ist unter [Beispiel Medikation Ramipril](Medication-at-emed-journey-medication-ramipril.md) verfügbar.

#### PZN Medication Ressource Contained vs. Conditional Reference

Für die Referenzierung von Arzneimitteln mit PZN wird abhängig von der Art des Zugriffs zwischen einer Conditional Reference bei schreibenden Zugriffen und einer enthaltenen (contained) Medication-Ressource bei lesenden Zugriffen unterschieden.

Die Pharmazentralnummer (PZN) dient dabei als eindeutiger fachlicher Identifikator für das Arzneimittel. Zusätzlich kann die Bezeichnung des Arzneimittels als display-Wert angegeben werden. Dieser unterstützt insbesondere die fachliche Plausibilisierung und erleichtert es, das ausgewählte Arzneimittel nachzuvollziehen. Die Fachanwendung verwaltet die aktuelle ASP-Liste und kann anhand der PZN jederzeit die aktuellen Informationen zur Medication-Ressource ableiten.

Magistrale Zubereitungen hingegen werden immer als contained Medication-Ressource mitgegeben.

#### Medication Referenz für schreibende Zugriffe

Beim Erstellen oder Aktualisieren von Ressourcen, die auf ein Arzneimittel verweisen, insbesondere MedicationRequest und MedicationDispense, wird die Medication über eine Conditional Reference referenziert.

Die Referenz erfolgt anhand der PZN, beispielsweise:

```
"medicationReference" : {
    "reference" : "Medication?code=https://termgit.elga.gv.at/CodeSystem/asp-liste|2450836&code:text=RAMIPRIL%20HEX%20TBL%205MG"
  },

```

Dadurch muss das einbringende System keine vollständige Medication-Ressource erzeugen, pflegen oder separat übertragen. Alle für die Medication-Ressource erforderlichen fachlichen Informationen können anhand der übermittelten PZN aus den zentral verfügbaren Arzneimittelstammdaten abgeleitet werden.

Der optionale display-Wert ersetzt dabei nicht die PZN als maßgeblichen Identifikator. Er dient ausschließlich der besseren Lesbarkeit sowie als zusätzliche Absicherung, dass fachlich die erwartete Arzneimittelpackung ausgewählt wurde.

Diese Vorgehensweise reduziert Redundanzen, vermeidet die Übertragung potenziell veralteter Arzneimittelstammdaten und stellt sicher, dass die Fachanwendung bei der Verarbeitung auf ihren aktuellen Datenbestand zurückgreifen kann.

#### Medication Referenz für lesende Zugriffe

Bei lesenden Zugriffen wird die referenzierte Medication-Ressource als enthaltene Ressource (contained) innerhalb der jeweiligen fachlichen Ressource bereitgestellt. Dies betrifft insbesondere MedicationRequest und MedicationDispense.

Die Medication-Referenz verweist in diesem Fall auf die enthaltene Ressource. Der folgende Ausschnitt einer [Geplanten Abgabe](MedicationRequest-d9d43746-69ab-4ed8-9200-3a939f7224de.md) zeigt die contained Medication-Ressource und die zugehörige Referenz in `medicationReference`:

Durch die enthaltene Medication-Ressource erhalten konsumierende Systeme alle für die Verarbeitung, Darstellung oder den Export relevanten Arzneimittelinformationen unmittelbar mit dem jeweiligen MedicationRequest bzw. MedicationDispense. Eine zusätzliche Auflösung der PZN gegen einen lokalen oder externen Arzneimittelstammdatendienst ist für diese Anwendungsfälle daher nicht erforderlich.

Die Bereitstellung als contained Resource erleichtert insbesondere:

* die Verarbeitung durch Systeme ohne Zugriff auf eine lokale ASP- oder vergleichbare Arzneimittelstammdatenquelle,
* den vollständigen Export einzelner Medikationsinformationen,
* die Anzeige fachlich relevanter Arzneimitteldaten ohne zusätzliche Folgerequests sowie
* eine möglichst robuste, in sich geschlossene Repräsentation der jeweiligen MedicationRequest oder MedicationDispense.

Die enthaltene Medication-Ressource ist ausschließlich im Kontext der umschließenden Ressource gültig. Sie stellt keine eigenständig persistierbare oder serverseitig referenzierbare Medication-Ressource dar.

### Magistrale Zubereitung

Magistrale Zubereitungen werden in der Apotheke individuell hergestellt und besitzen daher keine PZN. Sie werden mit dem Profil [AT ELGA e-Medikation Medication Magistrale Medikation](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.md) abgebildet.

Da die Angaben nicht aus der ASP-Liste abgeleitet werden können, müssen alle fachlich relevanten Informationen vom einbringenden System befüllt werden:

* `code.text`: Bezeichnung der Zubereitung (verpflichtend),
* `extension[Rezeptur]`: Rezeptur für die Zubereitung als Markdown (verpflichtend),
* `ingredient`: mindestens ein Inhaltsstoff. Wirkstoffe (`isActive = true`) werden codiert angegeben (ATC-Code gemäß WIdO bzw. Wirkstoff-Code der AGES), sonstige Bestandteile (`isActive = false`), wie beispielsweise eine Salbengrundlage, können auch als Freitext in `itemCodeableConcept.text` angegeben werden. Die Menge des jeweiligen Inhaltsstoffes wird in `strength` angegeben,
* optional `form` (Darreichungsform) und `amount` (Gesamtmenge).

Magistrale Zubereitungen werden sowohl bei schreibenden als auch bei lesenden Zugriffen immer als contained Medication-Ressource übermittelt. Eine Conditional Reference ist nicht möglich. Das Profil wird in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe verwendet.

Der folgende Ausschnitt eines [Planeintrags](MedicationRequest-55e4be12-0d10-454c-a85f-cfb5f849e391.md) zeigt eine magistrale Zubereitung (Dexpanthenol-Salbe) als contained Medication-Ressource:

### Angabe eines Wirkstoffs

Im Medikationsplan kann anstelle eines konkreten Arzneimittels auch ein Wirkstoff dokumentiert werden. Hierfür wird das Profil [AT ELGA e-Medikation Medication Wirkstoff](StructureDefinition-at-elga-emed-medication-wirkstoff.md) verwendet.

Die Wirkstoffangabe enthält mindestens einen aktiven Inhaltsstoff (`ingredient[activeIngredient]`), der codiert angegeben wird (ATC-Code gemäß WIdO bzw. Wirkstoff-Code der AGES). Optional können Darreichungsform (`form`), Menge (`amount`) und Stärke (`ingredient.strength`) angegeben werden. Eine Rezeptur ist nicht zulässig.

Wie magistrale Zubereitungen wird eine Wirkstoffangabe immer als contained Medication-Ressource übermittelt.

Die Wirkstoffangabe ist ausschließlich im Planeintrag zulässig. Eine Geplante Abgabe muss immer ein konkretes Arzneimittel (mit PZN) oder eine magistrale Zubereitung enthalten. Ist im Planeintrag nur ein Wirkstoff dokumentiert, muss der Planeintrag vor dem Erstellen einer Geplanten Abgabe angepasst und ein Präparat ausgewählt werden (siehe [Design Choices](design_choices.md)).

Der folgende Ausschnitt eines [Planeintrags](MedicationRequest-7128c60c-126d-42b2-b575-dc26a2324b8b.md) zeigt eine Wirkstoffangabe (Metamizol) als contained Medication-Ressource:

