# HL7.AT.FHIR.ELGA.EMED.R4\Medikation - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Medikation**

## Medikation

### Repräsentation von Arzneimitteln

#### Medikation mit PZN

#### Magistrale Zubereitung

#### PZN Medication Ressource Contained vs. Logical Reference

Für die Referenzierung von Arzneimitteln mit PZN wird abhängig von der Art des Zugriffs zwischen einer Logical Reference bei schreibenden Zugriffen und einer enthaltenen (contained) Medication-Ressource bei lesenden Zugriffen unterschieden.

Die Pharmazentralnummer (PZN) dient dabei als eindeutiger fachlicher Identifikator für das Arzneimittel. Zusätzlich kann die Bezeichnung des Arzneimittels als display-Wert angegeben werden. Dieser unterstützt insbesondere die fachliche Plausibilisierung und erleichtert es Nutzenden, das ausgewählte Arzneimittel nachzuvollziehen. Die Fachanwendung verwaltet die aktuelle ASP-Liste und kann anhand der PZN jederzeit die aktuellen Informationen zur Medication-Ressource ableiten.

Magistrale Zubereitungen hingegen werden immer als contained Medication-Ressource mitgegeben.

 Offene Punkte: 
Bezeichnung des Arzneimittels als kann oder als muss? 

##### Medication Referenz für schreibende Zugriffe

Beim Erstellen oder Aktualisieren von Ressourcen, die auf ein Arzneimittel verweisen, insbesondere MedicationRequest und MedicationDispense, wird die Medication über eine Logical Reference referenziert.

Die Referenz erfolgt anhand der PZN, beispielsweise:

```
"medicationReference" : {
    "reference" : "Medication?code=https://termgit.elga.gv.at/CodeSystem/asp-liste|2450836&code:text=RAMIPRIL"
  },

```

Dadurch muss das einbringende System keine vollständige Medication-Ressource erzeugen, pflegen oder separat übertragen. Alle für die Medication-Ressource erforderlichen fachlichen Informationen können anhand der übermittelten PZN aus den zentral verfügbaren Arzneimittelstammdaten abgeleitet werden.

Der optionale display-Wert ersetzt dabei nicht die PZN als maßgeblichen Identifikator. Er dient ausschließlich der besseren Lesbarkeit sowie als zusätzliche Absicherung, dass fachlich die erwartete Arzneimittelpackung ausgewählt wurde.

Diese Vorgehensweise reduziert Redundanzen, vermeidet die Übertragung potenziell veralteter Arzneimittelstammdaten und stellt sicher, dass die Fachanwendung bei der Verarbeitung auf ihren aktuellen Datenbestand zurückgreifen kann.

##### Medication Referenz für lesende Zugriffe

Bei lesenden Zugriffen wird die referenzierte Medication-Ressource als enthaltene Ressource (contained) innerhalb der jeweiligen fachlichen Ressource bereitgestellt. Dies betrifft insbesondere MedicationRequest und MedicationDispense.

Die Medication-Referenz verweist in diesem Fall auf die enthaltene Ressource, beispielsweise:

```
...
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "at-emed-journey-medication-ramipril",
      "meta" : {
        "profile" : [
          🔗 "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"
        ]
      },
      "code" : {
        "coding" : [
          {
            "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
            "code" : "2450836",
            "display" : "RAMIPRIL HEX TBL 5MG"
          }
        ]
      }
    }
  ],
  ...

```

Durch die enthaltene Medication-Ressource erhalten konsumierende Systeme alle für die Verarbeitung, Darstellung oder den Export relevanten Arzneimittelinformationen unmittelbar mit dem jeweiligen MedicationRequest bzw. MedicationDispense. Eine zusätzliche Auflösung der PZN gegen einen lokalen oder externen Arzneimittelstammdatendienst ist für diese Anwendungsfälle daher nicht erforderlich.

Die Bereitstellung als contained Resource erleichtert insbesondere:

* die Verarbeitung durch Systeme ohne Zugriff auf eine lokale ASP- oder vergleichbare Arzneimittelstammdatenquelle,
* den vollständigen Export einzelner Medikationsinformationen,
* die Anzeige fachlich relevanter Arzneimitteldaten ohne zusätzliche Folgerequests sowie
* eine möglichst robuste, in sich geschlossene Repräsentation der jeweiligen MedicationRequest oder MedicationDispense.

Die enthaltene Medication-Ressource ist ausschließlich im Kontext der umschließenden Ressource gültig. Sie stellt keine eigenständig persistierbare oder serverseitig referenzierbare Medication-Ressource dar.

