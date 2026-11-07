.class public final Lcom/qiniu/android/common/AutoZone;
.super Lcom/qiniu/android/common/Zone;
.source "AutoZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/common/AutoZone$SingleFlightValue;
    }
.end annotation


# static fields
.field private static final SingleFlight:Lcom/qiniu/android/utils/SingleFlight;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/utils/SingleFlight<",
            "Lcom/qiniu/android/common/AutoZone$SingleFlightValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final zoneCache:Lcom/qiniu/android/utils/Cache;


# instance fields
.field private defaultZone:Lcom/qiniu/android/common/FixedZone;

.field private final transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/request/RequestTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private ucServers:[Ljava/lang/String;

.field private final zonesInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/common/ZonesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/qiniu/android/utils/SingleFlight;

    invoke-direct {v0}, Lcom/qiniu/android/utils/SingleFlight;-><init>()V

    sput-object v0, Lcom/qiniu/android/common/AutoZone;->SingleFlight:Lcom/qiniu/android/utils/SingleFlight;

    .line 41
    new-instance v0, Lcom/qiniu/android/utils/Cache$Builder;

    const-class v1, Lcom/qiniu/android/common/ZonesInfo;

    invoke-direct {v0, v1}, Lcom/qiniu/android/utils/Cache$Builder;-><init>(Ljava/lang/Class;)V

    const-string/jumbo v1, "v1"

    .line 42
    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/Cache$Builder;->setVersion(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache$Builder;->builder()Lcom/qiniu/android/utils/Cache;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/common/AutoZone;->zoneCache:Lcom/qiniu/android/utils/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/common/AutoZone;->transactions:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/common/AutoZone;->zonesInfoMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/http/request/RequestTransaction;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/common/AutoZone;->createUploadRequestTransaction(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/http/request/RequestTransaction;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/qiniu/android/common/AutoZone;->destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V

    return-void
.end method

.method static synthetic access$600()Lcom/qiniu/android/utils/Cache;
    .locals 1

    .line 27
    sget-object v0, Lcom/qiniu/android/common/AutoZone;->zoneCache:Lcom/qiniu/android/utils/Cache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qiniu/android/common/AutoZone;)Ljava/util/Map;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/qiniu/android/common/AutoZone;->zonesInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/qiniu/android/common/AutoZone;)Lcom/qiniu/android/common/FixedZone;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/qiniu/android/common/AutoZone;->defaultZone:Lcom/qiniu/android/common/FixedZone;

    return-object p0
.end method

.method public static clearCache()V
    .locals 1

    .line 103
    sget-object v0, Lcom/qiniu/android/common/AutoZone;->zoneCache:Lcom/qiniu/android/utils/Cache;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache;->clearMemoryCache()V

    .line 104
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Cache;->clearDiskCache()V

    return-void
.end method

.method private createUploadRequestTransaction(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/http/request/RequestTransaction;
    .locals 7

    .line 268
    invoke-virtual {p0}, Lcom/qiniu/android/common/AutoZone;->getUcServerList()Ljava/util/List;

    move-result-object v3

    if-nez p1, :cond_0

    .line 270
    new-instance p1, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {p1}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 272
    new-instance v0, Lcom/qiniu/android/http/request/RequestTransaction;

    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v2

    const-string/jumbo v4, "unknown"

    const/4 v5, 0x0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    .line 274
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone;->transactions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->transactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private getUcServerArray()[Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->ucServers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    .line 111
    :cond_0
    invoke-static {}, Lcom/qiniu/android/common/Config;->preQueryHosts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeCacheKey(Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 248
    const-string v0, ":"

    if-eqz p1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/qiniu/android/storage/Configuration;->accelerateUploading:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/qiniu/android/common/AutoZone;->getUcServerList()Ljava/util/List;

    move-result-object v1

    .line 252
    invoke-static {v1}, Lcom/qiniu/android/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p2

    .line 256
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 258
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 261
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getUcServerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->ucServers:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/qiniu/android/common/AutoZone;->ucServers:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0

    .line 95
    :cond_0
    invoke-static {}, Lcom/qiniu/android/common/Config;->preQueryHosts()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UpToken;->index()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/qiniu/android/common/AutoZone;->makeCacheKey(Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->zonesInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/common/ZonesInfo;

    if-eqz p1, :cond_1

    .line 125
    :try_start_0
    invoke-virtual {p1}, Lcom/qiniu/android/common/ZonesInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/common/ZonesInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object p1
.end method

.method public preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V
    .locals 1

    .line 134
    new-instance v0, Lcom/qiniu/android/common/AutoZone$1;

    invoke-direct {v0, p0, p2}, Lcom/qiniu/android/common/AutoZone$1;-><init>(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/common/Zone$QueryHandler;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/qiniu/android/common/AutoZone;->query(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandlerV2;)V

    return-void
.end method

.method public query(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandlerV2;)V
    .locals 9

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 154
    invoke-virtual {p2}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 159
    :cond_0
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    .line 160
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->start()V

    .line 162
    invoke-virtual {p2}, Lcom/qiniu/android/storage/UpToken;->index()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/qiniu/android/common/AutoZone;->makeCacheKey(Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    sget-object v2, Lcom/qiniu/android/common/AutoZone;->zoneCache:Lcom/qiniu/android/utils/Cache;

    invoke-virtual {v2, v5}, Lcom/qiniu/android/utils/Cache;->cacheForKey(Ljava/lang/String;)Lcom/qiniu/android/utils/Cache$Object;

    move-result-object v2

    .line 166
    instance-of v3, v2, Lcom/qiniu/android/common/ZonesInfo;

    if-eqz v3, :cond_1

    .line 167
    check-cast v2, Lcom/qiniu/android/common/ZonesInfo;

    move-object v8, v2

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    if-eqz v8, :cond_2

    .line 170
    invoke-virtual {v8}, Lcom/qiniu/android/common/ZonesInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->end()V

    .line 172
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone;->zonesInfoMap:Ljava/util/Map;

    invoke-interface {p1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->successResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    invoke-interface {p3, p1, v0, v8}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    return-void

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/qiniu/android/common/AutoZone;->getUcServerArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsCheckAndPrefetchTransaction([Ljava/lang/String;)Z

    .line 181
    :try_start_0
    sget-object v0, Lcom/qiniu/android/common/AutoZone;->SingleFlight:Lcom/qiniu/android/utils/SingleFlight;

    new-instance v2, Lcom/qiniu/android/common/AutoZone$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/qiniu/android/common/AutoZone$2;-><init>(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;)V

    new-instance v3, Lcom/qiniu/android/common/AutoZone$3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, p0

    move-object v7, p2

    move-object v6, p3

    :try_start_1
    invoke-direct/range {v3 .. v8}, Lcom/qiniu/android/common/AutoZone$3;-><init>(Lcom/qiniu/android/common/AutoZone;Ljava/lang/String;Lcom/qiniu/android/common/Zone$QueryHandlerV2;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/ZonesInfo;)V

    invoke-virtual {v0, v5, v2, v3}, Lcom/qiniu/android/utils/SingleFlight;->perform(Ljava/lang/String;Lcom/qiniu/android/utils/SingleFlight$ActionHandler;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, p3

    :goto_1
    move-object p1, v0

    .line 242
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/http/ResponseInfo;->localIOError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    invoke-interface {v6, p1, v1, v1}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    return-void

    :cond_3
    :goto_2
    move-object v6, p3

    .line 155
    const-string p1, "invalid token"

    invoke-static {p1}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    invoke-interface {v6, p1, v1, v1}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    return-void
.end method

.method public setDefaultZones([Lcom/qiniu/android/common/FixedZone;)V
    .locals 0

    .line 81
    invoke-static {p1}, Lcom/qiniu/android/common/FixedZone;->combineZones([Lcom/qiniu/android/common/FixedZone;)Lcom/qiniu/android/common/FixedZone;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/common/AutoZone;->defaultZone:Lcom/qiniu/android/common/FixedZone;

    return-void
.end method

.method public setUcServer(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 59
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/common/AutoZone;->ucServers:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setUcServers([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 70
    array-length v0, p1

    if-lez v0, :cond_0

    .line 71
    iput-object p1, p0, Lcom/qiniu/android/common/AutoZone;->ucServers:[Ljava/lang/String;

    :cond_0
    return-void
.end method
