package openssf.omega.policy.autogenerated.cwe.cwe_784

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_784
# title: "CWE-784: Reliance on Cookies without Validation and Integrity Checking in a Security Decision"
# methodology: >
#   The product uses a protection mechanism that relies on the existence or values of a cookie, but it does not properly ensure that the cookie is valid for the associated user.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-784" in assertion.predicate.content.tags
    }
}