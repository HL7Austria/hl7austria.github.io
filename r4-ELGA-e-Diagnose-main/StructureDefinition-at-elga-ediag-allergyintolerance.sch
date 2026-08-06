<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile AllergyIntolerance
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:AllergyIntolerance</sch:title>
    <sch:rule context="f:AllergyIntolerance">
      <sch:assert test="count(f:extension[@url = 'https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported']) &lt;= 1">extension with URL = 'https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error']) &lt;= 1">extension with URL = 'https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:clinicalStatus) &gt;= 1">clinicalStatus: minimum cardinality of 'clinicalStatus' is 1</sch:assert>
      <sch:assert test="count(f:verificationStatus) &gt;= 1">verificationStatus: minimum cardinality of 'verificationStatus' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:category) &lt;= 0">category: maximum cardinality of 'category' is 0</sch:assert>
      <sch:assert test="count(f:criticality) &lt;= 0">criticality: maximum cardinality of 'criticality' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:onset[x]) &lt;= 0">onset[x]: maximum cardinality of 'onset[x]' is 0</sch:assert>
      <sch:assert test="count(f:recordedDate) &gt;= 1">recordedDate: minimum cardinality of 'recordedDate' is 1</sch:assert>
      <sch:assert test="count(f:recorder) &gt;= 1">recorder: minimum cardinality of 'recorder' is 1</sch:assert>
      <sch:assert test="count(f:lastOccurrence) &lt;= 0">lastOccurrence: maximum cardinality of 'lastOccurrence' is 0</sch:assert>
      <sch:assert test="count(f:note) &lt;= 0">note: maximum cardinality of 'note' is 0</sch:assert>
      <sch:assert test="count(f:reaction) &gt;= 1">reaction: minimum cardinality of 'reaction' is 1</sch:assert>
      <sch:assert test="count(f:reaction) &lt;= 1">reaction: maximum cardinality of 'reaction' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AllergyIntolerance/f:meta</sch:title>
    <sch:rule context="f:AllergyIntolerance/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 1">source: maximum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AllergyIntolerance/f:code</sch:title>
    <sch:rule context="f:AllergyIntolerance/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AllergyIntolerance/f:reaction</sch:title>
    <sch:rule context="f:AllergyIntolerance/f:reaction">
      <sch:assert test="count(f:extension[@url = 'https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time']) &gt;= 1">extension with URL = 'https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time']) &lt;= 1">extension with URL = 'https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:substance) &lt;= 0">substance: maximum cardinality of 'substance' is 0</sch:assert>
      <sch:assert test="count(f:description) &lt;= 0">description: maximum cardinality of 'description' is 0</sch:assert>
      <sch:assert test="count(f:severity) &lt;= 0">severity: maximum cardinality of 'severity' is 0</sch:assert>
      <sch:assert test="count(f:exposureRoute) &lt;= 0">exposureRoute: maximum cardinality of 'exposureRoute' is 0</sch:assert>
      <sch:assert test="count(f:note) &lt;= 1">note: maximum cardinality of 'note' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:AllergyIntolerance/f:reaction/f:note</sch:title>
    <sch:rule context="f:AllergyIntolerance/f:reaction/f:note">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:author[x]) &lt;= 0">author[x]: maximum cardinality of 'author[x]' is 0</sch:assert>
      <sch:assert test="count(f:time) &lt;= 0">time: maximum cardinality of 'time' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
