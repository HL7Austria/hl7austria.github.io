<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-observationpregnancyedd.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-observationpregnancyedd.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-observationpregnancyedd.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-observationpregnancyedd.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-observationpregnancyedd.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-observationpregnancyedd.html');
else 
  Redirect('https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-observationpregnancyedd.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
