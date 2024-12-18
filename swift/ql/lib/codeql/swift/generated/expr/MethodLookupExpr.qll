// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `MethodLookupExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.expr.internal.LookupExprImpl::Impl as LookupExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `MethodLookupExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::MethodLookupExpr` class directly.
   * Use the subclass `MethodLookupExpr`, where the following predicates are available.
   */
  class MethodLookupExpr extends Synth::TMethodLookupExpr, LookupExprImpl::LookupExpr {
    override string getAPrimaryQlClass() { result = "MethodLookupExpr" }

    /**
     * Gets the the underlying method declaration reference expression.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateMethodRef() { none() }

    /**
     * Gets the the underlying method declaration reference expression.
     */
    final Expr getMethodRef() {
      exists(Expr immediate |
        immediate = this.getImmediateMethodRef() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }
  }
}
