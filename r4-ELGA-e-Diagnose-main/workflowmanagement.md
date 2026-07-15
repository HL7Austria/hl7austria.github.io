# HL7.AT.FHIR.ELGA.EDIAG.R4\Workflowmanagement - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Workflowmanagement**

## Workflowmanagement

### Überblick der Statusänderungen der e-Diagnose Ressourcen

#### Status des List.entry.flags

Ein Eintrag in die Liste kann, abhängig vom jeweiligen Use Case, einen unterschiedlichen Status einnehmen. Dieser Status wird sowohl beispielsweise in der Condition-Ressource selbst als auch auf List-Ebene im Element List.entry.flag dokumentiert.

Das **flag**-Element eines Entries der List-Ressource beschreibt die **Art der Änderung eines Eintrags auf Listenebene** und kann folgende Status einnehmen:

| | |
| :--- | :--- |
| **New** | Neuer Eintrag wird der Liste hinzugefügt |
| **Unchanged** | Bestehender Eintrag wird beibehalten/zur Kenntnis genommen |
| **Removed** | Bestehender Eintrag wird entfernt |

#### Auswirkung der Zugriffsart auf List.entry.flags

Je nach Zugriffsart ([List-History-Read](uc_ediag_06_int_list.md#list-history-read), [List-Read](uc_ediag_06_int_list.md#list-read) oder [List-Write](uc_ediag_06_int_list.md#list-read)) ergeben sich unterschiedliche Auswirkungen auf die Verarbeitung dieser Status sowie auf die enthaltenen Ressourcen in den jeweiligen Listen.


#### Statustabelle

In Bearbeitung

