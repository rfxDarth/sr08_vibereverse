.class Lcom/qiniu/android/storage/PartsUploadPerformerV1;
.super Lcom/qiniu/android/storage/PartsUploadPerformer;
.source "PartsUploadPerformerV1.java"


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p7}, Lcom/qiniu/android/storage/PartsUploadPerformer;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method private makeBlock(Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .locals 9

    .line 166
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v0

    .line 167
    iget-wide v1, p1, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    iget p1, p1, Lcom/qiniu/android/storage/UploadBlock;->size:I

    int-to-long v3, p1

    iget-object v5, p2, Lcom/qiniu/android/storage/UploadData;->data:[B

    new-instance v8, Lcom/qiniu/android/storage/PartsUploadPerformerV1$4;

    invoke-direct {v8, p0, v0, p4}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$4;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    const/4 v6, 0x1

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/qiniu/android/http/request/RequestTransaction;->makeBlock(JJ[BZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method private uploadChunk(Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .locals 10

    .line 182
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v0

    .line 183
    iget-object v1, p1, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    iget-wide v2, p1, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    iget-object v4, p2, Lcom/qiniu/android/storage/UploadData;->data:[B

    iget-wide v5, p2, Lcom/qiniu/android/storage/UploadData;->offset:J

    new-instance v9, Lcom/qiniu/android/storage/PartsUploadPerformerV1$5;

    invoke-direct {v9, p0, v0, p4}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$5;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    const/4 v7, 0x1

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/qiniu/android/http/request/RequestTransaction;->uploadChunk(Ljava/lang/String;J[BJZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method


# virtual methods
.method completeUpload(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .locals 9

    .line 138
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    check-cast v0, Lcom/qiniu/android/storage/UploadInfoV1;

    .line 141
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfoV1;->allBlocksContexts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v6, v1

    .line 147
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v2

    .line 148
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfoV1;->getSourceSize()J

    move-result-wide v3

    iget-object v5, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->fileName:Ljava/lang/String;

    new-instance v8, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;

    invoke-direct {v8, p0, v2, p1}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/qiniu/android/http/request/RequestTransaction;->makeFile(JLjava/lang/String;[Ljava/lang/String;ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method getDefaultUploadInfo()Lcom/qiniu/android/storage/UploadInfo;
    .locals 3

    .line 37
    new-instance v0, Lcom/qiniu/android/storage/UploadInfoV1;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->config:Lcom/qiniu/android/storage/Configuration;

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/storage/UploadInfoV1;-><init>(Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/Configuration;)V

    return-object v0
.end method

.method getUploadInfoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfo;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    invoke-static {p1, p2}, Lcom/qiniu/android/storage/UploadInfoV1;->infoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfoV1;

    move-result-object p1

    return-object p1
.end method

.method serverInit(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .locals 2

    .line 42
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->successResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-interface {p1, v0, v1, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void
.end method

.method uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
    .locals 8

    const-string v0, "key:"

    .line 48
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    check-cast v1, Lcom/qiniu/android/storage/UploadInfoV1;

    .line 52
    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    monitor-enter v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    :try_start_0
    invoke-virtual {v1}, Lcom/qiniu/android/storage/UploadInfoV1;->nextUploadBlock()Lcom/qiniu/android/storage/UploadBlock;

    move-result-object v5

    .line 55
    invoke-virtual {v1, v5}, Lcom/qiniu/android/storage/UploadInfoV1;->nextUploadData(Lcom/qiniu/android/storage/UploadBlock;)Lcom/qiniu/android/storage/UploadData;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 57
    sget-object v7, Lcom/qiniu/android/storage/UploadData$State;->Uploading:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v6, v7}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    if-nez v6, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, v6, Lcom/qiniu/android/storage/UploadData;->data:[B

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " get chunk null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 83
    const-string v0, "chunk data is null"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 84
    invoke-interface {p1, v3, v0, v4, v4}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void

    .line 90
    :cond_2
    new-instance v0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;

    invoke-direct {v0, p0, v6}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$1;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/storage/UploadData;)V

    .line 97
    new-instance v2, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;

    invoke-direct {v2, p0, v5, v6, p1}, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V

    .line 127
    invoke-virtual {v1, v6}, Lcom/qiniu/android/storage/UploadInfoV1;->isFirstData(Lcom/qiniu/android/storage/UploadData;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " makeBlock"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, v5, v6, v0, v2}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->makeBlock(Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    return-void

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uploadChunk"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 132
    invoke-direct {p0, v5, v6, v0, v2}, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadChunk(Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    return-void

    .line 70
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " no chunk left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_5

    .line 73
    const-string v0, "file is empty"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_5
    const-string v0, "no chunk left"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->sdkInteriorError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 77
    :goto_1
    invoke-interface {p1, v3, v0, v4, v4}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 61
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 63
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->localIOError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 64
    invoke-interface {p1, v3, v0, v4, v4}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    .line 65
    monitor-exit v2

    return-void

    .line 67
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
