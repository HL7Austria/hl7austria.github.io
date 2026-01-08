# ELGA.MOPED\Akteure - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Akteure**

## Akteure

### Krankenanstalt

Im MOPED-Kontext spielt eine Krankenanstalt (KH) eine zentrale Rolle als Initiator zahlreicher Prozesse und als Meldestelle für vielfältige Daten. Diese umfassen unter anderem die Patientenaufnahme, die Abfrage des Versicherungsstatus und -anspruchs, die Erfassung von Versorgungsdaten während der Patientenbehandlung, die Entlassung sowie die Initiierung der Leistungsabrechnung.

```

    graph LR
    KH[Krankenanstalt]
    Moped[<a href="#top">Moped</a>] 
    KH --->|<a href="OperationDefinition-MOPED.Patient.Aufnehmen.html"> POST $aufnehmen</a>| Moped 
    KH -->|<a href="OperationDefinition-MOPED.Daten.Update.html"> POST $update</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.VAERequest.Anfragen.html"> POST $anfragen</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.Patient.Entlassen.html"> POST $entlassen</a>| Moped
    KH -->|<a href="OperationDefinition-MOPED.Encounter.Abrechnen.html"> POST $abrechnen</a>| Moped
    KH -->|<a href="TBD"> POST $stornieren</a>| Moped
    Moped -->|<a href="StructureDefinition-MopedVAEResponse.html"> GET VAEResponse</a>| KH
    Moped --->|<a href="StructureDefinition-MopedLKFResponse.html"> GET ClaimResponse</a>| KH

```

### Sozialversicherung

Im MOPED-Kontext übernimmt die Sozialversicherung (SV) eine zentrale Rolle, indem sie Rückmeldungen zur Versichertenanspruchserklärung bereitstellt, über die Entlassung von Patienten informiert wird und Benachrichtigungen über freigegebene Daten erhält. Darüber hinaus ist die SV verantwortlich für die Rückmeldung der Kostenmeldungsanforderung im Zusammenhang mit der Ausländerverrechnung sowie Regressen.

```

    graph LR
    SV[Sozialversicherung]
    Moped[<a href="#top">Moped</a>] 
    Moped --->|<a href="StructureDefinition-MopedVAERequest.html"> GET VAERequest?status=active</a>| SV
    Moped --->|<a href="StructureDefinition-MopedARKRequest.html"> GET ARKRequest?status=active</a>| SV
    SV --->|<a href="OperationDefinition-MOPED.Auf.Request.Antworten.html"> POST $antworten</a>| Moped

```

### Landesgesundheitsfonds

Im MOPED-Kontext sind die Landesgesundheitsfonds (LGF) für das Scoring der Leistungen im Rahmen der Abrechnung verantwortlich. Sie geben Hinweise und Begründungen bei Abweisungen und fordern gegebenenfalls Korrekturen an. Sobald von den Krankenanstalten ein endgültiges Scoring vorliegt, wird der LGF informiert und vergibt anschließend die endgültige Freigabe. Der LGF stellt Kosteninformationen für die Ausländerverrechnung und Regresse zur Verfügung und erhält zusätzliche Informationen der SV über den Verrechnungsstatus.

```

    graph LR
    LGF[Landesgesundheitsfonds]
    Moped[<a href="#top">Moped</a>] 
    Moped --->|<a href="StructureDefinition-MopedLKFRequest.html"> GET Claim</a>| LGF
    LGF --->|<a href="OperationDefinition-MOPED.ClaimResponse.Entscheiden.html"> POST $entscheiden</a>| Moped
    LGF --->|<a href="OperationDefinition-MOPED.Claim.Melden.html"> POST $melden</a>| Moped

```

### Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz

Im MOPED-Kontext spielt das Bundesministerium für Soziales, Gesundheit, Pflege und Konsumentenschutz (BMSGPK) eine bedeutende Rolle, da nach der Abrechnung pseudonymisierte Daten freigegeben werden. Diese Daten liefern dem BMSGPK wichtige Informationen für die strategische Steuerung im Gesundheitswesen.

```

    graph LR
    BMSGPK[BMSGPK]
    Moped[<a href="#top">Moped</a>] 
    Moped --->|GET Composition?status=final| BMSGPK 
    Moped --->|<a href="https://www.hl7.org/fhir/operation-measure-evaluate-measure.html"> POST Measure/$evaluate-measure</a>| BMSGPK

```

