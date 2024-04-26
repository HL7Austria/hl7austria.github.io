<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/StructureDefinition-at-core-ext-valueset-systemoid.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/StructureDefinition-at-core-ext-valueset-systemoid.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/StructureDefinition-at-core-ext-valueset-systemoid.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/StructureDefinition-at-core-ext-valueset-systemoid.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/StructureDefinition-at-core-ext-valueset-systemoid.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/StructureDefinition-at-core-ext-valueset-systemoid.html');
else 
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/StructureDefinition-at-core-ext-valueset-systemoid.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
