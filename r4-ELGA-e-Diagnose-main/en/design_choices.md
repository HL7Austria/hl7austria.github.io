# Designentscheidungen - ELGA e-Diagnose R4 (Draft) v0.1.0

## Designentscheidungen

In Arbeit.

* Nur `POST` für Einträge.
* Liste mit `GET` und $write 
* ob History für Liste nötig, wird in https://github.com/HL7Austria/ELGA-e-Diagnose-R4/issues/13 noch diskutiert
 
* Info über unsicherheit bezüglich Patient Compartment

### Informationen über GDA und Patienten

Informationen zu GDAs und Patienten werden nur von der e-Diagnose-Fachanwendung verwaltet. Als Client-Anwendung ist es ausreichend, für GDAs deren OID und für Patienten deren bPK-GH anzugeben. Die e-Diagnose-Fachanwendung löst diese logischen Identifier gegenüber dem GDA-I bzw. ZPI auf, erstellt - falls notwendig - entsprechende Ressourcen und setzt die erforderlichen Referenzen. Beim Abruf von Daten aus der e-Diagnose-Fachanwendung sind die aufgelösten Informationen enthalten.

