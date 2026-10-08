# Workflowmanagement - ELGA e-Diagnose R4 (Draft) v0.1.0

## Workflowmanagement

### Zusammenhang zwischen clinicalStatus und verificationStatus

Die Elemente `clinicalStatus` und `verificationStatus` stehen fachlich in engem Zusammenhang: Der `clinicalStatus` beschreibt, ob ein Zustand aktuell besteht, der `verificationStatus` gibt an, wie gesichert diese Aussage ist. Die FHIR-Basisspezifikation lässt viele Kombinationen dieser beiden Werte zu. Für e-Diagnose sind jedoch nur die in den folgenden Tabellen angeführten Kombinationen relevant und erlaubt. Andere Kombinationen sind im Rahmen von e-Diagnose nicht zu verwenden.

Für jede erlaubte Kombination sind die fachliche Übersetzung sowie die Begründung bzw. zusätzliche Anforderungen (z.B. verpflichtende Angaben) angeführt.

#### Erlaubte Kombinationen für Condition

| | | | |
| :--- | :--- | :--- | :--- |
| `active` | `provisional` | Verdacht auf |   |
| `active` | `differential` | Differentialdiagnose |   |
| `active` | - | gesichert |   |
| `inactive` | `refuted` | Ausschluss von | nur Angabe falls explizit notwendig und medizinisch sinnvoll (sonst: bei jeder Fiebermessung: Ausschluss von Fieber) |
| `inactive` | - | Zustand nach | Erfassen einer Diagnose, ohne Angabe eines expliziten`verificationStatus` |

#### Erlaubte Kombinationen für AllergyIntolerance

| | | | |
| :--- | :--- | :--- | :--- |
| `active` | `unconfirmed` | nicht gesichert | anamnestisch übernommen aus anderem Dokument, mit fraglicher bzw. keiner klinischen Beschreibung |
| `active` | `presumed` | Verdacht auf | `AllergyIntolerance.reaction`ist verpflichtend anzugeben |
| `active` | `confirmed` | gesichert | `AllergyIntolerance.reaction`ist verpflichtend anzugeben |
| `resolved` | `refuted` | Widerlegt/Ausschluss von | `AllergyIntolerance.reaction`ist verpflichtend anzugeben |

