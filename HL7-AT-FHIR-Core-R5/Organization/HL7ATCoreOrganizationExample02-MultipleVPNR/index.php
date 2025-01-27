<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.html');
else 
  Redirect('http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/2.0.0/Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
