// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Function`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Abi
import codeql.rust.elements.internal.AssocItemImpl::Impl as AssocItemImpl
import codeql.rust.elements.BlockExpr
import codeql.rust.elements.internal.CallableImpl::Impl as CallableImpl
import codeql.rust.elements.internal.ExternItemImpl::Impl as ExternItemImpl
import codeql.rust.elements.GenericParamList
import codeql.rust.elements.internal.ItemImpl::Impl as ItemImpl
import codeql.rust.elements.Name
import codeql.rust.elements.RetType
import codeql.rust.elements.Visibility
import codeql.rust.elements.WhereClause

/**
 * INTERNAL: This module contains the fully generated definition of `Function` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A function declaration. For example
   * ```rust
   * fn foo(x: u32) -> u64 {(x + 1).into()}
   * ```
   * A function declaration within a trait might not have a body:
   * ```rust
   * trait Trait {
   *     fn bar();
   * }
   * ```
   * INTERNAL: Do not reference the `Generated::Function` class directly.
   * Use the subclass `Function`, where the following predicates are available.
   */
  class Function extends Synth::TFunction, AssocItemImpl::AssocItem, ExternItemImpl::ExternItem,
    ItemImpl::Item, CallableImpl::Callable
  {
    override string getAPrimaryQlClass() { result = "Function" }

    /**
     * Gets the abi of this function, if it exists.
     */
    Abi getAbi() {
      result = Synth::convertAbiFromRaw(Synth::convertFunctionToRaw(this).(Raw::Function).getAbi())
    }

    /**
     * Holds if `getAbi()` exists.
     */
    final predicate hasAbi() { exists(this.getAbi()) }

    /**
     * Gets the body of this function, if it exists.
     */
    BlockExpr getBody() {
      result =
        Synth::convertBlockExprFromRaw(Synth::convertFunctionToRaw(this).(Raw::Function).getBody())
    }

    /**
     * Holds if `getBody()` exists.
     */
    final predicate hasBody() { exists(this.getBody()) }

    /**
     * Gets the generic parameter list of this function, if it exists.
     */
    GenericParamList getGenericParamList() {
      result =
        Synth::convertGenericParamListFromRaw(Synth::convertFunctionToRaw(this)
              .(Raw::Function)
              .getGenericParamList())
    }

    /**
     * Holds if `getGenericParamList()` exists.
     */
    final predicate hasGenericParamList() { exists(this.getGenericParamList()) }

    /**
     * Holds if this function is async.
     */
    predicate isAsync() { Synth::convertFunctionToRaw(this).(Raw::Function).isAsync() }

    /**
     * Holds if this function is const.
     */
    predicate isConst() { Synth::convertFunctionToRaw(this).(Raw::Function).isConst() }

    /**
     * Holds if this function is default.
     */
    predicate isDefault() { Synth::convertFunctionToRaw(this).(Raw::Function).isDefault() }

    /**
     * Holds if this function is gen.
     */
    predicate isGen() { Synth::convertFunctionToRaw(this).(Raw::Function).isGen() }

    /**
     * Holds if this function is unsafe.
     */
    predicate isUnsafe() { Synth::convertFunctionToRaw(this).(Raw::Function).isUnsafe() }

    /**
     * Gets the name of this function, if it exists.
     */
    Name getName() {
      result =
        Synth::convertNameFromRaw(Synth::convertFunctionToRaw(this).(Raw::Function).getName())
    }

    /**
     * Holds if `getName()` exists.
     */
    final predicate hasName() { exists(this.getName()) }

    /**
     * Gets the ret type of this function, if it exists.
     */
    RetType getRetType() {
      result =
        Synth::convertRetTypeFromRaw(Synth::convertFunctionToRaw(this).(Raw::Function).getRetType())
    }

    /**
     * Holds if `getRetType()` exists.
     */
    final predicate hasRetType() { exists(this.getRetType()) }

    /**
     * Gets the visibility of this function, if it exists.
     */
    Visibility getVisibility() {
      result =
        Synth::convertVisibilityFromRaw(Synth::convertFunctionToRaw(this)
              .(Raw::Function)
              .getVisibility())
    }

    /**
     * Holds if `getVisibility()` exists.
     */
    final predicate hasVisibility() { exists(this.getVisibility()) }

    /**
     * Gets the where clause of this function, if it exists.
     */
    WhereClause getWhereClause() {
      result =
        Synth::convertWhereClauseFromRaw(Synth::convertFunctionToRaw(this)
              .(Raw::Function)
              .getWhereClause())
    }

    /**
     * Holds if `getWhereClause()` exists.
     */
    final predicate hasWhereClause() { exists(this.getWhereClause()) }
  }
}
