// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from
  Format x, FormatArgsExpr getParent, int getIndex, string hasArgumentRef, string hasWidthArgument,
  string hasPrecisionArgument
where
  toBeTested(x) and
  not x.isUnknown() and
  getParent = x.getParent() and
  getIndex = x.getIndex() and
  (if x.hasArgumentRef() then hasArgumentRef = "yes" else hasArgumentRef = "no") and
  (if x.hasWidthArgument() then hasWidthArgument = "yes" else hasWidthArgument = "no") and
  if x.hasPrecisionArgument() then hasPrecisionArgument = "yes" else hasPrecisionArgument = "no"
select x, "getParent:", getParent, "getIndex:", getIndex, "hasArgumentRef:", hasArgumentRef,
  "hasWidthArgument:", hasWidthArgument, "hasPrecisionArgument:", hasPrecisionArgument
