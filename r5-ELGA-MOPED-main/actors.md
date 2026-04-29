# ELGA.MOPED\Akteure - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Akteure**

## Akteure

### Krankenanstalt

Im MOPED-Kontext spielt eine Krankenanstalt (KA) eine zentrale Rolle als Initiator zahlreicher Prozesse und als Meldestelle für vielfältige Daten. Diese umfassen unter anderem die Patientenaufnahme, die Abfrage des Versicherungsstatus und -anspruchs, die Erfassung von Versorgungsdaten während der Patientenbehandlung, die Entlassung sowie die Initiierung der Leistungsabrechnung.

```

    graph LR
    KA[Krankenanstalt]
    Moped[Moped] 
    KA --->|POST $aufnehmen| Moped 
    KA -->|POST $update| Moped
    KA -->|POST $anfragen| Moped
    KA -->|POST $entlassen| Moped
    KA -->|POST $abrechnen| Moped
    KA -->|POST $stornieren| Moped
    KA -->|POST $einmelden| Moped
    Moped -->|GET VAEResponse| KA
    Moped --->|GET ClaimResponse| KA

```

### Sozialversicherung

Im MOPED-Kontext übernimmt die Sozialversicherung (SV) eine zentrale Rolle, indem sie Rückmeldungen zur Versichertenanspruchserklärung bereitstellt, über die Entlassung von Patienten informiert wird und Benachrichtigungen über freigegebene Daten erhält. Darüber hinaus ist die SV verantwortlich für die Rückmeldung der Kostenmeldungsanforderung im Zusammenhang mit der Ausländerverrechnung sowie Regressen.

```

    graph LR
    SV[Sozialversicherung]
    Moped[Moped] 
    Moped --->|GET VAERequest?status=active| SV
    Moped --->|GET ARKRequest?status=active| SV
    SV --->|POST $antworten| Moped

```

### Landesgesundheitsfonds

Im MOPED-Kontext sind die Landesgesundheitsfonds (LGF) für das Scoring der Leistungen im Rahmen der Abrechnung verantwortlich. Sie geben Hinweise und Begründungen bei Abweisungen und fordern gegebenenfalls Korrekturen an. Sobald von den Krankenanstalten ein endgültiges Scoring vorliegt, wird der LGF informiert und vergibt anschließend die endgültige Freigabe. Der LGF stellt Kosteninformationen für die Ausländerverrechnung und Regresse zur Verfügung und erhält zusätzliche Informationen der SV über den Verrechnungsstatus.

```

    graph LR
    LGF[Landesgesundheitsfonds]
    Moped[Moped] 
    Moped --->|GET Claim| LGF
    Moped --->|GET QuestionnaireResponse| LGF
    LGF --->|POST $entscheiden| Moped
    LGF --->|POST $melden| Moped

```

### Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz

Im MOPED-Kontext spielt das Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz (BMSGPK) eine bedeutende Rolle, da nach der Abrechnung pseudonymisierte Daten freigegeben werden. Diese Daten liefern dem BMSGPK wichtige Informationen für die strategische Steuerung im Gesundheitswesen.

```

    graph LR
    BMSGPK[BMSGPK]
    Moped[Moped] 
    Moped --->|GET Composition?status=final| BMSGPK 
    Moped --->|POST Measure/$evaluate-measure| BMSGPK

```

### Medizinische Register (z.B. Stroke‐Unit‐Register, Krebsregister,…)

Im Moped Kontext werden von den Krankenanstalten ausgewählte Meldungen an medizinische Register über Moped in Form von QuestionnaireResponses zur Verfügung gestellt. Die versionierten Questionnaires (Formulare) werden vom jeweiligen Register über einen noch zu definierenden Prozess/Infrastruktur für Questionnaires zur Verfügung gestellt. Die Krankenanstalt befüllt diese und speichert sie mit dem jeweiligen Fall in Moped ab. Die automatische Vorbefüllung von bereits in Moped zum Fall vorhandenen Informationen ($populate) ist angedacht. Das Register greift dabei ausschließlich lesend und nur auf die für es vorgesehenen QuestionnaireResponses in MOPED zu.

```

    graph LR
    Register[Register]
    Moped[Moped] 
    KA[Krankenanstalt]
    KA --->|POST $updateeiner fallbezogenen QuestionnaireResponse| Moped 
    Moped --->|GET QuestionnaireResponse| Register

```

