Extension: EndpointFhirVersion
Id:        endpoint-fhir-version
Title:     "endpoint-fhir-version"
Description: "The Patient Access Endpoint's FHIR Version. This Extension is a denormalization to help clients focus on supported endpoints."
* insert StructureJurisdiction
* insert ExtensionContext(Endpoint)
* value[x] only code
* valueCode from http://hl7.org/fhir/ValueSet/FHIR-version (required)


/// From NDH - include?
// Extension: EndpointRank
// Id:        endpoint-rank
// Title:     "endpoint-rank"
// Description: "Endpoint's Rank - this extension is used to provide a sorting order when multiple equivalent endpoints are provided."
// * insert StructureJurisdiction
// * insert ExtensionContext(Endpoint)
// * value[x] only integer

/// Based on NDH - do we need dynamic registration / trust framework info?


// Endpoint Brand info
Extension: EndpointBrand
Id:        endpoint-brand
Title:     "endpoint-brand"
Description: "The Patient Access Endpoint's Brand. This extension is used to advertise the brand information location for an endpoint."
* insert StructureJurisdiction
* insert ExtensionContext(Endpoint.managingOrganization)
* extension contains
    brandType 1..1 MS and
    url 1..1 MS
* extension[brandType].value[x] only Coding
* extension[brandType].valueCoding from EndpointBrandTypeValueSet (example)
* extension[url].value[x] only url
* insert ExtensionDefinition(
    brandType,
    "Brand Type",
    "Information used by clients to determine what kind of brand information this endpoint provides.")
* insert ExtensionDefinition(
    url,
    "URL",
    "URL used to retrieve brand information.")


CodeSystem:  EndpointBrandTypeCodeSystem
Id:          endpoint-brand-type-code-system
Title:       "Endpoint Brand Type Code System"
Description: "The Patient Access Endpoint's Brand Type. This Code System is a denormalization to help clients focus on supported endpoints."
* insert StructureJurisdiction
* ^caseSensitive  = true
* ^experimental   = false
* #smart-pab     "SMART Patient Access Brands"  "Branding information is available as a SMART Patient Access Brands Bundle."

ValueSet:    EndpointBrandTypeValueSet
Id:          endpoint-brand-type-value-set
Title:       "Endpoint Brand Type Value Set"
Description: "The Patient Access Endpoint's Brand Type. This Value Set is a denormalization to help clients focus on supported endpoints."
* insert StructureJurisdiction
* ^experimental   = false
* codes from system EndpointBrandTypeCodeSystem
