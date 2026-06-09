<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile AtMopedPatientGenerisch
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-citizenship']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-citizenship': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-religion']) &lt;= 0">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-religion': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace']) &lt;= 0">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace': maximum cardinality of 'extension' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:extension</sch:title>
    <sch:rule context="f:Patient/f:extension">
      <sch:assert test="count(f:extension[@url = 'code']) &lt;= 1">extension with URL = 'code': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'period']) &lt;= 0">extension with URL = 'period': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier</sch:title>
    <sch:rule context="f:Patient/f:identifier">
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:gender</sch:title>
    <sch:rule context="f:Patient/f:gender">
      <sch:assert test="count(f:extension[@url = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-gender-administrativeGenderAddition']) &lt;= 1">extension with URL = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-gender-administrativeGenderAddition': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:birthDate</sch:title>
    <sch:rule context="f:Patient/f:birthDate">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-birthTime']) &lt;= 0">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-birthTime': maximum cardinality of 'extension' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address/f:line</sch:title>
    <sch:rule context="f:Patient/f:address/f:line">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-additionalInformation']) &lt;= 1">extension with URL = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-additionalInformation': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:contact/f:address</sch:title>
    <sch:rule context="f:Patient/f:contact/f:address">
      <sch:assert test="count(f:extension[@url = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode']) &lt;= 1">extension with URL = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:contact/f:address/f:line</sch:title>
    <sch:rule context="f:Patient/f:contact/f:address/f:line">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-additionalInformation']) &lt;= 1">extension with URL = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-additionalInformation': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:contact/f:gender</sch:title>
    <sch:rule context="f:Patient/f:contact/f:gender">
      <sch:assert test="count(f:extension[@url = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-gender-administrativeGenderAddition']) &lt;= 1">extension with URL = 'http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-gender-administrativeGenderAddition': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
