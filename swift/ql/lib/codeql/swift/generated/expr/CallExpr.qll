// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `CallExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.internal.ApplyExprImpl::Impl as ApplyExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `CallExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::CallExpr` class directly.
   * Use the subclass `CallExpr`, where the following predicates are available.
   */
  class CallExpr extends Synth::TCallExpr, ApplyExprImpl::ApplyExpr {
    override string getAPrimaryQlClass() { result = "CallExpr" }
  }
}
