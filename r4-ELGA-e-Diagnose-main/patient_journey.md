# HL7.AT.FHIR.ELGA.EDIAG.R4\Patient Journey - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Patient Journey**

## Patient Journey

Am Beispiel einer fiktiven Patient Journey wird veranschaulicht, wie sich die klinisch relevanten Informationen eines Patienten im Rahmen der e-Diagnose erweitern und verändern. Neben Diagnosen werden auch Prozeduren, Allergien/Intoleranzen sowie klinische Warnungen berücksichtigt.

### 1.3.2026: Erstvorstellung beim Arzt

Dr. Musterärztin sieht den Patienten Max Mustermann erstmals in ihrer Ordination. Zur besseren klinischen Einschätzung ruft sie die vorhandenen medizinischen Informationen aus der e-Diagnose ab.

Da für Herrn Mustermann bisher noch keine strukturierte e-Dagnose-Zusammenstellung existiert, wird automatisch ein initialer leerer klinischer Status erzeugt. Dieser enthält lediglich den [Patienten](Patient-PatientExample.md), die erstellende Fachanwendung ([Device](Device-DeviceExample.md)) sowie das Erstellungsdatum (ToDo: ist es das Datum der Erstellung sprich der Tag des Arztbesuches oder welches?) und der Grund, warum der Plan noch leer ist (EmptyReason **notstarted**).

* **Leere Liste:** 
* [Collection Bundle](Bundle-At-Ediag-Journey-01-Bundle-Liste-Cl.md)
 

Herr Mustermann stellt sich mit einem aktuellen grippalen Infekt vor. Im Rahmen der Anamnese wird als relevante Vorerkrankung eine Hypothyreose erhoben. Der Patient berichtet eine bestehende Dauermedikation mit L-Thyroxin 75mg. Für den grippalen Infekt wird eine symptomatische Therapie eingeleitet, unter anderem mit Ibuprofen bei Bedarf zur Fiebersenkung und Schmerzreduktion.

* **Diagnoseeinträge hinzufügen:** 
* [Transaction Bundle](Bundle-At-Ediag-Journey-01-Bundle-Liste-Tx.md)
 

