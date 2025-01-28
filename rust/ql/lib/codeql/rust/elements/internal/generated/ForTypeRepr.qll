// generated by codegen, do not edit
/**
 * This module provides the generated definition of `ForTypeRepr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.GenericParamList
import codeql.rust.elements.TypeRepr
import codeql.rust.elements.internal.TypeReprImpl::Impl as TypeReprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `ForTypeRepr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A ForTypeRepr. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::ForTypeRepr` class directly.
   * Use the subclass `ForTypeRepr`, where the following predicates are available.
   */
  class ForTypeRepr extends Synth::TForTypeRepr, TypeReprImpl::TypeRepr {
    override string getAPrimaryQlClass() { result = "ForTypeRepr" }

    /**
     * Gets the generic parameter list of this for type representation, if it exists.
     */
    GenericParamList getGenericParamList() {
      result =
        Synth::convertGenericParamListFromRaw(Synth::convertForTypeReprToRaw(this)
              .(Raw::ForTypeRepr)
              .getGenericParamList())
    }

    /**
     * Holds if `getGenericParamList()` exists.
     */
    final predicate hasGenericParamList() { exists(this.getGenericParamList()) }

    /**
     * Gets the type representation of this for type representation, if it exists.
     */
    TypeRepr getTypeRepr() {
      result =
        Synth::convertTypeReprFromRaw(Synth::convertForTypeReprToRaw(this)
              .(Raw::ForTypeRepr)
              .getTypeRepr())
    }

    /**
     * Holds if `getTypeRepr()` exists.
     */
    final predicate hasTypeRepr() { exists(this.getTypeRepr()) }
  }
}
