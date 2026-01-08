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
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-fondsrelevanz']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-fondsrelevanz': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/Plausibilitaetskennzeichen']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/Plausibilitaetskennzeichen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/SVAbrechnungsquartal']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/SVAbrechnungsquartal': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:insurer) &gt;= 1">insurer: minimum cardinality of 'insurer' is 1</sch:assert>
      <sch:assert test="count(f:provider) &gt;= 1">provider: minimum cardinality of 'provider' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Claim/f:procedure</sch:title>
    <sch:rule context="f:Claim/f:procedure">
      <sch:assert test="count(f:extension[@url = 'https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz']) &lt;= 1">extension with URL = 'https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Claim/f:item</sch:title>
    <sch:rule context="f:Claim/f:item">
      <sch:assert test="count(f:diagnosisSequence) &gt;= 1">diagnosisSequence: minimum cardinality of 'diagnosisSequence' is 1</sch:assert>
      <sch:assert test="count(f:diagnosisSequence) &lt;= 1">diagnosisSequence: maximum cardinality of 'diagnosisSequence' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Claim/f:item/f:category</sch:title>
    <sch:rule context="f:Claim/f:item/f:category">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
