// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `OptionalTryExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.internal.AnyTryExprImpl::Impl as AnyTryExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `OptionalTryExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::OptionalTryExpr` class directly.
   * Use the subclass `OptionalTryExpr`, where the following predicates are available.
   */
  class OptionalTryExpr extends Synth::TOptionalTryExpr, AnyTryExprImpl::AnyTryExpr {
    override string getAPrimaryQlClass() { result = "OptionalTryExpr" }
  }
}
