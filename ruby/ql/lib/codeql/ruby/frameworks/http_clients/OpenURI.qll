/**
 * Provides modeling for the `OpenURI` library.
 */

private import ruby
private import codeql.ruby.CFG
private import codeql.ruby.Concepts
private import codeql.ruby.ApiGraphs
private import codeql.ruby.DataFlow
private import codeql.ruby.frameworks.Core

/**
 * A call that makes an HTTP request using `OpenURI` via `URI.open` or
 * `URI.parse(...).open`.
 *
 * ```ruby
 * URI.open("http://example.com").readlines
 * URI.parse("http://example.com").open.read
 * ```
 */
class OpenUriRequest extends HTTP::Client::Request::Range, DataFlow::CallNode {
  API::Node requestNode;

  OpenUriRequest() {
    requestNode =
      [
        [API::getTopLevelMember("URI"), API::getTopLevelMember("URI").getReturn("parse")]
            .getReturn("open"), API::getTopLevelMember("OpenURI").getReturn("open_uri")
      ] and
    this = requestNode.asSource()
  }

  override DataFlow::Node getAUrlPart() { result = this.getArgument(0) }

  override DataFlow::Node getResponseBody() {
    result = requestNode.getAMethodCall(["read", "readlines"])
  }

  override predicate disablesCertificateValidation(DataFlow::Node disablingNode) {
    exists(DataFlow::Node arg |
      arg.asExpr() = this.asExpr().(CfgNodes::ExprNodes::MethodCallCfgNode).getAnArgument() and
      argumentDisablesValidation(arg, disablingNode)
    )
  }

  override predicate disablesCertificateValidation(
    DataFlow::Node disablingNode, DataFlow::Node argumentOrigin
  ) {
    disablesCertificateValidation(disablingNode) and
    argumentOrigin = disablingNode
  }

  override string getFramework() { result = "OpenURI" }
}

/**
 * A call that makes an HTTP request using `OpenURI` and its `Kernel.open`
 * interface.
 *
 * ```ruby
 * Kernel.open("http://example.com").read
 * ```
 */
class OpenUriKernelOpenRequest extends HTTP::Client::Request::Range, DataFlow::CallNode {
  OpenUriKernelOpenRequest() {
    this instanceof KernelMethodCall and
    this.getMethodName() = "open"
  }

  override DataFlow::Node getAUrlPart() { result = this.getArgument(0) }

  override DataFlow::CallNode getResponseBody() {
    result.asExpr().getExpr().(MethodCall).getMethodName() in ["read", "readlines"] and
    this.(DataFlow::LocalSourceNode).flowsTo(result.getReceiver())
  }

  override predicate disablesCertificateValidation(DataFlow::Node disablingNode) {
    exists(DataFlow::Node arg, int i |
      i > 0 and
      arg.asExpr() = this.asExpr().(CfgNodes::ExprNodes::MethodCallCfgNode).getArgument(i) and
      argumentDisablesValidation(arg, disablingNode)
    )
  }

  override predicate disablesCertificateValidation(
    DataFlow::Node disablingNode, DataFlow::Node argumentOrigin
  ) {
    disablesCertificateValidation(disablingNode) and
    argumentOrigin = disablingNode
  }

  override string getFramework() { result = "OpenURI" }
}

/**
 * Holds if the argument `arg` is an options hash that disables certificate
 * validation, and `disablingNode` is the specific node representing the
 * `ssl_verify_mode: OpenSSL::SSL_VERIFY_NONE` pair.
 */
private predicate argumentDisablesValidation(DataFlow::Node arg, DataFlow::Node disablingNode) {
  // Either passed as an individual key:value argument, e.g.:
  // URI.open(..., ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE)
  isSslVerifyModeNonePair(arg.asExpr()) and
  disablingNode = arg
  or
  // Or as a single hash argument, e.g.:
  // URI.open(..., { ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE, ... })
  exists(DataFlow::LocalSourceNode optionsNode, CfgNodes::ExprNodes::PairCfgNode p |
    p = optionsNode.asExpr().(CfgNodes::ExprNodes::HashLiteralCfgNode).getAKeyValuePair() and
    isSslVerifyModeNonePair(p) and
    optionsNode.flowsTo(arg) and
    disablingNode.asExpr() = p
  )
}

/** Holds if `p` is the pair `ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE`. */
private predicate isSslVerifyModeNonePair(CfgNodes::ExprNodes::PairCfgNode p) {
  exists(DataFlow::Node key, DataFlow::Node value |
    key.asExpr() = p.getKey() and
    value.asExpr() = p.getValue() and
    isSslVerifyModeLiteral(key) and
    value =
      API::getTopLevelMember("OpenSSL")
          .getMember("SSL")
          .getMember("VERIFY_NONE")
          .getAValueReachableFromSource()
  )
}

/** Holds if `node` can represent the symbol literal `:ssl_verify_mode`. */
private predicate isSslVerifyModeLiteral(DataFlow::Node node) {
  exists(DataFlow::LocalSourceNode literal |
    literal.asExpr().getExpr().getConstantValue().isStringlikeValue("ssl_verify_mode") and
    literal.flowsTo(node)
  )
}
