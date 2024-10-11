// generated by codegen, do not edit
/**
 * This module provides the generated definition of `MethodCallExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.CallExprBaseImpl::Impl as CallExprBaseImpl
import codeql.rust.elements.Expr
import codeql.rust.elements.GenericArgList
import codeql.rust.elements.NameRef

/**
 * INTERNAL: This module contains the fully generated definition of `MethodCallExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A method call expression. For example:
   * ```rust
   * x.foo(42);
   * x.foo::<u32, u64>(42);
   * ```
   * INTERNAL: Do not reference the `Generated::MethodCallExpr` class directly.
   * Use the subclass `MethodCallExpr`, where the following predicates are available.
   */
  class MethodCallExpr extends Synth::TMethodCallExpr, CallExprBaseImpl::CallExprBase {
    override string getAPrimaryQlClass() { result = "MethodCallExpr" }

    /**
     * Gets the generic argument list of this method call expression, if it exists.
     */
    GenericArgList getGenericArgList() {
      result =
        Synth::convertGenericArgListFromRaw(Synth::convertMethodCallExprToRaw(this)
              .(Raw::MethodCallExpr)
              .getGenericArgList())
    }

    /**
     * Holds if `getGenericArgList()` exists.
     */
    final predicate hasGenericArgList() { exists(this.getGenericArgList()) }

    /**
     * Gets the name reference of this method call expression, if it exists.
     */
    NameRef getNameRef() {
      result =
        Synth::convertNameRefFromRaw(Synth::convertMethodCallExprToRaw(this)
              .(Raw::MethodCallExpr)
              .getNameRef())
    }

    /**
     * Holds if `getNameRef()` exists.
     */
    final predicate hasNameRef() { exists(this.getNameRef()) }

    /**
     * Gets the receiver of this method call expression, if it exists.
     */
    Expr getReceiver() {
      result =
        Synth::convertExprFromRaw(Synth::convertMethodCallExprToRaw(this)
              .(Raw::MethodCallExpr)
              .getReceiver())
    }

    /**
     * Holds if `getReceiver()` exists.
     */
    final predicate hasReceiver() { exists(this.getReceiver()) }
  }
}
