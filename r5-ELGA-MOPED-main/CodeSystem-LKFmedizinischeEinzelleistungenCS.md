# ELGA.MOPED\LKF medizinische Einzelleistungen (MEL) - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF medizinische Einzelleistungen (MEL)**

## CodeSystem: LKF medizinische Einzelleistungen (MEL) (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/LKFmedizinischeEinzelleistungenCS | *Version*:0.1.0 | |
| Active as of 2026-01-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:LKFmedizinischeEinzelleistungenCS |

 
LKF medizinische Einzelleistungen (MEL) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LKFAbrechnungsGruppeVS](ValueSet-LKFAbrechnungsGruppeVS.md)
* [LKFmedizinischeEinzelleistungenVS](ValueSet-LKFmedizinischeEinzelleistungenVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "LKFmedizinischeEinzelleistungenCS",
  "url" : "https://elga.moped.at/CodeSystem/LKFmedizinischeEinzelleistungenCS",
  "version" : "0.1.0",
  "name" : "LKFmedizinischeEinzelleistungenCS",
  "title" : "LKF medizinische Einzelleistungen (MEL)",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-01-07T10:11:40+00:00",
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
  "description" : "LKF medizinische Einzelleistungen (MEL)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 205,
  "concept" : [
    {
      "code" : "MEL01.01",
      "display" : "Eingriffe an der Schädeldecke"
    },
    {
      "code" : "MEL01.02",
      "display" : "Eingriffe am Gehirnschädel und oberflächliche intrakranielle Eingriffe, stereotaktische Eingriffe"
    },
    {
      "code" : "MEL01.03",
      "display" : "Tiefe intrakranielle Eingriffe I"
    },
    {
      "code" : "MEL01.04",
      "display" : "Tiefe intrakranielle Eingriffe II"
    },
    {
      "code" : "MEL01.06",
      "display" : "Laminektomien und Bandscheiben-Eingriffe / Eingriffe bei Sakralteratom"
    },
    {
      "code" : "MEL01.07",
      "display" : "Eingriffe am Rückenmark und seinen Hüllen"
    },
    {
      "code" : "MEL01.08",
      "display" : "Funktionelle Eingriffe an Rückenmark, Nerven und vegetativem Nervensystem / Implantation von Pumpensystemen"
    },
    {
      "code" : "MEL01.09",
      "display" : "Eingriffe zur Stabilisierung der Wirbelsäule I"
    },
    {
      "code" : "MEL01.10",
      "display" : "Eingriffe zur Stabilisierung der Wirbelsäule II"
    },
    {
      "code" : "MEL01.11",
      "display" : "Zervikale Bandscheiben-Operation"
    },
    {
      "code" : "MEL01.12",
      "display" : "Implantation von Elektroden zur Epilepsiediagnostik"
    },
    {
      "code" : "MEL01.13",
      "display" : "Implantation von Elektroden zur Hinterstrangstimulation und Stimulation peripherer Nerven"
    },
    {
      "code" : "MEL01.14",
      "display" : "Implantation von Elektroden zur Tiefenhirnstimulation"
    },
    {
      "code" : "MEL01.15",
      "display" : "Implantation eines Impulsgenerators am Nervensystem"
    },
    {
      "code" : "MEL01.16",
      "display" : "Implantation eines Systems zur N. Vagusstimulation"
    },
    {
      "code" : "MEL01.17",
      "display" : "Minimal-invasive Eingriffe im Bereich der Wirbelsäule"
    },
    {
      "code" : "MEL01.18",
      "display" : "Komplexe Eingriffe an der Wirbelsäule"
    },
    {
      "code" : "MEL01.19",
      "display" : "Teilimplantation eines Impulsgenerators"
    },
    {
      "code" : "MEL01.20",
      "display" : "Transkranielle Eingriffe"
    },
    {
      "code" : "MEL02.01",
      "display" : "Eingriffe an den peripheren Nerven"
    },
    {
      "code" : "MEL02.02",
      "display" : "Funktionell-plastische Eingriffe mit Beteiligung der peripheren Nerven"
    },
    {
      "code" : "MEL02.03",
      "display" : "Kleine Eingriffe an Bindegewebe, Haut und Weichteilen"
    },
    {
      "code" : "MEL02.04",
      "display" : "Plexuseingriffe"
    },
    {
      "code" : "MEL03.01",
      "display" : "Osteotomie, Resektion und Osteosynthese am Gesichtsschädel und Kiefer"
    },
    {
      "code" : "MEL03.02",
      "display" : "Rekonstruktive Eingriffe an Gesicht, Lippen und Mundhöhle"
    },
    {
      "code" : "MEL03.03",
      "display" : "Eingriff zur Korrektur von Deformitäten an Ober- und Unterkiefer"
    },
    {
      "code" : "MEL03.04",
      "display" : "Eingriffe zur Korrektur kraniofazialer Deformitäten"
    },
    {
      "code" : "MEL04.01",
      "display" : "Eingriffe am äußeren Ohr und Mittelohr, Eingriffe zur Versorgung einer Liquorrhoe"
    },
    {
      "code" : "MEL04.02",
      "display" : "Eingriffe am intrakraniellen Innenohr"
    },
    {
      "code" : "MEL04.03",
      "display" : "Eingriffe an der Nase und Nasennebenhöhlen"
    },
    {
      "code" : "MEL04.04",
      "display" : "Tonsillektomie, Adenotomie, Paracentese"
    },
    {
      "code" : "MEL04.05",
      "display" : "Mikrochirurgische und endoskopische Eingriffe an den Nasennebenhöhlen"
    },
    {
      "code" : "MEL04.06",
      "display" : "Eingriffe an den Speicheldrüsen"
    },
    {
      "code" : "MEL04.07",
      "display" : "Komplexe Eingriffe am Hals und den oberen Atemwegen"
    },
    {
      "code" : "MEL04.08",
      "display" : "Eingriffe an den oberen Atemwegen"
    },
    {
      "code" : "MEL04.09",
      "display" : "Cochlearimplantat und elektronisches Mittelohrimplantat"
    },
    {
      "code" : "MEL04.10",
      "display" : "Eingriffe an der Schilddrüse und Nebenschilddrüse"
    },
    {
      "code" : "MEL05.01",
      "display" : "Eingriffe am Ösophagus, Magen und Zwerchfell"
    },
    {
      "code" : "MEL05.02",
      "display" : "Ösophagusresektion"
    },
    {
      "code" : "MEL05.03",
      "display" : "Magenteilresektion"
    },
    {
      "code" : "MEL05.04",
      "display" : "Totale und subtotale Gastrektomie"
    },
    {
      "code" : "MEL05.05",
      "display" : "Cholezystektomie"
    },
    {
      "code" : "MEL05.06",
      "display" : "Eingriffe am Gallengangsystem"
    },
    {
      "code" : "MEL05.07",
      "display" : "Eingriffe an Milz, Leber, Duodenum und Pankreas"
    },
    {
      "code" : "MEL05.08",
      "display" : "Eingriffe am Pankreas"
    },
    {
      "code" : "MEL06.01",
      "display" : "Appendektomie"
    },
    {
      "code" : "MEL06.02",
      "display" : "Eingriffe an Dünndarm und Dickdarm"
    },
    {
      "code" : "MEL06.03",
      "display" : "Eingriffe an Dickdarm und Rektum"
    },
    {
      "code" : "MEL06.04",
      "display" : "Komplexe Eingriffe an Dickdarm und Rektum"
    },
    {
      "code" : "MEL06.05",
      "display" : "Eingriffe an der Bauchwand, Laparotomie"
    },
    {
      "code" : "MEL06.06",
      "display" : "Eingriffe bei Bauchwandhernien, Leistenhernien beim Kind"
    },
    {
      "code" : "MEL06.08",
      "display" : "Komplexe Eingriffe an Rektum und Anus"
    },
    {
      "code" : "MEL06.09",
      "display" : "Eingriffe an Rektum und Anus"
    },
    {
      "code" : "MEL06.11",
      "display" : "Laparoskopie diagnostisch/therapeutisch"
    },
    {
      "code" : "MEL07.01",
      "display" : "Anatomische Lungenresektion"
    },
    {
      "code" : "MEL07.02",
      "display" : "Einfache thoraxchirurgische Eingriffe"
    },
    {
      "code" : "MEL07.03",
      "display" : "Erweiterte anatomische Lungenresektionen"
    },
    {
      "code" : "MEL07.04",
      "display" : "Eingriffe an der Thoraxwand"
    },
    {
      "code" : "MEL07.05",
      "display" : "Implantation eines Zwerchfell-Schrittmachers"
    },
    {
      "code" : "MEL07.06",
      "display" : "Bronchoskopische Lungenvolumenreduktion"
    },
    {
      "code" : "MEL08.01",
      "display" : "Eingriffe am Herzen ohne Herz-Lungen-Maschine"
    },
    {
      "code" : "MEL08.02",
      "display" : "Koronare Revaskularisation und andere Eingriffe am Herzen mit HLM"
    },
    {
      "code" : "MEL08.03",
      "display" : "Eingriffe an den Herzklappen und Aorta ascendens mit HLM"
    },
    {
      "code" : "MEL08.05",
      "display" : "Rekonstruktion der Aorta ascendens und des Aortenbogens mit Kreislaufstillstand, Korrektur komplexer Herzfehler"
    },
    {
      "code" : "MEL08.06",
      "display" : "Ventrikelersatz"
    },
    {
      "code" : "MEL08.07",
      "display" : "Rekonstruktionen an der thorakalen-thorakoabdominellen Aorta"
    },
    {
      "code" : "MEL08.08",
      "display" : "Thorakoskopische Eingriffe"
    },
    {
      "code" : "MEL08.09",
      "display" : "Implantation eines Aortenstents"
    },
    {
      "code" : "MEL08.10",
      "display" : "Implantation eines Systems zur extrakorporalen Membranoxygenierung (ECMO)"
    },
    {
      "code" : "MEL08.11",
      "display" : "Implantation eines herzunterstützenden Systems"
    },
    {
      "code" : "MEL09.01",
      "display" : "Rekonstruktionen an den peripheren Gefäßen"
    },
    {
      "code" : "MEL09.02",
      "display" : "Rekonstruktionen an der abdominellen Aorta und den viszeralen Gefäßen"
    },
    {
      "code" : "MEL09.03",
      "display" : "Eingriffe an den peripheren Gefäßen"
    },
    {
      "code" : "MEL09.04",
      "display" : "Isolierte Organperfusion"
    },
    {
      "code" : "MEL09.05",
      "display" : "Implantation eines Loop-Recorders"
    },
    {
      "code" : "MEL10.01",
      "display" : "Implantation eines Schrittmachers"
    },
    {
      "code" : "MEL10.02",
      "display" : "Implantation eines Defibrillators"
    },
    {
      "code" : "MEL10.03",
      "display" : "Implantation von Systemen zur kardialen Resynchronisation"
    },
    {
      "code" : "MEL10.04",
      "display" : "Implantation eines automatischen Kardioverters -Defibrillators mit kardialer Resynchronisationsfunktion"
    },
    {
      "code" : "MEL10.05",
      "display" : "Extraktion von Schrittmachersonden"
    },
    {
      "code" : "MEL11.01",
      "display" : "Eingriffe an Niere und Harnleiter I"
    },
    {
      "code" : "MEL11.02",
      "display" : "Komplexe Eingriffe an der Harnblase"
    },
    {
      "code" : "MEL11.03",
      "display" : "Eingriffe an Niere und Harnleiter II"
    },
    {
      "code" : "MEL11.04",
      "display" : "Eingriffe an Niere und Harnleiter III"
    },
    {
      "code" : "MEL11.05",
      "display" : "Eingriffe an Harnblase und Urethra"
    },
    {
      "code" : "MEL11.06",
      "display" : "Funktionseingriffe an Harnblase und Urethra"
    },
    {
      "code" : "MEL11.07",
      "display" : "Transurethrale Resektion der Harnblase"
    },
    {
      "code" : "MEL12.01",
      "display" : "Prostatektomie"
    },
    {
      "code" : "MEL12.02",
      "display" : "Implantation Penisprothese"
    },
    {
      "code" : "MEL12.03",
      "display" : "Transurethrale Resektion der Prostata"
    },
    {
      "code" : "MEL12.04",
      "display" : "Eingriffe am äußeren männlichen Genitale"
    },
    {
      "code" : "MEL12.05",
      "display" : "Einfache Eingriffe am äußeren männlichen Genitale"
    },
    {
      "code" : "MEL13.01",
      "display" : "Komplexe Hysterektomien"
    },
    {
      "code" : "MEL13.02",
      "display" : "Eingriffe am Uterus"
    },
    {
      "code" : "MEL13.03",
      "display" : "Laparoskopische Eingriffe an den weiblichen Beckenorganen"
    },
    {
      "code" : "MEL13.04",
      "display" : "Eingriffe an den weiblichen Beckenorganen und Beckenboden I"
    },
    {
      "code" : "MEL13.05",
      "display" : "Eingriffe an den weiblichen Beckenorganen und Beckenboden II"
    },
    {
      "code" : "MEL13.06",
      "display" : "Hysterektomien"
    },
    {
      "code" : "MEL13.07",
      "display" : "Einfache Eingriffe am Uterus"
    },
    {
      "code" : "MEL13.09",
      "display" : "Entbindung"
    },
    {
      "code" : "MEL13.10",
      "display" : "Eingriffe an den Adnexen"
    },
    {
      "code" : "MEL13.13",
      "display" : "Fetoskopische Eingriffe"
    },
    {
      "code" : "MEL14.01",
      "display" : "Osteosynthesen und Osteotomien an Schulter, Oberarm und Ellbogen"
    },
    {
      "code" : "MEL14.02",
      "display" : "Eingriffe an Schulter, Oberarm und Ellbogen"
    },
    {
      "code" : "MEL14.03",
      "display" : "Eingriffe an Unterarm, Handwurzel und Hand"
    },
    {
      "code" : "MEL14.04",
      "display" : "Endoprothetik des Schultergelenks"
    },
    {
      "code" : "MEL14.05",
      "display" : "Endoprothetik des Ellbogengelenks"
    },
    {
      "code" : "MEL14.06",
      "display" : "Endoprothetik der Hand"
    },
    {
      "code" : "MEL14.07",
      "display" : "Teilendoprothetik des Hüftgelenks"
    },
    {
      "code" : "MEL14.08",
      "display" : "Totalendoprothetik des Hüftgelenks"
    },
    {
      "code" : "MEL14.09",
      "display" : "Teilendoprothetik des Kniegelenks"
    },
    {
      "code" : "MEL14.10",
      "display" : "Totalendoprothetik des Kniegelenks"
    },
    {
      "code" : "MEL14.11",
      "display" : "Endoprothetik des Sprunggelenks"
    },
    {
      "code" : "MEL14.12",
      "display" : "Wechsel von Prothesenteilen"
    },
    {
      "code" : "MEL14.13",
      "display" : "Komplexe Eingriffe an Knie und Unterschenkel"
    },
    {
      "code" : "MEL14.14",
      "display" : "Eingriffe an Knie und Unterschenkel"
    },
    {
      "code" : "MEL14.15",
      "display" : "Eingriffe an Fuß, Mittelfuß und Zehen"
    },
    {
      "code" : "MEL14.16",
      "display" : "Amputationen"
    },
    {
      "code" : "MEL14.17",
      "display" : "Komplexe Eingriffe am Beckenring"
    },
    {
      "code" : "MEL14.18",
      "display" : "Eingriffe an Hüfte und Oberschenkel"
    },
    {
      "code" : "MEL14.19",
      "display" : "Replantationseingriffe"
    },
    {
      "code" : "MEL14.21",
      "display" : "Arthroskopische Eingriffe"
    },
    {
      "code" : "MEL14.22",
      "display" : "Eingriffe an Bewegungsapparat und Haut"
    },
    {
      "code" : "MEL14.23",
      "display" : "Entfernung von Osteosynthesematerial"
    },
    {
      "code" : "MEL14.24",
      "display" : "Komplexe plastische Eingriffe an der Haut/ Lappenchirurgie"
    },
    {
      "code" : "MEL14.25",
      "display" : "Komplexe orthopädische Eingriffe"
    },
    {
      "code" : "MEL14.26",
      "display" : "Implantation von Spezialprothesen"
    },
    {
      "code" : "MEL14.27",
      "display" : "Endoprothetik Mittelfuß und Zehen"
    },
    {
      "code" : "MEL14.28",
      "display" : "Endoprothetik des Kiefergelenks"
    },
    {
      "code" : "MEL15.01",
      "display" : "Plastische Eingriffe am äußeren Auge"
    },
    {
      "code" : "MEL15.02",
      "display" : "Eingriffe an der Orbita und am Bulbus"
    },
    {
      "code" : "MEL15.03",
      "display" : "Schiel-Operationen"
    },
    {
      "code" : "MEL15.04",
      "display" : "Glaukom-Operationen"
    },
    {
      "code" : "MEL15.05",
      "display" : "Katarakt-Operationen"
    },
    {
      "code" : "MEL15.06",
      "display" : "Eingriffe an der Hornhaut"
    },
    {
      "code" : "MEL15.07",
      "display" : "Eingriffe an der Netzhaut und am Glaskörper"
    },
    {
      "code" : "MEL16.01",
      "display" : "Resektionen an der Mamma"
    },
    {
      "code" : "MEL16.02",
      "display" : "Plastische Eingriffe an der Mamma"
    },
    {
      "code" : "MEL17.01",
      "display" : "Lymphadenektomien"
    },
    {
      "code" : "MEL17.02",
      "display" : "Komplexe Lymphoadenektomien, Entfernung retroperitonealer Raumforderungen"
    },
    {
      "code" : "MEL17.03",
      "display" : "Rekonstruktive Eingriffe am Lymphsystem"
    },
    {
      "code" : "MEL18.02",
      "display" : "Implantation der Niere"
    },
    {
      "code" : "MEL18.03",
      "display" : "Implantation von Leber/Dünndarm"
    },
    {
      "code" : "MEL18.04",
      "display" : "Implantation des Pankreas"
    },
    {
      "code" : "MEL18.05",
      "display" : "Implantation des Herzens"
    },
    {
      "code" : "MEL18.06",
      "display" : "Implantation der Lunge"
    },
    {
      "code" : "MEL18.07",
      "display" : "Implantation von Herz und Lunge"
    },
    {
      "code" : "MEL19.01",
      "display" : "Radiochirurgie mit Gammastrahlen"
    },
    {
      "code" : "MEL20.01",
      "display" : "Interventionelle Radiologie an den Gefäßen"
    },
    {
      "code" : "MEL20.02",
      "display" : "Radiofrequenztherapie"
    },
    {
      "code" : "MEL21.01",
      "display" : "Interventionelle Kardiologie - Koronarangiografie"
    },
    {
      "code" : "MEL21.03",
      "display" : "Interventionelle Kardiologie - Alternative Revaskularisationsverfahren"
    },
    {
      "code" : "MEL21.04",
      "display" : "Interventionelle Kardiologie - Rhythmologie"
    },
    {
      "code" : "MEL21.05",
      "display" : "Interventionelle Kardiologie - Vitientherapie"
    },
    {
      "code" : "MEL21.08",
      "display" : "Interventionelle Kardiologie - Thrombusaspiration"
    },
    {
      "code" : "MEL21.10",
      "display" : "Interventionelle Kardiologie - Distale Protektion"
    },
    {
      "code" : "MEL21.11",
      "display" : "Interventionelle Kardiologie - Revaskularisation"
    },
    {
      "code" : "MEL22.01",
      "display" : "Chemotherapie bei malignen Erkrankungen d. Leistungsgruppe A"
    },
    {
      "code" : "MEL22.02",
      "display" : "Chemotherapie bei malignen Erkrankungen d. Leistungsgruppe B"
    },
    {
      "code" : "MEL22.03",
      "display" : "Chemotherapie bei malignen Erkrankungen d. Leistungsgruppe C"
    },
    {
      "code" : "MEL22.04",
      "display" : "Chemotherapie bei malignen Erkrankungen d. Leistungsgruppe D"
    },
    {
      "code" : "MEL22.05",
      "display" : "Chemotherapie bei malignen Erkrankungen d. Leistungsgruppe E"
    },
    {
      "code" : "MEL22.06",
      "display" : "Chemotherapie bei malignen Erkrankungen d. Leistungsgruppe F"
    },
    {
      "code" : "MEL22.08",
      "display" : "Allogene Stammzelltransplantation - verwandte Spender"
    },
    {
      "code" : "MEL22.09",
      "display" : "Allogene Stammzelltransplantation - unverwandte Spender"
    },
    {
      "code" : "MEL22.10",
      "display" : "Autologe Stammzelltransplantation"
    },
    {
      "code" : "MEL22.11",
      "display" : "Gewinnung von Stammzellen aus Knochenmark/Blut - ohne Purging"
    },
    {
      "code" : "MEL22.13",
      "display" : "Andere, zusätzliche oder begleitende onkologische Therapie - Zytokine"
    },
    {
      "code" : "MEL22.14",
      "display" : "Andere, zusätzliche oder begleitende onkologische Therapie - monoklonale Antikörper"
    },
    {
      "code" : "MEL22.16",
      "display" : "Fortsetzung einer Chemotherapie oder Verabreichen nicht kostenrelevanter Zytostatika"
    },
    {
      "code" : "MEL22.18",
      "display" : "Zellseperator-Thrombozytenkonzentrat von Einzelspendern"
    },
    {
      "code" : "MEL22.19",
      "display" : "Spezifische Gammaglobulin-Verabreichung nach Stammzelltransplantation"
    },
    {
      "code" : "MEL22.20",
      "display" : "Gabe von Einzelfaktorkonzentraten bei angeborenen Gerinnungsstörungen und Hemmkörperhämophilie"
    },
    {
      "code" : "MEL22.21",
      "display" : "Graft versus Host Erkrankung (GvHD)"
    },
    {
      "code" : "MEL22.22",
      "display" : "Andere spezifische Tumortherapie"
    },
    {
      "code" : "MEL22.23",
      "display" : "Radioaktiv markierte Antikörper"
    },
    {
      "code" : "MEL22.24",
      "display" : "Verabreichung von Spenderlymphozyten nach allogener Stammzelltransplantation"
    },
    {
      "code" : "MEL22.26",
      "display" : "Andere, zusätzliche oder begleitende onkologische Therapien - Sonstige"
    },
    {
      "code" : "MEL22.27",
      "display" : "Onkologische Immuntherapie"
    },
    {
      "code" : "MEL22.28",
      "display" : "Pädiatrische onkologische Therapie - Basistherapie"
    },
    {
      "code" : "MEL22.29",
      "display" : "Pädiatrische onkologische Therapie - spezielle Therapie"
    },
    {
      "code" : "MEL22.30",
      "display" : "Verabreichung von modifizierten Zellen"
    },
    {
      "code" : "MEL22.31",
      "display" : "Lokoregionale Hyperthermie"
    },
    {
      "code" : "MEL23.01",
      "display" : "Alkoholentwöhnung im Turnus 6 bis 12 Wochen"
    },
    {
      "code" : "MEL23.02",
      "display" : "Drogenentwöhnungen auf Drogenstationen"
    },
    {
      "code" : "MEL24.01",
      "display" : "Nierenersatztherapie"
    },
    {
      "code" : "MEL24.02",
      "display" : "Plasmapherese, Plasmafiltration"
    },
    {
      "code" : "MEL24.03",
      "display" : "Adsorptionssystem und Dialyse albumingebundener Substanzen"
    },
    {
      "code" : "MEL24.04",
      "display" : "Photopherese"
    },
    {
      "code" : "MEL25.02",
      "display" : "Brachytherapie"
    },
    {
      "code" : "MEL25.04",
      "display" : "Radionuklidtherapie I"
    },
    {
      "code" : "MEL25.05",
      "display" : "Radionuklidtherapie II"
    },
    {
      "code" : "MEL25.06",
      "display" : "Implantation von radioaktiven Prostataseeds"
    },
    {
      "code" : "MEL25.07",
      "display" : "Intraoperative Radiotherapie"
    },
    {
      "code" : "MEL25.08",
      "display" : "Konventionelle Teletherapie"
    },
    {
      "code" : "MEL25.09",
      "display" : "Intensitätsmodulierte Teletherapie und stereotaktische Radiochirurgie"
    },
    {
      "code" : "MEL25.10",
      "display" : "Ergänzende Verfahren in der Strahlentherapie"
    },
    {
      "code" : "MEL26.01",
      "display" : "Systemische Lysetherapie"
    },
    {
      "code" : "MEL26.02",
      "display" : "Akute Insulttherapie auf Schlaganfalleinheiten (stroke unit)"
    },
    {
      "code" : "MEL27.01",
      "display" : "Hyperbare Oxygenation"
    },
    {
      "code" : "MEL29.01",
      "display" : "Extrakorporale/endoskopische Steinbehandlung"
    },
    {
      "code" : "MEL29.02",
      "display" : "Therapeutische ERCP / endoskopische Prothesenimplantation"
    },
    {
      "code" : "MEL30.01",
      "display" : "AIDS-Behandlung"
    },
    {
      "code" : "MEL32.01",
      "display" : "Behandlung in der PSO im Turnus (Erwachsene)"
    },
    {
      "code" : "MEL32.03",
      "display" : "Behandlung in der PSO im Turnus (Kinder und Jugendliche)"
    }
  ]
}

```
