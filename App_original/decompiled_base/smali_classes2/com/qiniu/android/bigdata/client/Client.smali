.class public final Lcom/qiniu/android/bigdata/client/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/bigdata/client/Client$ResponseTag;
    }
.end annotation


# static fields
.field public static final ContentTypeHeader:Ljava/lang/String; = "Content-Type"

.field public static final DefaultMime:Ljava/lang/String; = "application/octet-stream"

.field public static final FormMime:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final JsonMime:Ljava/lang/String; = "application/json"


# instance fields
.field private final converter:Lcom/qiniu/android/http/UrlConverter;

.field private httpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0x1e

    move-object v0, p0

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/bigdata/client/Client;-><init>(Lcom/qiniu/android/http/ProxyConfiguration;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/http/dns/Dns;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/ProxyConfiguration;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/http/dns/Dns;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p4, p0, Lcom/qiniu/android/bigdata/client/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    .line 89
    new-instance p4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/qiniu/android/http/ProxyConfiguration;->proxy()Ljava/net/Proxy;

    move-result-object p5

    invoke-virtual {p4, p5}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 92
    iget-object p5, p1, Lcom/qiniu/android/http/ProxyConfiguration;->user:Ljava/lang/String;

    if-eqz p5, :cond_0

    iget-object p5, p1, Lcom/qiniu/android/http/ProxyConfiguration;->password:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/qiniu/android/http/ProxyConfiguration;->authenticator()Lokhttp3/Authenticator;

    move-result-object p1

    invoke-virtual {p4, p1}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    :cond_0
    new-instance p1, Lcom/qiniu/android/bigdata/client/Client$1;

    invoke-direct {p1, p0}, Lcom/qiniu/android/bigdata/client/Client$1;-><init>(Lcom/qiniu/android/bigdata/client/Client;)V

    invoke-virtual {p4, p1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 119
    invoke-virtual {p4}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object p1

    new-instance p5, Lcom/qiniu/android/bigdata/client/Client$2;

    invoke-direct {p5, p0}, Lcom/qiniu/android/bigdata/client/Client$2;-><init>(Lcom/qiniu/android/bigdata/client/Client;)V

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long p1, p2

    .line 140
    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p1, p2, p5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    int-to-long p1, p3

    .line 141
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p1, p2, p3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 p1, 0x0

    .line 142
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p1, p2, p3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 143
    invoke-virtual {p4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/bigdata/client/Client;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$100(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V
    .locals 0

    .line 47
    invoke-static/range {p0 .. p7}, Lcom/qiniu/android/bigdata/client/Client;->onRet(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V

    return-void
.end method

.method private asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 9

    .line 400
    iget-object v0, p0, Lcom/qiniu/android/bigdata/client/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v0, p1}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    :cond_0
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;-><init>()V

    .line 404
    const-string v1, "file"

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    .line 406
    new-instance v1, Lcom/qiniu/android/bigdata/client/Client$6;

    invoke-direct {v1, p0, v0}, Lcom/qiniu/android/bigdata/client/Client$6;-><init>(Lcom/qiniu/android/bigdata/client/Client;Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;)V

    invoke-virtual {p2, v1}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 412
    const-string p2, "multipart/form-data"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    .line 413
    invoke-virtual {v0}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;->build()Lcom/qiniu/android/http/request/httpclient/MultipartBody;

    move-result-object v2

    if-nez p6, :cond_1

    if-eqz p10, :cond_2

    .line 415
    :cond_1
    new-instance v1, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    move-wide v4, p4

    move-object v3, p6

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/qiniu/android/http/ProgressHandler;JLcom/qiniu/android/http/CancellationHandler;)V

    move-object v2, v1

    .line 417
    :cond_2
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p9

    .line 418
    invoke-virtual/range {v2 .. v8}, Lcom/qiniu/android/bigdata/client/Client;->asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V

    return-void
.end method

.method private static buildJsonResp([B)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 174
    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 175
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 177
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static buildResponseInfo(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/storage/UpToken;J)Lcom/qiniu/android/http/ResponseInfo;
    .locals 3

    .line 182
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p1

    .line 183
    const-string p2, "X-Reqid"

    invoke-virtual {p0, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string p4, ","

    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    :goto_0
    const/4 p2, 0x0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p4

    invoke-virtual {p4}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p5, p2

    goto :goto_1

    :catch_0
    move-exception p4

    .line 190
    invoke-virtual {p4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    move-object p5, p4

    move-object p4, p2

    .line 193
    :goto_1
    invoke-static {p0}, Lcom/qiniu/android/bigdata/client/Client;->ctype(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "application/json"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1

    if-eqz p4, :cond_1

    .line 195
    :try_start_1
    invoke-static {p4}, Lcom/qiniu/android/bigdata/client/Client;->buildJsonResp([B)Lorg/json/JSONObject;

    move-result-object p6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    :try_start_2
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    .line 197
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 198
    const-string p4, "error"

    invoke-virtual {p6, p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p4

    goto :goto_2

    :catch_2
    move-exception p4

    move-object p6, p2

    .line 201
    :goto_2
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_3

    .line 202
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p5

    goto :goto_4

    :cond_1
    if-nez p4, :cond_2

    .line 206
    const-string p4, "null body"

    move-object p5, p4

    goto :goto_3

    :cond_2
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p4}, Ljava/lang/String;-><init>([B)V

    :goto_3
    move-object p6, p2

    .line 209
    :cond_3
    :goto_4
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 210
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v0

    :goto_5
    if-ge p3, v0, :cond_4

    .line 212
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1, p3}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2, p3}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {p4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 216
    :cond_4
    invoke-static {p2, p1, p4, p6, p5}, Lcom/qiniu/android/http/ResponseInfo;->create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method private static ctype(Lokhttp3/Response;)Ljava/lang/String;
    .locals 2

    .line 164
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 166
    const-string p0, ""

    return-object p0

    .line 168
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

.method private static getContentLength(Lokhttp3/Response;)J
    .locals 2

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static onRet(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V
    .locals 0

    .line 233
    invoke-static/range {p0 .. p6}, Lcom/qiniu/android/bigdata/client/Client;->buildResponseInfo(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/storage/UpToken;J)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p0

    .line 235
    new-instance p1, Lcom/qiniu/android/bigdata/client/Client$3;

    invoke-direct {p1, p7, p0}, Lcom/qiniu/android/bigdata/client/Client$3;-><init>(Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/http/ResponseInfo;)V

    invoke-static {p1}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private send(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 9

    if-eqz p2, :cond_0

    .line 449
    new-instance v0, Lcom/qiniu/android/bigdata/client/Client$7;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/bigdata/client/Client$7;-><init>(Lcom/qiniu/android/bigdata/client/Client;Lokhttp3/Request$Builder;)V

    invoke-virtual {p2, v0}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 457
    :cond_0
    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/UserAgent;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 460
    new-instance p2, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;-><init>(Lcom/qiniu/android/bigdata/client/Client$1;)V

    .line 461
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/bigdata/client/Client;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    iget-object v3, p2, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;->ip:Ljava/lang/String;

    iget-wide v4, p2, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;->duration:J

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/qiniu/android/bigdata/client/Client;->buildResponseInfo(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/storage/UpToken;J)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 465
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p2, -0x1

    .line 466
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, v1, v1, p1}, Lcom/qiniu/android/http/ResponseInfo;->create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method private syncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLjava/lang/String;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 6

    .line 499
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;-><init>()V

    .line 500
    const-string v1, "file"

    invoke-virtual {v0, v1, p6, p7}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    .line 502
    new-instance p6, Lcom/qiniu/android/bigdata/client/Client$8;

    invoke-direct {p6, p0, v0}, Lcom/qiniu/android/bigdata/client/Client$8;-><init>(Lcom/qiniu/android/bigdata/client/Client;Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;)V

    invoke-virtual {p2, p6}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 508
    const-string p2, "multipart/form-data"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;

    .line 509
    invoke-virtual {v0}, Lcom/qiniu/android/http/request/httpclient/MultipartBody$Builder;->build()Lcom/qiniu/android/http/request/httpclient/MultipartBody;

    move-result-object p2

    .line 510
    new-instance p6, Lokhttp3/Request$Builder;

    invoke-direct {p6}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p6, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p3

    move-wide v4, p4

    .line 511
    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/bigdata/client/Client;->syncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;J)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method private static via(Lokhttp3/Response;)Ljava/lang/String;
    .locals 3

    .line 149
    const-string v0, "X-Via"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 153
    :cond_0
    const-string v0, "X-Px"

    invoke-virtual {p0, v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 157
    :cond_1
    const-string v0, "Fw-Via"

    invoke-virtual {p0, v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public asyncGet(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/bigdata/client/CompletionHandler;)V
    .locals 8

    .line 431
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 432
    invoke-virtual/range {v1 .. v7}, Lcom/qiniu/android/bigdata/client/Client;->asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V

    return-void
.end method

.method public asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/bigdata/client/PostArgs;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 15

    move-object/from16 v0, p2

    .line 381
    iget-object v1, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    iget-object v2, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->file:Ljava/io/File;

    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 383
    iget-object v2, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    iget-object v2, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->data:[B

    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    .line 386
    iget-object v2, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    :goto_0
    move-object v12, v1

    move-wide v8, v2

    .line 388
    iget-object v6, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->params:Lcom/qiniu/android/utils/StringMap;

    iget-object v11, v0, Lcom/qiniu/android/bigdata/client/PostArgs;->fileName:Ljava/lang/String;

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v4 .. v14}, Lcom/qiniu/android/bigdata/client/Client;->asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;[BIILcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 9

    .line 338
    iget-object v0, p0, Lcom/qiniu/android/bigdata/client/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p1}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_2

    .line 343
    array-length v0, p2

    if-lez v0, :cond_2

    .line 344
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    if-eqz p5, :cond_1

    .line 346
    const-string v1, "Content-Type"

    invoke-virtual {p5, v1}, Lcom/qiniu/android/utils/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 351
    :cond_1
    invoke-static {v0, p2, p3, p4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 353
    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    :goto_0
    move-object v4, p2

    if-nez p9, :cond_3

    if-eqz p11, :cond_4

    .line 356
    :cond_3
    new-instance v3, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    move-wide/from16 v6, p7

    move-object/from16 v5, p9

    move-object/from16 v8, p11

    invoke-direct/range {v3 .. v8}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/qiniu/android/http/ProgressHandler;JLcom/qiniu/android/http/CancellationHandler;)V

    move-object v4, v3

    .line 359
    :cond_4
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p10

    .line 360
    invoke-virtual/range {v0 .. v6}, Lcom/qiniu/android/bigdata/client/Client;->asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;[BLcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 12

    const/4 v3, 0x0

    .line 317
    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/qiniu/android/bigdata/client/Client;->asyncPost(Ljava/lang/String;[BIILcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    return-void
.end method

.method public asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/bigdata/client/CompletionHandler;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 255
    new-instance v0, Lcom/qiniu/android/bigdata/client/Client$4;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/bigdata/client/Client$4;-><init>(Lcom/qiniu/android/bigdata/client/Client;Lokhttp3/Request$Builder;)V

    invoke-virtual {p2, v0}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 263
    :cond_0
    const-string p2, "User-Agent"

    if-eqz p3, :cond_1

    .line 264
    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object v0

    iget-object v1, p3, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/UserAgent;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object v0

    const-string v1, "pandora"

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/UserAgent;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 270
    :goto_0
    new-instance p2, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;-><init>(Lcom/qiniu/android/bigdata/client/Client$1;)V

    .line 271
    iget-object v0, p0, Lcom/qiniu/android/bigdata/client/Client;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/qiniu/android/bigdata/client/Client$5;

    move-object v1, p0

    move-object v3, p3

    move-wide v4, p4

    move-object v2, p6

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/bigdata/client/Client$5;-><init>(Lcom/qiniu/android/bigdata/client/Client;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/storage/UpToken;J)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public syncGet(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 1

    .line 443
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/bigdata/client/Client;->send(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public syncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/bigdata/client/PostArgs;Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 11

    .line 483
    iget-object v0, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 485
    iget-object v1, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->data:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .line 488
    iget-object v1, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->data:[B

    array-length v1, v1

    int-to-long v1, v1

    :goto_0
    move-object v10, v0

    move-wide v7, v1

    .line 490
    iget-object v5, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->params:Lcom/qiniu/android/utils/StringMap;

    iget-object v9, p2, Lcom/qiniu/android/bigdata/client/PostArgs;->fileName:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v10}, Lcom/qiniu/android/bigdata/client/Client;->syncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLjava/lang/String;Lokhttp3/RequestBody;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public syncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;J)Lcom/qiniu/android/http/ResponseInfo;
    .locals 9

    if-eqz p2, :cond_0

    .line 526
    new-instance v0, Lcom/qiniu/android/bigdata/client/Client$9;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/bigdata/client/Client$9;-><init>(Lcom/qiniu/android/bigdata/client/Client;Lokhttp3/Request$Builder;)V

    invoke-virtual {p2, v0}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 534
    :cond_0
    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object p2

    iget-object v0, p3, Lcom/qiniu/android/storage/UpToken;->accessKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/qiniu/android/http/UserAgent;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 535
    new-instance p2, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;-><init>(Lcom/qiniu/android/bigdata/client/Client$1;)V

    .line 538
    :try_start_0
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 539
    iget-object v0, p0, Lcom/qiniu/android/bigdata/client/Client;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 540
    iget-object v3, p2, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;->ip:Ljava/lang/String;

    iget-wide v4, p2, Lcom/qiniu/android/bigdata/client/Client$ResponseTag;->duration:J

    move-object v6, p3

    move-wide v7, p4

    invoke-static/range {v2 .. v8}, Lcom/qiniu/android/bigdata/client/Client;->buildResponseInfo(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/storage/UpToken;J)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 542
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 544
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 545
    instance-of p3, p1, Ljava/net/UnknownHostException;

    if-eqz p3, :cond_1

    const/16 p2, -0x3eb

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 547
    const-string p3, "Broken pipe"

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    const/16 p2, -0x3ed

    goto :goto_0

    .line 549
    :cond_2
    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_3

    const/16 p2, -0x3e9

    goto :goto_0

    .line 551
    :cond_3
    instance-of p2, p1, Ljava/net/ConnectException;

    if-eqz p2, :cond_4

    const/16 p2, -0x3ec

    goto :goto_0

    :cond_4
    const/4 p2, -0x1

    .line 555
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, v1, v1, p1}, Lcom/qiniu/android/http/ResponseInfo;->create(Lcom/qiniu/android/http/request/Request;ILjava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method
