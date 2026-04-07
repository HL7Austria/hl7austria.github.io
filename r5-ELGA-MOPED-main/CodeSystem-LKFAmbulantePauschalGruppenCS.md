# ELGA.MOPED\LKF Ambulante Pauschal-Gruppen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF Ambulante Pauschal-Gruppen**

## CodeSystem: LKF Ambulante Pauschal-Gruppen (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/LKFAmbulantePauschalGruppenCS | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:LKFAmbulantePauschalGruppenCS |

 
LKF Ambulante Pauschal-Gruppen 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LKFAbrechnungsGruppeVS](ValueSet-LKFAbrechnungsGruppeVS.md)
* [LKFAmbulantePauschalGruppenVS](ValueSet-LKFAmbulantePauschalGruppenVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "LKFAmbulantePauschalGruppenCS",
  "url" : "https://elga.moped.at/CodeSystem/LKFAmbulantePauschalGruppenCS",
  "version" : "0.1.0",
  "name" : "LKFAmbulantePauschalGruppenCS",
  "title" : "LKF Ambulante Pauschal-Gruppen",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-07T12:18:59+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "LKF Ambulante Pauschal-Gruppen",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 98,
  "concept" : [{
    "code" : "APG00.00",
    "display" : "Ambulanter Kontakt ohne codierte Leistungen"
  },
  {
    "code" : "APG00.11",
    "display" : "Ambulanter Kontakt mit sonstigen Diagnostik/Therapie-Leistungen"
  },
  {
    "code" : "APG00.12",
    "display" : "Ambulanter Kontakt mit sonstigen operativen Leistungen"
  },
  {
    "code" : "APG00.30",
    "display" : "Fachspezifische Konsultation"
  },
  {
    "code" : "APG01.00",
    "display" : "Ambulante Diagnostik/Therapie - Nervensystem, Psyche"
  },
  {
    "code" : "APG01.01",
    "display" : "Spezielle Diagnostik - Nervensystem"
  },
  {
    "code" : "APG01.02",
    "display" : "Spezielle neurophysiologische Diagnostik (Langzeit-EEG)"
  },
  {
    "code" : "APG01.03",
    "display" : "Spezielle Diagnostik - Nervensystem (Magnetenzephalographie)"
  },
  {
    "code" : "APG01.04",
    "display" : "Schlaflabor"
  },
  {
    "code" : "APG01.10",
    "display" : "Strukturierte Diagnostik/Therapie/Nachsorge bei neurologischen Erkrankungen"
  },
  {
    "code" : "APG01.21",
    "display" : "Spezielle Diagnostik/Therapie - Psyche"
  },
  {
    "code" : "APG01.31",
    "display" : "Transkranielle Magnetstimulation"
  },
  {
    "code" : "APG01.32",
    "display" : "Elektrokonvulsionstherapie"
  },
  {
    "code" : "APG02.00",
    "display" : "Ambulante Diagnostik/Therapie - Auge"
  },
  {
    "code" : "APG02.01",
    "display" : "Spezielle Diagnostik - Auge"
  },
  {
    "code" : "APG02.11",
    "display" : "Spezielle Therapien - Auge"
  },
  {
    "code" : "APG02.12",
    "display" : "Lasertherapie - Auge"
  },
  {
    "code" : "APG02.13",
    "display" : "Photodynamische Therapie der Makula"
  },
  {
    "code" : "APG02.14",
    "display" : "Intravitreale Injektion mit Anti-VEGF"
  },
  {
    "code" : "APG02.15",
    "display" : "Kryokoagulation der Netzhaut"
  },
  {
    "code" : "APG02.21",
    "display" : "Orthoptik"
  },
  {
    "code" : "APG03.00",
    "display" : "Ambulante Diagnostik/Therapie - Ohr"
  },
  {
    "code" : "APG03.01",
    "display" : "Spezielle Diagnostik/Therapie - Ohr"
  },
  {
    "code" : "APG03.10",
    "display" : "Ambulante Diagnostik/Therapie - Nase/Rachen/Kehlkopf"
  },
  {
    "code" : "APG03.11",
    "display" : "Spezielle Diagnostik/Therapie - Nase/Rachen"
  },
  {
    "code" : "APG03.12",
    "display" : "Spezielle Diagnostik/Therapie - Kehlkopf"
  },
  {
    "code" : "APG03.21",
    "display" : "Ambulante Eingriffe - Ohr/Nase/Rachen"
  },
  {
    "code" : "APG03.25",
    "display" : "Ambulante Eingriffe - Kehlkopf/Trachea"
  },
  {
    "code" : "APG03.31",
    "display" : "Logopädisch-phoniatrische Diagnostik/Therapie (einzel)"
  },
  {
    "code" : "APG03.50",
    "display" : "Ambulante Diagnostik/Therapie - Mundhöhle/Zähne/Kiefer"
  },
  {
    "code" : "APG03.51",
    "display" : "Spezielle Diagnostik/Therapie - Mundhöhle/Zähne/Kiefer"
  },
  {
    "code" : "APG03.61",
    "display" : "Kieferorthopädische Behandlung"
  },
  {
    "code" : "APG04.00",
    "display" : "Ambulante Diagnostik/Therapie - Atmung, Respirationstrakt"
  },
  {
    "code" : "APG04.01",
    "display" : "Spezielle Diagnostik - Atmung, Respirationstrakt"
  },
  {
    "code" : "APG05.00",
    "display" : "Ambulante Diagnostik/Therapie - Blut/Herz/Kreislauf"
  },
  {
    "code" : "APG05.01",
    "display" : "Spezielle Diagnostik - Herz/Kreislauf"
  },
  {
    "code" : "APG05.11",
    "display" : "Ambulante Eingriffe - Venen"
  },
  {
    "code" : "APG06.01",
    "display" : "Spezielle Diagnostik/Therapie - Diabetes mellitus"
  },
  {
    "code" : "APG07.00",
    "display" : "Ambulante Diagnostik/Therapie - Gastrointestinaltrakt"
  },
  {
    "code" : "APG07.01",
    "display" : "Spezielle Diagnostik - Gastrointestinaltrakt 1"
  },
  {
    "code" : "APG07.02",
    "display" : "Spezielle Diagnostik - Gastrointestinaltrakt 2"
  },
  {
    "code" : "APG07.11",
    "display" : "Ambulante Eingriffe - Gastrointestinaltrakt"
  },
  {
    "code" : "APG08.00",
    "display" : "Ambulante Diagnostik/Therapie - Urogenitaltrakt"
  },
  {
    "code" : "APG08.02",
    "display" : "Zystomanometrie"
  },
  {
    "code" : "APG08.03",
    "display" : "Videourodynamik"
  },
  {
    "code" : "APG08.11",
    "display" : "Ambulante Eingriffe - Urogenitaltrakt 1"
  },
  {
    "code" : "APG08.12",
    "display" : "Ambulante Eingriffe - Urogenitaltrakt 2"
  },
  {
    "code" : "APG08.21",
    "display" : "Spezielle Diagnostik - Schwangerschaft/Geburt"
  },
  {
    "code" : "APG08.22",
    "display" : "Invasive Diagnostik - Schwangerschaft/Geburt"
  },
  {
    "code" : "APG08.25",
    "display" : "Spezielle Therapie - Schwangerschaft/Geburt"
  },
  {
    "code" : "APG09.00",
    "display" : "Ambulante Diagnostik/Therapie - Haut/Allergie"
  },
  {
    "code" : "APG09.01",
    "display" : "Spezielle Diagnostik - Haut/Allergie"
  },
  {
    "code" : "APG09.11",
    "display" : "Ambulante Eingriffe - Haut/Weichteile/Knochen"
  },
  {
    "code" : "APG09.12",
    "display" : "Photodynamische Therapie"
  },
  {
    "code" : "APG09.21",
    "display" : "Spezielle Eingriffe - Haut/Weichteile"
  },
  {
    "code" : "APG10.11",
    "display" : "Reposition/Fixation"
  },
  {
    "code" : "APG10.12",
    "display" : "Ambulante Eingriffe - Bewegungsapparat"
  },
  {
    "code" : "APG12.11",
    "display" : "CT und CT-Angio"
  },
  {
    "code" : "APG12.12",
    "display" : "CT gezielte Interventionen"
  },
  {
    "code" : "APG12.21",
    "display" : "MR und MR-Angio"
  },
  {
    "code" : "APG12.22",
    "display" : "MR gezielte Interventionen"
  },
  {
    "code" : "APG12.23",
    "display" : "Funktionelle Magnetresonanztomographie"
  },
  {
    "code" : "APG12.41",
    "display" : "Phlebographie"
  },
  {
    "code" : "APG12.51",
    "display" : "Punktionen/Drainagen/Infiltrationen 1"
  },
  {
    "code" : "APG12.52",
    "display" : "Punktionen/Drainagen/Infiltrationen 2"
  },
  {
    "code" : "APG12.53",
    "display" : "Punktionen/Drainagen/Infiltrationen 3"
  },
  {
    "code" : "APG12.54",
    "display" : "Stereotaktische Mammabiopsie"
  },
  {
    "code" : "APG12.55",
    "display" : "Spezielle Gewebemarkierungen"
  },
  {
    "code" : "APG12.60",
    "display" : "Röntgen"
  },
  {
    "code" : "APG12.61",
    "display" : "Konventionelles Röntgen"
  },
  {
    "code" : "APG12.62",
    "display" : "Funktionelles Röntgen"
  },
  {
    "code" : "APG12.71",
    "display" : "Sonographie"
  },
  {
    "code" : "APG14.01",
    "display" : "Nuklearmedizinische Diagnostik 1"
  },
  {
    "code" : "APG14.02",
    "display" : "Nuklearmedizinische Diagnostik 2"
  },
  {
    "code" : "APG14.03",
    "display" : "Nuklearmedizinische Diagnostik 3"
  },
  {
    "code" : "APG14.04",
    "display" : "Nuklearmedizinische Diagnostik 4"
  },
  {
    "code" : "APG15.01",
    "display" : "Endoskopische Diagnostik/Therapie GIT"
  },
  {
    "code" : "APG15.02",
    "display" : "Endoskopische Diagnostik/Therapie UGT1"
  },
  {
    "code" : "APG15.03",
    "display" : "Endoskopische Mukosaresektion"
  },
  {
    "code" : "APG15.04",
    "display" : "Bronchoskopie"
  },
  {
    "code" : "APG15.05",
    "display" : "Endoskopische Interventionen 1"
  },
  {
    "code" : "APG15.06",
    "display" : "Endoskopische Diagnostik/Therapie UGT2"
  },
  {
    "code" : "APG15.08",
    "display" : "Endoskopie des Dünndarms"
  },
  {
    "code" : "APG18.00",
    "display" : "Physikalische und andere Therapie"
  },
  {
    "code" : "APG18.01",
    "display" : "Ergotherapie/Physiotherapie (einzel)"
  },
  {
    "code" : "APG18.02",
    "display" : "Ambulant durchgeführte Schulungen"
  },
  {
    "code" : "APG18.04",
    "display" : "Entwicklungsdiagnostik"
  },
  {
    "code" : "APG18.06",
    "display" : "Ambulante hyperbare Oxygenierung"
  },
  {
    "code" : "APG18.07",
    "display" : "Komplexe physikalische Therapie"
  },
  {
    "code" : "APG18.10",
    "display" : "Ergotherapie/Physiotherapie/logopäd.-phoniatr. Therapie (Gruppe)"
  },
  {
    "code" : "APG18.50",
    "display" : "Ambulante Diagnostik/Therapie - allgemein"
  },
  {
    "code" : "APG18.60",
    "display" : "Opferschutz"
  },
  {
    "code" : "APG21.01",
    "display" : "Beobachtung/Therapie/Nachsorge bei Kindern mit spezifischen Erkrankungen"
  },
  {
    "code" : "APG21.02",
    "display" : "Ambulante Besuche mit spezifischer Pharmakotherapie bei Kindern mit seltenen Erkrankungen"
  },
  {
    "code" : "APG23.01",
    "display" : "Anästhesie durch Anästhesisten"
  },
  {
    "code" : "APG23.02",
    "display" : "Spezielle Schmerztherapie"
  },
  {
    "code" : "APG24.00",
    "display" : "Labordiagnostik"
  },
  {
    "code" : "APG25.00",
    "display" : "Histologische/zytologische Diagnostik"
  }]
}

```
