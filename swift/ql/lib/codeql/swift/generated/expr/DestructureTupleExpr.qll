// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `DestructureTupleExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.internal.ImplicitConversionExprImpl::Impl as ImplicitConversionExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `DestructureTupleExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::DestructureTupleExpr` class directly.
   * Use the subclass `DestructureTupleExpr`, where the following predicates are available.
   */
  class DestructureTupleExpr extends Synth::TDestructureTupleExpr,
    ImplicitConversionExprImpl::ImplicitConversionExpr
  {
    override string getAPrimaryQlClass() { result = "DestructureTupleExpr" }
  }
}
