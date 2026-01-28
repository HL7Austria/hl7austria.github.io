<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile List
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:List</sch:title>
    <sch:rule context="f:List">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:date) &gt;= 1">date: minimum cardinality of 'date' is 1</sch:assert>
      <sch:assert test="count(f:source) &gt;= 1">source: minimum cardinality of 'source' is 1</sch:assert>
      <sch:assert test="count(f:orderedBy) &gt;= 1">orderedBy: minimum cardinality of 'orderedBy' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:List/f:entry</sch:title>
    <sch:rule context="f:List/f:entry">
      <sch:assert test="count(f:flag) &gt;= 1">flag: minimum cardinality of 'flag' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
