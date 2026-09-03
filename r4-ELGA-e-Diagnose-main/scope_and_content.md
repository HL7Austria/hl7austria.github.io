# HL7.AT.FHIR.ELGA.EDIAG.R4\Umfang und Inhalt - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Umfang und Inhalt**

## Umfang und Inhalt

### Begriffsdefinitionen

Im Rahmen der Anwendung e-Diagnose werden folgenden Begriffe definiert:

* **Einträge**: Alle vom GDA erfassten medizinischen Informationen. Folgende Arten von Einträgen können erfasst werden:
* **Summary-Einträge**: Eine Teilmenge der Einträge, die vom GDA als besonders wichtig für die weitere Behandlung bzw. für den nächsten GDA eingestuft werden.
* **Gesamtansicht**: Zeigt alle Einträge der jeweiligen Kategorie (Diagnosen, Prozeduren oder Allergien und Intoleranzen). Die Darstellung erfolgt standardmäßig absteigend nach Datum. Eine alternative oder erweiterte Darstellung kann clientseitig erfolgen.
* **Summary-Liste**: Enthält ausschließlich die als Summary-Einträge gekennzeichneten Einträge der jeweiligen Kategorie. Eine manuelle Sortierung der einzelnen Summary-Einträge innerhalb der jeweiligen Liste ist möglich.

![](ediag_kategorie.png)

### Systemumfeld

Das Systemumfeld der e-Diagnose umfasst alle Akteur:innen, Systeme und organisatorischen Einheiten, die im Rahmen der Dokumentation, Einsichtnahme oder Nutzung der gespeicherten Conditions, Procedures und AllergiesIntolerances eingebunden sind.

![](ediag_systemumfeld.png)

#### ELGA-Teilnehmer:innen und Vertretungen

Im Fokus der e-Diagnose steht der:die ELGA-Teilnehmer:in und dessen:deren Gesamtheit der dokumentierten Conditions, Procedures und AllergiesIntolerances, welche von GDA festgestellt werden und die interdisziplinäre Zusammenarbeit des Behandlungsteams unterstützen soll, um so einen bestmöglichen Outcome für den:die ELGA-Teilnehmer:in zu ermöglichen.

Der Zugriff von ELGA-Teilnehmer:innen und deren Vertretungen auf die e-Diagnose erfolgt über das Gesundheitsportal unter Nutzung der bestehenden Identifikationsmechanismen. ELGA-Teilnehmer:innen können Einsicht in ihre gespeicherten Daten nehmen sowie Teilnehmer:innenrechte wahrnehmen. Eine direkte medizinische Dokumentation durch ELGA-Teilnehmer:innen und deren Vertretungen ist nicht vorgesehen.

Die Einsichtnahme in die e-Diagnose sowie die Wahrnehmung von Teilnehmer:innenrechten kann auch durch gesetzlich oder rechtswirksam bevollmächtigte Vertretungsbefugte (Vertretung) im Rahmen der jeweils geltenden rechtlichen Bestimmungen erfolgen. Der Zugriff erfolgt dabei – analog zu ELGA-Teilnehmer:innen – über das Gesundheitsportal unter Nutzung der bestehenden Identifikationsmechanismen.

#### GDA

GDA dokumentieren und nutzen die Inhalte der e-Diagnose im Rahmen eines aktiven Behandlungsverhältnisses. Die Conditions, Procedures, Alerts/Flags und AllergiesIntolerances werden von GDA dokumentiert und stehen auch allen weiteren behandelnden/berechtigten GDA zur Verfügung.

Der Zugriff erfolgt primär über angebundene Primärsysteme (z.B.: AIS/KIS, etc.) oder alternativ über das GDA-Portal. Die Authentifizierung und Autorisierung erfolgen gemäß GTelG 2012 unter Nutzung des bestehenden ELGA-Berechtigungssystems. Der Zugriff ist ausschließlich im Rahmen eines aktiven Behandlungsverhältnisses zulässig. Perspektivisch ist sicherzustellen, dass die e-Diagnose allen Berufsgruppen zugänglich gemacht wird, für welche dies nach berufsrechtlichen und datenschutzrechtlichen Vorgaben zulässig und geboten ist.

#### Unterstützende ELGA-Einrichtungen

Zur organisatorischen Unterstützung bestehen als Teile der ELGA und e-Health Supporteinrichtung die ELGA-Ombudsstelle (OBST), die Widerspruchstelle (WIST) sowie die Serviceline (SEL).:

* OBST: Zur Wahrung der Teilnehmerrechte für ELGA-Teilnehmer:innen und deren Vertretungen.
* WIST: Zum Einbringen von Opt-Out bzw. GDA-Sperren für ELGA-Teilnehmer:innen und deren Vertretungen (ohne Verwendung des ELGA-Portals).
* SEL: Für Fragen und Auskünfte von ELGA-Teilnehmer:innen und deren Vertretungen (Nutzung) und GDA (Nutzung und Anbindung an ELGA). Die SEL hat keinen Zugriff auf Gesundheitsdaten der ELGA-Teilnehmer:innen, unterstützt allerdings in Verwendung der Systeme – beispielsweise indem die Verfügbarkeit von Systemen überprüft wird.

### Diagnosencodierung

Die Erfassung der Daten erfolgt dabei strukturiert und standardisiert auf Basis von HL7 FHIR sowie SNOMED CT.

![](ediag_datenwege.png)

Unterstützt durch das e-Health-Codierservice kann parallel die Dokumentation gemäß Bundesgesetz über die Dokumentation im Gesundheitswesen (DokuG) gegenüber der Sozialversicherung (SV) und dem BMASGPK abgewickelt werden.

