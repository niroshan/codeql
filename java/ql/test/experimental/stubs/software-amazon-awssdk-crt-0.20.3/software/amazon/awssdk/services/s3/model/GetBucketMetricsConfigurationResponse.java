// Generated automatically from software.amazon.awssdk.services.s3.model.GetBucketMetricsConfigurationResponse for testing purposes

package software.amazon.awssdk.services.s3.model;

import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import software.amazon.awssdk.core.SdkField;
import software.amazon.awssdk.core.SdkPojo;
import software.amazon.awssdk.services.s3.model.MetricsConfiguration;
import software.amazon.awssdk.services.s3.model.S3Response;
import software.amazon.awssdk.utils.builder.CopyableBuilder;
import software.amazon.awssdk.utils.builder.ToCopyableBuilder;

public class GetBucketMetricsConfigurationResponse extends S3Response implements ToCopyableBuilder<GetBucketMetricsConfigurationResponse.Builder, GetBucketMetricsConfigurationResponse>
{
    protected GetBucketMetricsConfigurationResponse() {}
    public GetBucketMetricsConfigurationResponse.Builder toBuilder(){ return null; }
    public final <T> java.util.Optional<T> getValueForField(String p0, java.lang.Class<T> p1){ return null; }
    public final List<SdkField<? extends Object>> sdkFields(){ return null; }
    public final MetricsConfiguration metricsConfiguration(){ return null; }
    public final String toString(){ return null; }
    public final boolean equals(Object p0){ return false; }
    public final boolean equalsBySdkFields(Object p0){ return false; }
    public final int hashCode(){ return 0; }
    public static GetBucketMetricsConfigurationResponse.Builder builder(){ return null; }
    public static java.lang.Class<? extends GetBucketMetricsConfigurationResponse.Builder> serializableBuilderClass(){ return null; }
    static public interface Builder extends CopyableBuilder<GetBucketMetricsConfigurationResponse.Builder, GetBucketMetricsConfigurationResponse>, S3Response.Builder, SdkPojo
    {
        GetBucketMetricsConfigurationResponse.Builder metricsConfiguration(MetricsConfiguration p0);
        default GetBucketMetricsConfigurationResponse.Builder metricsConfiguration(java.util.function.Consumer<MetricsConfiguration.Builder> p0){ return null; }
    }
}
