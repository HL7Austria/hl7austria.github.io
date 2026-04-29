# ELGA.MOPED\Moped Fall - Versichertenanspruchserklärung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **Moped Fall - Versichertenanspruchserklärung**

## Moped Fall - Versichertenanspruchserklärung

Die folgenden Diagramme veranschaulichen die möglichen Interaktionen mit der Moped-Plattform im Teilprozess „Versichertenanspruchserklärung“. Zunächst werden die allgemeinen Interaktionsmöglichkeiten dargestellt, anschließend werden diese durch Beispiele konkretisiert und im Kontext einer spezifischen Anwendung dargestellt.

### Betroffene Akteure

| | |
| :--- | :--- |
| KA (Krankenhaus) | ✅ |
| LGF (Landesgesundheitsfonds) | ❌ |
| SV (Sozialversicherung) | ✅ |
| Bund | ❌ |

### Ablauf - generisch

#### VAE Anfrage (generisch)

#### VAE Antwort (generisch)

### Ablauf - Beispiele zur Anwendung

#### Positive VAE

Aufgrund der eingelangten VAE (Versichertenanspruchserklärung) Anfrage erfolgt seitens der SV die positive VAE Rückmeldung. Die positive Entscheidung wird in der Rückmeldung durch "00" (stationär) oder "19" (ambulant) ausgedrückt.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Positive VAE mit Fristende

Die SV hat die Möglichkeit die VAE unbefristet oder befristet abzugeben. Gibt es eine Befristung, so wird ein Enddatum angegeben.

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

#### Negative VAE

Aufgrund der eingelangten Aufnahme-/Ereignisanzeige erfolgt seitens SV eine negative Versichertenanspruchserklärung. Bei einer negativen Versichertenanspruchserklärung wird der jeweilige Ablehnungsgrund (Code) angeführt. Die KAprüft regelmäßig, ob es Ablehnungen der VAE seitens der SV gibt. Diese Fälle müssen bearbeitet werden. Im schlimmsten Fall muss der Patient die Rechnung als Selbstzahler selbst bezahlen. Ablehnungsgründe gibt es jedoch einige, die durchaus durch die Verwaltung im KA behoben werden können, so dass eine positive VAE durch die SV nach erneuter Anfrage in Folge möglich ist.

###### Beispiel

* Patient wurde anstelle von selbstversichert als mitversichert gemeldet und umgekehrt (nach Richtigstellung dann positive VAE möglich)
* Versicherung nicht festgestellt, weil nicht versichert
* Versicherung falsch, da andere SV—Träger zuständig ist (positive VAE nach Anfrage bei anderem Träger möglich)

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### VAE in Arbeit

TBD: Klärung ob diese Ausprägung noch nötig ist oder durch Moped obsolet wird. Der Eingang der VAE wird bestätigt, eine Zu- oder Absage kann zu dem Zeitpunkt allerdings nicht gegeben werden und der Status wird auf "in Arbeit" gesetzt.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### VAE in Arbeit wird später bewilligt

TBD: Klärung ob diese Ausprägung noch nötig ist oder durch Moped obsolet wird. Eine bereits zuvor eingegangene und mit "in Arbeit" beantwortete VAE wird positiv entschieden.

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### Anfrage für Verlängerung

Falls der stationäre Aufenthalt länger dauert als das angegebene Enddatum (Fristende) der bereits bewilligten VAE so muss die KA um eine Verlängerung ansuchen. Gibt es keine bewilligte VAE mit Fristende so kann die VAE auch nicht verlängert werden.

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

#### Antwort auf Verlängerung

Die Verlängerungs-Anfrage wird entweder genehmigt oder abgelehnt.

| | |
| :--- | :--- |
| Ambulant | ❌ |
| Stationär | ✅ |

#### VAE doch positiv

TBD

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

#### VAE doch negativ

TBD

| | |
| :--- | :--- |
| Ambulant | ✅ |
| Stationär | ✅ |

### Relevante Profile

* [Coverage](StructureDefinition-MopedCoverage.md)
* [VAERequestInitial](StructureDefinition-MopedVAERequestInitial.md)
* [VAERequestVerlaengerung](StructureDefinition-MopedVAERequestVerlaengerung.md)
* [VAEResponse](StructureDefinition-MopedVAEResponse.md)
* [$update Bundle](StructureDefinition-MopedUpdateBundleKA.md)
* [$anfragen Bundle](StructureDefinition-MopedAnfragenBundleKA.md)
* [$antworten Bundle](StructureDefinition-MopedAntwortenBundleSV.md)

### Technische Hinweise

* VAERequest und Response werden in FHIR durch Profile der Claim Ressource abgebildet.
* Kommentare zum jeweiligen VAE Ablehnungsgrund können in ClaimResponse.processNote.text festgehalten werden.
* Die initiale VAE und die VAE zur Verlängerung entsprechen unterschiedlichen Profilen mit unterschiedlichen Subtypen. In der Verlängerung muss verpflichtend die initiale VAE verlinkt werden.
* In der Anfrage zur VAE-Verlängerung wird das Enddatum als Verlängerungsdatum angegeben und zusätzlich auf die initiale Anfrage verwiesen. Die positive VAE für den ursprünglichen Zeitraum bleibt weiterhin gültig (außer sie wird aus anderen Gründen nachträglich storniert). Die VAE kann nach Ablauf der Frist der letzten positiven VAE immer wieder verlängert werden solange sich der Patient immer noch in Behandlung befindet.

#### Relevante Invarianten

* Es kann zu keinem Zeitpunkt zwei aktive initiale VAEs an den selben Träger geben.

#### Mögliche Notifications

##### SubscriptionTopic: neue VAE wurde angefragt

Die SV möchte benachrichtigt werden, wenn ein neuer VAERequest für sie bereitgestellt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-neueVAE.md) definiert.

##### SubscriptionTopic: VAE wurde abgelehnt

Die KAmöchte benachrichtigt werden, wenn ein VAERequest abgelehnt wurde. Das zugehörige SubscriptionTopic wurde in [diesem Beispiel](SubscriptionTopic-VAEabgelehnt.json.md) definiert.

