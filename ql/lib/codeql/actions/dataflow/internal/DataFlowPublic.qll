private import codeql.dataflow.DataFlow
private import codeql.actions.Ast
private import codeql.actions.Cfg as Cfg
private import codeql.Locations
private import DataFlowPrivate

class Node extends TNode {
  /** Gets a textual representation of this element. */
  string toString() { none() }

  Location getLocation() { none() }

  /**
   * Holds if this element is at the specified location.
   * The location spans column `startcolumn` of line `startline` to
   * column `endcolumn` of line `endline` in file `filepath`.
   * For more information, see
   * [Locations](https://codeql.github.com/docs/writing-codeql-queries/providing-locations-in-codeql-queries/).
   */
  predicate hasLocationInfo(
    string filepath, int startline, int startcolumn, int endline, int endcolumn
  ) {
    this.getLocation().hasLocationInfo(filepath, startline, startcolumn, endline, endcolumn)
  }

  AstNode asExpr() { none() }
}

/**
 * Any Ast Expression
 * UsesExpr, RunExpr, ArgumentExpr, VarAccessExpr, ...
 */
class ExprNode extends Node, TExprNode {
  private DataFlowExpr expr;

  ExprNode() { this = TExprNode(expr) }

  Cfg::Node getCfgNode() { result = expr }

  override string toString() { result = expr.toString() }

  override Location getLocation() { result = expr.getLocation() }

  override AstNode asExpr() { result = expr.getAstNode() }
}

/**
 * An argument to a Uses step (call)
 */
class ArgumentNode extends ExprNode {
  ArgumentNode() { this.getCfgNode().getAstNode() = any(UsesExpr e).getArgument(_) }

  predicate argumentOf(DataFlowCall call, ArgumentPosition pos) {
    this.getCfgNode() = call.(Cfg::Node).getAPredecessor+() and
    call.(Cfg::Node).getAstNode() =
      any(UsesExpr e | e.getArgument(pos) = this.getCfgNode().getAstNode())
  }
}

/** Gets the node corresponding to `e`. */
Node exprNode(DataFlowExpr e) { result = TExprNode(e) }

/**
 * An entity that represents a set of `Content`s.
 *
 * The set may be interpreted differently depending on whether it is
 * stored into (`getAStoreContent`) or read from (`getAReadContent`).
 */
class ContentSet extends TContentSet {
  /** Gets a textual representation of this element. */
  string toString() { none() }

  /** Gets a content that may be stored into when storing into this set. */
  Content getAStoreContent() { none() }

  /** Gets a content that may be read from when reading from this set. */
  Content getAReadContent() { none() }
}
