<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ClaimResponse
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ClaimResponse</sch:title>
    <sch:rule context="f:ClaimResponse">
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-diagnoseKnoten']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-diagnoseKnoten': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-zusatzpunkteBelagsdauerausreisserNachOben']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-zusatzpunkteBelagsdauerausreisserNachOben': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-zusatzpunkteIntensiv']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-zusatzpunkteIntensiv': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-zusatzpunkteMehrfachleistungen']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-zusatzpunkteMehrfachleistungen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-punkteSpeziellerBereicheTSageweise']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-punkteSpeziellerBereicheTSageweise': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-totalPoints']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-totalPoints': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-ldfPunktewertNetto']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-ldfPunktewertNetto': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-ldfBetragNetto']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-ldfBetragNetto': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-patientenanteilAngehoerige']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-patientenanteilAngehoerige': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-patientenanteil']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-patientenanteil': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-beihilfenaequivalent']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-beihilfenaequivalent': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-forderungsbetragAuslaenderverrechnungRegress']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-forderungsbetragAuslaenderverrechnungRegress': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-rechnungsnummerKhlgf']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-rechnungsnummerKhlgf': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-leistungskomponenteLeistungspunkte']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-leistungskomponenteLeistungspunkte': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-tageskomponenteKontaktpunkte']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-tageskomponenteKontaktpunkte': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-sonderleistungsnummer']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-sonderleistungsnummer': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-anzahlSonderleistungen']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-anzahlSonderleistungen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-PunkteLdfPauschale']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-PunkteLdfPauschale': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-konstenmeldungArk']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-konstenmeldungArk': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-punkteBelagsdauerausreisserUntenLeistungskomponente']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-punkteBelagsdauerausreisserUntenLeistungskomponente': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-punkteBelagsdauerausreisserUntenTageskomponente']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-punkteBelagsdauerausreisserUntenTageskomponente': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
