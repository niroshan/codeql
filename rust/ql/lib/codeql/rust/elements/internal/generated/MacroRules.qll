// generated by codegen, do not edit
/**
 * This module provides the generated definition of `MacroRules`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.internal.ItemImpl::Impl as ItemImpl
import codeql.rust.elements.Name
import codeql.rust.elements.TokenTree
import codeql.rust.elements.Visibility

/**
 * INTERNAL: This module contains the fully generated definition of `MacroRules` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A MacroRules. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::MacroRules` class directly.
   * Use the subclass `MacroRules`, where the following predicates are available.
   */
  class MacroRules extends Synth::TMacroRules, ItemImpl::Item {
    override string getAPrimaryQlClass() { result = "MacroRules" }

    /**
     * Gets the `index`th attr of this macro rules (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertMacroRulesToRaw(this)
              .(Raw::MacroRules)
              .getAttr(index))
    }

    /**
     * Gets any of the attrs of this macro rules.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this macro rules.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the name of this macro rules, if it exists.
     */
    Name getName() {
      result =
        Synth::convertNameFromRaw(Synth::convertMacroRulesToRaw(this).(Raw::MacroRules).getName())
    }

    /**
     * Holds if `getName()` exists.
     */
    final predicate hasName() { exists(this.getName()) }

    /**
     * Gets the token tree of this macro rules, if it exists.
     */
    TokenTree getTokenTree() {
      result =
        Synth::convertTokenTreeFromRaw(Synth::convertMacroRulesToRaw(this)
              .(Raw::MacroRules)
              .getTokenTree())
    }

    /**
     * Holds if `getTokenTree()` exists.
     */
    final predicate hasTokenTree() { exists(this.getTokenTree()) }

    /**
     * Gets the visibility of this macro rules, if it exists.
     */
    Visibility getVisibility() {
      result =
        Synth::convertVisibilityFromRaw(Synth::convertMacroRulesToRaw(this)
              .(Raw::MacroRules)
              .getVisibility())
    }

    /**
     * Holds if `getVisibility()` exists.
     */
    final predicate hasVisibility() { exists(this.getVisibility()) }
  }
}
