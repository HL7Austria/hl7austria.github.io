<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/Organization-HL7ATCoreOrganizationExample01.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/Organization-HL7ATCoreOrganizationExample01.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/Organization-HL7ATCoreOrganizationExample01.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/Organization-HL7ATCoreOrganizationExample01.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/Organization-HL7ATCoreOrganizationExample01.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/Organization-HL7ATCoreOrganizationExample01.html');
else 
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/1.1.0/Organization-HL7ATCoreOrganizationExample01.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
