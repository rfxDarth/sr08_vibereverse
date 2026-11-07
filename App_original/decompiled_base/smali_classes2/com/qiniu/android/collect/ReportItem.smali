.class public Lcom/qiniu/android/collect/ReportItem;
.super Ljava/lang/Object;
.source "ReportItem.java"


# static fields
.field public static final BlockKeyBytesSent:Ljava/lang/String; = "bytes_sent"

.field public static final BlockKeyClientTime:Ljava/lang/String; = "client_time"

.field public static final BlockKeyCurrentRegionId:Ljava/lang/String; = "current_region_id"

.field public static final BlockKeyFileSize:Ljava/lang/String; = "file_size"

.field public static final BlockKeyHijacking:Ljava/lang/String; = "hijacking"

.field public static final BlockKeyLogType:Ljava/lang/String; = "log_type"

.field public static final BlockKeyOsName:Ljava/lang/String; = "os_name"

.field public static final BlockKeyOsVersion:Ljava/lang/String; = "os_version"

.field public static final BlockKeyPerceptiveSpeed:Ljava/lang/String; = "perceptive_speed"

.field public static final BlockKeyPid:Ljava/lang/String; = "pid"

.field public static final BlockKeyRecoveredFrom:Ljava/lang/String; = "recovered_from"

.field public static final BlockKeySDKName:Ljava/lang/String; = "sdk_name"

.field public static final BlockKeySDKVersion:Ljava/lang/String; = "sdk_version"

.field public static final BlockKeyTargetBucket:Ljava/lang/String; = "target_bucket"

.field public static final BlockKeyTargetKey:Ljava/lang/String; = "target_key"

.field public static final BlockKeyTargetRegionId:Ljava/lang/String; = "target_region_id"

.field public static final BlockKeyTid:Ljava/lang/String; = "tid"

.field public static final BlockKeyTotalElapsedTime:Ljava/lang/String; = "total_elapsed_time"

.field public static final BlockKeyUpApiVersion:Ljava/lang/String; = "up_api_version"

.field public static final BlockKeyUpTime:Ljava/lang/String; = "up_time"

.field public static final LogTypeBlock:Ljava/lang/String; = "block"

.field public static final LogTypeQuality:Ljava/lang/String; = "quality"

.field public static final LogTypeRequest:Ljava/lang/String; = "request"

.field public static final QualityKeyBytesSent:Ljava/lang/String; = "bytes_sent"

.field public static final QualityKeyCloudType:Ljava/lang/String; = "cloud_type"

.field public static final QualityKeyErrorDescription:Ljava/lang/String; = "error_description"

.field public static final QualityKeyErrorType:Ljava/lang/String; = "error_type"

.field public static final QualityKeyFileSize:Ljava/lang/String; = "file_size"

.field public static final QualityKeyHijacking:Ljava/lang/String; = "hijacking"

.field public static final QualityKeyLogType:Ljava/lang/String; = "log_type"

.field public static final QualityKeyOsName:Ljava/lang/String; = "os_name"

.field public static final QualityKeyOsVersion:Ljava/lang/String; = "os_version"

.field public static final QualityKeyPerceptiveSpeed:Ljava/lang/String; = "perceptive_speed"

.field public static final QualityKeyRegionsCount:Ljava/lang/String; = "regions_count"

.field public static final QualityKeyRequestsCount:Ljava/lang/String; = "requests_count"

.field public static final QualityKeyResult:Ljava/lang/String; = "result"

.field public static final QualityKeySDKName:Ljava/lang/String; = "sdk_name"

.field public static final QualityKeySDKVersion:Ljava/lang/String; = "sdk_version"

.field public static final QualityKeyTargetBucket:Ljava/lang/String; = "target_bucket"

.field public static final QualityKeyTargetKey:Ljava/lang/String; = "target_key"

.field public static final QualityKeyTotalElapsedTime:Ljava/lang/String; = "total_elapsed_time"

.field public static final QualityKeyUcQueryElapsedTime:Ljava/lang/String; = "uc_query_elapsed_time"

.field public static final QualityKeyUpTime:Ljava/lang/String; = "up_time"

.field public static final QualityKeyUpType:Ljava/lang/String; = "up_type"

.field public static final RequestKeyBytesSent:Ljava/lang/String; = "bytes_sent"

.field public static final RequestKeyBytesTotal:Ljava/lang/String; = "bytes_total"

.field public static final RequestKeyClientTime:Ljava/lang/String; = "client_time"

.field public static final RequestKeyConnectElapsedTime:Ljava/lang/String; = "connect_elapsed_time"

.field public static final RequestKeyCurrentRegionId:Ljava/lang/String; = "current_region_id"

.field public static final RequestKeyDnsElapsedTime:Ljava/lang/String; = "dns_elapsed_time"

.field public static final RequestKeyDnsErrorMessage:Ljava/lang/String; = "dns_error_message"

.field public static final RequestKeyDnsSource:Ljava/lang/String; = "dns_source"

.field public static final RequestKeyErrorDescription:Ljava/lang/String; = "error_description"

.field public static final RequestKeyErrorType:Ljava/lang/String; = "error_type"

.field public static final RequestKeyFileOffset:Ljava/lang/String; = "file_offset"

.field public static final RequestKeyHijacking:Ljava/lang/String; = "hijacking"

.field public static final RequestKeyHost:Ljava/lang/String; = "host"

.field public static final RequestKeyHttpClient:Ljava/lang/String; = "http_client"

.field public static final RequestKeyHttpClientVersion:Ljava/lang/String; = "http_client_version"

.field public static final RequestKeyHttpVersion:Ljava/lang/String; = "http_version"

.field public static final RequestKeyLogType:Ljava/lang/String; = "log_type"

.field public static final RequestKeyNetworkMeasuring:Ljava/lang/String; = "network_measuring"

.field public static final RequestKeyNetworkType:Ljava/lang/String; = "network_type"

.field public static final RequestKeyOsName:Ljava/lang/String; = "os_name"

.field public static final RequestKeyOsVersion:Ljava/lang/String; = "os_version"

.field public static final RequestKeyPerceptiveSpeed:Ljava/lang/String; = "perceptive_speed"

.field public static final RequestKeyPid:Ljava/lang/String; = "pid"

.field public static final RequestKeyPort:Ljava/lang/String; = "port"

.field public static final RequestKeyPrefetchedBefore:Ljava/lang/String; = "prefetched_before"

.field public static final RequestKeyPrefetchedDnsSource:Ljava/lang/String; = "prefetched_dns_source"

.field public static final RequestKeyPrefetchedErrorMessage:Ljava/lang/String; = "prefetched_error_message"

.field public static final RequestKeyRemoteIp:Ljava/lang/String; = "remote_ip"

.field public static final RequestKeyRequestElapsedTime:Ljava/lang/String; = "request_elapsed_time"

.field public static final RequestKeyRequestId:Ljava/lang/String; = "req_id"

.field public static final RequestKeyResponseElapsedTime:Ljava/lang/String; = "response_elapsed_time"

.field public static final RequestKeySDKName:Ljava/lang/String; = "sdk_name"

.field public static final RequestKeySDKVersion:Ljava/lang/String; = "sdk_version"

.field public static final RequestKeySignalStrength:Ljava/lang/String; = "signal_strength"

.field public static final RequestKeyStatusCode:Ljava/lang/String; = "status_code"

.field public static final RequestKeyTLSConnectElapsedTime:Ljava/lang/String; = "tls_connect_elapsed_time"

.field public static final RequestKeyTargetBucket:Ljava/lang/String; = "target_bucket"

.field public static final RequestKeyTargetKey:Ljava/lang/String; = "target_key"

.field public static final RequestKeyTargetRegionId:Ljava/lang/String; = "target_region_id"

.field public static final RequestKeyTid:Ljava/lang/String; = "tid"

.field public static final RequestKeyTotalElapsedTime:Ljava/lang/String; = "total_elapsed_time"

.field public static final RequestKeyUpTime:Ljava/lang/String; = "up_time"

.field public static final RequestKeyUpType:Ljava/lang/String; = "up_type"

.field public static final RequestKeyWaitElapsedTime:Ljava/lang/String; = "wait_elapsed_time"


# instance fields
.field private keyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    return-void
.end method

.method public static qualityResult(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 579
    const-string/jumbo p0, "unknown_error"

    return-object p0

    .line 584
    :cond_0
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0xc7

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 585
    const-string v0, "ok"

    goto :goto_1

    .line 586
    :cond_1
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x18f

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x23d

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x243

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x260

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x264

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x266

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x276

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x277

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_3

    .line 590
    :cond_2
    const-string v0, "bad_request"

    goto :goto_1

    .line 591
    :cond_3
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v1, -0x6

    if-ne v0, v1, :cond_4

    .line 592
    const-string/jumbo v0, "zero_size_file"

    goto :goto_1

    .line 593
    :cond_4
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    .line 594
    const-string v0, "invalid_file"

    goto :goto_1

    .line 595
    :cond_5
    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 597
    :cond_7
    :goto_0
    const-string v0, "invalid_args"

    :goto_1
    if-nez v0, :cond_8

    .line 601
    invoke-static {p0}, Lcom/qiniu/android/collect/ReportItem;->requestReportErrorType(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v0
.end method

.method public static requestReportErrorType(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;
    .locals 3

    .line 532
    const-string/jumbo v0, "unknown_error"

    if-nez p0, :cond_0

    return-object v0

    .line 537
    :cond_0
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, 0xc7

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 539
    :cond_1
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, 0x12b

    if-le v1, v2, :cond_2

    .line 540
    const-string/jumbo p0, "response_error"

    return-object p0

    .line 541
    :cond_2
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 542
    const-string p0, "network_error"

    return-object p0

    .line 543
    :cond_3
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, -0x3e9

    if-ne v1, v2, :cond_4

    .line 544
    const-string/jumbo p0, "timeout"

    return-object p0

    .line 545
    :cond_4
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, -0x3eb

    if-ne v1, v2, :cond_5

    .line 546
    const-string/jumbo p0, "unknown_host"

    return-object p0

    .line 547
    :cond_5
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, -0x3ec

    if-ne v1, v2, :cond_6

    .line 548
    const-string p0, "cannot_connect_to_host"

    return-object p0

    .line 549
    :cond_6
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_7

    .line 550
    const-string/jumbo p0, "transmission_error"

    return-object p0

    .line 551
    :cond_7
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, -0x4b0

    if-ne v1, v2, :cond_8

    .line 552
    const-string/jumbo p0, "ssl_error"

    return-object p0

    .line 553
    :cond_8
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, -0x3f7

    if-ne v1, v2, :cond_9

    .line 554
    const-string p0, "parse_error"

    return-object p0

    .line 555
    :cond_9
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v2, -0x8

    if-ne v1, v2, :cond_a

    .line 556
    const-string p0, "malicious_response"

    return-object p0

    .line 557
    :cond_a
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_b

    .line 558
    const-string/jumbo p0, "user_canceled"

    return-object p0

    .line 559
    :cond_b
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/4 v2, -0x7

    if-ne v1, v2, :cond_c

    .line 560
    const-string p0, "local_io_error"

    return-object p0

    .line 561
    :cond_c
    iget v1, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_d

    .line 562
    const-string p0, "protocol_error"

    return-object p0

    .line 563
    :cond_d
    iget p0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v1, -0x3f1

    if-ne p0, v1, :cond_e

    .line 564
    const-string p0, "network_slow"

    return-object p0

    :cond_e
    return-object v0
.end method

.method public static requestReportStatusCode(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public removeReportValue(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReport(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_1

    const/4 p1, 0x0

    .line 35
    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/qiniu/android/collect/ReportItem;->keyValues:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    :goto_0
    const-string/jumbo v0, "{}"

    return-object v0
.end method
