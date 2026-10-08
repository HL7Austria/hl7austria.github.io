<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Dosage
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Dosage</sch:title>
    <sch:rule context="f:Dosage">
      <sch:assert test="count(f:extension[@url = 'https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category']) &gt;= 1">extension with URL = 'https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:sequence) &gt;= 1">sequence: minimum cardinality of 'sequence' is 1</sch:assert>
      <sch:assert test="count(f:doseAndRate) &lt;= 1">doseAndRate: maximum cardinality of 'doseAndRate' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Dosage/f:route</sch:title>
    <sch:rule context="f:Dosage/f:route">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Dosage/f:route/f:coding</sch:title>
    <sch:rule context="f:Dosage/f:route/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Dosage/f:doseAndRate/f:dose[x] 1</sch:title>
    <sch:rule context="f:Dosage/f:doseAndRate/f:dose[x]">
      <sch:assert test="count(f:comparator) &lt;= 0">comparator: maximum cardinality of 'comparator' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
