// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from FormatTemplateVariableAccess x
where toBeTested(x) and not x.isUnknown()
select x
