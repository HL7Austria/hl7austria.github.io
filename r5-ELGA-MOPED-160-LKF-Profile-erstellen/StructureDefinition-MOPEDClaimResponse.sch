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
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-diagnosisRelatedNode']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-diagnosisRelatedNode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-LDFPunktewertNetto']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-LDFPunktewertNetto': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-LDFBetragNetto']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-LDFBetragNetto': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-PatientenanteilAngehoerige']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-PatientenanteilAngehoerige': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-Patientenanteil']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-Patientenanteil': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-Beihilfenaequivalent']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-Beihilfenaequivalent': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-ForderungsbetragAuslaenderverrechnungRegress']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-ForderungsbetragAuslaenderverrechnungRegress': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-RechnungsnummerKHLGF']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-RechnungsnummerKHLGF': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-Sonderleistungsnummer']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-Sonderleistungsnummer': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-AnzahlSonderleistungen']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-AnzahlSonderleistungen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-PunkteLDFPauschale']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-PunkteLDFPauschale': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-KonstenmeldungARK']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-KonstenmeldungARK': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
