Extension: OrganizationBrand
Id:        organization-brand
Title:     "Organization Brand"
Description: "The Organization-level Brand information."
* insert StructureJurisdiction
* insert ExtensionContext(Organization)
* extension contains
    brandName 0..1 and
    brandLogo 0..1 and
    brandLogoLicenseType 0..1 and
    brandLogoLicense 0..1
* extension[brandName].value[x] only string
* extension[brandLogo].value[x] only url
* extension[brandLogoLicenseType].value[x] only Coding
* extension[brandLogoLicenseType].valueCoding from http://hl7.org/fhir/ValueSet/spdx-license (required)
* extension[brandLogoLicense].value[x] only url

* extension[brandName] ^short = "Brand Name"
* extension[brandName] ^definition = "The name of the brand."
* extension[brandLogo] ^short = "Brand Logo"
* extension[brandLogo] ^definition = "Brand logo URL. SHOULD be optimized for display as a 1 in / 2.54 cm square and formatted as SVG or 1024x1024 pixel PNG with transparent background. Logo should be be legible at small sizes."
* extension[brandLogoLicenseType] ^short = "Brand Logo License Type"
* extension[brandLogoLicenseType] ^definition = "The license type for the brand logo. This is a SPDX license identifier. See https://spdx.org/licenses/ for more information."
* extension[brandLogoLicense] ^short = "Brand Logo License"
* extension[brandLogoLicense] ^definition = "The license for the brand logo. This is a URL to the license text."



Extension: OrganizationPortal
Id:        organization-portal
Title:     "Organization Portal"
Description: "The Organization-level portal information."
* insert StructureJurisdiction
* insert ExtensionContext(Organization)
* extension contains
    name 0..1 and
    url 0..1 and
    description 0..1 and
    logo 0..1 and
    logoLicenseType 0..1 and
    logoLicense 0..1
* extension[name].value[x] only string
* extension[url].value[x] only url
* extension[description].value[x] only string
* extension[logo].value[x] only url
* extension[logoLicenseType].value[x] only Coding
* extension[logoLicenseType].valueCoding from http://hl7.org/fhir/ValueSet/spdx-license (required)
* extension[logoLicense].value[x] only url

* extension[name] ^short = "Portal Name"
* extension[name] ^definition = "Indicates the name by which patients know the portal - for example 'MyChildrens' or 'Patient Gateway'."
* extension[url] ^short = "Portal URL"
* extension[url] ^definition = "Indicates the location of the patient portal associated with this Brand - a URL where patients can go to see their data and manage access."
* extension[description] ^short = "Portal Description"
* extension[description] ^definition = "Patient-friendly language that explains the subset of patients eligible to connect and the data available. For example - 'a cancer center that uses one EHR for pediatric patients and another for adult patients'.."
* extension[logo] ^short = "Portal Logo"
* extension[logo] ^definition = "Portal brand logo. Used if the portal has its own logo in addition to the Brand's logo. See the documentation for 'brand logo'."
* extension[logoLicenseType] ^short = "Portal Logo License Type"
* extension[logoLicenseType] ^definition = "The license type for the portal logo. This is a SPDX license identifier. See https://spdx.org/licenses/ for more information."
* extension[logoLicense] ^short = "Portal Logo License"
* extension[logoLicense] ^definition = "The license for the portal logo. This is a URL to the license text."





Extension: OrganizationPortalEndpoint
Id:        organization-portal-endpoint
Title:     "Organization Portal Endpoint"
Description: "The Organization-level portal information."
* insert StructureJurisdiction
* insert ExtensionContext(Organization.endpoint)
* extension contains
    name 0..1 and
    url 0..1 and
    logo 0..1 and
    logoLicenseType 0..1 and
    logoLicense 0..1
* extension[name].value[x] only string
* extension[url].value[x] only url
* extension[logo].value[x] only url
* extension[logoLicenseType].value[x] only Coding
* extension[logoLicenseType].valueCoding from http://hl7.org/fhir/ValueSet/spdx-license (required)
* extension[logoLicense].value[x] only url

* extension[name] ^short = "Portal Name"
* extension[name] ^definition = "Indicates the name by which patients know the portal - for example 'MyChildrens' or 'Patient Gateway'."
* extension[url] ^short = "Portal URL"
* extension[url] ^definition = "Indicates the location of the patient portal associated with this Brand - a URL where patients can go to see their data and manage access."
* extension[logo] ^short = "Portal Logo"
* extension[logo] ^definition = "Portal brand logo. Used if the portal has its own logo in addition to the Brand's logo. See the documentation for 'brand logo'."
* extension[logoLicenseType] ^short = "Portal Logo License Type"
* extension[logoLicenseType] ^definition = "The license type for the portal logo. This is a SPDX license identifier. See https://spdx.org/licenses/ for more information."
* extension[logoLicense] ^short = "Portal Logo License"
* extension[logoLicense] ^definition = "The license for the portal logo. This is a URL to the license text."
