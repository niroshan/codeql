// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Const`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AssocItemImpl::Impl as AssocItemImpl
import codeql.rust.elements.Attr
import codeql.rust.elements.Expr
import codeql.rust.elements.internal.ItemImpl::Impl as ItemImpl
import codeql.rust.elements.Name
import codeql.rust.elements.TypeRef
import codeql.rust.elements.Visibility

/**
 * INTERNAL: This module contains the fully generated definition of `Const` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A Const. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::Const` class directly.
   * Use the subclass `Const`, where the following predicates are available.
   */
  class Const extends Synth::TConst, AssocItemImpl::AssocItem, ItemImpl::Item {
    override string getAPrimaryQlClass() { result = "Const" }

    /**
     * Gets the `index`th attr of this const (0-based).
     */
    Attr getAttr(int index) {
      result = Synth::convertAttrFromRaw(Synth::convertConstToRaw(this).(Raw::Const).getAttr(index))
    }

    /**
     * Gets any of the attrs of this const.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this const.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the body of this const, if it exists.
     */
    Expr getBody() {
      result = Synth::convertExprFromRaw(Synth::convertConstToRaw(this).(Raw::Const).getBody())
    }

    /**
     * Holds if `getBody()` exists.
     */
    final predicate hasBody() { exists(this.getBody()) }

    /**
     * Holds if this const is const.
     */
    predicate isConst() { Synth::convertConstToRaw(this).(Raw::Const).isConst() }

    /**
     * Holds if this const is default.
     */
    predicate isDefault() { Synth::convertConstToRaw(this).(Raw::Const).isDefault() }

    /**
     * Gets the name of this const, if it exists.
     */
    Name getName() {
      result = Synth::convertNameFromRaw(Synth::convertConstToRaw(this).(Raw::Const).getName())
    }

    /**
     * Holds if `getName()` exists.
     */
    final predicate hasName() { exists(this.getName()) }

    /**
     * Gets the type reference of this const, if it exists.
     */
    TypeRef getTy() {
      result = Synth::convertTypeRefFromRaw(Synth::convertConstToRaw(this).(Raw::Const).getTy())
    }

    /**
     * Holds if `getTy()` exists.
     */
    final predicate hasTy() { exists(this.getTy()) }

    /**
     * Gets the visibility of this const, if it exists.
     */
    Visibility getVisibility() {
      result =
        Synth::convertVisibilityFromRaw(Synth::convertConstToRaw(this).(Raw::Const).getVisibility())
    }

    /**
     * Holds if `getVisibility()` exists.
     */
    final predicate hasVisibility() { exists(this.getVisibility()) }
  }
}
