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
      <sch:assert test="count(f:requestor) &gt;= 1">requestor: minimum cardinality of 'requestor' is 1</sch:assert>
      <sch:assert test="count(f:request) &gt;= 1">request: minimum cardinality of 'request' is 1</sch:assert>
      <sch:assert test="count(f:decision) &gt;= 1">decision: minimum cardinality of 'decision' is 1</sch:assert>
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
    </sch:rule>
  </sch:pattern>
</sch:schema>
