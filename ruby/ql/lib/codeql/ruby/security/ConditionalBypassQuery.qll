/**
 * Provides a taint tracking configuration for reasoning about bypass of sensitive action guards.
 *
 * Note, for performance reasons: only import this file if
 * `ConditionalBypassFlow` is needed, otherwise
 * `ConditionalBypassCustomizations` should be imported instead.
 */

private import codeql.ruby.DataFlow
private import codeql.ruby.TaintTracking
private import codeql.ruby.security.SensitiveActions
import ConditionalBypassCustomizations::ConditionalBypass

private module Config implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) { source instanceof Source }

  predicate isSink(DataFlow::Node sink) { sink instanceof Sink }

  predicate isBarrier(DataFlow::Node node) { node instanceof Sanitizer }

  predicate observeDiffInformedIncrementalMode() {
    // TODO(diff-informed): Manually verify if config can be diff-informed.
    // ql/src/experimental/cwe-807/ConditionalBypass.ql:78: Flow call outside 'select' clause
    none()
  }
}

/**
 * Taint-tracking for bypass of sensitive action guards.
 */
module ConditionalBypassFlow = TaintTracking::Global<Config>;
