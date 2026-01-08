<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PaymentReconciliation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:PaymentReconciliation</sch:title>
    <sch:rule context="f:PaymentReconciliation">
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-PaymentPercentage']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-PaymentPercentage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:allocation) &gt;= 1">allocation: minimum cardinality of 'allocation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PaymentReconciliation/f:amount</sch:title>
    <sch:rule context="f:PaymentReconciliation/f:amount">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:currency) &lt;= 1">currency: maximum cardinality of 'currency' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PaymentReconciliation/f:allocation</sch:title>
    <sch:rule context="f:PaymentReconciliation/f:allocation">
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-ReasonForNonPayment']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-ReasonForNonPayment': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-Zahlungskennzeichen']) &gt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-Zahlungskennzeichen': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-Zahlungskennzeichen']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-Zahlungskennzeichen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:target) &gt;= 1">target: minimum cardinality of 'target' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
