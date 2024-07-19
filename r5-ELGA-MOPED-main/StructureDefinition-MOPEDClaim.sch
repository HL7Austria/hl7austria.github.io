<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Claim
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Claim</sch:title>
    <sch:rule context="f:Claim">
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/Punkte-spezieller-Bereiche-tageweise']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/Punkte-spezieller-Bereiche-tageweise': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/Leistungskomponente-Leistungspunkte']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/Leistungskomponente-Leistungspunkte': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/Tageskomponente-Kontaktpunkte']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/Tageskomponente-Kontaktpunkte': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/totalPoints']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/totalPoints': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-fondsrelevanz']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-fondsrelevanz': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/Plausibilitaetskennzeichen']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/Plausibilitaetskennzeichen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/SVAbrechnungsquartal']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/SVAbrechnungsquartal': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Claim/f:procedure</sch:title>
    <sch:rule context="f:Claim/f:procedure">
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-AbrechnungsRelevanz']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-AbrechnungsRelevanz': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Claim/f:item</sch:title>
    <sch:rule context="f:Claim/f:item">
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-AbrechnungsGruppe']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-AbrechnungsGruppe': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-AbrechnungsKnoten']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-AbrechnungsKnoten': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/Punkte-Belagsdauerausreisser-unten-Leistungskomponente']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/Punkte-Belagsdauerausreisser-unten-Leistungskomponente': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/Punkte-Belagsdauerausreisser-unten-Tageskomponente']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/Punkte-Belagsdauerausreisser-unten-Tageskomponente': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-Zusatzpunkte-Belagsdauerausreisser-nach-oben']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-Zusatzpunkte-Belagsdauerausreisser-nach-oben': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-Zusatzpunkte-Intensiv']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-Zusatzpunkte-Intensiv': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-Zusatzpunkte-Mehrfachleistungen']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-Zusatzpunkte-Mehrfachleistungen': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
