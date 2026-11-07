.class abstract Lcom/qiniu/android/storage/PartsUploadPerformer;
.super Ljava/lang/Object;
.source "PartsUploadPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;,
        Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;
    }
.end annotation


# static fields
.field private static final kRecordFileInfoKey:Ljava/lang/String; = "recordFileInfo"

.field private static final kRecordZoneInfoKey:Ljava/lang/String; = "recordZoneInfo"


# instance fields
.field final config:Lcom/qiniu/android/storage/Configuration;

.field protected currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

.field final fileName:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field final options:Lcom/qiniu/android/storage/UploadOptions;

.field final recorder:Lcom/qiniu/android/storage/Recorder;

.field final recorderKey:Ljava/lang/String;

.field recoveredFrom:Ljava/lang/Long;

.field private targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

.field final token:Lcom/qiniu/android/storage/UpToken;

.field private final upProgress:Lcom/qiniu/android/storage/UpProgress;

.field uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

.field final uploadSource:Lcom/qiniu/android/storage/UploadSource;

.field uploadTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/http/request/RequestTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    .line 48
    iput-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->fileName:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->token:Lcom/qiniu/android/storage/UpToken;

    .line 51
    iput-object p5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->options:Lcom/qiniu/android/storage/UploadOptions;

    .line 52
    iput-object p6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->config:Lcom/qiniu/android/storage/Configuration;

    .line 53
    iget-object p1, p6, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 54
    iput-object p7, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 55
    new-instance p1, Lcom/qiniu/android/storage/UpProgress;

    iget-object p2, p5, Lcom/qiniu/android/storage/UploadOptions;->progressHandler:Lcom/qiniu/android/storage/UpProgressHandler;

    invoke-direct {p1, p2}, Lcom/qiniu/android/storage/UpProgress;-><init>(Lcom/qiniu/android/storage/UpProgressHandler;)V

    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->upProgress:Lcom/qiniu/android/storage/UpProgress;

    .line 57
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->initData()V

    return-void
.end method


# virtual methods
.method canReadFile()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->hasValidResource()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method closeFile()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->close()V

    :cond_0
    return-void
.end method

.method abstract completeUpload(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
.end method

.method couldReloadInfo()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->couldReloadSource()Z

    move-result v0

    return v0
.end method

.method createUploadRequestTransaction()Lcom/qiniu/android/http/request/RequestTransaction;
    .locals 7

    .line 212
    new-instance v0, Lcom/qiniu/android/http/request/RequestTransaction;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    iget-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    iget-object v5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->token:Lcom/qiniu/android/storage/UpToken;

    invoke-direct/range {v0 .. v6}, Lcom/qiniu/android/http/request/RequestTransaction;-><init>(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/request/IUploadRegion;Lcom/qiniu/android/http/request/IUploadRegion;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;)V

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadTransactions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadTransactions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method abstract getDefaultUploadInfo()Lcom/qiniu/android/storage/UploadInfo;
.end method

.method abstract getUploadInfoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfo;
.end method

.method initData()V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadTransactions:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->getDefaultUploadInfo()Lcom/qiniu/android/storage/UploadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    .line 63
    invoke-virtual {p0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoverUploadInfoFromRecord()V

    return-void
.end method

.method notifyProgress(Ljava/lang/Boolean;)V
    .locals 9

    .line 98
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->upProgress:Lcom/qiniu/android/storage/UpProgress;

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v1}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qiniu/android/storage/UpProgress;->notifyDone(Ljava/lang/String;J)V

    return-void

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->upProgress:Lcom/qiniu/android/storage/UpProgress;

    iget-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadInfo;->uploadSize()J

    move-result-wide v5

    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/qiniu/android/storage/UpProgress;->progress(Ljava/lang/String;JJ)V

    return-void
.end method

.method recordUploadInfo()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    invoke-interface {v1}, Lcom/qiniu/android/http/request/IUploadRegion;->getZoneInfo()Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/qiniu/android/common/ZoneInfo;->detailInfo:Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {v3}, Lcom/qiniu/android/storage/UploadInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 126
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    const-string v4, "recordZoneInfo"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "recordFileInfo"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/qiniu/android/storage/Recorder;->set(Ljava/lang/String;[B)V

    .line 134
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " recorderKey:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 136
    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " recordUploadInfo"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 134
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method recoverUploadInfoFromRecord()V
    .locals 8

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " recorderKey:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 155
    invoke-static {v3}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " recorder:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    .line 156
    invoke-static {v3}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " recoverUploadInfoFromRecord"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 160
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-interface {v3, v0}, Lcom/qiniu/android/storage/Recorder;->get(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " recoverUploadInfoFromRecord data:null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 173
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v3, "recordZoneInfo"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/qiniu/android/common/ZoneInfo;->buildFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v3

    .line 175
    iget-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadSource:Lcom/qiniu/android/storage/UploadSource;

    const-string v7, "recordFileInfo"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lcom/qiniu/android/storage/PartsUploadPerformer;->getUploadInfoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfo;

    move-result-object v5

    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    .line 176
    invoke-virtual {v5}, Lcom/qiniu/android/storage/UploadInfo;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v6, v5}, Lcom/qiniu/android/storage/UploadInfo;->isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 179
    invoke-static {v7}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " recoverUploadInfoFromRecord valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-static {v6}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 182
    invoke-virtual {v5}, Lcom/qiniu/android/storage/UploadInfo;->checkInfoStateAndUpdate()V

    .line 183
    iput-object v5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    .line 184
    new-instance v6, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;

    iget-object v7, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->config:Lcom/qiniu/android/storage/Configuration;

    invoke-direct {v6, v7}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    .line 185
    invoke-virtual {v6, v3}, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;->setupRegionData(Lcom/qiniu/android/common/ZoneInfo;)V

    .line 186
    iput-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 187
    iput-object v6, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 188
    invoke-virtual {v5}, Lcom/qiniu/android/storage/UploadInfo;->uploadSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    return-void

    .line 190
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 191
    invoke-static {v5}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " recoverUploadInfoFromRecord invalid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v3}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-interface {v3, v0}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 195
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 196
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 197
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 200
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 201
    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " recoverUploadInfoFromRecord json:error"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-interface {v1, v0}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 205
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 206
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 207
    iput-object v4, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    :cond_3
    :goto_0
    return-void
.end method

.method reloadInfo()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    .line 80
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->clearUploadState()V

    .line 81
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->reloadSource()Z

    move-result v0

    return v0
.end method

.method removeUploadInfoRecord()V
    .locals 2

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recoveredFrom:Ljava/lang/Long;

    .line 142
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->uploadInfo:Lcom/qiniu/android/storage/UploadInfo;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadInfo;->clearUploadState()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v0, v1}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " recorderKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->recorderKey:Ljava/lang/String;

    .line 149
    invoke-static {v1}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removeUploadInfoRecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    return-void
.end method

.method abstract serverInit(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
.end method

.method switchRegion(Lcom/qiniu/android/http/request/IUploadRegion;)V
    .locals 1

    .line 91
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->currentRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    .line 92
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    if-nez v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformer;->targetRegion:Lcom/qiniu/android/http/request/IUploadRegion;

    :cond_0
    return-void
.end method

.method abstract uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
.end method
