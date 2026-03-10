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
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-Betreuungsschein']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-Betreuungsschein': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/MopedSupportingInfoFREMDRE']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/MopedSupportingInfoFREMDRE': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/MopedSupportingInfoOEGKELBNR']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/MopedSupportingInfoOEGKELBNR': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-Beihilfenaequivalent']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-Beihilfenaequivalent': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:subType) &gt;= 1">subType: minimum cardinality of 'subType' is 1</sch:assert>
      <sch:assert test="count(f:request) &gt;= 1">request: minimum cardinality of 'request' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClaimResponse/f:type</sch:title>
    <sch:rule context="f:ClaimResponse/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClaimResponse/f:addItem</sch:title>
    <sch:rule context="f:ClaimResponse/f:addItem">
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-AddItemCategory': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:unitPrice) &gt;= 1">unitPrice: minimum cardinality of 'unitPrice' is 1</sch:assert>
      <sch:assert test="count(f:net) &gt;= 1">net: minimum cardinality of 'net' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClaimResponse/f:addItem/f:extension</sch:title>
    <sch:rule context="f:ClaimResponse/f:addItem/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ClaimResponse/f:addItem/f:extension/f:value[x] 1</sch:title>
    <sch:rule context="f:ClaimResponse/f:addItem/f:extension/f:value[x]">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
