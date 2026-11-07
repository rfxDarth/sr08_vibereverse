.class Lcom/qiniu/android/http/request/HttpRegionRequest;
.super Ljava/lang/Object;
.source "HttpRegionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;
    }
.end annotation


# instance fields
.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private currentServer:Lcom/qiniu/android/http/request/IUploadServer;

.field private final region:Lcom/qiniu/android/http/request/IUploadRegion;

.field private final requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

.field private requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

.field private requestState:Lcom/qiniu/android/http/request/UploadRequestState;

.field private singleRequest:Lcom/qiniu/android/http/request/HttpSingleRequest;

.field private final token:Lcom/qiniu/android/storage/UpToken;

.field private final uploadOption:Lcom/qiniu/android/storage/UploadOptions;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/UploadRequestInfo;Lcom/qiniu/android/http/request/UploadRequestState;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    .line 41
    iput-object p2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->uploadOption:Lcom/qiniu/android/storage/UploadOptions;

    .line 42
    iput-object p3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->token:Lcom/qiniu/android/storage/UpToken;

    .line 43
    iput-object p4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 44
    iput-object p5, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    .line 45
    iput-object p6, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    .line 47
    new-instance p1, Lcom/qiniu/android/http/request/HttpSingleRequest;

    invoke-direct/range {p1 .. p6}, Lcom/qiniu/android/http/request/HttpSingleRequest;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/http/request/UploadRequestInfo;Lcom/qiniu/android/http/request/UploadRequestState;)V

    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->singleRequest:Lcom/qiniu/android/http/request/HttpSingleRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/http/request/IUploadRegion;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/request/HttpRegionRequest;)Lcom/qiniu/android/storage/Configuration;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    return-object p0
.end method

.method static synthetic access$300(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/request/HttpRegionRequest;->getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p9}, Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/http/request/HttpRegionRequest;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method private completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->end()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->singleRequest:Lcom/qiniu/android/http/request/HttpSingleRequest;

    if-eqz p3, :cond_0

    .line 169
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-interface {p3, p1, v0, p2}, Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isTlsError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/request/UploadRequestState;->setUseOldServer(Z)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    iget-object v1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestState:Lcom/qiniu/android/http/request/UploadRequestState;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->currentServer:Lcom/qiniu/android/http/request/IUploadServer;

    invoke-interface {v0, v1, p1, v2}, Lcom/qiniu/android/http/request/IUploadRegion;->getNextServer(Lcom/qiniu/android/http/request/UploadRequestState;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/request/IUploadServer;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object p1

    return-object p1
.end method

.method private performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/http/request/IUploadServer;",
            "Ljava/lang/String;",
            "Z[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;",
            "Lcom/qiniu/android/http/request/handler/RequestProgressHandler;",
            "Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->currentServer:Lcom/qiniu/android/http/request/IUploadServer;

    .line 102
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v3, v3, Lcom/qiniu/android/storage/Configuration;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v3, v3, Lcom/qiniu/android/storage/Configuration;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    invoke-interface {v3, v0}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget-boolean v4, v4, Lcom/qiniu/android/storage/Configuration;->useHttps:Z

    invoke-static {v0, v4}, Lcom/qiniu/android/utils/UrlUtils;->setHostScheme(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object v4, p2

    goto :goto_0

    :cond_2
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    new-instance v5, Lcom/qiniu/android/http/request/Request;

    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget v10, v3, Lcom/qiniu/android/storage/Configuration;->connectTimeout:I

    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget v11, v3, Lcom/qiniu/android/storage/Configuration;->writeTimeout:I

    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->config:Lcom/qiniu/android/storage/Configuration;

    iget v12, v3, Lcom/qiniu/android/storage/Configuration;->responseTimeout:I

    move-object/from16 v9, p4

    move-object/from16 v8, p5

    move-object/from16 v7, p6

    invoke-direct/range {v5 .. v12}, Lcom/qiniu/android/http/request/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BIII)V

    move-object v6, v5

    .line 115
    invoke-virtual {v6, v0}, Lcom/qiniu/android/http/request/Request;->setHost(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "key:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v4, v4, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    invoke-static {v4}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " url:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    .line 117
    invoke-static {v4}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestInfo:Lcom/qiniu/android/http/request/UploadRequestInfo;

    iget-object v3, v3, Lcom/qiniu/android/http/request/UploadRequestInfo;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " headers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    .line 119
    invoke-static {v3}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 121
    iget-object v11, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->singleRequest:Lcom/qiniu/android/http/request/HttpSingleRequest;

    new-instance v0, Lcom/qiniu/android/http/request/HttpRegionRequest$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v3, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/qiniu/android/http/request/HttpRegionRequest$1;-><init>(Lcom/qiniu/android/http/request/HttpRegionRequest;Lcom/qiniu/android/http/request/IUploadServer;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Ljava/lang/String;ZLcom/qiniu/android/http/request/Request;Ljava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    move-object v4, v3

    move v3, v5

    move-object v1, v6

    move-object v5, v9

    move-object v6, v0

    move-object v0, v11

    invoke-virtual/range {v0 .. v6}, Lcom/qiniu/android/http/request/HttpSingleRequest;->request(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpSingleRequest$RequestCompleteHandler;)V

    return-void

    .line 95
    :cond_3
    :goto_1
    const-string/jumbo v0, "server error"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->sdkInteriorError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v10, p9

    .line 96
    invoke-direct {p0, v0, v1, v10}, Lcom/qiniu/android/http/request/HttpRegionRequest;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;ZLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;",
            "Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    .line 55
    new-instance v1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-direct {v1, v2}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    iput-object v1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 56
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->start()V

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, v1}, Lcom/qiniu/android/http/request/HttpRegionRequest;->getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v1

    const-string v6, "GET"

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v7, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method post(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;",
            "Lcom/qiniu/android/http/request/handler/RequestProgressHandler;",
            "Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    .line 67
    new-instance v1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-direct {v1, v2}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    iput-object v1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 68
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->start()V

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, v1}, Lcom/qiniu/android/http/request/HttpRegionRequest;->getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v1

    const-string v6, "POST"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method

.method put(Ljava/lang/String;Z[BLjava/util/Map;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;",
            "Lcom/qiniu/android/http/request/handler/RequestProgressHandler;",
            "Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;",
            ")V"
        }
    .end annotation

    .line 79
    new-instance v1, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    iget-object v2, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->region:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-direct {v1, v2}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    iput-object v1, p0, Lcom/qiniu/android/http/request/HttpRegionRequest;->requestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 80
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->start()V

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, v1}, Lcom/qiniu/android/http/request/HttpRegionRequest;->getNextServer(Lcom/qiniu/android/http/ResponseInfo;)Lcom/qiniu/android/http/request/IUploadServer;

    move-result-object v1

    const-string v6, "PUT"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/qiniu/android/http/request/HttpRegionRequest;->performRequest(Lcom/qiniu/android/http/request/IUploadServer;Ljava/lang/String;Z[BLjava/util/Map;Ljava/lang/String;Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/HttpRegionRequest$RequestCompleteHandler;)V

    return-void
.end method
