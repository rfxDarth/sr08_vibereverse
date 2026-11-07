.class public Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
.super Lcom/qiniu/android/http/metrics/UploadMetrics;
.source "UploadSingleRequestMetrics.java"


# static fields
.field public static final RequestHijacked:Ljava/lang/String; = "forsure"

.field public static final RequestMaybeHijacked:Ljava/lang/String; = "maybe"


# instance fields
.field private clientName:Ljava/lang/String;

.field private clientVersion:Ljava/lang/String;

.field private connectCheckMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

.field private connectEndDate:Ljava/util/Date;

.field private connectStartDate:Ljava/util/Date;

.field private countOfRequestBodyBytesSent:J

.field private countOfRequestHeaderBytesSent:J

.field private countOfResponseBodyBytesReceived:J

.field private countOfResponseHeaderBytesReceived:J

.field private domainLookupEndDate:Ljava/util/Date;

.field private domainLookupStartDate:Ljava/util/Date;

.field private hijacked:Ljava/lang/String;

.field private httpVersion:Ljava/lang/String;

.field private localAddress:Ljava/lang/String;

.field private localPort:Ljava/lang/Integer;

.field private remoteAddress:Ljava/lang/String;

.field private remotePort:Ljava/lang/Integer;

.field private request:Lcom/qiniu/android/http/request/Request;

.field private requestEndDate:Ljava/util/Date;

.field private requestStartDate:Ljava/util/Date;

.field private response:Lcom/qiniu/android/http/ResponseInfo;

.field private responseEndDate:Ljava/util/Date;

.field private responseStartDate:Ljava/util/Date;

.field private secureConnectionEndDate:Ljava/util/Date;

.field private secureConnectionStartDate:Ljava/util/Date;

.field private syncDnsError:Ljava/lang/String;

.field private syncDnsSource:Ljava/lang/String;

.field private totalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/qiniu/android/http/metrics/UploadMetrics;-><init>()V

    .line 193
    const-string v0, "customized"

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientName:Ljava/lang/String;

    .line 214
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientVersion:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 445
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestHeaderBytesSent:J

    .line 466
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestBodyBytesSent:J

    .line 487
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseHeaderBytesReceived:J

    .line 508
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseBodyBytesReceived:J

    .line 612
    iput-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes:J

    return-void
.end method

.method private time(Ljava/util/Date;Ljava/util/Date;)J
    .locals 0

    .line 732
    invoke-static {p1, p2}, Lcom/qiniu/android/utils/Utils;->dateDuration(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public bytesReceived()Ljava/lang/Long;
    .locals 5

    .line 697
    iget-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseHeaderBytesReceived:J

    iget-wide v2, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseBodyBytesReceived:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 701
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bytesSend()Ljava/lang/Long;
    .locals 6

    .line 683
    invoke-virtual {p0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes()J

    move-result-wide v0

    .line 684
    iget-wide v2, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestHeaderBytesSent:J

    iget-wide v4, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestBodyBytesSent:J

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 688
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectCheckMetrics()Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectCheckMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    return-object v0
.end method

.method public getConnectEndDate()Ljava/util/Date;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getConnectStartDate()Ljava/util/Date;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCountOfRequestBodyBytesSent()J
    .locals 2

    .line 474
    iget-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestBodyBytesSent:J

    return-wide v0
.end method

.method public getCountOfRequestHeaderBytesSent()J
    .locals 2

    .line 453
    iget-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestHeaderBytesSent:J

    return-wide v0
.end method

.method public getCountOfResponseBodyBytesReceived()J
    .locals 2

    .line 516
    iget-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseBodyBytesReceived:J

    return-wide v0
.end method

.method public getCountOfResponseHeaderBytesReceived()J
    .locals 2

    .line 495
    iget-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseHeaderBytesReceived:J

    return-wide v0
.end method

.method public getDomainLookupEndDate()Ljava/util/Date;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDomainLookupStartDate()Ljava/util/Date;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getHijacked()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->hijacked:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->localAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()Ljava/lang/Integer;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->localPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePort()Ljava/lang/Integer;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remotePort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequest()Lcom/qiniu/android/http/request/Request;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->request:Lcom/qiniu/android/http/request/Request;

    return-object v0
.end method

.method public getRequestEndDate()Ljava/util/Date;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRequestStartDate()Ljava/util/Date;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getResponse()Lcom/qiniu/android/http/ResponseInfo;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->response:Lcom/qiniu/android/http/ResponseInfo;

    return-object v0
.end method

.method public getResponseEndDate()Ljava/util/Date;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getResponseStartDate()Ljava/util/Date;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSecureConnectionEndDate()Ljava/util/Date;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSecureConnectionStartDate()Ljava/util/Date;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSyncDnsError()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->syncDnsError:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncDnsSource()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->syncDnsSource:Ljava/lang/String;

    return-object v0
.end method

.method public isForsureHijacked()Z
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->hijacked:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "forsure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMaybeHijacked()Z
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->hijacked:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "maybe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public perceptiveSpeed()Ljava/lang/Long;
    .locals 4

    .line 710
    invoke-virtual {p0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->bytesReceived()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalElapsedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiniu/android/utils/Utils;->calculateSpeed(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setClientName(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientName:Ljava/lang/String;

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->clientVersion:Ljava/lang/String;

    return-void
.end method

.method public setConnectCheckMetrics(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectCheckMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    return-void
.end method

.method public setConnectEndDate(Ljava/util/Date;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectEndDate:Ljava/util/Date;

    return-void
.end method

.method public setConnectStartDate(Ljava/util/Date;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectStartDate:Ljava/util/Date;

    return-void
.end method

.method public setCountOfRequestBodyBytesSent(J)V
    .locals 0

    .line 483
    iput-wide p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestBodyBytesSent:J

    return-void
.end method

.method public setCountOfRequestHeaderBytesSent(J)V
    .locals 0

    .line 462
    iput-wide p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfRequestHeaderBytesSent:J

    return-void
.end method

.method public setCountOfResponseBodyBytesReceived(J)V
    .locals 0

    .line 525
    iput-wide p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseBodyBytesReceived:J

    return-void
.end method

.method public setCountOfResponseHeaderBytesReceived(J)V
    .locals 0

    .line 504
    iput-wide p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->countOfResponseHeaderBytesReceived:J

    return-void
.end method

.method public setDomainLookupEndDate(Ljava/util/Date;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupEndDate:Ljava/util/Date;

    return-void
.end method

.method public setDomainLookupStartDate(Ljava/util/Date;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupStartDate:Ljava/util/Date;

    return-void
.end method

.method public setHijacked(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->hijacked:Ljava/lang/String;

    return-void
.end method

.method public setHttpVersion(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->httpVersion:Ljava/lang/String;

    return-void
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->localAddress:Ljava/lang/String;

    return-void
.end method

.method public setLocalPort(Ljava/lang/Integer;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->localPort:Ljava/lang/Integer;

    return-void
.end method

.method public setRemoteAddress(Ljava/lang/String;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remoteAddress:Ljava/lang/String;

    return-void
.end method

.method public setRemotePort(Ljava/lang/Integer;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->remotePort:Ljava/lang/Integer;

    return-void
.end method

.method public setRequest(Lcom/qiniu/android/http/request/Request;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Lcom/qiniu/android/http/request/Request;->copyWithoutBody()Lcom/qiniu/android/http/request/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->request:Lcom/qiniu/android/http/request/Request;

    .line 140
    iget-object v0, p1, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/qiniu/android/http/request/Request;->allHeaders:Ljava/util/Map;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 143
    :goto_0
    iget-object v0, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    if-eqz v0, :cond_1

    .line 144
    iget-object p1, p1, Lcom/qiniu/android/http/request/Request;->httpBody:[B

    array-length p1, p1

    int-to-long v1, p1

    :cond_1
    add-long/2addr v3, v1

    .line 146
    iput-wide v3, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes:J

    :cond_2
    return-void
.end method

.method public setRequestEndDate(Ljava/util/Date;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestEndDate:Ljava/util/Date;

    return-void
.end method

.method public setRequestStartDate(Ljava/util/Date;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestStartDate:Ljava/util/Date;

    return-void
.end method

.method public setResponse(Lcom/qiniu/android/http/ResponseInfo;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->response:Lcom/qiniu/android/http/ResponseInfo;

    return-void
.end method

.method public setResponseEndDate(Ljava/util/Date;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseEndDate:Ljava/util/Date;

    return-void
.end method

.method public setResponseStartDate(Ljava/util/Date;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseStartDate:Ljava/util/Date;

    return-void
.end method

.method public setSecureConnectionEndDate(Ljava/util/Date;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionEndDate:Ljava/util/Date;

    return-void
.end method

.method public setSecureConnectionStartDate(Ljava/util/Date;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionStartDate:Ljava/util/Date;

    return-void
.end method

.method public setSyncDnsError(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->syncDnsError:Ljava/lang/String;

    return-void
.end method

.method public setSyncDnsSource(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->syncDnsSource:Ljava/lang/String;

    return-void
.end method

.method public totalBytes()J
    .locals 2

    .line 674
    iget-wide v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->totalBytes:J

    return-wide v0
.end method

.method public totalConnectTime()J
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->connectEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalDnsTime()J
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->domainLookupEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalRequestTime()J
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalResponseTime()J
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalSecureConnectTime()J
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionStartDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->secureConnectionEndDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public totalWaitTime()J
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->requestEndDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->responseStartDate:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->time(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method
