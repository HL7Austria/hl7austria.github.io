# Hintergrund - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* **Hintergrund**

## Hintergrund

Die Relevanz der Austrian Patient Summary (APS) lässt sich durch zahlreiche aktuelle Projekte und Initiativen beschreiben, die in dem Paper **["Towards the Austrian Patient Summary: Standards and Cross-Border Integration"](https://ebooks.iospress.nl/ISBN/978-1-64368-592-2)** beschrieben werden.

Hervorzuheben sind in diesem Zusammenhang die [FHIR®-Spezifikation der International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/STU2/) sowie der [MyHealth@EU Requirements Catalogue für die Patient Summary](https://webgate.ec.europa.eu/fpfis/wikis/x/4uHzN) ([EU-Login](https://trusted-digital-identity.europa.eu/index_en) erforderlich), die direkten Einfluss auf die vorliegende Spezifikation der APS hatten.

> 
* Die Arbeiten rund um die [European Patient Summary (EPS) von HL7EU](https://build.fhir.org/ig/hl7-eu/eps/) sind noch nicht abgeschlossen und können somit noch nicht berücksichtigt werden.
* Aktuell gibt es noch keine Information darüber, wie die Spezifikation für das European EHR eXchange Format (EEHRxF) im Rahmen vom Europäischen Gesundheitsdatenraum (European Health Data Space, EHDS) aussehen wird.
Sobald entsprechende Informationen vorliegen, wird es zu einer Aktualisierung der APS kommen.

### Fokus auf IPS

In Österreich hat man sich darauf geeinigt, dass die IPS die Grundlage für die APS bilden soll. Die Gründe dafür sind vielseitig. Zunächst gibt es für die IPS sowohl eine [FHIR®](https://hl7.org/fhir/uv/ips/STU2/)- als auch eine [CDA®](https://art-decor.org/art-decor/decor-project--hl7ips-)-Spezifikation, was eine mögliche Konvertierung zwischen den beiden Formaten entsprechend erleichtert. Dem gegenüber steht die Spezifikation der [Patient Summary im Kontext von MyHealth@EU](https://art-decor.ehdsi.eu/art-decor/decor-templates--epsos-?section=templates&id=1.3.6.1.4.1.12559.11.10.1.3.1.1.3), die auf CDA® basiert und die innerhalb der EU eine größere Bedeutung hat als die IPS.

Mit dem EHDS zeichnet sich allerdings generell FHIR® ab. Das Projekt Xt-EHR befasst sich in Zusammenarbeit mit HL7EU unter anderem mit der Spezifikation der EPS, die ihrerseits auf die IPS aufbaut. Gleichzeitig wird in Xt-EHR auch die Konvergenz zur IPS beschrieben, weshalb langfristig davon auszugehen ist, dass die IPS im Grunde auch im europäischen Kontext eine zentrale Rolle spielen wird. Ebenso soll die Patient Summary im Rahmen von MyHealth@EU bis März 2029 auf FHIR® umgestellt werden.

### Vergleich IPS and MyHealth@EU PS

* IPS: Administrative Inhalte
* IPS: Patient
  * MyHealth@EU Requirements Catalogue: required
  * APS: Patient
  * Kommentar: required
  * ?: Patient
  * ?: required
  * ?: 
* IPS: Author
  * MyHealth@EU Requirements Catalogue: required
  * APS: Author
  * Kommentar: required
  * ?: Verfasser
  * ?: required
  * ?: 
* IPS: Attester
  * MyHealth@EU Requirements Catalogue: optional
  * APS: Attester
  * Kommentar: optional
  * ?: Attester
  * ?: optional
  * ?: 
* IPS: Custodian
  * MyHealth@EU Requirements Catalogue: optional
  * APS: Custodian
  * Kommentar: required
  * ?: Custodian
  * ?: required
  * ?: 
* IPS: Medizinische Inhalte
  * MyHealth@EU Requirements Catalogue: 
* IPS: Problems
  * MyHealth@EU Requirements Catalogue: required
  * APS: List of current problems/diagnosis
  * Kommentar: required
  * ?: Gesundheitsprobleme und Risiken
  * ?: required
  * ?: 
* IPS: Allergies and Intolerances
  * MyHealth@EU Requirements Catalogue: required
  * APS: Allergies and Intolerances
  * Kommentar: required
  * ?: Allergien und Intoleranzen
  * ?: required
  * ?: 
* IPS: Medication Summary
  * MyHealth@EU Requirements Catalogue: required
  * APS: Medication Summary
  * Kommentar: required
  * ?: Medikationsliste
  * ?: required
  * ?: 
* IPS: Immunizations
  * MyHealth@EU Requirements Catalogue: recommended
  * APS: Vaccinations
  * Kommentar: optional
  * ?: Impfungen
  * ?: recommended
  * ?: 
* IPS: Results
  * MyHealth@EU Requirements Catalogue: recommended
  * APS: Results
  * Kommentar: optional
  * ?: Diagnostische Resultate
  * ?: recommended
  * ?: 
* IPS: History of Procedures
  * MyHealth@EU Requirements Catalogue: recommended
  * APS: Procedures
  * Kommentar: required
  * ?: Eingriffe und Therapien
  * ?: required
  * ?: 
* IPS: Medical Devices
  * MyHealth@EU Requirements Catalogue: recommended
  * APS: Medical Devices
  * Kommentar: required
  * ?: Implantate, medizinische Geräte und Heilbehelfe
  * ?: required
  * ?: 
* IPS: Advance Directives
  * MyHealth@EU Requirements Catalogue: optional
  * APS: Advance Directives
  * Kommentar: optional
  * ?: Willenserklärungen und andere juridische Dokumente
  * ?: optional
  * ?: 
* IPS: Functional Status
  * MyHealth@EU Requirements Catalogue: optional
  * APS: Functional Status
  * Kommentar: optional
  * ?: Beeinträchtigungen
  * ?: optional
  * ?: 
* IPS: History of Pregnancy
  * MyHealth@EU Requirements Catalogue: optional
  * APS: Pregnancy History
  * Kommentar: optional
  * ?: Schwangerschaftshistorie
  * ?: optional
  * ?: 
* IPS: Plan of Care
  * MyHealth@EU Requirements Catalogue: optional
  * APS: Plan of Care
  * Kommentar: optional
  * ?: Behandlungsplan
  * ?: optional
  * ?: 
* IPS: Vital Signs
  * MyHealth@EU Requirements Catalogue: optional
  * APS: 
  * Kommentar: 
  * ?: Vitalparameter
  * ?: optional
  * ?: Die Vitalparameter werden in einer eigenen Sektion geführt.In einer zukünftigen Version der APS könnten diese in der Sektion"Diagnostische Resultate" aufgenommen werden.
* IPS: Alerts
  * MyHealth@EU Requirements Catalogue: optional
  * APS: Medical alert information (other alerts not included in allergies)
  * Kommentar: optional
  * ?: Warnungen
  * ?: optional
  * ?: 
* IPS: History of Past Problems
  * MyHealth@EU Requirements Catalogue: optional
  * APS: List of resolved, closed or inactive problems
  * Kommentar: optional
  * ?: Vergangene Gesundheitsprobleme und Risiken
  * ?: optional
  * ?: 
* IPS: Patient Story
  * MyHealth@EU Requirements Catalogue: optional
  * APS: 
  * Kommentar: 
  * ?: Patientenbericht
  * ?: optional
  * ?: 
* IPS: 
  * MyHealth@EU Requirements Catalogue: 
  * APS: Medical History
  * Kommentar: optional
  * ?: 
  * ?: 
  * ?: Aktuell keine Entsprechung in der APS.
* IPS: Social History
  * MyHealth@EU Requirements Catalogue: optional
  * APS: Social History
  * Kommentar: optional
  * ?: Lebensstil / Soziale Umstände und Verhalten
  * ?: optional
  * ?: 
* IPS: 
  * MyHealth@EU Requirements Catalogue: 
  * APS: Travel History
  * Kommentar: optional
  * ?: 
  * ?: 
  * ?: Aktuell keine Entsprechung in der APS.

