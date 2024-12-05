// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Path`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.rust.elements.Path
import codeql.rust.elements.PathSegment

/**
 * INTERNAL: This module contains the fully generated definition of `Path` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A path. For example:
   * ```rust
   * use some_crate::some_module::some_item;
   * foo::bar;
   * ```
   * INTERNAL: Do not reference the `Generated::Path` class directly.
   * Use the subclass `Path`, where the following predicates are available.
   */
  class Path extends Synth::TPath, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "Path" }

    /**
     * Gets the qualifier of this path, if it exists.
     */
    Path getQualifier() {
      result = Synth::convertPathFromRaw(Synth::convertPathToRaw(this).(Raw::Path).getQualifier())
    }

    /**
     * Holds if `getQualifier()` exists.
     */
    final predicate hasQualifier() { exists(this.getQualifier()) }

    /**
     * Gets the part of this path, if it exists.
     */
    PathSegment getPart() {
      result = Synth::convertPathSegmentFromRaw(Synth::convertPathToRaw(this).(Raw::Path).getPart())
    }

    /**
     * Holds if `getPart()` exists.
     */
    final predicate hasPart() { exists(this.getPart()) }
  }
}
