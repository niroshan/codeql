/** Provides dataflow configurations to reason about installation of arbitrary Android APKs. */

import java
import semmle.code.java.dataflow.DataFlow
import semmle.code.java.dataflow.TaintTracking2
import semmle.code.java.dataflow.TaintTracking3
private import semmle.code.java.security.ArbitraryApkInstallation

/**
 * A dataflow configuration for flow from an external source of an APK to the
 * `setData[AndType][AndNormalize]` method of an intent.
 */
class ApkConfiguration extends DataFlow::Configuration {
  ApkConfiguration() { this = "ApkConfiguration" }

  override predicate isSource(DataFlow::Node node) { node instanceof ExternalApkSource }

  override predicate isSink(DataFlow::Node node) {
    exists(MethodAccess ma |
      ma.getMethod() instanceof SetDataMethod and
      ma.getArgument(0) = node.asExpr() and
      (
        any(PackageArchiveMimeTypeConfiguration c).hasFlowToExpr(ma.getQualifier())
        or
        any(InstallPackageActionConfiguration c).hasFlowToExpr(ma.getQualifier())
      )
    )
  }
}

/**
 * A dataflow configuration tracking the flow from the `android.content.Intent.ACTION_INSTALL_PACKAGE`
 * constant to either the constructor of an intent or the `setAction` method of an intent.
 *
 * This is used to track if an intent is used to install an APK.
 */
private class InstallPackageActionConfiguration extends TaintTracking3::Configuration {
  InstallPackageActionConfiguration() { this = "InstallPackageActionConfiguration" }

  override predicate isSource(DataFlow::Node source) {
    source.asExpr() instanceof InstallPackageAction
  }

  override predicate isAdditionalTaintStep(
    DataFlow::Node node1, DataFlow::FlowState state1, DataFlow::Node node2,
    DataFlow::FlowState state2
  ) {
    state1 instanceof DataFlow::FlowStateEmpty and
    state2 = "hasPackageInstallAction" and
    (
      exists(ConstructorCall cc |
        cc.getConstructedType() instanceof TypeIntent and
        node1.asExpr() = cc.getArgument(0) and
        node1.asExpr().getType() instanceof TypeString and
        node2.asExpr() = cc
      )
      or
      exists(MethodAccess ma |
        ma.getMethod() instanceof SetActionMethod and
        node1.asExpr() = ma.getArgument(0) and
        node2.asExpr() = ma.getQualifier()
      )
    )
  }

  override predicate isSink(DataFlow::Node node, DataFlow::FlowState state) {
    state = "hasPackageInstallAction" and node.asExpr().getType() instanceof TypeIntent
  }
}

/**
 * A dataflow configuration tracking the flow of the Android APK MIME type to
 * the `setType` or `setTypeAndNormalize` method of an intent, followed by a call
 * to `setData[AndType][AndNormalize]`.
 */
private class PackageArchiveMimeTypeConfiguration extends TaintTracking2::Configuration {
  PackageArchiveMimeTypeConfiguration() { this = "PackageArchiveMimeTypeConfiguration" }

  override predicate isSource(DataFlow::Node node) {
    node.asExpr() instanceof PackageArchiveMimeTypeLiteral
  }

  override predicate isAdditionalTaintStep(
    DataFlow::Node node1, DataFlow::FlowState state1, DataFlow::Node node2,
    DataFlow::FlowState state2
  ) {
    state1 instanceof DataFlow::FlowStateEmpty and
    state2 = "typeSet" and
    exists(MethodAccess ma |
      ma.getQualifier() = node2.asExpr() and
      (
        ma.getMethod() instanceof SetTypeMethod and
        ma.getArgument(0) = node1.asExpr()
        or
        ma.getMethod() instanceof SetDataAndTypeMethod and
        ma.getArgument(1) = node1.asExpr()
      )
    )
  }

  override predicate isSink(DataFlow::Node node, DataFlow::FlowState state) {
    state = "typeSet" and
    node instanceof SetDataSink
  }
}
