Extension: OrganizationBrandLogo
Id:        organization-brand-logo
Title:     "Organization Brand Logo"
Description: "The Organization-level Patient Access Brand Logo."
* insert StructureJurisdiction
* insert ExtensionContext(Organization)
* extension contains
    brandLogo 0..1 and
    brandLogoLicenseType 0..1 and
    brandLogoLicense 0..1
* extension[brandLogo].value[x] only url
* extension[brandLogoLicenseType].value[x] only Coding
* extension[brandLogoLicenseType].valueCoding from http://hl7.org/fhir/ValueSet/spdx-license (required)
* extension[brandLogoLicense].value[x] only url
* insert ExtensionDefinition(
    brandLogo,
    "Brand Logo",
    "Patient access brand logo URL. SHOULD be optimized for display as a 1-inch square and formatted as SVG or 1024x1024 pixel PNG with transparent background. Logo should be be legible at small sizes.")
    // "Patient access brand logo URL. SHOULD be optimized for display as a 1-inch square and formatted as SVG or 1024x1024 pixel PNG with transparent background. Logo should be be legible at small sizes. Tips: if the logo contains both a brandmark and a wordmark separate them and use just the brandmark. If the logo is predominantly horizontal, consider creating a vertically-oriented logo that is still recognizable when scaled to smaller sizes. Multiple logos may be supplied. The URL can be an absolute URL with the https:// schema or a Data URL with the data: schema that directly embeds content.")
* insert ExtensionDefinition(
    brandLogoLicenseType,
    "Brand Logo License Type",
    "The license type for the brand logo. This is a SPDX license identifier. See https://spdx.org/licenses/ for more information.")
* insert ExtensionDefinition(
    brandLogoLicense,
    "Brand Logo License",
    "The license for the brand logo. This is a URL to the license text.")

Extension: OrganizationPortal
Id:        organization-portal
Title:     "Organization Portal"
Description: "The Organization-level portal information for a Patient Access Brand."
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
* insert ExtensionDefinition(
    name,
    "Portal Name",
    "Indicates the name by which patients know the portal - for example 'MyChildrens' or 'Patient Gateway'.")
* insert ExtensionDefinition(
    url,
    "Portal URL",
    "Indicates the location of the patient portal associated with this Brand - a URL where patients can go to see their data and manage access.")
* insert ExtensionDefinition(
    description,
    "Portal Description",
    "Patient-friendly language that explains the subset of patients eligible to connect and the data available. For example - 'a cancer center that uses one EHR for pediatric patients and another for adult patients'..")
* insert ExtensionDefinition(
    logo,
    "Portal Logo",
    "Patient access brand portal logo. Used if the portal has its own logo in addition to the Brand's logo. See the documentation for 'brand logo'.")
* insert ExtensionDefinition(
    logoLicenseType,
    "Portal Logo License Type",
    "The license type for the portal logo. This is a SPDX license identifier. See https://spdx.org/licenses/ for more information.")
* insert ExtensionDefinition(
    logoLicense,
    "Portal Logo License",
    "The license for the portal logo. This is a URL to the license text.")
