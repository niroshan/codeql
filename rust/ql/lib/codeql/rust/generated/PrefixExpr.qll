// generated by codegen
/**
 * This module provides the generated definition of `PrefixExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.generated.Synth
private import codeql.rust.generated.Raw
import codeql.rust.elements.Expr

/**
 * INTERNAL: This module contains the fully generated definition of `PrefixExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A unary operation expression. For example:
   * ```
   * let x = -42
   * let y = !true
   * let z = *ptr
   * ```
   * INTERNAL: Do not reference the `Generated::PrefixExpr` class directly.
   * Use the subclass `PrefixExpr`, where the following predicates are available.
   */
  class PrefixExpr extends Synth::TPrefixExpr, Expr {
    override string getAPrimaryQlClass() { result = "PrefixExpr" }

    /**
     * Gets the expression of this prefix expression.
     */
    Expr getExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertPrefixExprToRaw(this).(Raw::PrefixExpr).getExpr())
    }

    /**
     * Gets the op of this prefix expression.
     */
    string getOp() { result = Synth::convertPrefixExprToRaw(this).(Raw::PrefixExpr).getOp() }
  }
}
