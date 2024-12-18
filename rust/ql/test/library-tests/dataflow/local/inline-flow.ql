/**
 * @kind path-problem
 */

import rust
import utils.test.InlineFlowTest
import DefaultFlowTest
import ValueFlow::PathGraph

from ValueFlow::PathNode source, ValueFlow::PathNode sink
where ValueFlow::flowPath(source, sink)
select sink, source, sink, "$@", source, source.toString()
