// generated by codegen, do not edit
/**
 * This module provides the public class `RecordExpr`.
 */

private import internal.RecordExprImpl
import codeql.rust.elements.Expr
import codeql.rust.elements.Path
import codeql.rust.elements.RecordExprField

/**
 * A record expression. For example:
 * ```
 * let first = Foo { a: 1, b: 2 };
 * let second = Foo { a: 2, ..first };
 * Foo { a: 1, b: 2 }[2] = 10;
 * Foo { .. } = second;
 * ```
 */
final class RecordExpr = Impl::RecordExpr;
