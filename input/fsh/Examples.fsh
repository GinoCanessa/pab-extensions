Alias: $endpoint-connection-type = http://terminology.hl7.org/CodeSystem/endpoint-connection-type
Alias: $endpoint-payload-type = http://terminology.hl7.org/CodeSystem/endpoint-payload-type

Alias: $patient-access-category = http://hl7.org/fhir/smart-app-launch/CodeSystem/patient-access-category

Alias: $ext-fhir-version = http://hl7.org/fhir/uv/pab-extensions-temp/StructureDefinition/endpoint-fhir-version
Alias: $ext-endpoint-brand = http://hl7.org/fhir/uv/pab-extensions-temp/StructureDefinition/endpoint-brand
Alias: $fhir-version = http://hl7.org/fhir/FHIR-version
Alias: $brand-type = http://hl7.org/fhir/uv/pab-extensions-temp/CodeSystem/endpoint-brand-type-code-system

Alias: $ext-brand-logo = http://hl7.org/fhir/uv/pab-extensions-temp/StructureDefinition/organization-brand-logo
Alias: $ext-portal = http://hl7.org/fhir/uv/pab-extensions-temp/StructureDefinition/organization-portal

Instance: organization-brand-abc
InstanceOf: Organization
Usage: #example
Title: "Organization ABC with Branding"
Description: "Organization example containing brand and portal information"
* id = "abc"
* extension[0].url = $ext-brand-logo
* extension[=].extension[0].url = "brandLogo"
* extension[=].extension[=].valueUrl = "https://example.org/abc.org/branding/logo.svg"
* extension[=].extension[+].url = "brandLogoLicenseType"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/spdx-license#CC0-1.0
* extension[=].extension[+].url = "brandLogoLicense"
* extension[=].extension[=].valueUrl = "https://example.org/abc.org/branding/logo-usage.txt"
* extension[+].url = $ext-portal
* extension[=].extension[0].url = "name"
* extension[=].extension[=].valueString = "ABC Portal"
* extension[=].extension[+].url = "url"
* extension[=].extension[=].valueUrl = "https://example.org/portal.abc.org/"
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "ABC Portal for Patients"
* extension[=].extension[+].url = "logo"
* extension[=].extension[=].valueUrl = "https://example.org/abc.org/branding/logo.svg"
* extension[=].extension[+].url = "logoLicenseType"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/spdx-license#CC0-1.0
* extension[=].extension[+].url = "logoLicense"
* extension[=].extension[=].valueUrl = "https://example.org/abc.org/branding/logo-usage.txt"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "https://abc.org"
* active = true
* type = $patient-access-category#insurer "Health Insurance provider"
* name = "Brand ABC"
* alias = "Umbrella Insurance"
* telecom.system = #url
* telecom.value = "https://www.brand1.com"
* address[0].city = "Napa"
* address[=].state = "CA"
* address[+].city = "Sonoma"
* address[=].state = "CA"
* address[+].city = "St Helena"
* address[=].state = "CA"


Instance:    endpoint-01-brand-abc
InstanceOf:  Endpoint
Usage:       #example
Title:       "Endpoint 01 of Brand ABC"
Description: "Endpoint example containing brand information"
* id = "abc-endpoint-01"
* status = #active
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR R4 Endpoint for Brand ABC"
* managingOrganization = Reference(Organization/abc)
* managingOrganization.extension[0].url = $ext-endpoint-brand
* managingOrganization.extension[=].extension[0].url = "brandType"
* managingOrganization.extension[=].extension[=].valueCoding = $brand-type#smart-pab
* managingOrganization.extension[=].extension[+].url = "url"
* managingOrganization.extension[=].extension[=].valueUrl = "https://example.org/abc.org/ProdFHIR/api/FHIR/R4/Bundle/branding"
* contact.system = #url
* contact.value = "https://example.org/abc.org/contact/person"
* payloadType = $endpoint-payload-type#none
* address = "https://example.org/abc.org/ProdFHIR/api/FHIR/R4"
* extension[0].url = $ext-fhir-version
* extension[=].valueCode = $fhir-version#4.0.1
