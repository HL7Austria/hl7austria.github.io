# HL7.AT.FHIR.ELGA.EMED.R4\AtElgaEmedDosageStandardAdministration - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtElgaEmedDosageStandardAdministration**

## Data Type Profile: AtElgaEmedDosageStandardAdministration 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration | *Version*:0.1.1 | |
| Draft as of 2026-08-31 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedDosageStandardAdministration |

**Usages:**

* Use this DataType Profile: [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-dosage-standard-administration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-dosage-standard-administration.csv), [Excel](StructureDefinition-at-elga-emed-dosage-standard-administration.xlsx), [Schematron](StructureDefinition-at-elga-emed-dosage-standard-administration.sch) 

### Notes:

 Offene Punkte:
 In Arbeit. (doseAndRate in Textdarstellung,...) 

### Regeln für Standarddosierungen im Tageszeitenschema

 Dieses Profil repräsentiert strukturierte, wiederkehrende Dosierungen anhand von Tageszeiten. Die Dosierungskategorie ist immer `standard`. 

#### Grundregeln

*  `timing.repeat.when` ist verpflichtend und enthält mindestens eine zulässige Tageszeit aus `ElgaTimingWhenStandardAdministrationVS`. 
*  `timing.repeat.frequency`, `timing.repeat.period` und `timing.repeat.periodUnit` sind verpflichtend. 
*  `frequencyMax` und `periodMax` dürfen nicht verwendet werden. Eine Tageszeitendosierung beschreibt daher keine Häufigkeits- oder Intervallspanne. 
*  `timeOfDay` darf nicht verwendet werden. Exakte Uhrzeiten werden durch dieses Profil bewusst nicht unterstützt, da sie der Semantik einer Tageszeit widersprechen können. 
*  Eine Tageszeit darf innerhalb einer Dosierung nur einmal vorkommen. 
*  Ein Wochentag darf innerhalb einer Dosierung nur einmal vorkommen. 

#### Regeln für tägliche Dosierungen

 Bei Dosierungen mit `timing.repeat.periodUnit = d` entspricht `timing.repeat.frequency` der Anzahl der angegebenen Tageszeiten. Bei `period = 1` wird die Dosierung als täglich dargestellt; bei `period > 1` als Intervall in Tagen. 

**Beispiel: 1 Stück morgens und 1 Stück nachts**

* Textdarstellung: `1-0-0-1 | Täglich: 1-0-0-1`
* `Dosage.timing.repeat.frequency / period / periodUnit` = `2 / 1 / d`
* `Dosage.timing.repeat.when` = `[MORN, NIGHT]`
* `doseQuantity.value` = `1`, `doseQuantity.unit` = `Stück`

Structure

```
Dosage
    timing
        repeat
        frequency: 2
        period: 1
        periodUnit: d
        when: MORN (morgens) | NIGHT (nachts)
        doseAndRate
        doseQuantity
        value: 1
        unit: Stück
```

JSON

```
{
  "timing": {
    "repeat": {
      "frequency": 2,
      "period": 1,
      "periodUnit": "d",
      "when": ["MORN", "NIGHT"]
    }
  },
  "doseAndRate": [{
    "doseQuantity": {
      "value": 1,
      "unit": "Stück"
    }
  }]
}
```

 Das Muster entspricht der Darstellung `1-0-0-1`. Die `frequency` ist `2`, da zwei Tageszeiten angegeben sind. 

#### Regeln für wöchentliche Dosierungen

 Werden Wochentage in `timing.repeat.dayOfWeek` angegeben, muss `timing.repeat.periodUnit` den Wert `wk` haben. Die `frequency` entspricht dann dem Produkt aus der Anzahl der Tageszeiten und der Anzahl der Wochentage. 

**Beispiel: montags und freitags jeweils 1-0-0-1**

*  Textdarstellung: `Mo 1-0-0-1, Fr 1-0-0-1 | Wöchentlich: 1-0-0-1 am Montag, 1-0-0-1 am Freitag` 
* `Dosage.timing.repeat.frequency / period / periodUnit` = `4 / 1 / wk`
* `Dosage.timing.repeat.dayOfWeek` = `mon` (Montag), `fri` (Freitag)
* `Dosage.timing.repeat.when` = `MORN` (morgens), `NIGHT` (nachts)

Structure

```
Dosage
timing
  repeat
    frequency: 4
    period: 1
    periodUnit: wk
    dayOfWeek: mon (Montag)
    dayOfWeek: fri (Freitag)
    when: MORN (morgens) | NIGHT (nachts)
```

JSON

```
{
"timing": {
    "repeat": {
        "frequency": 4,
        "period": 1,
        "periodUnit": "wk",
        "dayOfWeek": ["mon", "fri"],
        "when": ["MORN", "NIGHT"]
    }
} }
```

 Die Dosierung erfolgt zweimal pro ausgewähltem Wochentag und damit insgesamt viermal pro Woche. 

#### Regeln für monatliche Dosierungen

 Werden Kalendertage des Monats in `timing.repeat.extension:timing-dayOfMonth` angegeben, muss `timing.repeat.periodUnit` den Wert `mo` haben. Die `frequency` entspricht dann dem Produkt aus der Anzahl der dayOfMonth Extensions und der Anzahl der Tageszeiten. 

Beispiel: **1-0-0-0 am ersten Tag jedes Monats** 

* `Dosage.timing.repeat.frequency / period / periodUnit` = `1 / 1 / m`
* `Dosage.timing.repeat.extension:timing-dayOfMonth.valuePositiveInt` = `1`
* `Dosage.timing.repeat.when` = `MORN` (morgens)

Structure

```
Dosage
timing
  repeat
    frequency: 1
    period: 1
    periodUnit: m
    extension: timing-dayOfMonth
      valuePositiveInt: 1
    when: MORN (morgens)
```

JSON

```
{
  "timing": {
    "repeat": {
      "frequency": 1,
      "period": 1,
      "periodUnit": "m",
      "extension": [
        {
        "url": "http://hl7.org/fhir/StructureDefinition/timing-dayOfMonth",
        "valuePositiveInt": 1
        }
      ],
      "when": ["MORN"]
    }
  }
}
```

#### Unterschiedliche Dosierungen je Tageszeit

 Unterschiedliche Einnahmemuster zu unterschiedlichen Tageszeiten werden durch mehrere `Dosage`-Einträge mit der selben Sequenznummer ausgedrückt. Eine einzelne Dosierung kann nicht abbilden, dass zu unterschiedlichen Tageszeiten unterschiedliche Mengen gelten. 

 Beispiel: **2 Tabletten morgens und 1 Tablette nachts**. Beide Dosierungsanweisungen gehören zur selben Einnahmeregel und erhalten daher dieselbe Sequenznummer. 

*  Erste `Dosage`: `sequence = 1`, `when = [MORN]`, `frequency = 1`, `period = 1`, `periodUnit = d`, `doseQuantity.value = 2` Tabletten. 
*  Zweite `Dosage`: `sequence = 1`, `when = [NIGHT]`, `frequency = 1`, `period = 1`, `periodUnit = d`, `doseQuantity.value = 1` Tablette. 

Structure

```
Dosage [0]
  sequence: 1
  extension: DosageCategory
    valueCodeableConcept
      coding
        system: [canonical]/CodeSystem/at-elga-emed-dosage-category
        code: standard
  timing
    repeat
      frequency: 1
      period: 1
      periodUnit: d
      when: MORN (morgens)
  doseAndRate
    doseQuantity
      value: 2
      system: https://termgit.elga.gv.at/CodeSystem/ucum
      code: {Stueck}
      unit: Tablette

Dosage [1]
  sequence: 1
  extension: DosageCategory
    valueCodeableConcept
      coding
        system: [canonical]/CodeSystem/at-elga-emed-dosage-category
        code: standard
  timing
    repeat
      frequency: 1
      period: 1
      periodUnit: d
      when: NIGHT (nachts)
  doseAndRate
    doseQuantity
      value: 1
      system: https://termgit.elga.gv.at/CodeSystem/ucum
      code: {Stueck}
      unit: Tablette
```

JSON

```
[
  {
    "sequence": 1,
    "extension": [
      {
        "url": "[canonical]/StructureDefinition/at-elga-emed-dosage-category",
        "valueCodeableConcept": {
          "coding": [
            {
              "system": "[canonical]/CodeSystem/at-elga-emed-dosage-category",
              "code": "standard"
            }
          ]
        }
      }
    ],
    "timing": {
      "repeat": {
        "frequency": 1,
        "period": 1,
        "periodUnit": "d",
        "when": ["MORN"]
      }
    },
    "doseAndRate": [
      {
        "doseQuantity": {
          "value": 2,
          "system": "https://termgit.elga.gv.at/CodeSystem/ucum",
          "code": "{Stueck}",
          "unit": "Tablette"
        }
      }
    ]
  },
  {
    "sequence": 1,
    "extension": [
      {
        "url": "[canonical]/StructureDefinition/at-elga-emed-dosage-category",
        "valueCodeableConcept": {
          "coding": [
            {
              "system": "[canonical]/CodeSystem/at-elga-emed-dosage-category",
              "code": "standard"
            }
          ]
        }
      }
    ],
    "timing": {
      "repeat": {
        "frequency": 1,
        "period": 1,
        "periodUnit": "d",
        "when": ["NIGHT"]
      }
    },
    "doseAndRate": [
      {
        "doseQuantity": {
          "value": 1,
          "system": "https://termgit.elga.gv.at/CodeSystem/ucum",
          "code": "{Stueck}",
          "unit": "Tablette"
        }
      }
    ]
  }
]
```

 Die Darstellung `2-0-0-1` ist damit nicht eine einzelne `Dosage` mit zwei Tageszeiten, sondern besteht aus zwei `Dosage`-Einträgen: einer morgendlichen Dosis von zwei Tabletten und einer nächtlichen Dosis von einer Tablette. 

#### Unterschiedliche Dosierungen je Wochentag

 Unterschiedliche Einnahmemuster an unterschiedlichen Wochentagen werden durch mehrere `Dosage`-Einträge mit der selben Sequenznummer ausgedrückt. Eine einzelne Dosierung kann nicht abbilden, dass an einem Wochentag andere Tageszeiten oder Mengen gelten als an einem anderen. 

Beispiel: montags morgens und nachts, freitags nur morgens.

*  Erste `Dosage`: Montag, `when = [MORN, NIGHT]`, `frequency = 2`, `periodUnit = wk`. 
*  Zweite `Dosage`: Freitag, `when = [MORN]`, `frequency = 1`, `periodUnit = wk`. 

### Beispiele

#### Zulässige Beispiele

*  **1-0-0-1 | Täglich: 1-0-0-1** `frequency = 2`, `period = 1`, `periodUnit = d`, `when = [MORN, NIGHT]` 
*  **Alle 2 Tage: 1-0-0-1 | Alle 2 Tage: 1-0-0-1** `frequency = 2`, `period = 2`, `periodUnit = d`, `when = [MORN, NIGHT]` 
*  **Alle X Tage: 1-0-0-1 | Alle X Tage: 1-0-0-1** `frequency = 2`, `period = X`, `periodUnit = d`, `when = [MORN, NIGHT]` 
*  **Mo 1-0-0-1, Fr 1-0-0-1 | Wöchentlich: 1-0-0-1 am Montag, 1-0-0-1 am Freitag** `frequency = 4`, `period = 1`, `periodUnit = wk`, `dayOfWeek = [mon, fri]`, `when = [MORN, NIGHT]` 
*  **Mo 1-0-0-1, Fr 1-0-0-0 | Wöchentlich: 1-0-0-1 am Montag, 1-0-0-0 am Freitag** 
 Dosage 1: 
 `frequency = 2`, `period = 1`, `periodUnit = wk`, `dayOfWeek = [mon]`, `when = [MORN, NIGHT]` 
 Dosage 2: 
 `frequency = 1`, `period = 1`, `periodUnit = wk`, `dayOfWeek = [fri]`, `when = [MORN]` 
*  **Alle 2 Wochen: Mo 1-0-0-1 | Alle 2 Wochen: 1-0-0-1 am Montag** `frequency = 2`, `period = 2`, `periodUnit = wk`, `dayOfWeek = [mon]`, `when = [MORN, NIGHT]` 
*  **Alle 2 Wochen: Mo 1-0-0-1, Fr 1-0-0-1 | Alle 2 Wochen: 1-0-0-1 am Montag, 1-0-0-1 am Freitag** `frequency = 4`, `period = 2`, `periodUnit = wk`, `dayOfWeek = [mon, fri]`, `when = [MORN, NIGHT]` 
*  **Bei Bedarf: 1-0-0-1 | Bei Bedarf, täglich: 1-0-0-1** `asNeeded = true`, `frequency = 2`, `period = 1`, `periodUnit = d`, `when = [MORN, NIGHT]` 
*  **Bei Bedarf, alle 2 Tage: 1-0-0-1 | Bei Bedarf, alle 2 Tage: 1-0-0-1** `asNeeded = true`, `frequency = 2`, `period = 2`, `periodUnit = d`, `when = [MORN, NIGHT]` 
*  **Alle 3 Wochen: Mo 1-0-0-1, Fr 1-0-0-1 | Alle 3 Wochen: 1-0-0-1 am Montag, 1-0-0-1 am Freitag** `frequency = 4`, `period = 3`, `periodUnit = wk`, `dayOfWeek = [mon, fri]`, `when = [MORN, NIGHT]` 
*  **1-0-0-1 am 1. des Monats, 1-0-0-1 am 10. des Monats | Monatlich: 1-0-0-1 am 1., 1-0-0-1 am 10. des Monats** `frequency = 4`, `period = 1`, `periodUnit = mo`, `extension:DayOfMonth = 1 & 10`, `when = [MORN, NIGHT]` 
*  **1-0-0-1 am 1. des Monats, 0-1-0-0 am 15. des Monats | Monatlich: 1-0-0-1 am 1. und 0-1-0-0 am 15. des Monats** 
 Dosage 1: 
 `frequency = 2`, `period = 1`, `periodUnit = mo`, `extension:DayOfMonth = 1`, `when = [MORN, NIGHT]` 
 Dosage 2: 
 `frequency = 1`, `period = 1`, `periodUnit = mo`, `extension:DayOfMonth = 15`, `when = [NOON]` 
*  **Alle 3 Monate: 1-0-0-0 am 1. des Monats** 
*  **Alle 2 Monate: 1-0-0-0 am 1. des Monats, 1-0-0-0 am 15. des Monats** 

#### Nicht zulässige Muster

*  `1-0-0-0 täglich um 07:00` oder `1-0-0-0 täglich um 17:00`: Exakte Uhrzeiten dürfen in diesem Schema nicht über `timeOfDay` angegeben werden. Es kann ausschließlich eine zulässige Tageszeit, beispielsweise `MORN`, ausgedrückt werden. Für genau Uhrzeit muss das Uhrzeiten Dosierungsschema verwendet werden. TODO: Link einfügen. 
*  `1-0-0-1 zweimal täglich alle zwei Tage, montags und freitags`: nicht zulässig. Die Kombination aus `dayOfWeek` und einer täglichen Periodeneinheit ist nicht erlaubt, da sich die Aussagen widersprechen können. 
*  Eine Tageszeit mehrfach anzugeben, beispielsweise `when = [MORN, MORN]`: nicht zulässig. 
*  Einen Wochentag mehrfach anzugeben, beispielsweise `dayOfWeek = [mon, mon]`: nicht zulässig. 
*  `1-1-1-1 alle 2 Stunden`: Dieses Profil ist für Tageszeitenschemata vorgesehen und nicht für stündliche Intervalle. Dosierschemata mit Zeitintervallen sind in diesem Profil TBD LINK definiert. 
*  `Alle 2 Wochen: Mo 1-0-0-1, Fr 1-0-0-0` als einzelner `Dosage`-Eintrag mit `dayOfWeek = [mon, fri]` und `when = [MORN, NIGHT]`: nicht zulässig. Unterschiedliche Tageszeitenschemata je Wochentag erfordern getrennte `Dosage`-Einträge mit derselben `sequence`. 
*  `1-0-0-1 am 1. des Monats, 0-1-0-0 am 15. des Monats` als einzelner `Dosage`-Eintrag mit zwei Kalendertagen: nicht zulässig, wenn die Tageszeitenschemata unterschiedlich sind. In diesem Fall sind zwei `Dosage`-Einträge erforderlich. 

### Bildung der Textdarstellung

 Die Textdarstellung wird je Einnahmeregel gebildet. Alle `Dosage`-Einträge mit derselben `sequence` und derselben Dosierungskategorie gehören zu derselben Einnahmeregel. Unterschiedliche Sequenznummern ergeben getrennte Einnahmeregeln. 

 Die Darstellung besteht, sofern möglich, aus Kurz- und Langform. Beide Teile werden durch ` | ` getrennt. 

#### Grundsatz

 Die Textdarstellung verwendet das Tageszeitenschema `MORN-NOON-EVE-NIGHT`. Die vier Positionen stehen für morgens, mittags, abends und nachts. Nicht belegte Tageszeiten werden mit `0` dargestellt. 

 Die Menge in einer Position entspricht unmittelbar dem Wert von `doseAndRate.doseQuantity.value` des zugehörigen `Dosage`-Eintrags. Mengen werden nicht über mehrere `Dosage`-Einträge hinweg addiert oder aus `frequency`-Werten berechnet. 

#### Kurzform

 Die Kurzform gibt das Tageszeitenschema für jede zeitlich unterschiedliche Ausprägung der Einnahmeregel an. 

*  Bei täglicher Dosierung wird nur das Tageszeitenschema ausgegeben, beispielsweise `1-0-0-1`. 
*  Bei einem Intervall in Tagen steht die Intervallangabe vor dem Tageszeitenschema, beispielsweise `Alle 2 Tage: 1-0-0-1`. 
*  Bei Wochentagen steht die Wochentagsabkürzung vor dem jeweiligen Tageszeitenschema, beispielsweise `Mo 1-0-0-1, Fr 1-0-0-1`. 
*  Bei Wochenintervallen steht die Intervallangabe vor den Wochentagen, beispielsweise `Alle 2 Wochen: Mo 1-0-0-1`. 
*  Bei Kalendertagen steht der Kalendertag nach dem jeweiligen Tageszeitenschema, beispielsweise `1-0-0-0 am 1. des Monats`. 

#### Langform

 Die Langform beginnt mit der Wiederholungsangabe. Anschließend wird das Tageszeitenschema je Wochentag oder Kalendertag ausgegeben. Zwischen Wiederholungsangabe und Dosierschema steht ein Doppelpunkt. 

##### Tägliche Dosierung

```
Täglich: {MORN-NOON-EVE-NIGHT}
```

 Beispiel: `1-0-0-1 | Täglich: 1-0-0-1`. 

##### Tagesintervall

Bei einer `period` >1:

```
Alle {period} Tage: {MORN-NOON-EVE-NIGHT}
```

 Beispiel: `Alle 2 Tage: 1-0-0-1 | Alle 2 Tage: 1-0-0-1`. 

##### Wöchentliche Dosierung

```
Wöchentlich: {MORN-NOON-EVE-NIGHT} am {Wochentag}
```

 Beispiel: `Mo 1-0-0-1, Fr 1-0-0-1 | Wöchentlich: 1-0-0-1 am Montag, 1-0-0-1 am Freitag`. 

##### Wochenintervall

Bei einer `period` >1:

```
Alle {period} Wochen: {MORN-NOON-EVE-NIGHT} am {Wochentag}
```

 Beispiel: `Alle 2 Wochen: Mo 1-0-0-1 | Alle 2 Wochen: 1-0-0-1 am Montag`. 

##### Monatliche Dosierung

```
Monatlich: {MORN-NOON-EVE-NIGHT} am {extension:dayOfMonth}. des Monats
```

 Beispiel: `1-0-0-1 am 1. des Monats, 1-0-0-1 am 10. des Monats | Monatlich: 1-0-0-1 am 1. des Monats, 1-0-0-1 am 10. des Monats`. 

##### Monatsintervall

Bei einer `period` >1:

```
Alle {period} Monate: {MORN-NOON-EVE-NIGHT} am {extension:dayOfMonth}. des Monats
```

 Beispiel: `Alle 3 Monate: 1-0-0-0 am 1. des Monats`. 

##### Bedarfsdosierung

 Bei einer Bedarfsdosierung mit `asNeeded = true` wird `Bei Bedarf` der jeweiligen Wiederholungsangabe vorangestellt. 

```
Bei Bedarf, täglich: {MORN-NOON-EVE-NIGHT}
```

 Beispiele: `Bei Bedarf: 1-0-0-1 | Bei Bedarf, täglich: 1-0-0-1` und `Bei Bedarf, alle 2 Tage: 1-0-0-1 | Bei Bedarf, alle 2 Tage: 1-0-0-1`. 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-dosage-standard-administration",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration",
  "version" : "0.1.1",
  "name" : "AtElgaEmedDosageStandardAdministration",
  "status" : "draft",
  "date" : "2026-08-31T18:38:38+00:00",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-dosierung",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Dosage",
      "path" : "Dosage",
      "constraint" : [{
        "key" : "frequencySameAsWhenCount",
        "severity" : "error",
        "human" : "wenn .when verwendet wird und periodUnit = d muss die frequency mit der Anzahl an entries in .when übereinstimmen",
        "expression" : "(timing.repeat.when.exists() and timing.repeat.periodUnit = 'd') implies timing.repeat.when.distinct().count() = timing.repeat.frequency",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration"
      },
      {
        "key" : "weekdaysRequireWeeklyPeriod",
        "severity" : "error",
        "human" : "DayOfWeek kann nur dann verwendet werden, wenn periodUnit 'wk' ist.",
        "expression" : "timing.repeat.dayOfWeek.exists() implies timing.repeat.periodUnit = 'wk'",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration"
      },
      {
        "key" : "frequencyEqualsEventWeekdayProduct",
        "severity" : "error",
        "human" : "Wenn Wochentage angegeben sind dann entspricht die frequency dem Produkt aus Wochentagen und der Anzahl an ausgewählten Tageszeiten.",
        "expression" : "timing.repeat.when.exists() and timing.repeat.dayOfWeek.exists() implies timing.repeat.frequency = timing.repeat.when.distinct().count() * timing.repeat.dayOfWeek.distinct().count()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration"
      },
      {
        "key" : "noDuplicateWhen",
        "severity" : "error",
        "human" : "Tageszeiten können nicht mehrmals vorkommen.",
        "expression" : "timing.repeat.when.count() = timing.repeat.when.distinct().count()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration"
      },
      {
        "key" : "noDuplicateDayOfWeek",
        "severity" : "error",
        "human" : "Wochentage können nicht mehrmals vorkommen.",
        "expression" : "timing.repeat.dayOfWeek.count() = timing.repeat.dayOfWeek.distinct().count()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration"
      },
      {
        "key" : "allowedPeriodUnitsForStandardAdministration",
        "severity" : "error",
        "human" : "Für Standarddosierungen im Tageszeitenschema sind nur tägliche, wöchentliche oder monatliche Wiederholungen zulässig.",
        "expression" : "timing.repeat.periodUnit = 'd' or timing.repeat.periodUnit = 'wk' or timing.repeat.periodUnit = 'm'",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-standard-administration"
      }]
    },
    {
      "id" : "Dosage.extension:DosageCategory",
      "path" : "Dosage.extension",
      "sliceName" : "DosageCategory"
    },
    {
      "id" : "Dosage.extension:DosageCategory.value[x]",
      "path" : "Dosage.extension.value[x]",
      "fixedCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
          "code" : "standard"
        }]
      }
    },
    {
      "id" : "Dosage.timing.repeat.frequency",
      "path" : "Dosage.timing.repeat.frequency",
      "min" : 1
    },
    {
      "id" : "Dosage.timing.repeat.frequencyMax",
      "path" : "Dosage.timing.repeat.frequencyMax",
      "max" : "0"
    },
    {
      "id" : "Dosage.timing.repeat.period",
      "path" : "Dosage.timing.repeat.period",
      "min" : 1
    },
    {
      "id" : "Dosage.timing.repeat.periodMax",
      "path" : "Dosage.timing.repeat.periodMax",
      "max" : "0"
    },
    {
      "id" : "Dosage.timing.repeat.periodUnit",
      "path" : "Dosage.timing.repeat.periodUnit",
      "min" : 1
    },
    {
      "id" : "Dosage.timing.repeat.timeOfDay",
      "path" : "Dosage.timing.repeat.timeOfDay",
      "max" : "0"
    },
    {
      "id" : "Dosage.timing.repeat.when",
      "path" : "Dosage.timing.repeat.when",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/ElgaTimingWhenStandardAdministrationVS"
      }
    },
    {
      "id" : "Dosage.timing.repeat.offset",
      "path" : "Dosage.timing.repeat.offset",
      "max" : "0"
    }]
  }
}

```
