[CmdletBinding()]

$ErrorActionPreference = 'Stop';

#schema validation without the signature element
[xml]$xml = Get-Content (Join-Path -Path $PSScriptRoot -ChildPath 'archive.xml');
$signatureNodeList = $xml.GetElementsByTagName("Signature");
for ($i = 0; $i -le $signatureNodeList.Count; $i++) {    
    $signatureNodeList[$i].ParentNode.RemoveChild($signatureNodeList[$i]) | Out-Null
}
$xml.Schemas.Add('', (Join-Path -Path $PSScriptRoot -ChildPath 'schema.xsd')) | Out-Null
$xml.Validate($null);
Write-Host "Archive schema validation passed!";

#signature validation
Add-Type -AssemblyName System.Security
$xml = New-Object System.Xml.XmlDocument;
$xml.PreserveWhitespace = $true;
$xml.Load((Join-Path -Path $PSScriptRoot -ChildPath 'archive.xml'));
[System.Security.Cryptography.xml.SignedXml]$signedXml = New-Object System.Security.Cryptography.Xml.SignedXml -ArgumentList $xml
$XmlNodeList = $xml.GetElementsByTagName("Signature");
$signedXml.LoadXml([System.Xml.XmlElement] ($XmlNodeList[0]));
[System.Security.Cryptography.X509Certificates.X509Certificate2]$certificate = [System.Security.Cryptography.X509Certificates.X509Certificate2]::CreateFromCertFile((Join-Path -Path $PSScriptRoot -ChildPath 'certificate.cer'));
if (-not $signedXml.CheckSignature($certificate, $true)) {
    throw "Signature validation failed";
}
Write-Host "Archive signature validation passed!";
