private import semmle.javascript.Locations
private import codeql.typetracking.internal.SummaryTypeTracker
private import semmle.javascript.dataflow.internal.DataFlowPrivate as DataFlowPrivate
private import semmle.javascript.dataflow.FlowSummary as FlowSummary
private import FlowSummaryImpl as FlowSummaryImpl
private import DataFlowArg

private module SummaryFlowConfig implements Input {
  import JSDataFlow
  import FlowSummaryImpl::Public
  import FlowSummaryImpl::Private
  import FlowSummaryImpl::Private::SummaryComponent

  class Content = DataFlow::ContentSet;

  class ContentFilter extends Unit {
    ContentFilter() { none() }
  }

  ContentFilter getFilterFromWithoutContentStep(Content content) { none() }

  ContentFilter getFilterFromWithContentStep(Content content) { none() }

  predicate singleton = SummaryComponentStack::singleton/1;

  predicate push = SummaryComponentStack::push/2;

  SummaryComponent return() {
    result = SummaryComponent::return(DataFlowPrivate::MkNormalReturnKind())
  }

  Node argumentOf(Node call, SummaryComponent arg, boolean isPostUpdate) {
    exists(ArgumentPosition apos, ParameterPosition ppos, Node argNode |
      arg = argument(ppos) and
      parameterMatch(ppos, apos) and
      isArgumentNode(argNode, any(DataFlowCall c | c.asOrdinaryCall() = call), apos)
    |
      isPostUpdate = true and result = argNode.getPostUpdateNode()
      or
      isPostUpdate = false and result = argNode
    )
  }

  Node parameterOf(Node callable, SummaryComponent param) {
    exists(ArgumentPosition apos, ParameterPosition ppos, Function function |
      param = parameter(apos) and
      parameterMatch(ppos, apos) and
      callable = function.flow() and
      isParameterNode(result, any(DataFlowCallable c | c.asSourceCallable() = function), ppos)
    )
  }

  Node returnOf(Node callable, SummaryComponent return) {
    return = return() and
    result = callable.(DataFlow::FunctionNode).getReturnNode()
  }

  class SummarizedCallable instanceof SummarizedCallableImpl {
    predicate propagatesFlow(
      SummaryComponentStack input, SummaryComponentStack output, boolean preservesValue
    ) {
      super.propagatesFlow(input, output, preservesValue, _)
    }

    string toString() { result = super.toString() }
  }

  Node callTo(SummarizedCallable callable) {
    result = callable.(FlowSummary::SummarizedCallable).getACallSimple()
  }
}

import SummaryFlow<SummaryFlowConfig>
