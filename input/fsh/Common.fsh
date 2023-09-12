RuleSet: StructureJurisdiction
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

RuleSet: StructureCommonR4
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
// * ^fhirVersion = #4.0.1

RuleSet: StructureCommonR4B
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
// * ^fhirVersion = #4.3.0

RuleSet: ResourceJurisdiction
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

RuleSet: ResourceCommonR4
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* fhirVersion = #4.0.1

RuleSet: ResourceCommonR4B
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* fhirVersion = #4.3.0

// This rule set limits the application of an extension to the given path
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

// The strings defined for short and definition should not be quoted, and any comma must be escaped with a backslash.
RuleSet: ExtensionDefinition(path, short, definition)
* extension[{path}] ^short = {short}
* extension[{path}] ^definition = {definition}


// Operation common definitions
RuleSet:       OperationCommon
* jurisdiction        = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* status              = #active
* date                = "2020-11-30"
* publisher           = "HL7 International - FHIR Infrastructure Work Group"
// * contact[0].telecom[0].system = #url
// * contact[0].telecom[0].value  = "https://hl7.org/Special/committees/fiwg/index.cfm"
* affectsState        = false
* version             = "0.1.1"
* kind                = #operation
* extension[0].url          = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[0].valueInteger = 0
* extension[1].url          = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[1].valueCode    = #trial-use
