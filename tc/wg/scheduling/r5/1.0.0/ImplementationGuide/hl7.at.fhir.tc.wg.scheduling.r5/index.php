<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://fhir.hl7.at/tc/wg/scheduling/r5/1.0.0/ImplementationGuide-hl7.at.fhir.tc.wg.scheduling.r5.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://fhir.hl7.at/tc/wg/scheduling/r5/1.0.0/ImplementationGuide-hl7.at.fhir.tc.wg.scheduling.r5.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://fhir.hl7.at/tc/wg/scheduling/r5/1.0.0/ImplementationGuide-hl7.at.fhir.tc.wg.scheduling.r5.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://fhir.hl7.at/tc/wg/scheduling/r5/1.0.0/ImplementationGuide-hl7.at.fhir.tc.wg.scheduling.r5.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://fhir.hl7.at/tc/wg/scheduling/r5/1.0.0/ImplementationGuide-hl7.at.fhir.tc.wg.scheduling.r5.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://fhir.hl7.at/tc/wg/scheduling/r5/1.0.0/index.html');
else 
  Redirect('https://fhir.hl7.at/tc/wg/scheduling/r5/1.0.0/ImplementationGuide-hl7.at.fhir.tc.wg.scheduling.r5.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
