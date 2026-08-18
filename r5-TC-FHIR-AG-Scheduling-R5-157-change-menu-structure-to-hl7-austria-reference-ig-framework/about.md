# HL7.AT.FHIR.TC.WG.SCHEDULING.R5\About - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* **About**

## About

### Committers

The following people created commits to this implementation guide:

* [Sebastian Altenhuber](https://github.com/saltenhuber)
* [Armin Berger](https://github.com/barmin77)
* [Samuel Brendler](https://github.com/sa-bre)
* [Reinhard Egelkraut](https://github.com/regelkraut)
* [Minas Gerges](https://github.com/xt-MG)
* [Hans-Jürgen Schiller](https://github.com/Astronstar71)

### Contributors

The following members of the workgroup delivered input to this implementation guide, such as use cases, conceptualization and feedback:

* Sebastian Altenhuber
* Rainer Anzböck
* Robert Bauchinger
* Christian Bauer
* Michael Baumgartner
* Armin Berger
* Stefan Beyer
* Samuel Brendler
* Martin Bürgmann
* Christopher Csenar
* Reinhard Egelkraut
* Minas Gerges
* Regina Gittmaier
* Andreas Goltz
* Christian Gossy
* Karin Haider
* Emergo (Haider)
* Dietmar Keimel
* Daniel Latikaynen
* Christian Lexer
* Anna Lin
* Patrick Mangesius
* Alexander Mense
* Stefan Rausch-Schott
* Martin Reitstätter
* Valentin Rothensteiner
* Wolfgang Schenkermayr
* Hans-Jürgen Schiller
* Judith Schinerl
* Hans Sheu
* Manfred Steinlechner
* Gerhard Stimac
* Michel Stöllner
* Melanie Strasser
* Stefan Suhrer
* Christoph Unfried
* Günter Walser

### Dependencies

This guide is based on the [FHIR® R5](http://hl7.org/fhir/R5/) specification. In addition, this guide also relies on a number of parent implementation guides:

### Known Issues

In this implementation guide a ValueSet [AT Scheduling Service Type](ValueSet-AtSchedulingServiceType.md) is used in several Profiles. In the future, the ValueSet will contain an extendable set of suggested codes, but creating a single harmonized List with codes from all vendors is out of scope. This ValueSet currently only serves as a placeholder and contains a single entry in order to provide useful examples for the profiles that make use of it.

Furthermore, the transmission of notifications or reminders to Patients is out of scope for this implementation guide. While notifications are mentioned in the context of cancellation workflows, the IG does not define mechanisms or channels for directly delivering messages to Patients.

In this implementation guide, no rules for cancellation of appointments (see Interaction [Cancellation by Scheduling Server](functional-transactions.md#cancellation-by-scheduling-server)) by Scheduling Server are defined. Those rules are subject to the Scheduling Server's business logic and therefor out of scope.

### Download

You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Copyright

HL7®, HEALTH LEVEL SEVEN® and FHIR® are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This Implementation Guide contains and references intellectual property owned by third parties (“Third Party IP”). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

