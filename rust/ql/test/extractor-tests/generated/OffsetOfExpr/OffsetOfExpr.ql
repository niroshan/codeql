// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from OffsetOfExpr x, int getNumberOfAttrs, int getNumberOfFields, string hasTy
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  getNumberOfFields = x.getNumberOfFields() and
  if x.hasTy() then hasTy = "yes" else hasTy = "no"
select x, "getNumberOfAttrs:", getNumberOfAttrs, "getNumberOfFields:", getNumberOfFields, "hasTy:",
  hasTy
