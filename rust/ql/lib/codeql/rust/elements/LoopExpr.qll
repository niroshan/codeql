// generated by codegen, do not edit
/**
 * This module provides the public class `LoopExpr`.
 */

private import internal.LoopExprImpl
import codeql.rust.elements.Attr
import codeql.rust.elements.LoopingExpr

/**
 * A loop expression. For example:
 * ```rust
 * loop {
 *     println!("Hello, world (again)!");
 * };
 * ```
 * ```rust
 * 'label: loop {
 *     println!("Hello, world (once)!");
 *     break 'label;
 * };
 * ```
 * ```rust
 * let mut x = 0;
 * loop {
 *     if x < 10 {
 *         x += 1;
 *     } else {
 *         break;
 *     }
 * };
 * ```
 */
final class LoopExpr = Impl::LoopExpr;
