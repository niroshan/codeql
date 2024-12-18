// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `EnumCaseDecl`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.decl.internal.DeclImpl::Impl as DeclImpl
import codeql.swift.elements.decl.EnumElementDecl

/**
 * INTERNAL: This module contains the fully generated definition of `EnumCaseDecl` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::EnumCaseDecl` class directly.
   * Use the subclass `EnumCaseDecl`, where the following predicates are available.
   */
  class EnumCaseDecl extends Synth::TEnumCaseDecl, DeclImpl::Decl {
    override string getAPrimaryQlClass() { result = "EnumCaseDecl" }

    /**
     * Gets the `index`th element of this enum case declaration (0-based).
     */
    EnumElementDecl getElement(int index) {
      result =
        Synth::convertEnumElementDeclFromRaw(Synth::convertEnumCaseDeclToRaw(this)
              .(Raw::EnumCaseDecl)
              .getElement(index))
    }

    /**
     * Gets any of the elements of this enum case declaration.
     */
    final EnumElementDecl getAnElement() { result = this.getElement(_) }

    /**
     * Gets the number of elements of this enum case declaration.
     */
    final int getNumberOfElements() { result = count(int i | exists(this.getElement(i))) }
  }
}
