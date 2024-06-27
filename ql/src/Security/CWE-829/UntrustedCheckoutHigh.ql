/**
 * @name Checkout of untrusted code in trusted context
 * @description Privileged workflows have read/write access to the base repository and access to secrets.
 *              By explicitly checking out and running the build script from a fork the untrusted code is running in an environment
 *              that is able to push to the base repository and to access secrets.
 * @kind problem
 * @problem.severity error
 * @precision high
 * @security-severity 7.5
 * @id actions/untrusted-checkout/high
 * @tags actions
 *       security
 *       external/cwe/cwe-829
 */

import actions
import codeql.actions.security.UntrustedCheckoutQuery
import codeql.actions.security.PoisonableSteps

from LocalJob j, PRHeadCheckoutStep checkout
where
  j = checkout.getEnclosingJob() and
  j.getAStep() = checkout and
  // the checkout is NOT followed by a known poisonable step
  not checkout.getAFollowingStep() instanceof PoisonableStep and
  // the checkout is not controlled by an access check
  not exists(ControlCheck check | check.dominates(checkout)) and
  // the checkout occurs in a privileged context
  (
    inPrivilegedCompositeAction(checkout)
    or
    inPrivilegedExternallyTriggerableJob(checkout)
  )
select checkout, "Potential unsafe checkout of untrusted pull request on privileged workflow."
