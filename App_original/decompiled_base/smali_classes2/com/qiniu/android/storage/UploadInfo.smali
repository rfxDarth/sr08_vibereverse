.class abstract Lcom/qiniu/android/storage/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# instance fields
.field protected fileName:Ljava/lang/String;

.field private source:Lcom/qiniu/android/storage/UploadSource;

.field private sourceId:Ljava/lang/String;

.field private sourceSize:J


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceSize:J

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfo;->fileName:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfo;->source:Lcom/qiniu/android/storage/UploadSource;

    .line 18
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceSize:J

    .line 19
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract checkInfoStateAndUpdate()V
.end method

.method abstract clearUploadState()V
.end method

.method close()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfo;->source:Lcom/qiniu/android/storage/UploadSource;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadSource;->close()V

    return-void
.end method

.method couldReloadSource()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfo;->source:Lcom/qiniu/android/storage/UploadSource;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadSource;->couldReloadSource()Z

    move-result v0

    return v0
.end method

.method getSourceId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method getSourceSize()J
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfo;->source:Lcom/qiniu/android/storage/UploadSource;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method hasValidResource()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfo;->source:Lcom/qiniu/android/storage/UploadSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method abstract isAllUploaded()Z
.end method

.method isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/qiniu/android/storage/UploadInfo;->sourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-wide v1, p1, Lcom/qiniu/android/storage/UploadInfo;->sourceSize:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    iget-wide v5, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceSize:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_1

    cmp-long p1, v1, v5

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method isValid()Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadInfo;->hasValidResource()Z

    move-result v0

    return v0
.end method

.method readData(IJ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfo;->source:Lcom/qiniu/android/storage/UploadSource;

    if-eqz v0, :cond_2

    .line 152
    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfo;->source:Lcom/qiniu/android/storage/UploadSource;

    invoke-virtual {v1, p1, p2, p3}, Lcom/qiniu/android/storage/UploadSource;->readData(IJ)[B

    move-result-object v1

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 155
    array-length v0, v1

    if-ne v0, p1, :cond_0

    array-length p1, v1

    if-nez p1, :cond_1

    .line 156
    :cond_0
    array-length p1, v1

    int-to-long v2, p1

    add-long/2addr p2, v2

    iput-wide p2, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceSize:J

    :cond_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 148
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "file is not exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method reloadSource()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfo;->source:Lcom/qiniu/android/storage/UploadSource;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UploadSource;->reloadSource()Z

    move-result v0

    return v0
.end method

.method setInfoFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .line 24
    :try_start_0
    const-string/jumbo v0, "sourceSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceSize:J

    .line 25
    const-string/jumbo v0, "sourceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    :try_start_0
    const-string/jumbo v1, "sourceId"

    iget-object v2, p0, Lcom/qiniu/android/storage/UploadInfo;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string/jumbo v1, "sourceSize"

    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadInfo;->getSourceSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method abstract uploadSize()J
.end method
