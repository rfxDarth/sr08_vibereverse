.class public Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;
.super Lcom/qiniu/android/http/request/IRequestClient;
.source "SystemHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$ResponseTag;
    }
.end annotation


# static fields
.field public static final ContentTypeHeader:Ljava/lang/String; = "Content-Type"

.field public static final DefaultMime:Ljava/lang/String; = "application/octet-stream"

.field public static final FormMime:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final JsonMime:Ljava/lang/String; = "application/json"

.field private static final baseClient:Lokhttp3/OkHttpClient;

.field private static pool:Lokhttp3/ConnectionPool;


# instance fields
.field private call:Lokhttp3/Call;

.field private completeHandler:Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;

.field private currentRequest:Lcom/qiniu/android/http/request/Request;

.field private currentServer:Lcom/qiniu/android/http/request/IUploadServer;

.field private hasHandleComplete:Z

.field private httpClient:Lokhttp3/OkHttpClient;

.field private metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

.field private requestProgress:Lcom/qiniu/android/http/request/IRequestClient$Progress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->baseClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/qiniu/android/http/request/IRequestClient;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Ljava/lang/Exception;)I
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getStatusCodeByException(Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/Request;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->completeHandler:Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleError(Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleResponse(Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/IUploadServer;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentServer:Lcom/qiniu/android/http/request/IUploadServer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    return-object p0
.end method

.method private static buildJsonResp([B)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 583
    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 584
    :cond_1
    :goto_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private createEventLister()Lokhttp3/EventListener;
    .locals 1

    .line 327
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$4;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V

    return-object v0
.end method

.method private createHttpClient(Lcom/qiniu/android/http/ProxyConfiguration;)Lokhttp3/OkHttpClient;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_0
    sget-object v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->baseClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/qiniu/android/http/ProxyConfiguration;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 233
    iget-object v1, p1, Lcom/qiniu/android/http/ProxyConfiguration;->user:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/qiniu/android/http/ProxyConfiguration;->password:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p1}, Lcom/qiniu/android/http/ProxyConfiguration;->authenticator()Lokhttp3/Authenticator;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createEventLister()Lokhttp3/EventListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;

    .line 240
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/qiniu/android/storage/GlobalConfiguration;->isDnsOpen:Z

    if-eqz p1, :cond_2

    .line 241
    new-instance p1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;

    invoke-direct {p1, p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$2;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 260
    :cond_2
    invoke-static {}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getConnectPool()Lokhttp3/ConnectionPool;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 262
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget p1, p1, Lcom/qiniu/android/http/request/Request;->connectTimeout:I

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 263
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget p1, p1, Lcom/qiniu/android/http/request/Request;->readTimeout:I

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 264
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget p1, p1, Lcom/qiniu/android/http/request/Request;->writeTimeout:I

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 266
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method private createRequestBuilder(Lcom/qiniu/android/http/request/IRequestClient$Progress;)Lokhttp3/Request$Builder;
    .locals 12

    .line 277
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 281
    :cond_0
    iget-object v0, v0, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    invoke-static {v0}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v0

    .line 284
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    const-string v3, "GET"

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "PUT"

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    .line 292
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    .line 293
    :cond_3
    :goto_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v5, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v5, v5, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 294
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 297
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    array-length v2, v2

    if-lez v2, :cond_5

    .line 298
    const-string v1, "application/octet-stream"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    const-string v5, "Content-Type"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 301
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 303
    :cond_4
    new-instance v2, Lcom/qiniu/android/http/request/httpclient/ByteBody;

    iget-object v5, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v5, v5, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    invoke-direct {v2, v1, v5}, Lcom/qiniu/android/http/request/httpclient/ByteBody;-><init>(Lokhttp3/MediaType;[B)V

    goto :goto_1

    .line 305
    :cond_5
    new-instance v2, Lcom/qiniu/android/http/request/httpclient/ByteBody;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v2, v1, v5}, Lcom/qiniu/android/http/request/httpclient/ByteBody;-><init>(Lokhttp3/MediaType;[B)V

    :goto_1
    move-object v7, v2

    .line 307
    new-instance v6, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    new-instance v8, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$3;

    invoke-direct {v8, p0, p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$3;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/IRequestClient$Progress;)V

    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    array-length p1, p1

    int-to-long v9, p1

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/qiniu/android/http/ProgressHandler;JLcom/qiniu/android/http/CancellationHandler;)V

    .line 316
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 317
    invoke-virtual {v0, v6}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 318
    :cond_6
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->httpMethod:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 319
    invoke-virtual {v0, v6}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0

    .line 286
    :cond_8
    :goto_2
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v0, v0, Lcom/qiniu/android/http/request/Request;->urlString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v0, v0, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    iget-object v2, v2, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_3

    :cond_9
    return-object p1
.end method

.method private static declared-synchronized getConnectPool()Lokhttp3/ConnectionPool;
    .locals 6

    const-class v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    monitor-enter v0

    .line 270
    :try_start_0
    sget-object v1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->pool:Lokhttp3/ConnectionPool;

    if-nez v1, :cond_0

    .line 271
    new-instance v1, Lokhttp3/ConnectionPool;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0xa

    const-wide/16 v4, 0xa

    invoke-direct {v1, v3, v4, v5, v2}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    sput-object v1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->pool:Lokhttp3/ConnectionPool;

    .line 273
    :cond_0
    sget-object v1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->pool:Lokhttp3/ConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getOkHttpVersion()Ljava/lang/String;
    .locals 6

    .line 594
    const-string v0, "okhttp/"

    const-string/jumbo v1, "userAgent"

    const-string v2, "okhttp3.internal.Version"

    const-string v3, ""

    :try_start_0
    const-string v4, "okhttp3.OkHttp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 595
    const-string v5, "VERSION"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 596
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 602
    :catch_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 603
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 604
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 610
    :catch_1
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    .line 611
    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 612
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    return-object v3
.end method

.method private getStatusCodeByException(Ljava/lang/Exception;)I
    .locals 3

    .line 559
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 560
    const-string v2, "Canceled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 562
    :cond_0
    instance-of v2, p1, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    if-eqz v2, :cond_1

    return v1

    .line 564
    :cond_1
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    const/16 p1, -0x3eb

    return p1

    :cond_2
    if-eqz v0, :cond_3

    .line 566
    const-string v1, "Broken pipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, -0x3ed

    return p1

    .line 568
    :cond_3
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_4

    const/16 p1, -0x3e9

    return p1

    .line 570
    :cond_4
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_5

    const/16 p1, -0x3ec

    return p1

    .line 572
    :cond_5
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_6

    const/16 p1, 0x64

    return p1

    .line 574
    :cond_6
    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_7

    const/16 p1, -0x4b0

    return p1

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method private handleError(Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V
    .locals 1

    .line 459
    monitor-enter p0

    .line 460
    :try_start_0
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    if-eqz v0, :cond_0

    .line 461
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    .line 464
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 466
    invoke-static {p1, p2, v0, v0, p3}, Lcom/qiniu/android/http/ResponseInfo;->create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p2

    .line 467
    iget-object p3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {p3, p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setResponse(Lcom/qiniu/android/http/ResponseInfo;)V

    .line 468
    iget-object p3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {p3, p1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setRequest(Lcom/qiniu/android/http/request/Request;)V

    .line 469
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {p1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->end()V

    .line 470
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iget-object p3, p2, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-interface {p4, p2, p1, p3}, Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lorg/json/JSONObject;)V

    .line 471
    invoke-direct {p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->releaseResource()V

    return-void

    :catchall_0
    move-exception p1

    .line 464
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleResponse(Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V
    .locals 7

    .line 477
    monitor-enter p0

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    if-eqz v0, :cond_0

    .line 479
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->hasHandleComplete:Z

    .line 482
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    .line 486
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 487
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 489
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v5, v3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 491
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 498
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v2

    goto :goto_1

    :catch_0
    move-exception v3

    .line 500
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    .line 504
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 505
    :cond_2
    invoke-static {p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->responseContentType(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 506
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 507
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 509
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 510
    :try_start_3
    const-string v2, "error"

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    nop

    :goto_2
    move-object v2, v3

    goto :goto_3

    :catch_2
    nop

    goto :goto_3

    .line 516
    :cond_3
    :try_start_4
    invoke-static {v3}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->buildJsonResp([B)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v0, -0x3f7

    .line 524
    :cond_4
    :goto_3
    invoke-static {p1, v0, v1, v2, v4}, Lcom/qiniu/android/http/ResponseInfo;->create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {v1, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setResponse(Lcom/qiniu/android/http/ResponseInfo;)V

    .line 526
    iget-object v1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {v1, p1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setRequest(Lcom/qiniu/android/http/request/Request;)V

    .line 527
    invoke-virtual {p2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object p1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne p1, v1, :cond_5

    .line 528
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    const-string p2, "1.0"

    invoke-virtual {p1, p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setHttpVersion(Ljava/lang/String;)V

    goto :goto_4

    .line 529
    :cond_5
    invoke-virtual {p2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object p1

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    if-ne p1, v1, :cond_6

    .line 530
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    const-string p2, "1.1"

    invoke-virtual {p1, p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setHttpVersion(Ljava/lang/String;)V

    goto :goto_4

    .line 531
    :cond_6
    invoke-virtual {p2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object p1

    sget-object p2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne p1, p2, :cond_7

    .line 532
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    const-string p2, "2"

    invoke-virtual {p1, p2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setHttpVersion(Ljava/lang/String;)V

    .line 534
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {p1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->end()V

    .line 535
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iget-object p2, v0, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-interface {p3, v0, p1, p2}, Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lorg/json/JSONObject;)V

    .line 537
    invoke-direct {p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->releaseResource()V

    return-void

    :catchall_0
    move-exception p1

    .line 482
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private releaseResource()V
    .locals 1

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    .line 542
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->requestProgress:Lcom/qiniu/android/http/request/IRequestClient$Progress;

    .line 543
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->completeHandler:Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;

    .line 544
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    .line 545
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 546
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    return-void
.end method

.method private static responseContentType(Lokhttp3/Response;)Ljava/lang/String;
    .locals 2

    .line 550
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 552
    const-string p0, ""

    return-object p0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 221
    const-string v0, "okhttp"

    return-object v0
.end method

.method public request(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IRequestClient$Options;Lcom/qiniu/android/http/request/IRequestClient$Progress;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 132
    iget-object v0, p2, Lcom/qiniu/android/http/request/IRequestClient$Options;->server:Lcom/qiniu/android/http/request/IUploadServer;

    .line 133
    iget-boolean v1, p2, Lcom/qiniu/android/http/request/IRequestClient$Options;->isAsync:Z

    .line 134
    iget-object p2, p2, Lcom/qiniu/android/http/request/IRequestClient$Options;->connectionProxy:Lcom/qiniu/android/http/ProxyConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object p2, v0

    .line 137
    :goto_0
    new-instance v2, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-direct {v2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;-><init>()V

    iput-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    .line 138
    invoke-virtual {v2}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->start()V

    .line 139
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setClientName(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-static {}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getOkHttpVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setClientVersion(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 142
    iput-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentServer:Lcom/qiniu/android/http/request/IUploadServer;

    .line 143
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/IUploadServer;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setRemoteAddress(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {v0}, Lcom/qiniu/android/http/request/IUploadServer;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setSyncDnsSource(Ljava/lang/String;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->metrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {v0, p1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->setRequest(Lcom/qiniu/android/http/request/Request;)V

    .line 147
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->currentRequest:Lcom/qiniu/android/http/request/Request;

    .line 148
    iput-object p3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->requestProgress:Lcom/qiniu/android/http/request/IRequestClient$Progress;

    .line 149
    iput-object p4, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->completeHandler:Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;

    .line 151
    invoke-direct {p0, p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createHttpClient(Lcom/qiniu/android/http/ProxyConfiguration;)Lokhttp3/OkHttpClient;

    move-result-object p2

    iput-object p2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 153
    iget-object p2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->requestProgress:Lcom/qiniu/android/http/request/IRequestClient$Progress;

    invoke-direct {p0, p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createRequestBuilder(Lcom/qiniu/android/http/request/IRequestClient$Progress;)Lokhttp3/Request$Builder;

    move-result-object p2

    if-nez p2, :cond_2

    .line 155
    const-string p2, "invalid http request"

    invoke-static {p2}, Lcom/qiniu/android/http/ResponseInfo;->invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p2

    .line 156
    iget p3, p2, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    iget-object p2, p2, Lcom/qiniu/android/http/ResponseInfo;->message:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleError(Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V

    return-void

    .line 160
    :cond_2
    iget-object p3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p3, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    iput-object p2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    if-eqz v1, :cond_3

    .line 163
    new-instance p1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;

    invoke-direct {p1, p0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V

    invoke-interface {p2, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 189
    :cond_3
    :try_start_0
    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    .line 190
    invoke-direct {p0, p1, p2, p4}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleResponse(Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 192
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 194
    invoke-direct {p0, p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->getStatusCodeByException(Ljava/lang/Exception;)I

    move-result p2

    .line 195
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, -0x2

    .line 197
    const-string/jumbo p3, "user cancelled"

    .line 199
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->handleError(Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V

    return-void
.end method

.method public request(Lcom/qiniu/android/http/request/Request;ZLcom/qiniu/android/http/ProxyConfiguration;Lcom/qiniu/android/http/request/IRequestClient$Progress;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V
    .locals 2

    .line 112
    new-instance v0, Lcom/qiniu/android/http/request/IRequestClient$Options;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/qiniu/android/http/request/IRequestClient$Options;-><init>(Lcom/qiniu/android/http/request/IUploadServer;ZLcom/qiniu/android/http/ProxyConfiguration;)V

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->request(Lcom/qiniu/android/http/request/Request;Lcom/qiniu/android/http/request/IRequestClient$Options;Lcom/qiniu/android/http/request/IRequestClient$Progress;Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;)V

    return-void
.end method
