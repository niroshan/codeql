/**
 * @name Guarded Free
 * @description NULL-condition guards before function calls to the memory-deallocation
 *              function free(3) are unnecessary, because passing NULL to free(3) is a no-op.
 * @kind problem
 * @problem.severity recommendation
 * @precision very-high
 * @id cpp/guarded-free
 * @tags maintainability
 *       readability
 *       experimental
 */

import cpp
import semmle.code.cpp.controlflow.Guards

class FreeCall extends FunctionCall {
  FreeCall() { this.getTarget().hasGlobalName("free") }
}

from GuardCondition gc, FreeCall fc, Variable v, BasicBlock bb
where
  gc.ensuresEq(v.getAnAccess(), 0, bb, false) and
  fc.getArgument(0) = v.getAnAccess() and
  bb = fc.getBasicBlock() and
  (
    bb = fc.getEnclosingStmt()
    or
    strictcount(bb.(BlockStmt).getAStmt()) = 1
  ) and
  strictcount(BasicBlock bb2 | gc.ensuresEq(_, 0, bb2, _) | bb2) = 1
select gc, "unnecessary NULL check before call to $@", fc, "free"
