.class Lcom/qiniu/android/http/request/HttpRegionRequest$1;
.super Ljava/lang/Object;
.source "HttpRegionRequest.java"

# interfaces
.implements Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

.field final synthetic val$header:Ljava/util/Map;

.field final synthetic val$isAsync:Z

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

.field final synthetic val$request:Lcom/qiniu/android/http/request/Request;

.field final synthetic val$server:Lcom/qiniu/android/http/request/IUploadServer;

.field final synthetic val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Ljava/lang/String;ZLcom/qiniu/android/http/request/Request;Ljava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    iput-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    iput-object p3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    iput-object p4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$action:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$isAsync:Z

    iput-object p6, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object p7, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$header:Ljava/util/Map;

    iput-object p8, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$method:Ljava/lang/String;

    iput-object p9, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

    iput-object p10, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/http/ResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    invoke-static {v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$000(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->addMetricsList(Ljava/util/List;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 128
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 129
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    .line 130
    invoke-virtual {p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->getSyncDnsSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/http/dns/DnsSource;->isCustom(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->getSyncDnsSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/http/dns/DnsSource;->isDoh(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->getSyncDnsSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/http/dns/DnsSource;->isDnspod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 131
    :goto_1
    invoke-virtual {p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->isForsureHijacked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->isMaybeHijacked()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 137
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    invoke-static {p2}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$100(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object p2

    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$server:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-virtual {v1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/qiniu/android/http/request/IUploadRegion;->updateIpListFormHost(Ljava/lang/String;)V

    .line 140
    :cond_4
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    invoke-interface {p2, p1, p3}, Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;->shouldRetry(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    .line 141
    invoke-static {p2}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$200(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/storage/Configuration;

    move-result-object p2

    iget-boolean p2, p2, Lcom/qiniu/android/storage/Configuration;->allowBackupHost:Z

    if-eqz p2, :cond_5

    .line 142
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->couldRegionRetry()Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    if-eqz v0, :cond_8

    .line 144
    :cond_6
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    invoke-static {p2, p1}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$300(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 146
    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$action:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$isAsync:Z

    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iget-object v6, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    iget-object v7, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$header:Ljava/util/Map;

    iget-object v8, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$method:Ljava/lang/String;

    iget-object v9, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$shouldRetryHandler:Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;

    iget-object v10, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$progressHandler:Lcom/qiniu/android/http/request/handler/RequestProgressHandler;

    iget-object v11, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

    invoke-static/range {v2 .. v11}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$400(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    .line 147
    iget-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object v1, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    return-void

    .line 149
    :cond_7
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object v1, p2, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    .line 150
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

    invoke-static {p2, p1, p3, v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$500(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void

    .line 153
    :cond_8
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$request:Lcom/qiniu/android/http/request/Request;

    iput-object v1, p2, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    .line 154
    iget-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->this$0:Lcom/qiniu/android/http/request/HttpRegionRequest;

    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;->val$completeHandler:Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;

    invoke-static {p2, p1, p3, v0}, Lcom/qiniu/android/http/request/HttpRegionRequest;->access$500(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method
