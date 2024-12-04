// generated by codegen, do not edit
/**
 * This module provides the generated definition of `TypeAlias`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AssocItemImpl::Impl as AssocItemImpl
import codeql.rust.elements.Attr
import codeql.rust.elements.internal.ExternItemImpl::Impl as ExternItemImpl
import codeql.rust.elements.GenericParamList
import codeql.rust.elements.internal.ItemImpl::Impl as ItemImpl
import codeql.rust.elements.Name
import codeql.rust.elements.TypeBoundList
import codeql.rust.elements.TypeRepr
import codeql.rust.elements.Visibility
import codeql.rust.elements.WhereClause

/**
 * INTERNAL: This module contains the fully generated definition of `TypeAlias` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A TypeAlias. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::TypeAlias` class directly.
   * Use the subclass `TypeAlias`, where the following predicates are available.
   */
  class TypeAlias extends Synth::TTypeAlias, AssocItemImpl::AssocItem, ExternItemImpl::ExternItem,
    ItemImpl::Item
  {
    override string getAPrimaryQlClass() { result = "TypeAlias" }

    /**
     * Gets the `index`th attr of this type alias (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertTypeAliasToRaw(this).(Raw::TypeAlias).getAttr(index))
    }

    /**
     * Gets any of the attrs of this type alias.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this type alias.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the generic parameter list of this type alias, if it exists.
     */
    GenericParamList getGenericParamList() {
      result =
        Synth::convertGenericParamListFromRaw(Synth::convertTypeAliasToRaw(this)
              .(Raw::TypeAlias)
              .getGenericParamList())
    }

    /**
     * Holds if `getGenericParamList()` exists.
     */
    final predicate hasGenericParamList() { exists(this.getGenericParamList()) }

    /**
     * Holds if this type alias is default.
     */
    predicate isDefault() { Synth::convertTypeAliasToRaw(this).(Raw::TypeAlias).isDefault() }

    /**
     * Gets the name of this type alias, if it exists.
     */
    Name getName() {
      result =
        Synth::convertNameFromRaw(Synth::convertTypeAliasToRaw(this).(Raw::TypeAlias).getName())
    }

    /**
     * Holds if `getName()` exists.
     */
    final predicate hasName() { exists(this.getName()) }

    /**
     * Gets the type representation of this type alias, if it exists.
     */
    TypeRepr getTypeRepr() {
      result =
        Synth::convertTypeReprFromRaw(Synth::convertTypeAliasToRaw(this)
              .(Raw::TypeAlias)
              .getTypeRepr())
    }

    /**
     * Holds if `getTypeRepr()` exists.
     */
    final predicate hasTypeRepr() { exists(this.getTypeRepr()) }

    /**
     * Gets the type bound list of this type alias, if it exists.
     */
    TypeBoundList getTypeBoundList() {
      result =
        Synth::convertTypeBoundListFromRaw(Synth::convertTypeAliasToRaw(this)
              .(Raw::TypeAlias)
              .getTypeBoundList())
    }

    /**
     * Holds if `getTypeBoundList()` exists.
     */
    final predicate hasTypeBoundList() { exists(this.getTypeBoundList()) }

    /**
     * Gets the visibility of this type alias, if it exists.
     */
    Visibility getVisibility() {
      result =
        Synth::convertVisibilityFromRaw(Synth::convertTypeAliasToRaw(this)
              .(Raw::TypeAlias)
              .getVisibility())
    }

    /**
     * Holds if `getVisibility()` exists.
     */
    final predicate hasVisibility() { exists(this.getVisibility()) }

    /**
     * Gets the where clause of this type alias, if it exists.
     */
    WhereClause getWhereClause() {
      result =
        Synth::convertWhereClauseFromRaw(Synth::convertTypeAliasToRaw(this)
              .(Raw::TypeAlias)
              .getWhereClause())
    }

    /**
     * Holds if `getWhereClause()` exists.
     */
    final predicate hasWhereClause() { exists(this.getWhereClause()) }
  }
}
