// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `PostfixOperatorDecl`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.decl.internal.OperatorDeclImpl::Impl as OperatorDeclImpl

/**
 * INTERNAL: This module contains the fully generated definition of `PostfixOperatorDecl` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::PostfixOperatorDecl` class directly.
   * Use the subclass `PostfixOperatorDecl`, where the following predicates are available.
   */
  class PostfixOperatorDecl extends Synth::TPostfixOperatorDecl, OperatorDeclImpl::OperatorDecl {
    override string getAPrimaryQlClass() { result = "PostfixOperatorDecl" }
  }
}
