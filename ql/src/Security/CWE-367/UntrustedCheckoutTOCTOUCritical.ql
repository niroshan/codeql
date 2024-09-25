/**
 * @name Untrusted Checkout TOCTOU
 * @description Untrusted Checkout is protected by a security check but the checked-out branch can be changed after the check.
 * @kind path-problem
 * @problem.severity error
 * @precision high
 * @security-severity 9.3
 * @id actions/untrusted-checkout-toctou/critical
 * @tags actions
 *       security
 *       external/cwe/cwe-367
 */

import actions
import codeql.actions.security.UntrustedCheckoutQuery
import codeql.actions.security.PoisonableSteps
import codeql.actions.security.ControlChecks

query predicate edges(Step a, Step b) { a.getNextStep() = b }

from
  LocalJob job, MutableRefCheckoutStep checkout, PoisonableStep step, ControlCheck check,
  Event event
where
  job.getAStep() = checkout and
  // the checked-out code may lead to arbitrary code execution
  checkout.getAFollowingStep() = step and
  // the checkout occurs in a privileged context
  inPrivilegedContext(checkout, event) and
  // the mutable checkout step is protected by an Insufficient access check
  check.protects(checkout, event, "untrusted-checkout") and
  not check.protects(checkout, event, "untrusted-checkout-toctou")
select step, checkout, step,
  "Insufficient protection against execution of untrusted code on a privileged workflow on check $@.",
  check, check.toString()
