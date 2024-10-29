<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Account
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Account</sch:title>
    <sch:rule context="f:Account">
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-anzahlVerlegungen']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-anzahlVerlegungen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-anzahlBeurlaubungen']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-anzahlBeurlaubungen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-vdasid']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-vdasid': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-workflowStatus']) &gt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-workflowStatus': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-workflowStatus']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-workflowStatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-verdachtArbeitsSchuelerunfall']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-verdachtArbeitsSchuelerunfall': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-verdachtFremdverschulden']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-verdachtFremdverschulden': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-tageOhneKostenbeitrag']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-tageOhneKostenbeitrag': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-coverageEligibilityRequestRef']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-coverageEligibilityRequestRef': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/moped-ext-claimRef']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/moped-ext-claimRef': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
