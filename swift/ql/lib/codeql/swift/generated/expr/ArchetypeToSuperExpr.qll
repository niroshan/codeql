// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `ArchetypeToSuperExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.internal.ImplicitConversionExprImpl::Impl as ImplicitConversionExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `ArchetypeToSuperExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::ArchetypeToSuperExpr` class directly.
   * Use the subclass `ArchetypeToSuperExpr`, where the following predicates are available.
   */
  class ArchetypeToSuperExpr extends Synth::TArchetypeToSuperExpr,
    ImplicitConversionExprImpl::ImplicitConversionExpr
  {
    override string getAPrimaryQlClass() { result = "ArchetypeToSuperExpr" }
  }
}
