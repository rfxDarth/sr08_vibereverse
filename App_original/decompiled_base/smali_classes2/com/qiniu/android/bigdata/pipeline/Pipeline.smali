.class public final Lcom/qiniu/android/bigdata/pipeline/Pipeline;
.super Ljava/lang/Object;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;
    }
.end annotation


# static fields
.field private static final HTTPHeaderAuthorization:Ljava/lang/String; = "Authorization"

.field private static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"


# instance fields
.field private final client:Lcom/qiniu/android/bigdata/client/Client;

.field private final config:Lcom/qiniu/android/bigdata/Configuration;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/bigdata/Configuration;)V
    .locals 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/qiniu/android/bigdata/Configuration;->copy(Lcom/qiniu/android/bigdata/Configuration;)Lcom/qiniu/android/bigdata/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->config:Lcom/qiniu/android/bigdata/Configuration;

    .line 33
    new-instance v0, Lcom/qiniu/android/bigdata/client/Client;

    iget-object v1, p1, Lcom/qiniu/android/bigdata/Configuration;->proxy:Lcom/qiniu/android/http/ProxyConfiguration;

    iget v2, p1, Lcom/qiniu/android/bigdata/Configuration;->connectTimeout:I

    iget v3, p1, Lcom/qiniu/android/bigdata/Configuration;->responseTimeout:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/bigdata/client/Client;-><init>(Lcom/qiniu/android/http/ProxyConfiguration;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/http/dns/Dns;)V

    iput-object v0, p0, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->client:Lcom/qiniu/android/bigdata/client/Client;

    return-void
.end method

.method private send(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V
    .locals 10

    if-eqz p4, :cond_2

    .line 124
    invoke-static {p3}, Lcom/qiniu/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-static {p1}, Lcom/qiniu/android/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 131
    new-instance v3, Lcom/qiniu/android/utils/StringMap;

    invoke-direct {v3}, Lcom/qiniu/android/utils/StringMap;-><init>()V

    .line 132
    const-string p2, "Authorization"

    invoke-virtual {v3, p2, p3}, Lcom/qiniu/android/utils/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/qiniu/android/utils/StringMap;

    .line 133
    const-string p2, "Content-Type"

    const-string/jumbo p3, "text/plain"

    invoke-virtual {v3, p2, p3}, Lcom/qiniu/android/utils/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/qiniu/android/utils/StringMap;

    .line 135
    iget-object v0, p0, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->client:Lcom/qiniu/android/bigdata/client/Client;

    invoke-direct {p0, p1}, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length p1, v2

    int-to-long v5, p1

    new-instance v8, Lcom/qiniu/android/bigdata/pipeline/Pipeline$1;

    invoke-direct {v8, p0, p4}, Lcom/qiniu/android/bigdata/pipeline/Pipeline$1;-><init>(Lcom/qiniu/android/bigdata/pipeline/Pipeline;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/qiniu/android/bigdata/client/Client;->asyncPost(Ljava/lang/String;[BLcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;JLcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/bigdata/client/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no repo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no token"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no CompletionHandler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private url(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->config:Lcom/qiniu/android/bigdata/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/bigdata/Configuration;->pipelineHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/repos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/data"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public pump(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-static {p2, v0}, Lcom/qiniu/android/bigdata/pipeline/Points;->formatPoint(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->send(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V

    return-void
.end method

.method public pump(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;",
            ")V"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-static {p2, v0}, Lcom/qiniu/android/bigdata/pipeline/Points;->formatPoint(Ljava/util/Map;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->send(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V

    return-void
.end method

.method public pumpMulti(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;>;",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-static {p2}, Lcom/qiniu/android/bigdata/pipeline/Points;->formatPoints(Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->send(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V

    return-void
.end method

.method public pumpMulti(Ljava/lang/String;[Ljava/util/Map;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-static {p2}, Lcom/qiniu/android/bigdata/pipeline/Points;->formatPoints([Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->send(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V

    return-void
.end method

.method public pumpMultiObjects(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TV;>;",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-static {p2}, Lcom/qiniu/android/bigdata/pipeline/Points;->formatPointsObjects(Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->send(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V

    return-void
.end method

.method public pumpMultiObjects(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V
    .locals 0

    .line 88
    invoke-static {p2}, Lcom/qiniu/android/bigdata/pipeline/Points;->formatPoints([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/bigdata/pipeline/Pipeline;->send(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/qiniu/android/bigdata/pipeline/Pipeline$PumpCompleteHandler;)V

    return-void
.end method
