.class Lcom/qiniu/android/storage/PartsUploadPerformerV2;
.super Lcom/qiniu/android/storage/PartsUploadPerformer;
.source "PartsUploadPerformerV2.java"


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/qiniu/android/storage/PartsUploadPerformer;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method completeUpload(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    check-cast v0, Lcom/qiniu/android/storage/UploadInfoV2;

    .line 157
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfoV2;->getPartInfoArray()Ljava/util/List;

    move-result-object v5

    .line 158
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v1

    .line 160
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->fileName:Ljava/lang/String;

    iget-object v4, v0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    new-instance v6, Lcom/qiniu/android/storage/PartsUploadPerformerV2$4;

    invoke-direct {v6, p0, v1, p1}, Lcom/qiniu/android/storage/PartsUploadPerformerV2$4;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV2;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/http/request/RequestTransaction;->completeParts(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method getDefaultUploadInfo()Lcom/qiniu/android/storage/UploadInfo;
    .locals 3

    .line 38
    new-instance v0, Lcom/qiniu/android/storage/UploadInfoV2;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->config:Lcom/qiniu/android/storage/Configuration;

    invoke-direct {v0, v1, v2}, Lcom/qiniu/android/storage/UploadInfoV2;-><init>(Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/Configuration;)V

    return-object v0
.end method

.method getUploadInfoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfo;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    invoke-static {p1, p2}, Lcom/qiniu/android/storage/UploadInfoV2;->infoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfoV2;

    move-result-object p1

    return-object p1
.end method

.method serverInit(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    check-cast v0, Lcom/qiniu/android/storage/UploadInfoV2;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfoV2;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serverInit success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->successResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    invoke-interface {p1, v0, v1, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v1

    .line 52
    new-instance v2, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/qiniu/android/storage/PartsUploadPerformerV2$1;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV2;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/UploadInfoV2;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/qiniu/android/http/request/RequestTransaction;->initPart(ZLcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void
.end method

.method uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
    .locals 12

    const-string v1, "key:"

    .line 79
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    check-cast v0, Lcom/qiniu/android/storage/UploadInfoV2;

    .line 82
    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    monitor-enter v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    :try_start_0
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfoV2;->nextUploadData()Lcom/qiniu/android/storage/UploadData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 86
    sget-object v6, Lcom/qiniu/android/storage/UploadData$State;->Uploading:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v5, v6}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " no data left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    .line 103
    const-string v0, "file is empty"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "no chunk left"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->sdkInteriorError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 107
    :goto_0
    invoke-interface {p1, v3, v0, v4, v4}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void

    .line 112
    :cond_2
    new-instance v10, Lcom/qiniu/android/storage/PartsUploadPerformerV2$2;

    invoke-direct {v10, p0, v5}, Lcom/qiniu/android/storage/PartsUploadPerformerV2$2;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV2;Lcom/qiniu/android/storage/UploadData;)V

    move-object v1, v5

    .line 120
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;

    move-result-object v5

    .line 121
    iget-object v7, v0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/UploadInfoV2;->getPartIndexOfData(Lcom/qiniu/android/storage/UploadData;)I

    move-result v8

    iget-object v9, v1, Lcom/qiniu/android/storage/UploadData;->data:[B

    new-instance v11, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;

    invoke-direct {v11, p0, v5, v1, p1}, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;-><init>(Lcom/qiniu/android/storage/PartsUploadPerformerV2;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V

    const/4 v6, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/qiniu/android/http/request/RequestTransaction;->uploadPart(ZLjava/lang/String;I[BLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 90
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->localIOError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 93
    iget-object v1, v0, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-interface {p1, v3, v0, v4, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    .line 94
    monitor-exit v2

    return-void

    .line 96
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
