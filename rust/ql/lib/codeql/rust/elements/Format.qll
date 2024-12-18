// generated by codegen, do not edit
/**
 * This module provides the public class `Format`.
 */

private import internal.FormatImpl
import codeql.rust.elements.FormatArgsExpr
import codeql.rust.elements.FormatArgument
import codeql.rust.elements.Locatable

/**
 * A format element in a formatting template. For example the `{}` in:
 * ```rust
 * println!("Hello {}", "world");
 * ```
 */
final class Format = Impl::Format;
