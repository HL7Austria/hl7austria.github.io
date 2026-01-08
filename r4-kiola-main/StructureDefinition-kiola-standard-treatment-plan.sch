<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PlanDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:PlanDefinition</sch:title>
    <sch:rule context="f:PlanDefinition">
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PlanDefinition/f:action</sch:title>
    <sch:rule context="f:PlanDefinition/f:action">
      <sch:assert test="count(f:extension[@url = 'https://fhir.ehealth-systems.at/extensions/PlanDefinition/patientInstruction']) &lt;= 1">extension with URL = 'https://fhir.ehealth-systems.at/extensions/PlanDefinition/patientInstruction': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:definition[x]) &gt;= 1">definition[x]: minimum cardinality of 'definition[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PlanDefinition/f:action/f:timing[x] 1</sch:title>
    <sch:rule context="f:PlanDefinition/f:action/f:timing[x]">
      <sch:assert test="count(f:repeat) &gt;= 1">repeat: minimum cardinality of 'repeat' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PlanDefinition/f:action/f:timing[x]/f:repeat 1</sch:title>
    <sch:rule context="f:PlanDefinition/f:action/f:timing[x]/f:repeat">
      <sch:assert test="count(f:frequency) &gt;= 1">frequency: minimum cardinality of 'frequency' is 1</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:periodUnit) &gt;= 1">periodUnit: minimum cardinality of 'periodUnit' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PlanDefinition/f:action/f:participant</sch:title>
    <sch:rule context="f:PlanDefinition/f:action/f:participant">
      <sch:assert test="count(f:extension[@url = 'https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition']) &gt;= 1">extension with URL = 'https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition']) &lt;= 1">extension with URL = 'https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition']) &gt;= 1">extension with URL = 'https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition']) &lt;= 1">extension with URL = 'https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PlanDefinition/f:action/f:participant/f:extension</sch:title>
    <sch:rule context="f:PlanDefinition/f:action/f:participant/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
