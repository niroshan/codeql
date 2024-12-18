// generated by codegen, do not edit
/**
 * This module provides the generated definition of `VariantList`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.rust.elements.Variant

/**
 * INTERNAL: This module contains the fully generated definition of `VariantList` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A VariantList. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::VariantList` class directly.
   * Use the subclass `VariantList`, where the following predicates are available.
   */
  class VariantList extends Synth::TVariantList, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "VariantList" }

    /**
     * Gets the `index`th variant of this variant list (0-based).
     */
    Variant getVariant(int index) {
      result =
        Synth::convertVariantFromRaw(Synth::convertVariantListToRaw(this)
              .(Raw::VariantList)
              .getVariant(index))
    }

    /**
     * Gets any of the variants of this variant list.
     */
    final Variant getAVariant() { result = this.getVariant(_) }

    /**
     * Gets the number of variants of this variant list.
     */
    final int getNumberOfVariants() { result = count(int i | exists(this.getVariant(i))) }
  }
}
