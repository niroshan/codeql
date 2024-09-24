// generated by codegen, do not edit
/**
 * This module provides the generated definition of `ParenPat`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Pat
import codeql.rust.elements.internal.PatImpl::Impl as PatImpl

/**
 * INTERNAL: This module contains the fully generated definition of `ParenPat` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A ParenPat. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::ParenPat` class directly.
   * Use the subclass `ParenPat`, where the following predicates are available.
   */
  class ParenPat extends Synth::TParenPat, PatImpl::Pat {
    override string getAPrimaryQlClass() { result = "ParenPat" }

    /**
     * Gets the pat of this paren pat, if it exists.
     */
    Pat getPat() {
      result = Synth::convertPatFromRaw(Synth::convertParenPatToRaw(this).(Raw::ParenPat).getPat())
    }

    /**
     * Holds if `getPat()` exists.
     */
    final predicate hasPat() { exists(this.getPat()) }
  }
}
