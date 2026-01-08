<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-ext-address-municipalityCode.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-ext-address-municipalityCode.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-ext-address-municipalityCode.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-ext-address-municipalityCode.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-ext-address-municipalityCode.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-ext-address-municipalityCode.html');
else 
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-ext-address-municipalityCode.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
