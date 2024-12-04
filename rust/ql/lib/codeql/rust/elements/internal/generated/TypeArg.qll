// generated by codegen, do not edit
/**
 * This module provides the generated definition of `TypeArg`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.GenericArgImpl::Impl as GenericArgImpl
import codeql.rust.elements.TypeRepr

/**
 * INTERNAL: This module contains the fully generated definition of `TypeArg` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A TypeArg. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::TypeArg` class directly.
   * Use the subclass `TypeArg`, where the following predicates are available.
   */
  class TypeArg extends Synth::TTypeArg, GenericArgImpl::GenericArg {
    override string getAPrimaryQlClass() { result = "TypeArg" }

    /**
     * Gets the type representation of this type argument, if it exists.
     */
    TypeRepr getTypeRepr() {
      result =
        Synth::convertTypeReprFromRaw(Synth::convertTypeArgToRaw(this).(Raw::TypeArg).getTypeRepr())
    }

    /**
     * Holds if `getTypeRepr()` exists.
     */
    final predicate hasTypeRepr() { exists(this.getTypeRepr()) }
  }
}
