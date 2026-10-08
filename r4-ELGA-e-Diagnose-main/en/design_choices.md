# Designentscheidungen - ELGA e-Diagnose R4 (Draft) v0.1.0

## Designentscheidungen

In Arbeit.

* Nur `POST` für Einträge.
* Liste mit `GET` und $write 
* ob History für Liste nötig, wird in https://github.com/HL7Austria/ELGA-e-Diagnose-R4/issues/13 noch diskutiert
 
* Info über unsicherheit bezüglich Patient Compartment

### Informationen über GDA und Patienten

Stammdaten zu Gesundheitsdiensteanbietern (GDA) und Patienten werden ausschließlich von der e-Diagnose-Fachanwendung verwaltet. Client-Anwendungen dürfen daher keine eigenen `Patient`-, `Practitioner`-, `PractitionerRole`- oder `Organization`-Ressourcen übermitteln. Es genügt, diese über ihren Identifier als logische Referenz (`Reference.identifier`) anzugeben:

* **GDA:** OID des GDA laut GDA-Index (GDA-I)
* **Patient:** bereichsspezifisches Personenkennzeichen Gesundheit (bPK-GH)

Die e-Diagnose-Fachanwendung löst diese Identifier gegen den GDA-I bzw. den Zentralen Patientenindex (ZPI) auf. Bei Bedarf legt sie die zugehörigen Ressourcen an und ersetzt die logischen Referenzen durch Referenzen auf diese Ressourcen. Beim Abruf von Daten enthalten die Ressourcen daher die aufgelösten Referenzen; die referenzierten Ressourcen können über die Fachanwendung abgerufen werden.

