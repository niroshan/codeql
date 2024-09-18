// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `Decl`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.swift.elements.decl.Decl
import codeql.swift.elements.decl.ModuleDecl

/**
 * INTERNAL: This module contains the fully generated definition of `Decl` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::Decl` class directly.
   * Use the subclass `Decl`, where the following predicates are available.
   */
  class Decl extends Synth::TDecl, AstNodeImpl::AstNode {
    /**
     * Gets the module of this declaration.
     */
    ModuleDecl getModule() {
      result =
        Synth::convertModuleDeclFromRaw(Synth::convertDeclToRaw(this).(Raw::Decl).getModule())
    }

    /**
     * Gets the `index`th member of this declaration (0-based).
     *
     * Prefer to use more specific methods (such as `EnumDecl.getEnumElement`) rather than relying
     * on the order of members given by `getMember`. In some cases the order of members may not
     * align with expectations, and could change in future releases.
     */
    Decl getMember(int index) {
      result = Synth::convertDeclFromRaw(Synth::convertDeclToRaw(this).(Raw::Decl).getMember(index))
    }

    /**
     * Gets any of the members of this declaration.
     */
    final Decl getAMember() { result = this.getMember(_) }

    /**
     * Gets the number of members of this declaration.
     */
    final int getNumberOfMembers() { result = count(int i | exists(this.getMember(i))) }
  }
}
