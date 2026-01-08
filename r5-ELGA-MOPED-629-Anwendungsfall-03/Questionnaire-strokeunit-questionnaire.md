# ELGA.MOPED\Stroke Unit Registermeldung – Patientendaten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Unit Registermeldung – Patientendaten**

## Questionnaire: Stroke Unit Registermeldung – Patientendaten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://example.org/Questionnaire/strokeunit-questionnaire | *Version*:0.1.0 | |
| Active as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:StrokeUnitQuestionnaire |

 
Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten 

**Structure**

* [LinkID](https://hl7.org/fhir/R5/formats.html#table): StrokeUnitQuestionnaire
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 
  * [Type](https://hl7.org/fhir/R5/formats.html#table): Questionnaire
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): http://example.org/Questionnaire/strokeunit-questionnaire#0.1.0
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-patientendaten
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Patientendaten
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)2001
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Zentrum
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-string.png)2003
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Aufnahmezahl
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [string](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Max Length: 20
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-demographie
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Demographische Basisdaten
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-string.png)2040
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Vorname (für bPK nötig)
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [string](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Max Length: 64
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-string.png)2041
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Nachname (für bPK nötig)
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [string](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Max Length: 64
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-date.png)2004
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Geburtsdatum
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [date](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)2032
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Wohnort
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[2 options](#opt-item.2032)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)2030
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Wohnpostleitzahl (wenn Wohnort Österreich)
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2032](#item.2032)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)2050
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Studienteilnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-geschlecht
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Geschlecht
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)2005
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Geschlecht
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.2005)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-akuter-schlaganfall
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Akuter Schlaganfall
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)2006
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Akuter Schlaganfall
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.2006)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)2007
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Falls kein akuter Schlaganfall
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)!=Options:[3 options](#opt-item.2007)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-aufnahme-und-diagnostik
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Aufnahme und Diagnostik
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)3052
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum Ereignis bekannt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-date.png)3001
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum Ereignis
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [date](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[3052](#item.3052)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)3040
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum 'last seen well' bekannt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-date.png)3041
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum 'last seen well'
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [date](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[3040](#item.3040)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)3053
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit Ereignis bekannt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.3053)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-time.png)3003
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit Ereignis
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [time](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-time)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[3053](#item.3053)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)3050
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit 'last seen well' bekannt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:* [3053](#item.3053) = 
* [3053](#item.3053) = 

* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-time.png)3051
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit 'last seen well'
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [time](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-time)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[3050](#item.3050)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-ereignis-aufgetreten
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Ereignis aufgetreten
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)3005
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Ereignis aufgetreten
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.3005)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-date.png)3006
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum Krankenhausaufnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [date](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-time.png)3007
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit Krankenhausaufnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [time](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-time)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-date.png)3008
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum Aufnahme Stroke Unit
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [date](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-time.png)3009
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit Aufnahme Stroke Unit
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [time](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-time)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)3012
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Prehospital-SCORE erhoben
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)3013
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Prehospital-SCORE Wert
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[3012](#item.3012)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)30541
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Zutransport
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[2 options](#opt-item.30541)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-zutransport-extern
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Zutransport extern
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[30541](#item.30541)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)3010
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Zutransport extern
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[2 options](#opt-item.3010)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)3011
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Art Zutransport – anderes Krankenhaus
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[3010](#item.3010)=Options:[3 options](#opt-item.3011)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)3020
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Art Zutransport – direkt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[3010](#item.3010)=Options:[9 options](#opt-item.3020)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-string.png)3021
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Welcher Zutransport (wenn 'Anderer')
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [string](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Max Length: 64Enable When:[3020](#item.3020)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-zutransport-intern
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Zutransport intern
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[30541](#item.30541)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)zutransport-intern-auswahl
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Zutransport intern
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[6 options](#opt-item.zutransport-intern-auswahl)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-nih-aufnahme
  * [Text](https://hl7.org/fhir/R5/formats.html#table): NIH Stroke Scale bei Aufnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)4020
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Gesamtsumme NIH - SS bei Aufnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-rankinskala-aufnahme
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Rankinskala bei Aufnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)6001
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Rankinskala vor Insult
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)6002
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Rankinskala bei Aufnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-syndrom
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Syndrom
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)7001
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Syndrom
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[4 options](#opt-item.7001)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-lokalisation-ischamie
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Lokalisation
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[7001](#item.7001)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)7005
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Lokalisation Ischämie
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[7 options](#opt-item.7005)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-klinisches-syndrom
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Klinisches Syndrom
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[7001](#item.7001)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)7010
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Klinisches Syndrom
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[5 options](#opt-item.7010)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-string.png)7011
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Welches anderes klinisches Syndrom
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [string](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-string)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Max Length: 64Enable When:[7010](#item.7010)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-lokalisation-icb
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Lokalisation
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[7001](#item.7001)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)7015
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Seite primäre intrazerebrale Blutung
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.7015)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-lokalisation-primaere-icb
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Lokalisation primäre intrazerebrale Blutung
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[7001](#item.7001)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)7022
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Stammganglien
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)7023
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Thalamus
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)7024
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Cerebellum
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)7025
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Lobär
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)7026
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Pons
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)7027
  * [Text](https://hl7.org/fhir/R5/formats.html#table): IVH (intraventricular hemorrhage)
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)7030
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Wenn IVH: Lokalisation
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[7027](#item.7027)=Options:[2 options](#opt-item.7030)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)7050
  * [Text](https://hl7.org/fhir/R5/formats.html#table): GCS bei Aufnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)7060
  * [Text](https://hl7.org/fhir/R5/formats.html#table): ICB bei Aufnahme bestimmt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-decimal.png)7061
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Volumen in ml
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [decimal](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-decimal)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[7060](#item.7060)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)7072
  * [Text](https://hl7.org/fhir/R5/formats.html#table): GRAEB Score
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-diagnostik
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Diagnostik
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-erste-bildgebung
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Erste Bildgebung
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8888
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Bildgebende Untersuchung durchgeführt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8000
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Bereits vor Krankenhausaufnahme durchgeführt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[8888](#item.8888)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-date.png)8001
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [date](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:* [8000](#item.8000) = 
* [8003](#item.8003) = 
* [8004](#item.8004) = 

* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-time.png)8002
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit CCT
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [time](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-time)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:* [8000](#item.8000) = 
* [8003](#item.8003) = 
* [8004](#item.8004) = 

* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-bildgebung-verfahren
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Bildgebendes Verfahren
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[8888](#item.8888)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8003
  * [Text](https://hl7.org/fhir/R5/formats.html#table): CCT durchgeführt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8004
  * [Text](https://hl7.org/fhir/R5/formats.html#table): MRI durchgeführt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-gefäßdiagnostik-extrakraniell
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Erste Untersuchung der hirnzuführenden Gefäße (extrakraniell)
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8889
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Untersuchung der hirnzuführenden Gefäße durchgeführt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8011
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Bereits vor Krankenhausaufnahme durchgeführt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[8889](#item.8889)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-date.png)8009
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [date](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:* [8011](#item.8011) = 
* [8008](#item.8008) = 
* [8013](#item.8013) = 
* [8006](#item.8006) = 

* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-time.png)8010
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [time](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-time)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:* [8011](#item.8011) = 
* [8008](#item.8008) = 
* [8013](#item.8013) = 
* [8006](#item.8006) = 

* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8008
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Sonografie
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[8889](#item.8889)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8013
  * [Text](https://hl7.org/fhir/R5/formats.html#table): CTA
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[8889](#item.8889)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8006
  * [Text](https://hl7.org/fhir/R5/formats.html#table): MR-Angio
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[8889](#item.8889)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)8030
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Erste Untersuchung der Hirngefäße
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[5 options](#opt-item.8030)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)8060
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Gefäßverschluss (Hauptstamm)
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)806X
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Lokalisation des Gefäßverschlusses
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..*
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[8060](#item.8060)=Options:[10 options](#opt-item.806X)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-vortherapie
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Vortherapie bei Aufnahme (Antithrombotische Therapie)
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)8070
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Plättchenhemmer
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.8070)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)8075
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Vitamin K Antagonist
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.8075)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-decimal.png)8076
  * [Text](https://hl7.org/fhir/R5/formats.html#table): INR-Wert bei Aufnahme
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [decimal](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-decimal)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[8075](#item.8075)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)8080
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Apixaban
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.8080)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)8085
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Dabigatran
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.8085)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)8090
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Edoxaban
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.8090)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)8095
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Rivaroxaban
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.8095)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-risikofaktoren
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Risikofaktoren und Begleiterkrankungen
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9001
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Hypertonie
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9001)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9002
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Diabetes mellitus
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9002)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9003
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Vorinsult
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9003)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9004
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Herzinfarkt
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9004)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9005
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Hypercholesterinämie
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9005)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-integer.png)9015
  * [Text](https://hl7.org/fhir/R5/formats.html#table): DLCN Score
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [integer](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-integer)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[9005](#item.9005)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9006
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Vorhofflimmern
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9006)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9009
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Nikotin
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9009)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9012
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Alkohol
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9012)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)9013
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Niereninsuffizienz
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.9013)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-therapie-ischämisch
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Therapie ischämischer Schlaganfall
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[2006](#item.2006)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)10001
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Lyse i.v.
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.10001)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)10002
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Art der Thrombolyse
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[10001](#item.10001)=Options:[2 options](#opt-item.10002)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-date.png)10040
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Datum Lyse i.v.
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [date](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-date)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[10001](#item.10001)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-time.png)10041
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Uhrzeit Lyse i.v.
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [time](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-time)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:[10001](#item.10001)=
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)10090
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Akute endovaskuläre Behandlung
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)10005
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Thrombozytenaggregationshemmer
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.10005)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)10091
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Heparin
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[4 options](#opt-item.10091)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)10092
  * [Text](https://hl7.org/fhir/R5/formats.html#table): PTA/Stent der ACI
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.10092)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-coding.png)10093
  * [Text](https://hl7.org/fhir/R5/formats.html#table): CEA
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [coding](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-coding)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Options:[3 options](#opt-item.10093)
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-group.png)gruppe-therapie-icb
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Therapie intrazerebrale Blutung
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [group](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-group)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): Enable When:* [2006](#item.2006) = 
* [7001](#item.7001) = 

* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)10060
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Externe Ventrikel-Drainage
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)10061
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Lumbale Drainage
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)10062
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Intraventrikuläre Lyse
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)10063
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Operative Ausräumung
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](icon-q-boolean.png)10064
  * [Text](https://hl7.org/fhir/R5/formats.html#table): Hypothermie
  * [Cardinality](https://hl7.org/fhir/R5/formats.html#table): 0..1
  * [Type](https://hl7.org/fhir/R5/formats.html#table): [boolean](https://hl7.org/fhir/R5/codesystem-item-type.html#item-type-boolean)
  * [Description & Constraints](https://hl7.org/fhir/R5/formats.html#table)![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC): 
* [LinkID](https://hl7.org/fhir/R5/formats.html#table): ![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC)Documentation for this format

-------

**Options Sets**

**Answer options for 2032**

* null#1 ("im Inland")
* null#2 ("im Ausland")

**Answer options for 2005**

* null#1 ("Männlich")
* null#2 ("Weiblich")
* null#3 ("Divers")

**Answer options for 2006**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("Monitoring an der SU bei Hochrisikopatient:innen")

**Answer options for 2007**

* null#1 ("Nicht-vaskuläre Erkrankung, kein klinisches Bild eines Schlaganfalls (TIA)")
* null#2 ("Monitoring nach vaskulärer Intervention")
* null#3 ("Nicht-vaskuläre Erkrankung als Ursache für Schlaganfallbild (TIA)")

**Answer options for 3053**

* null#1 ("ja")
* null#2 ("nein, im Schlaf")
* null#3 ("nein, nicht erhebbar")

**Answer options for 3005**

* null#1 ("Im Wachzustand")
* null#2 ("Im Schlafzustand")
* null#3 ("Unbekannt")

**Answer options for 30541**

* null#1 ("Zutransport intern")
* null#2 ("Zutransport extern")

**Answer options for 3010**

* null#1 ("Anderes Krankenhaus")
* null#2 ("Direkt")

**Answer options for 3011**

* null#1 ("Rettung mit Notarzt")
* null#2 ("Rettung ohne Notarzt")
* null#3 ("Rettungshubschrauber")

**Answer options for 3020**

* null#1 ("Rettung mit Notarzt mit Aviso")
* null#2 ("Rettung ohne Notarzt mit Aviso")
* null#3 ("Rettungshubschrauber")
* null#4 ("Privat")
* null#5 ("Anderer")
* null#6 ("Rettung mit Notarzt ohne Aviso")
* null#7 ("Rettung ohne Notarzt ohne Aviso")
* null#8 ("Rettung mit Notarzt")
* null#9 ("Rettung ohne Notarzt")

**Answer options for zutransport-intern-auswahl**

* null#3055 ("Ambulanz")
* null#3056 ("Andere Fachabteilung")
* null#3057 ("Direkt an die Stroke Unit")
* null#3058 ("Notaufnahme")
* null#3059 ("Eigene Fachabteilung")
* null#3060 ("Schlaganfall im Krankenhaus")

**Answer options for 7001**

* null#1 ("Ischämie")
* null#2 ("Primäre intrazerebrale Blutung")
* null#3 ("Sinus-/Venenthrombose (SVT)")
* null#4 ("Subarachnoidalblutung (SAB)")

**Answer options for 7005**

* null#1 ("Linke Großhirnhemisphäre")
* null#2 ("Rechte Großhirnhemisphäre")
* null#3 ("Beide Großhirnhemisphären")
* null#4 ("Vorwiegend Hirnstamm")
* null#5 ("Vorwiegend Kleinhirn")
* null#6 ("Retina")
* null#7 ("Rückenmark")

**Answer options for 7010**

* null#1 ("LACS")
* null#2 ("TACS")
* null#3 ("PACS")
* null#4 ("POCS")
* null#5 ("Anderes")

**Answer options for 7015**

* null#1 ("Links")
* null#2 ("Rechts")
* null#3 ("Beidseits")

**Answer options for 7030**

* null#1 ("Seitenventrikel")
* null#2 ("3. oder 4. Ventrikel")

**Answer options for 8030**

* null#1 ("Sonografie")
* null#2 ("CTA")
* null#3 ("MR-Angio")
* null#4 ("DSA")
* null#5 ("keine")

**Answer options for 806X**

* http://example.org/CodeSystem/vessel-occlusion#8061 ("M1-Verschluss")
* http://example.org/CodeSystem/vessel-occlusion#8062 ("M2-Verschluss")
* http://example.org/CodeSystem/vessel-occlusion#8063 ("T-Gabelverschluss")
* http://example.org/CodeSystem/vessel-occlusion#8064 ("Distaler ACI-Verschluss, T-Gabel jedoch offen")
* http://example.org/CodeSystem/vessel-occlusion#8065 ("Basilaris-Verschluss")
* http://example.org/CodeSystem/vessel-occlusion#8066 ("V4-Verschluss")
* http://example.org/CodeSystem/vessel-occlusion#8067 ("A. c. posterior-Verschluss")
* http://example.org/CodeSystem/vessel-occlusion#8071 ("A. c. anterior-Verschluss")
* http://example.org/CodeSystem/vessel-occlusion#8072 ("Verschluss der proximalen ACI")
* http://example.org/CodeSystem/vessel-occlusion#8073 ("Stenose der proximalen ACI (wenn >= 70 %)")

**Answer options for 8070**

* null#1 ("Mono")
* null#2 ("Dual")
* null#0 ("Nein")

**Answer options for 8075**

* null#1 ("ja")
* null#2 ("derzeit pausiert")
* null#0 ("nein")

**Answer options for 8080**

* null#1 ("ja")
* null#2 ("derzeit pausiert")
* null#0 ("nein")

**Answer options for 8085**

* null#1 ("ja")
* null#2 ("derzeit pausiert")
* null#0 ("nein")

**Answer options for 8090**

* null#1 ("ja")
* null#2 ("derzeit pausiert")
* null#0 ("nein")

**Answer options for 8095**

* null#1 ("ja")
* null#2 ("derzeit pausiert")
* null#0 ("nein")

**Answer options for 9001**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("unbekannt")

**Answer options for 9002**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("unbekannt")

**Answer options for 9003**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("unbekannt")

**Answer options for 9004**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("unbekannt")

**Answer options for 9005**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("unbekannt")

**Answer options for 9006**

* null#1 ("ja bereits bekannt")
* null#3 ("ja De-Novo (EKG)")
* null#0 ("nein")

**Answer options for 9009**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("unbekannt")

**Answer options for 9012**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("unbekannt")

**Answer options for 9013**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("unbekannt")

**Answer options for 10001**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("extern durchgeführt")

**Answer options for 10002**

* null#1 ("Alteplase")
* null#2 ("Tenecteplase")

**Answer options for 10005**

* null#2 ("Mono")
* null#3 ("Dual")
* null#0 ("Nein")

**Answer options for 10091**

* null#1 ("Keines")
* null#2 ("Low")
* null#3 ("Medium")
* null#4 ("High")

**Answer options for 10092**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("vorgesehen")

**Answer options for 10093**

* null#1 ("ja")
* null#0 ("nein")
* null#2 ("vorgesehen")



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "strokeunit-questionnaire",
  "url" : "http://example.org/Questionnaire/strokeunit-questionnaire",
  "version" : "0.1.0",
  "name" : "StrokeUnitQuestionnaire",
  "title" : "Stroke Unit Registermeldung – Patientendaten",
  "status" : "active",
  "date" : "2025-10-15T12:16:02+00:00",
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
  "description" : "Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten",
  "item" : [
    {
      "linkId" : "gruppe-patientendaten",
      "text" : "Patientendaten",
      "type" : "group",
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueInteger" : 111
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueInteger" : 999
            }
          ],
          "linkId" : "2001",
          "text" : "Zentrum",
          "type" : "integer"
        },
        {
          "linkId" : "2003",
          "text" : "Aufnahmezahl",
          "type" : "string",
          "maxLength" : 20
        },
        {
          "linkId" : "gruppe-demographie",
          "text" : "Demographische Basisdaten",
          "type" : "group",
          "item" : [
            {
              "linkId" : "2040",
              "text" : "Vorname (für bPK nötig)",
              "type" : "string",
              "maxLength" : 64
            },
            {
              "linkId" : "2041",
              "text" : "Nachname (für bPK nötig)",
              "type" : "string",
              "maxLength" : 64
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueDate" : "1900-01-01"
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueDate" : "2026-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today()"
                        }
                      }
                    ]
                  }
                }
              ],
              "linkId" : "2004",
              "text" : "Geburtsdatum",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "radio-button",
                        "display" : "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "2032",
              "text" : "Wohnort",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "im Inland"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "im Ausland"
                  }
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueInteger" : 1000
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueInteger" : 9999
                }
              ],
              "linkId" : "2030",
              "text" : "Wohnpostleitzahl (wenn Wohnort Österreich)",
              "type" : "integer",
              "enableWhen" : [
                {
                  "question" : "2032",
                  "operator" : "=",
                  "answerCoding" : {
                    "code" : "1"
                  }
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueInteger" : 0
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueInteger" : 999
                }
              ],
              "linkId" : "2050",
              "text" : "Studienteilnahme",
              "type" : "integer",
              "required" : false
            }
          ]
        },
        {
          "linkId" : "gruppe-geschlecht",
          "text" : "Geschlecht",
          "type" : "group",
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "radio-button",
                        "display" : "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "2005",
              "text" : "Geschlecht",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Männlich"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Weiblich"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "Divers"
                  }
                }
              ]
            }
          ]
        },
        {
          "linkId" : "gruppe-akuter-schlaganfall",
          "text" : "Akuter Schlaganfall",
          "type" : "group",
          "item" : [
            {
              "linkId" : "2006",
              "text" : "Akuter Schlaganfall",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "ja"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "0",
                    "display" : "nein"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Monitoring an der SU bei Hochrisikopatient:innen"
                  }
                }
              ]
            },
            {
              "linkId" : "2007",
              "text" : "Falls kein akuter Schlaganfall",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "2006",
                  "operator" : "!=",
                  "answerCoding" : {
                    "code" : "1"
                  }
                }
              ],
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Nicht-vaskuläre Erkrankung, kein klinisches Bild eines Schlaganfalls (TIA)"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Monitoring nach vaskulärer Intervention"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "Nicht-vaskuläre Erkrankung als Ursache für Schlaganfallbild (TIA)"
                  }
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "linkId" : "gruppe-aufnahme-und-diagnostik",
      "text" : "Aufnahme und Diagnostik",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }
      ],
      "item" : [
        {
          "linkId" : "3052",
          "text" : "Datum Ereignis bekannt",
          "type" : "boolean"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueDate" : "2024-01-01",
              "_valueDate" : {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                    "valueExpression" : {
                      "language" : "text/fhirpath",
                      "expression" : "today() - 1 years"
                    }
                  }
                ]
              }
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueDate" : "2026-01-01",
              "_valueDate" : {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                    "valueExpression" : {
                      "language" : "text/fhirpath",
                      "expression" : "today()"
                    }
                  }
                ]
              }
            }
          ],
          "linkId" : "3001",
          "text" : "Datum Ereignis",
          "type" : "date",
          "enableWhen" : [
            {
              "question" : "3052",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "3040",
          "text" : "Datum 'last seen well' bekannt",
          "type" : "boolean"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueDate" : "2024-01-01",
              "_valueDate" : {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                    "valueExpression" : {
                      "language" : "text/fhirpath",
                      "expression" : "today() - 1 years"
                    }
                  }
                ]
              }
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueDate" : "2026-01-01",
              "_valueDate" : {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                    "valueExpression" : {
                      "language" : "text/fhirpath",
                      "expression" : "today()"
                    }
                  }
                ]
              }
            }
          ],
          "linkId" : "3041",
          "text" : "Datum 'last seen well'",
          "type" : "date",
          "enableWhen" : [
            {
              "question" : "3040",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "3053",
          "text" : "Uhrzeit Ereignis bekannt",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "nein, im Schlaf"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "nein, nicht erhebbar"
              }
            }
          ]
        },
        {
          "linkId" : "3003",
          "text" : "Uhrzeit Ereignis",
          "type" : "time",
          "enableWhen" : [
            {
              "question" : "3053",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ]
        },
        {
          "linkId" : "3050",
          "text" : "Uhrzeit 'last seen well' bekannt",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "3053",
              "operator" : "=",
              "answerCoding" : {
                "code" : "2"
              }
            },
            {
              "question" : "3053",
              "operator" : "=",
              "answerCoding" : {
                "code" : "3"
              }
            }
          ],
          "enableBehavior" : "any"
        },
        {
          "linkId" : "3051",
          "text" : "Uhrzeit 'last seen well'",
          "type" : "time",
          "enableWhen" : [
            {
              "question" : "3050",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "gruppe-ereignis-aufgetreten",
          "text" : "Ereignis aufgetreten",
          "type" : "group",
          "item" : [
            {
              "linkId" : "3005",
              "text" : "Ereignis aufgetreten",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Im Wachzustand"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Im Schlafzustand"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "Unbekannt"
                  }
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueDate" : "2015-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today() - 10 years"
                        }
                      }
                    ]
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueDate" : "2026-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today()"
                        }
                      }
                    ]
                  }
                }
              ],
              "linkId" : "3006",
              "text" : "Datum Krankenhausaufnahme",
              "type" : "date"
            },
            {
              "linkId" : "3007",
              "text" : "Uhrzeit Krankenhausaufnahme",
              "type" : "time"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueDate" : "2015-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today() - 10 years"
                        }
                      }
                    ]
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueDate" : "2026-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today()"
                        }
                      }
                    ]
                  }
                }
              ],
              "linkId" : "3008",
              "text" : "Datum Aufnahme Stroke Unit",
              "type" : "date"
            },
            {
              "linkId" : "3009",
              "text" : "Uhrzeit Aufnahme Stroke Unit",
              "type" : "time"
            },
            {
              "linkId" : "3012",
              "text" : "Prehospital-SCORE erhoben",
              "type" : "boolean"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueInteger" : 0
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueInteger" : 40
                }
              ],
              "linkId" : "3013",
              "text" : "Prehospital-SCORE Wert",
              "type" : "integer",
              "enableWhen" : [
                {
                  "question" : "3012",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ]
            },
            {
              "linkId" : "30541",
              "text" : "Zutransport",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Zutransport intern"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Zutransport extern"
                  }
                }
              ]
            }
          ]
        },
        {
          "linkId" : "gruppe-zutransport-extern",
          "text" : "Zutransport extern",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "30541",
              "operator" : "=",
              "answerCoding" : {
                "code" : "2"
              }
            }
          ],
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "radio-button",
                        "display" : "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "3010",
              "text" : "Zutransport extern",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Anderes Krankenhaus"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Direkt"
                  }
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "radio-button",
                        "display" : "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "3011",
              "text" : "Art Zutransport – anderes Krankenhaus",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "3010",
                  "operator" : "=",
                  "answerCoding" : {
                    "code" : "1"
                  }
                }
              ],
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Rettung mit Notarzt"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Rettung ohne Notarzt"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "Rettungshubschrauber"
                  }
                }
              ]
            },
            {
              "linkId" : "3020",
              "text" : "Art Zutransport – direkt",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "3010",
                  "operator" : "=",
                  "answerCoding" : {
                    "code" : "2"
                  }
                }
              ],
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Rettung mit Notarzt mit Aviso"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Rettung ohne Notarzt mit Aviso"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "Rettungshubschrauber"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "4",
                    "display" : "Privat"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "5",
                    "display" : "Anderer"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "6",
                    "display" : "Rettung mit Notarzt ohne Aviso"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "7",
                    "display" : "Rettung ohne Notarzt ohne Aviso"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "8",
                    "display" : "Rettung mit Notarzt"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "9",
                    "display" : "Rettung ohne Notarzt"
                  }
                }
              ]
            },
            {
              "linkId" : "3021",
              "text" : "Welcher Zutransport (wenn 'Anderer')",
              "type" : "string",
              "enableWhen" : [
                {
                  "question" : "3020",
                  "operator" : "=",
                  "answerCoding" : {
                    "code" : "5"
                  }
                }
              ],
              "maxLength" : 64
            }
          ]
        },
        {
          "linkId" : "gruppe-zutransport-intern",
          "text" : "Zutransport intern",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "30541",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ],
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "radio-button",
                        "display" : "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "zutransport-intern-auswahl",
              "text" : "Zutransport intern",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "3055",
                    "display" : "Ambulanz"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3056",
                    "display" : "Andere Fachabteilung"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3057",
                    "display" : "Direkt an die Stroke Unit"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3058",
                    "display" : "Notaufnahme"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3059",
                    "display" : "Eigene Fachabteilung"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3060",
                    "display" : "Schlaganfall im Krankenhaus"
                  }
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "linkId" : "gruppe-nih-aufnahme",
      "text" : "NIH Stroke Scale bei Aufnahme",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }
      ],
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueInteger" : 0
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueInteger" : 42
            }
          ],
          "linkId" : "4020",
          "text" : "Gesamtsumme NIH - SS bei Aufnahme",
          "type" : "integer"
        }
      ]
    },
    {
      "linkId" : "gruppe-rankinskala-aufnahme",
      "text" : "Rankinskala bei Aufnahme",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }
      ],
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueInteger" : 0
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueInteger" : 5
            }
          ],
          "linkId" : "6001",
          "text" : "Rankinskala vor Insult",
          "type" : "integer"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueInteger" : 0
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueInteger" : 5
            }
          ],
          "linkId" : "6002",
          "text" : "Rankinskala bei Aufnahme",
          "type" : "integer"
        }
      ]
    },
    {
      "linkId" : "gruppe-syndrom",
      "text" : "Syndrom",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }
      ],
      "item" : [
        {
          "linkId" : "7001",
          "text" : "Syndrom",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Ischämie"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Primäre intrazerebrale Blutung"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Sinus-/Venenthrombose (SVT)"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "Subarachnoidalblutung (SAB)"
              }
            }
          ]
        },
        {
          "linkId" : "gruppe-lokalisation-ischamie",
          "text" : "Lokalisation",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "7001",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "7005",
              "text" : "Lokalisation Ischämie",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Linke Großhirnhemisphäre"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Rechte Großhirnhemisphäre"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "Beide Großhirnhemisphären"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "4",
                    "display" : "Vorwiegend Hirnstamm"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "5",
                    "display" : "Vorwiegend Kleinhirn"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "6",
                    "display" : "Retina"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "7",
                    "display" : "Rückenmark"
                  }
                }
              ]
            }
          ]
        },
        {
          "linkId" : "gruppe-klinisches-syndrom",
          "text" : "Klinisches Syndrom",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "7001",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "7010",
              "text" : "Klinisches Syndrom",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "LACS"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "TACS"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "PACS"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "4",
                    "display" : "POCS"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "5",
                    "display" : "Anderes"
                  }
                }
              ]
            },
            {
              "linkId" : "7011",
              "text" : "Welches anderes klinisches Syndrom",
              "type" : "string",
              "enableWhen" : [
                {
                  "question" : "7010",
                  "operator" : "=",
                  "answerCoding" : {
                    "code" : "5"
                  }
                }
              ],
              "maxLength" : 64
            }
          ]
        },
        {
          "linkId" : "gruppe-lokalisation-icb",
          "text" : "Lokalisation",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "7001",
              "operator" : "=",
              "answerCoding" : {
                "code" : "2"
              }
            }
          ],
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "radio-button",
                        "display" : "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "7015",
              "text" : "Seite primäre intrazerebrale Blutung",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Links"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "Rechts"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "Beidseits"
                  }
                }
              ]
            }
          ]
        },
        {
          "linkId" : "gruppe-lokalisation-primaere-icb",
          "text" : "Lokalisation primäre intrazerebrale Blutung",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "7001",
              "operator" : "=",
              "answerCoding" : {
                "code" : "2"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "7022",
              "text" : "Stammganglien",
              "type" : "boolean"
            },
            {
              "linkId" : "7023",
              "text" : "Thalamus",
              "type" : "boolean"
            },
            {
              "linkId" : "7024",
              "text" : "Cerebellum",
              "type" : "boolean"
            },
            {
              "linkId" : "7025",
              "text" : "Lobär",
              "type" : "boolean"
            },
            {
              "linkId" : "7026",
              "text" : "Pons",
              "type" : "boolean"
            },
            {
              "linkId" : "7027",
              "text" : "IVH (intraventricular hemorrhage)",
              "type" : "boolean"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "radio-button",
                        "display" : "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "7030",
              "text" : "Wenn IVH: Lokalisation",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "7027",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Seitenventrikel"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "3. oder 4. Ventrikel"
                  }
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueInteger" : 3
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueInteger" : 15
                }
              ],
              "linkId" : "7050",
              "text" : "GCS bei Aufnahme",
              "type" : "integer"
            },
            {
              "linkId" : "7060",
              "text" : "ICB bei Aufnahme bestimmt",
              "type" : "boolean"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueDecimal" : 0
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueDecimal" : 500
                }
              ],
              "linkId" : "7061",
              "text" : "Volumen in ml",
              "type" : "decimal",
              "enableWhen" : [
                {
                  "question" : "7060",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueInteger" : 0
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueInteger" : 12
                }
              ],
              "linkId" : "7072",
              "text" : "GRAEB Score",
              "type" : "integer",
              "required" : false
            }
          ]
        }
      ]
    },
    {
      "linkId" : "gruppe-diagnostik",
      "text" : "Diagnostik",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }
      ],
      "item" : [
        {
          "linkId" : "gruppe-erste-bildgebung",
          "text" : "Erste Bildgebung",
          "type" : "group",
          "item" : [
            {
              "linkId" : "8888",
              "text" : "Bildgebende Untersuchung durchgeführt",
              "type" : "boolean"
            },
            {
              "linkId" : "8000",
              "text" : "Bereits vor Krankenhausaufnahme durchgeführt",
              "type" : "boolean",
              "enableWhen" : [
                {
                  "question" : "8888",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueDate" : "2015-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today() - 10 years"
                        }
                      }
                    ]
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueDate" : "2026-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today()"
                        }
                      }
                    ]
                  }
                }
              ],
              "linkId" : "8001",
              "text" : "Datum",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "8000",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8003",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8004",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "enableBehavior" : "any"
            },
            {
              "linkId" : "8002",
              "text" : "Uhrzeit CCT",
              "type" : "time",
              "enableWhen" : [
                {
                  "question" : "8000",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8003",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8004",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "enableBehavior" : "any"
            }
          ]
        },
        {
          "linkId" : "gruppe-bildgebung-verfahren",
          "text" : "Bildgebendes Verfahren",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "8888",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "item" : [
            {
              "linkId" : "8003",
              "text" : "CCT durchgeführt",
              "type" : "boolean"
            },
            {
              "linkId" : "8004",
              "text" : "MRI durchgeführt",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "gruppe-gefäßdiagnostik-extrakraniell",
          "text" : "Erste Untersuchung der hirnzuführenden Gefäße (extrakraniell)",
          "type" : "group",
          "item" : [
            {
              "linkId" : "8889",
              "text" : "Untersuchung der hirnzuführenden Gefäße durchgeführt",
              "type" : "boolean"
            },
            {
              "linkId" : "8011",
              "text" : "Bereits vor Krankenhausaufnahme durchgeführt",
              "type" : "boolean",
              "enableWhen" : [
                {
                  "question" : "8889",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueDate" : "2015-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today() - 10 years"
                        }
                      }
                    ]
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueDate" : "2026-01-01",
                  "_valueDate" : {
                    "extension" : [
                      {
                        "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                        "valueExpression" : {
                          "language" : "text/fhirpath",
                          "expression" : "today()"
                        }
                      }
                    ]
                  }
                }
              ],
              "linkId" : "8009",
              "text" : "Datum",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "8011",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8008",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8013",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8006",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "enableBehavior" : "any"
            },
            {
              "linkId" : "8010",
              "text" : "Uhrzeit",
              "type" : "time",
              "enableWhen" : [
                {
                  "question" : "8011",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8008",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8013",
                  "operator" : "=",
                  "answerBoolean" : true
                },
                {
                  "question" : "8006",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "enableBehavior" : "any"
            },
            {
              "linkId" : "8008",
              "text" : "Sonografie",
              "type" : "boolean",
              "enableWhen" : [
                {
                  "question" : "8889",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ]
            },
            {
              "linkId" : "8013",
              "text" : "CTA",
              "type" : "boolean",
              "enableWhen" : [
                {
                  "question" : "8889",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ]
            },
            {
              "linkId" : "8006",
              "text" : "MR-Angio",
              "type" : "boolean",
              "enableWhen" : [
                {
                  "question" : "8889",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ]
            },
            {
              "linkId" : "8030",
              "text" : "Erste Untersuchung der Hirngefäße",
              "type" : "coding",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "code" : "1",
                    "display" : "Sonografie"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "2",
                    "display" : "CTA"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "3",
                    "display" : "MR-Angio"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "4",
                    "display" : "DSA"
                  }
                },
                {
                  "valueCoding" : {
                    "code" : "5",
                    "display" : "keine"
                  }
                }
              ]
            },
            {
              "linkId" : "8060",
              "text" : "Gefäßverschluss (Hauptstamm)",
              "type" : "boolean"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "check-box",
                        "display" : "Check-box"
                      }
                    ]
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-openLabel",
                  "valueString" : "Sonstiger Verschluss (bitte angeben)"
                }
              ],
              "linkId" : "806X",
              "text" : "Lokalisation des Gefäßverschlusses",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "8060",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "repeats" : true,
              "answerConstraint" : "optionsOrString",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8061",
                    "display" : "M1-Verschluss"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8062",
                    "display" : "M2-Verschluss"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8063",
                    "display" : "T-Gabelverschluss"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8064",
                    "display" : "Distaler ACI-Verschluss, T-Gabel jedoch offen"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8065",
                    "display" : "Basilaris-Verschluss"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8066",
                    "display" : "V4-Verschluss"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8067",
                    "display" : "A. c. posterior-Verschluss"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8071",
                    "display" : "A. c. anterior-Verschluss"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8072",
                    "display" : "Verschluss der proximalen ACI"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "http://example.org/CodeSystem/vessel-occlusion",
                    "code" : "8073",
                    "display" : "Stenose der proximalen ACI (wenn >= 70 %)"
                  }
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "linkId" : "gruppe-vortherapie",
      "text" : "Vortherapie bei Aufnahme (Antithrombotische Therapie)",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }
      ],
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "8070",
          "text" : "Plättchenhemmer",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Mono"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Dual"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Nein"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "8075",
          "text" : "Vitamin K Antagonist",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "derzeit pausiert"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueDecimal" : 0
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueDecimal" : 9.9
            }
          ],
          "linkId" : "8076",
          "text" : "INR-Wert bei Aufnahme",
          "type" : "decimal",
          "enableWhen" : [
            {
              "question" : "8075",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "8080",
          "text" : "Apixaban",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "derzeit pausiert"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "8085",
          "text" : "Dabigatran",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "derzeit pausiert"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "8090",
          "text" : "Edoxaban",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "derzeit pausiert"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "8095",
          "text" : "Rivaroxaban",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "derzeit pausiert"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            }
          ]
        }
      ]
    },
    {
      "linkId" : "gruppe-risikofaktoren",
      "text" : "Risikofaktoren und Begleiterkrankungen",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }
      ],
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9001",
          "text" : "Hypertonie",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "unbekannt"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9002",
          "text" : "Diabetes mellitus",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "unbekannt"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9003",
          "text" : "Vorinsult",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "unbekannt"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9004",
          "text" : "Herzinfarkt",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "unbekannt"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9005",
          "text" : "Hypercholesterinämie",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "unbekannt"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueInteger" : 0
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueInteger" : 24
            }
          ],
          "linkId" : "9015",
          "text" : "DLCN Score",
          "type" : "integer",
          "enableWhen" : [
            {
              "question" : "9005",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ],
          "required" : false
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9006",
          "text" : "Vorhofflimmern",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja bereits bekannt"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "ja De-Novo (EKG)"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9009",
          "text" : "Nikotin",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "unbekannt"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9012",
          "text" : "Alkohol",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "unbekannt"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "9013",
          "text" : "Niereninsuffizienz",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "unbekannt"
              }
            }
          ]
        }
      ]
    },
    {
      "linkId" : "gruppe-therapie-ischämisch",
      "text" : "Therapie ischämischer Schlaganfall",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }
      ],
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "10001",
          "text" : "Lyse i.v.",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "extern durchgeführt"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "10002",
          "text" : "Art der Thrombolyse",
          "type" : "coding",
          "enableWhen" : [
            {
              "question" : "10001",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ],
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Alteplase"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Tenecteplase"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueDate" : "2015-01-01",
              "_valueDate" : {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                    "valueExpression" : {
                      "language" : "text/fhirpath",
                      "expression" : "today() - 10 years"
                    }
                  }
                ]
              }
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueDate" : "2026-01-01",
              "_valueDate" : {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
                    "valueExpression" : {
                      "language" : "text/fhirpath",
                      "expression" : "today()"
                    }
                  }
                ]
              }
            }
          ],
          "linkId" : "10040",
          "text" : "Datum Lyse i.v.",
          "type" : "date",
          "enableWhen" : [
            {
              "question" : "10001",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ]
        },
        {
          "linkId" : "10041",
          "text" : "Uhrzeit Lyse i.v.",
          "type" : "time",
          "enableWhen" : [
            {
              "question" : "10001",
              "operator" : "=",
              "answerCoding" : {
                "code" : "1"
              }
            }
          ]
        },
        {
          "linkId" : "10090",
          "text" : "Akute endovaskuläre Behandlung",
          "type" : "boolean"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "10005",
          "text" : "Thrombozytenaggregationshemmer",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Mono"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Dual"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "Nein"
              }
            }
          ]
        },
        {
          "linkId" : "10091",
          "text" : "Heparin",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "Keines"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "Low"
              }
            },
            {
              "valueCoding" : {
                "code" : "3",
                "display" : "Medium"
              }
            },
            {
              "valueCoding" : {
                "code" : "4",
                "display" : "High"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "10092",
          "text" : "PTA/Stent der ACI",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "vorgesehen"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "10093",
          "text" : "CEA",
          "type" : "coding",
          "answerOption" : [
            {
              "valueCoding" : {
                "code" : "1",
                "display" : "ja"
              }
            },
            {
              "valueCoding" : {
                "code" : "0",
                "display" : "nein"
              }
            },
            {
              "valueCoding" : {
                "code" : "2",
                "display" : "vorgesehen"
              }
            }
          ]
        }
      ]
    },
    {
      "linkId" : "gruppe-therapie-icb",
      "text" : "Therapie intrazerebrale Blutung",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "2006",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        },
        {
          "question" : "7001",
          "operator" : "=",
          "answerCoding" : {
            "code" : "2"
          }
        }
      ],
      "enableBehavior" : "all",
      "item" : [
        {
          "linkId" : "10060",
          "text" : "Externe Ventrikel-Drainage",
          "type" : "boolean"
        },
        {
          "linkId" : "10061",
          "text" : "Lumbale Drainage",
          "type" : "boolean"
        },
        {
          "linkId" : "10062",
          "text" : "Intraventrikuläre Lyse",
          "type" : "boolean"
        },
        {
          "linkId" : "10063",
          "text" : "Operative Ausräumung",
          "type" : "boolean"
        },
        {
          "linkId" : "10064",
          "text" : "Hypothermie",
          "type" : "boolean"
        }
      ]
    }
  ]
}

```
