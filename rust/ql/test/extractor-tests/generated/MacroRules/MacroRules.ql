// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from MacroRules x, int getNumberOfAttrs, string hasName, string hasTokenTree, string hasVisibility
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  (if x.hasName() then hasName = "yes" else hasName = "no") and
  (if x.hasTokenTree() then hasTokenTree = "yes" else hasTokenTree = "no") and
  if x.hasVisibility() then hasVisibility = "yes" else hasVisibility = "no"
select x, "getNumberOfAttrs:", getNumberOfAttrs, "hasName:", hasName, "hasTokenTree:", hasTokenTree,
  "hasVisibility:", hasVisibility
