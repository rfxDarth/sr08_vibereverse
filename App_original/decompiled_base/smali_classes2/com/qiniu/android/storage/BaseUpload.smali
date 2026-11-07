.class abstract Lcom/qiniu/android/storage/BaseUpload;
.super Ljava/lang/Object;
.source "BaseUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;
    }
.end annotation


# static fields
.field protected static final UploadUpTypeForm:Ljava/lang/String; = "form"

.field protected static final UploadUpTypeResumableV1:Ljava/lang/String; = "resumable_v1"

.field protected static final UploadUpTypeResumableV2:Ljava/lang/String; = "resumable_v2"


# instance fields
.field protected final completionHandler:Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;

.field protected final config:Lcom/qiniu/android/storage/Configuration;

.field private currentRegionIndex:I

.field private currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

.field protected final data:[B

.field protected final fileName:Ljava/lang/String;

.field protected final key:Ljava/lang/String;

.field private metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

.field protected final option:Lcom/qiniu/android/storage/UploadOptions;

.field protected final recorder:Lcom/qiniu/android/storage/Recorder;

.field protected final recorderKey:Ljava/lang/String;

.field private regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/request/IUploadRegion;",
            ">;"
        }
    .end annotation
.end field

.field protected final token:Lcom/qiniu/android/storage/UpToken;

.field protected final uploadSource:Lcom/qiniu/android/storage/UploadSource;


# direct methods
.method protected constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .locals 11

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/qiniu/android/storage/BaseUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;[BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    return-void
.end method

.method private constructor <init>(Lcom/qiniu/android/storage/UploadSource;[BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/qiniu/android/storage/BaseUpload;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    .line 47
    iput-object p2, p0, Lcom/qiniu/android/storage/BaseUpload;->data:[B

    if-eqz p3, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    const-string p3, "?"

    :goto_0
    iput-object p3, p0, Lcom/qiniu/android/storage/BaseUpload;->fileName:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    if-eqz p6, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object p6

    :goto_1
    iput-object p6, p0, Lcom/qiniu/android/storage/BaseUpload;->option:Lcom/qiniu/android/storage/UploadOptions;

    .line 52
    iput-object p7, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    .line 53
    iput-object p8, p0, Lcom/qiniu/android/storage/BaseUpload;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 54
    iput-object p9, p0, Lcom/qiniu/android/storage/BaseUpload;->recorderKey:Ljava/lang/String;

    .line 55
    iput-object p10, p0, Lcom/qiniu/android/storage/BaseUpload;->completionHandler:Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;

    .line 57
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->initData()V

    return-void
.end method

.method protected constructor <init>([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    .line 78
    invoke-direct/range {v0 .. v10}, Lcom/qiniu/android/storage/BaseUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;[BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/BaseUpload;)Lcom/qiniu/android/http/metrics/UploadTaskMetrics;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/BaseUpload;Lcom/qiniu/android/common/ZonesInfo;)Z
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/BaseUpload;->setupRegions(Lcom/qiniu/android/common/ZonesInfo;)Z

    move-result p0

    return p0
.end method

.method private innerRun()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->start()V

    .line 100
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->zone:Lcom/qiniu/android/common/Zone;

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->token:Lcom/qiniu/android/storage/UpToken;

    new-instance v3, Lcom/qiniu/android/storage/BaseUpload$1;

    invoke-direct {v3, p0}, Lcom/qiniu/android/storage/BaseUpload$1;-><init>(Lcom/qiniu/android/storage/BaseUpload;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qiniu/android/common/Zone;->query(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandlerV2;)V

    return-void
.end method

.method private setupRegions(Lcom/qiniu/android/common/ZonesInfo;)Z
    .locals 4

    if-eqz p1, :cond_3

    .line 176
    iget-object v0, p1, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/qiniu/android/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    iget-object p1, p1, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/common/ZoneInfo;

    .line 183
    new-instance v2, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    iget-object v3, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    invoke-direct {v2, v3}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    .line 184
    invoke-virtual {v2, v1}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->setupRegionData(Lcom/qiniu/android/common/ZoneInfo;)V

    .line 185
    invoke-virtual {v2}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_2
    iput-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    .line 190
    iget-object p1, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    iput-object v0, p1, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->regions:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected addRegionRequestMetricsOfOneFlow(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-nez v0, :cond_1

    .line 287
    iput-object p1, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    return-void

    .line 289
    :cond_1
    invoke-virtual {v0, p1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    return-void
.end method

.method protected completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->end()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->end()V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v1, v0}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->completionHandler:Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;

    if-eqz v0, :cond_3

    .line 171
    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Ljava/lang/String;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method protected getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 268
    :cond_0
    monitor-enter p0

    .line 269
    :try_start_0
    iget v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 270
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qiniu/android/http/request/IUploadRegion;

    .line 272
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentRegionRequestMetrics()Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    return-object v0
.end method

.method protected getTargetRegion()Lcom/qiniu/android/http/request/IUploadRegion;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/request/IUploadRegion;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getUpType()Ljava/lang/String;
.end method

.method protected initData()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    .line 83
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getUpType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    return-void
.end method

.method protected insertRegionAtFirst(Lcom/qiniu/android/http/request/IUploadRegion;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/http/request/IUploadRegion;

    .line 201
    invoke-interface {p1, v1}, Lcom/qiniu/android/http/request/IUploadRegion;->isEqual(Lcom/qiniu/android/http/request/IUploadRegion;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected prepareToUpload()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected reloadUploadInfo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 2

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/qiniu/android/storage/BaseUpload;->innerRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->unexpectedSysCallError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/qiniu/android/storage/BaseUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected startToUpload()V
    .locals 2

    .line 139
    new-instance v0, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->getCurrentRegion()Lcom/qiniu/android/http/request/IUploadRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;-><init>(Lcom/qiniu/android/http/request/IUploadRegion;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 140
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->start()V

    return-void
.end method

.method protected switchRegion()Z
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 217
    :cond_0
    monitor-enter p0

    .line 218
    :try_start_0
    iget v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 219
    iget-object v3, p0, Lcom/qiniu/android/storage/BaseUpload;->regions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 220
    iput v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionIndex:I

    const/4 v1, 0x1

    .line 223
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected switchRegionAndUpload()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->end()V

    .line 147
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->switchRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->startToUpload()V

    :cond_1
    return v0
.end method

.method protected switchRegionAndUploadIfNeededWithErrorResponse(Lcom/qiniu/android/http/ResponseInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 228
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v1

    if-nez v1, :cond_4

    .line 229
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->couldRetry()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->config:Lcom/qiniu/android/storage/Configuration;

    iget-boolean v1, v1, Lcom/qiniu/android/storage/Configuration;->allowBackupHost:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->end()V

    .line 235
    iget-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->metrics:Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    iget-object v2, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    invoke-virtual {v1, v2}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    const/4 v1, 0x0

    .line 236
    iput-object v1, p0, Lcom/qiniu/android/storage/BaseUpload;->currentRegionRequestMetrics:Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->reloadUploadInfo()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 245
    :cond_2
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isCtxExpiredError()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->switchRegion()Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/qiniu/android/storage/BaseUpload;->startToUpload()V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method
