// generated by codegen, do not edit
/**
 * This module provides the generated definition of `IfExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.BlockExpr
import codeql.rust.elements.Expr
import codeql.rust.elements.internal.ExprImpl::Impl as ExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `IfExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * An `if` expression. For example:
   * ```rust
   * if x == 42 {
   *     println!("that's the answer");
   * }
   * ```
   * ```rust
   * let y = if x > 0 {
   *     1
   * } else {
   *     0
   * };
   * ```
   * INTERNAL: Do not reference the `Generated::IfExpr` class directly.
   * Use the subclass `IfExpr`, where the following predicates are available.
   */
  class IfExpr extends Synth::TIfExpr, ExprImpl::Expr {
    override string getAPrimaryQlClass() { result = "IfExpr" }

    /**
     * Gets the `index`th attr of this if expression (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertIfExprToRaw(this).(Raw::IfExpr).getAttr(index))
    }

    /**
     * Gets any of the attrs of this if expression.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this if expression.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the condition of this if expression, if it exists.
     */
    Expr getCondition() {
      result =
        Synth::convertExprFromRaw(Synth::convertIfExprToRaw(this).(Raw::IfExpr).getCondition())
    }

    /**
     * Holds if `getCondition()` exists.
     */
    final predicate hasCondition() { exists(this.getCondition()) }

    /**
     * Gets the else of this if expression, if it exists.
     */
    Expr getElse() {
      result = Synth::convertExprFromRaw(Synth::convertIfExprToRaw(this).(Raw::IfExpr).getElse())
    }

    /**
     * Holds if `getElse()` exists.
     */
    final predicate hasElse() { exists(this.getElse()) }

    /**
     * Gets the then of this if expression, if it exists.
     */
    BlockExpr getThen() {
      result =
        Synth::convertBlockExprFromRaw(Synth::convertIfExprToRaw(this).(Raw::IfExpr).getThen())
    }

    /**
     * Holds if `getThen()` exists.
     */
    final predicate hasThen() { exists(this.getThen()) }
  }
}
