# ELGA.MOPED\SAPS3 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SAPS3 Questionnaire**

## Questionnaire: SAPS3 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFSAPS3Questionnaire | *Version*:0.1.0 | |
| Active as of 2024-07-12 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SAPS3Questionnaire |

 
A questionnaire for collecting SAPS3 data 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFSAPS3Questionnaire",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2024-07-12T00:00:00+00:00"
  },
  "url" : "https://elga.moped.at/Questionnaire/LKFSAPS3Questionnaire",
  "version" : "0.1.0",
  "name" : "SAPS3Questionnaire",
  "title" : "SAPS3 Questionnaire",
  "status" : "active",
  "date" : "2024-07-12",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "A questionnaire for collecting SAPS3 data",
  "item" : [
    {
      "linkId" : "saps3-set",
      "text" : "SAPS3 Data Set",
      "type" : "group",
      "item" : [
        {
          "linkId" : "saps3-02",
          "text" : "Krankenanstaltennummer",
          "type" : "string"
        },
        {
          "linkId" : "saps3-03",
          "text" : "Aufnahmezahl",
          "type" : "string"
        },
        {
          "linkId" : "saps3-04",
          "text" : "Datensatz-ID",
          "type" : "string"
        },
        {
          "linkId" : "saps3-05",
          "text" : "Aufnahme-/Kontaktdatum",
          "type" : "date"
        },
        {
          "linkId" : "saps3-06",
          "text" : "Bettenführende Hauptkostenstelle – Positionsnummer",
          "type" : "string"
        },
        {
          "linkId" : "saps3-07",
          "text" : "Erhebungsdatum",
          "type" : "date"
        },
        {
          "linkId" : "saps3-08",
          "text" : "Akute Infektion bei Aufnahme; Akute Infektion bei Aufnahme - Nosokomiale Infektion",
          "type" : "boolean"
        },
        {
          "linkId" : "saps3-08a",
          "text" : "Akute Infektion bei Aufnahme; Akute Infektion bei Aufnahme - Respiratorische Infektion",
          "type" : "boolean"
        },
        {
          "linkId" : "saps3-09",
          "text" : "Aufnahmegrund: Anderer, nicht klassifiziert",
          "type" : "boolean"
        },
        {
          "linkId" : "saps3-10",
          "text" : "Aufnahmegrund: Basispflege und Observanz",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Basispflege und Observanz/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Präoperative/Präinterventionelle Optimierung"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Medizinische Überwachung"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Postoperative/Postinterventionelle Überwachung"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-11",
          "text" : "Aufnahmegrund: Gastrointestinal",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Gastrointestinal/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Blutung: Blutung im oberen oder unteren Gastrointestinaltrakt"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Akutes Abdomen: Assoziiert mit einer Infektion, Perforation, Ischämie im oberen oder unteren Gastrointestinaltrakt. Exkludiert die schwere Pankreatitis."
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Schwere Pankreatitis"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Andere"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-12",
          "text" : "Aufnahmegrund: Hämatologisch",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Hämatologisch/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Haemorrhagisches Syndrom/DIC"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Schwere Hämolyse"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Andere"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-13",
          "text" : "Aufnahmegrund: Kardiovaskulär",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Kardiovaskulär/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Herzstillstand: Mit kardiopulmonaler Reanimation vor der Aufnahme auf die Intensivstation. Die Reanimation muss enthalten: Herzmassage/Defibrillation"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Schock: Hypovolämischer: durch externe Verluste oder interne Sequestration"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Schock: Hämorrhagischer"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Schock: Septischer"
              }
            },
            {
              "valueCoding" : {
                "code" : "5",
                "display" : "Schock: Kardiogener"
              }
            },
            {
              "valueCoding" : {
                "code" : "6",
                "display" : "Schock: Anaphylaktischer"
              }
            },
            {
              "valueCoding" : {
                "code" : "7",
                "display" : "Schock: Gemischt und undefiniert"
              }
            },
            {
              "valueCoding" : {
                "code" : "8",
                "display" : "Thoraxschmerzen: Mit EKG und/oder serologischen Veränderungen, welche mit Angina pectoris oder einem akuten Myokardinfarkt kompatibel sind"
              }
            },
            {
              "valueCoding" : {
                "code" : "9",
                "display" : "Hypertensive Krise"
              }
            },
            {
              "valueCoding" : {
                "code" : "10",
                "display" : "Rhythmusstörungen: durch Herzfrequenz oder Herzleitungsstörungen"
              }
            },
            {
              "valueCoding" : {
                "code" : "11",
                "display" : "Herzinsuffizienz (ohne Schock): Links-, Rechts- oder Global-Insuffizienz"
              }
            },
            {
              "valueCoding" : {
                "code" : "12",
                "display" : "Andere"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-14",
          "text" : "Aufnahmegrund: Leber",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Leber/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Leberversagen: Leberversagen mit metabolischen Störungen oder hepatischer Enzephalopathie"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Andere"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-15",
          "text" : "Aufnahmegrund: Metabolisch",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Metabolisch/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Säure-Basen Haushalts- und Elektrolytstörungen"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Hypo- und Hyperthermie"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Hypo- und Hyperglykämie: Inkludiert diabetisches Koma"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Andere"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-16",
          "text" : "Aufnahmegrund: Neurologisch",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Neurologisch/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Koma, Stupor, Konfusion, Agitation, Delirium"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Epileptischer Anfall"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Fokales neurologisches Defizit: Hemiplegie, Paraplegie, Tetraplegie"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Intrakranieller Masseneffekt (Hirndruck)"
              }
            },
            {
              "valueCoding" : {
                "code" : "5",
                "display" : "Andere"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-17",
          "text" : "Aufnahmegrund: Renal",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Renal/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Prärenales ANV: Akutes Nierenversagen welches hämodynamisch, also durch Hypovolämie oder Schock ausgelöst wird"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Obstruktives ANV: Postrenales Nierenversagen welches durch Obstruktion der intrarenalen oder der ableitenden Harnwege ausgelöst wird"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Organisches ANV: Akutes Nierenversagen welches von intraparenchymalen Läsionen, also im Bereich der renalen Gefäße, der Glomeruli oder des Interstitiums, ausgelöst wird"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Andere"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-18",
          "text" : "Aufnahmegrund: Respiratorisch",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Kein Aufnahmegrund: Respiratorisch/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ALI und ARDS: Syndrom der akuten Inflammation und erhöhten Permeabilität, assoziiert mit klinischen, radiologischen und physiologischen Abnormalitäten: arterielle Hypoxämie, welche nicht auf eine Sauerstofftherapie reagiert (ALI: PaO2/FiO2 <300 mm Hg; ARDS: PaO2/FiO2 <200 mm Hg) und diffuse bilaterale radiologische Infiltrate ohne Zeichen eines Herzversagens oder einer pulmonalen Hypertension"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Respiratorisches Versagen bei COPD: Obstruktive oder restriktive Form der COPD"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Andere: Eingeschränkte pulmonale Funktion, weniger ausgeprägt als bei ALI oder ARDS, aufgrund pulmonaler Läsionen oder Pleuritis, welche einer Sauerstoffgabe oder einer mechanischen Beatmung bedürfen"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-19",
          "text" : "Aufnahmegrund: Schweres Trauma",
          "type" : "boolean"
        },
        {
          "linkId" : "saps3-20",
          "text" : "Aufnahmetyp",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Geplant: Patient:innen, deren Aufnahme zumindest 12 Stunden im Voraus geplant wurde"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Ungeplant: Patient:innen, deren Aufnahme komplett ungeplant oder kürzer als 12 Stunden geplant wurde"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "G/L",
                "display" : "G/L"
              }
            }
          ],
          "linkId" : "saps3-21",
          "text" : "Blutbild: Leukozyten (Minimum)",
          "type" : "decimal"
        },
        {
          "linkId" : "saps3-22",
          "text" : "Blutbild: pH-Wert",
          "type" : "decimal"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "G/L",
                "display" : "G/L"
              }
            }
          ],
          "linkId" : "saps3-23",
          "text" : "Blutbild: Thrombozyten (Minimum)",
          "type" : "decimal"
        },
        {
          "linkId" : "saps3-24",
          "text" : "Chirurgie – Eingriff",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Keine Chirurgie – Eingriff/nicht erhoben"
              }
            },
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Abdomen: Oberer GI Trakt: Bis zu und inklusive Jejunum"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Abdomen: Unterer GI Trakt"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Abdomen: Biliärtrakt: Gallenblase und/oder biliäre Chirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Abdomen: Leber-Chirurgie: Leberteilresektion, protosystemische Shunts"
              }
            },
            {
              "valueCoding" : {
                "code" : "5",
                "display" : "Abdomen: Pankreas"
              }
            },
            {
              "valueCoding" : {
                "code" : "6",
                "display" : "Abdomen: endokrine Chirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "7",
                "display" : "Extremitäten-Chirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "8",
                "display" : "Gefäß: Aortenchirurgie: Dissektion, Atherom, Aneurysmen"
              }
            },
            {
              "valueCoding" : {
                "code" : "9",
                "display" : "Gefäß: Karotischirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "10",
                "display" : "Gefäß: Große Gefäße: Chirurgie im Bereich der intrathorakalen oder intraabdominalen Gefäße"
              }
            },
            {
              "valueCoding" : {
                "code" : "11",
                "display" : "Gefäß: Periphere Gefäßchirurgie: Chirurgie im Bereich arterieller oder venöser Gefäße, mit oder ohne Bypass. Exkludiert intrakranielle, intrathorakale oder intraabdominale Gefäße"
              }
            },
            {
              "valueCoding" : {
                "code" : "12",
                "display" : "Gefäß: Andere"
              }
            },
            {
              "valueCoding" : {
                "code" : "13",
                "display" : "Geburtshilflicher Eingriff: Kaiserschnitt, ektopische Schwangerschaft, peri- oder postpartum Blutung, intrauteriner Fruchttod"
              }
            },
            {
              "valueCoding" : {
                "code" : "14",
                "display" : "Gynäkologischer Eingriff: Chirurgie des Uterus, Ovarien, Zervix uteri, oder den Genitalien"
              }
            },
            {
              "valueCoding" : {
                "code" : "15",
                "display" : "Herz: Klappe: Alle Klappenoperationen ohne gleichzeitiger Koronarchirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "16",
                "display" : "Herz: Klappe mit CABG: Alle Klappenoperationen mit gleichzeitiger Koronarchirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "17",
                "display" : "Herz: CABG: Koronar-arterielles Bypass Grafting ohne Klappenchirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "18",
                "display" : "Herz: Andere: Herzchirurgie für andere Erkrankungen wie perikardialer Erguss, kongenitale Störungen, Ventrikuläres Aneurysma, Neoplasien, Vena-Cava-Clipping oder Einsatz eines Vena-Cava-Filters"
              }
            },
            {
              "valueCoding" : {
                "code" : "19",
                "display" : "HNO-Chirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "20",
                "display" : "Kiefer-Gesichtschirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "21",
                "display" : "Neurochirurgie: Zerebrovaskuläres Ereignis: Intrakranielles Hämatom oder anderes nicht-traumatisches Ereignis (z.B. Blutung oder Aneurysma)"
              }
            },
            {
              "valueCoding" : {
                "code" : "22",
                "display" : "Neurochirurgie: Intrakranieller Tumor"
              }
            },
            {
              "valueCoding" : {
                "code" : "23",
                "display" : "Neurochirurgie: Wirbelsäulenchirurgie"
              }
            },
            {
              "valueCoding" : {
                "code" : "24",
                "display" : "Neurochirurgie: Andere"
              }
            },
            {
              "valueCoding" : {
                "code" : "25",
                "display" : "Thorax-Chirurgie: Pneumektomie"
              }
            },
            {
              "valueCoding" : {
                "code" : "26",
                "display" : "Thorax-Chirurgie: Lobektomie"
              }
            },
            {
              "valueCoding" : {
                "code" : "27",
                "display" : "Thorax-Chirurgie: Pleurachirurgie: Jede Form der Pleurachirurgie, entweder wegen eines Tumors oder eines anderen Geschehens (Pneumothorax etc.)"
              }
            },
            {
              "valueCoding" : {
                "code" : "28",
                "display" : "Thorax-Chirurgie: Andere"
              }
            },
            {
              "valueCoding" : {
                "code" : "29",
                "display" : "Trauma: SHT: Chirurgie wegen eines subduralen, epiduralen, intrazerebralen Hämatoms und/oder Schädelfraktur"
              }
            },
            {
              "valueCoding" : {
                "code" : "30",
                "display" : "Trauma: Thorax"
              }
            },
            {
              "valueCoding" : {
                "code" : "31",
                "display" : "Trauma: Abdomen"
              }
            },
            {
              "valueCoding" : {
                "code" : "32",
                "display" : "Trauma: Extremitäten"
              }
            },
            {
              "valueCoding" : {
                "code" : "33",
                "display" : "Trauma: Polytrauma"
              }
            },
            {
              "valueCoding" : {
                "code" : "34",
                "display" : "Transplantation: Leber"
              }
            },
            {
              "valueCoding" : {
                "code" : "35",
                "display" : "Transplantation: Herz"
              }
            },
            {
              "valueCoding" : {
                "code" : "36",
                "display" : "Transplantation: Niere"
              }
            },
            {
              "valueCoding" : {
                "code" : "37",
                "display" : "Transplantation: Pankreas"
              }
            },
            {
              "valueCoding" : {
                "code" : "38",
                "display" : "Transplantation: Lunge"
              }
            },
            {
              "valueCoding" : {
                "code" : "39",
                "display" : "Transplantation: Herz/Lunge"
              }
            },
            {
              "valueCoding" : {
                "code" : "40",
                "display" : "Transplantation: Niere/Pankreas"
              }
            },
            {
              "valueCoding" : {
                "code" : "41",
                "display" : "Transplantation: Andere"
              }
            },
            {
              "valueCoding" : {
                "code" : "42",
                "display" : "Andere Eingriffe, nicht klassifiziert"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-25",
          "text" : "Chirurgischer Status",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Elektive Chirurgie: Patient:innen, welche einem chirurgischen Eingriff unterzogen wurden (vor der Aufnahme auf die Intensivstation) welcher länger als 24 Stunden voraus geplant wurde"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Notfalls-Eingriff: Patient:innen, welche einem chirurgischen Eingriff unterzogen wurden (vor der Aufnahme auf die Intensivstation) welcher kürzer als 24 Stunden voraus geplant wurde"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Kein chirurgischer Eingriff"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-26",
          "text" : "Glasgow Coma Scale: motorische Reaktion",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Keine Antwort"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Streckung/Dezerebrationssteifigkeit auf Schmerz"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Abnormale Beugung"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Ungezielte Schmerzabwehr durch Beugung"
              }
            },
            {
              "valueCoding" : {
                "code" : "5",
                "display" : "Gezielte Schmerzabwehr"
              }
            },
            {
              "valueCoding" : {
                "code" : "6",
                "display" : "Befolgt verbale Aufforderung"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-27",
          "text" : "Glasgow Coma Scale: verbale Reaktion",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Keine Antwort"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Unverständliche Laute (keine Wörter)"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Unangebrachte Phrasen"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Desorientiert, betreibt Konversation"
              }
            },
            {
              "valueCoding" : {
                "code" : "5",
                "display" : "Orientiert, betreibt Konversation"
              }
            }
          ]
        },
        {
          "linkId" : "saps3-28",
          "text" : "Glasgow Coma Scale: visuelle Reaktion",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Keine Antwort"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Auf Schmerzreize"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Befolgt Aufforderung"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Spontan"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "Schläge/min",
                "display" : "Schläge/min"
              }
            }
          ],
          "linkId" : "saps3-29",
          "text" : "Herzfrequenz (Maximum)",
          "type" : "integer"
        },
        {
          "linkId" : "saps3-30",
          "text" : "Koexistierende Erkrankungen",
          "type" : "group",
          "item" : [
            {
              "linkId" : "saps3-30-1",
              "text" : "Hämatologische Erkrankung: Lymphom, akute Leukämie oder Multiples Myelom",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-2",
              "text" : "HIV-positiv (kein AIDS): Positive HIV-Serologie, aber keine AIDS-Kriterien nach den CDC/WHO-Definitionen; CD4-Zellen sind, sofern gemessen, > 200",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-3",
              "text" : "AIDS: Patient:innen, welche die CDC/WHO-Definitionen für AIDS erfüllen, wie HIV-positive Patient:innen mit klinischen Komplikationen wie Pneumocystis carinii Pneumonie, Kaposi-Sarkom, Lymphom, Tuberkulose oder Toxoplasmose, oder CD4-Zellen sind, sofern gemessen, < 200",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-4",
              "text" : "Metastasierendes Malignom: Neoplasma mit Metastasen, bestätigt durch radiologische (z.B. CT), chirurgische oder andere Methoden",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-5",
              "text" : "Malignom, nicht metastasierend: Neoplasma ohne Metastasen, bestätigt durch radiologische (z.B. CT), chirurgische oder andere Methoden",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-6",
              "text" : "Leberzirrhose: Dokumentiert durch Biopsie oder klinischen Symptomen portaler Hypertension, Präsenz ösophagealer oder gastrischer Varizen (bestätigt durch Endoskopie oder Chirurgie) oder der Demonstration eines retrograden Flusses in der Vena lienalis, Episoden hepatischer Enzephalopathie oder einer Anamnese von Varizenblutungen",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-7",
              "text" : "Herzinsuffizienz NYHA II: Müdigkeit, Dyspnoe oder Angina pectoris, welche mit normaler Betätigung einhergehen",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-8",
              "text" : "Herzinsuffizienz NYHA III: Müdigkeit, Dyspnoe oder Angina pectoris, welche bereits bei mittelschwerer Betätigung auftreten",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-9",
              "text" : "Herzinsuffizienz NYHA IV: Müdigkeit, Dyspnoe oder Angina pectoris, welche mit leichter Betätigung einhergehen. Diese Patient:innen können nur geringe Wegstrecken zu Fuß zurücklegen oder andere Tätigkeiten alleine durchführen.",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-10",
              "text" : "Chronische respiratorische Insuffizienz: Permanente Atemnot bei leichter Aktivität aufgrund pulmonaler Erkrankungen (chronisch restriktiver oder obstruktiver Natur). Funktionell sind diese Patient:innen unfähig, alleine Stiegen zu steigen, zu arbeiten oder den Haushalt zu verrichten. Sollte auch dokumentiert werden, wenn eines der folgenden Symptome vorliegt: chronische Hypoxie, Hyperkapnie, sekundäre Polyzythämie oder pulmonale Hypertonension mit systolischem Druck > 40 mmHg) oder Respirator-Abhängigkeit.",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-11",
              "text" : "Chronische renale Insuffizienz: Chronische renale Therapie (Hämodialyse oder Peritonealdialyse) bei irreversiblen renalen Erkrankungen oder Anamnese einer chronischen renalen Insuffizienz",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-12",
              "text" : "Alkoholismus: Alkoholeinfuhr von mehr als 80 g pro Tag über einen Zeitraum von mindestens 6 Monaten vor der Aufnahme, welche klinische Symptome verursacht wie: Logorrhoe, Enzephalopathie, andere neurologische Erkrankungen, schlechter Ernährungszustand oder Leberzirrhose",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-13",
              "text" : "Drogensucht: Drogenabhängigkeit aufgrund intravenöser Drogeneinnahme (Kokain, Opiate und Derivate) für mindestens 6 Monate vor der Aufnahme. Patient:innen im Methadonprogramm ohne andere Drogenkonsumation fallen nicht darunter.",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-14",
              "text" : "Immunsuppression, andere: Der:die Patient:in weist eine Erkrankung auf, welche genügend fortgeschritten ist, um die Infektionsresistenz zu unterdrücken: Schwere Mangelernährung, angeborene Defektzustände des humoralen oder zellulären Systems. Exkludiert AIDS oder HIV-Infektion, metastasiernde oder hämatologische Neoplasien, Chemotherapie, Radiotherapie und Steroidbehandlung.",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-15",
              "text" : "Insulinpflichtiger Diabetes mellitus: Patient:innen, welche tägliche Insulingaben (Injektionen) benötigen",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-16",
              "text" : "Nicht-insulinpflichtiger Diabetes mellitus: Patient:innen mit diagnostiziertem Diabetes mellitus, welcher durch diätetische Maßnahmen und/oder Medikamente kontrolliert werden kann. Diese Patient:innen benötigen nicht regelmäßig Insulin.",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-17",
              "text" : "Steroide Behandlung: Tägliche Gabe von >= 0,3mg/kg KG Prednisolon oder äquivalente Dosierungen anderer Kortikoide mindestens 6 Monate vor der Aufnahme. Topische Steroide oder Steroide per Inhalationen gehören nicht dazu.",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-18",
              "text" : "Bestrahlung: Strahlentherapie während der letzten 6 Monate vor der Aufnahme. Exkludiert Strahlentherapie für nicht-invasive Tumoren, enterale oder parenterale Radioisotop-Therapie, radioaktive Implantate, Therapie zur Verhinderung heterotopischer Knochenformationen.",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-19",
              "text" : "Chemotherapie: Chemotherapie in den 6 Monaten vor der Aufnahme, inkludiert immunsuppressierende Therapie für Malignome, Rheumatoide Arthritis oder entzündliche Darmerkrankungen (außer reine Behandlung mit Steroiden).",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-20",
              "text" : "COPD: Chronisch obstruktive pulmonale Erkrankungen aufgrund chronischer Bronchitis und/oder Emphysem",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-30-21",
              "text" : "Arterielle Hypertonension: Anamnese eines systolischen Blutdrucks >= 160 mmHg und/oder eines diastolischen Blutdrucks >= 95 mmHg, behandelt oder unbehandelt",
              "type" : "boolean"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "°Celsius",
                "display" : "°Celsius"
              }
            }
          ],
          "linkId" : "saps3-31",
          "text" : "Körpertemperatur (Maximum)",
          "type" : "decimal"
        },
        {
          "linkId" : "saps3-32",
          "text" : "Mechanische Beatmung",
          "type" : "boolean"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "mmHG",
                "display" : "mmHG"
              }
            }
          ],
          "linkId" : "saps3-33",
          "text" : "Sauerstoff-Partialdruck arteriell (PaO2)",
          "type" : "decimal"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "%",
                "display" : "%"
              }
            }
          ],
          "linkId" : "saps3-34",
          "text" : "Sauerstoffkonzentration inspiratorisch (FiO2)",
          "type" : "decimal"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "mg/dL",
                "display" : "mg/dL"
              }
            }
          ],
          "linkId" : "saps3-35",
          "text" : "Serum: Bilirubin (Maximum)",
          "type" : "decimal"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "mg/dL",
                "display" : "mg/dL"
              }
            }
          ],
          "linkId" : "saps3-36",
          "text" : "Serum: Kreatinin (Maximum)",
          "type" : "decimal"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
              "valueCoding" : {
                "code" : "mmHg",
                "display" : "mmHg"
              }
            }
          ],
          "linkId" : "saps3-37",
          "text" : "Systolischer Blutdruck (Minimum)",
          "type" : "decimal"
        },
        {
          "linkId" : "saps3-38",
          "text" : "Therapeutische Maßnahmen (vor IBS)",
          "type" : "group",
          "item" : [
            {
              "linkId" : "saps3-38-1",
              "text" : "CPR: Herzstillstand mit kardiopulmonaler Reanimation vor der Aufnahme auf die Intensivstation. Die Reanimation muss enthalten: Thoraxkompressionen, Herzmassage oder Defibrillation.",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-38-2",
              "text" : "Vasoaktive Medikamente: Kontinuierlicher Einsatz von Vasopressoren, um den Blutdruck aufrechtzuerhalten (Adrenalin, Noradrenalin, Dobutamin in jeder Dosierung, Dopamin >5 μg/kgKG/ min), für mindestens eine Stunde",
              "type" : "boolean"
            },
            {
              "linkId" : "saps3-38-3",
              "text" : "Mechanische Beatmung: Invasive oder nicht-invasive Beatmung. Nicht inkludiert ist die alleinige Sauerstoffgabe über eine Venturi-Maske oder Nasenbrille.",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "saps3-39",
          "text" : "Zutransferierung",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Bettenstation: Der:die Patient:in wurde von einer Normalstation entweder derselben oder einer anderen Krankenanstalt zurtransferiert."
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Notaufnahme: Der:die Patient:in wurde von der Notaufnahme entweder derselben oder einer anderen Krankenanstalt zurtransferiert."
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Andere Intensivstation: Der:die Patient:in wurde von einer anderen Intensivstation entweder derselben oder einer anderen Krankenanstalt zurtransferiert."
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "IMCU: Der:die Patient:in wurde von einer Intermediate Care Unit entweder derselben oder einer anderen Krankenanstalt zurtransferiert."
              }
            },
            {
              "valueCoding" : {
                "code" : "5",
                "display" : "OP: Der:die Patient:in wurde von einem Operationssaal zurtransferiert."
              }
            },
            {
              "valueCoding" : {
                "code" : "6",
                "display" : "Aufwachraum: Der:die Patient:in wurde von einem Aufwachraum zurtransferiert."
              }
            },
            {
              "valueCoding" : {
                "code" : "7",
                "display" : "Andere: Der:die Patient:in wurde von anderen Lokalisationen aus auf die Intensivstation zurtransferiert."
              }
            }
          ]
        }
      ]
    }
  ]
}

```
