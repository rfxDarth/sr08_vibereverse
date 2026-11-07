.class Lcom/qiniu/android/storage/UploadBlock;
.super Ljava/lang/Object;
.source "UploadBlock.java"


# instance fields
.field ctx:Ljava/lang/String;

.field expireAt:Ljava/lang/Long;

.field final index:I

.field md5:Ljava/lang/String;

.field final offset:J

.field final size:I

.field final uploadDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JIII)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->expireAt:Ljava/lang/Long;

    .line 21
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 25
    iput-wide p1, p0, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    .line 26
    iput p3, p0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    .line 27
    iput p5, p0, Lcom/qiniu/android/storage/UploadBlock;->index:I

    .line 28
    invoke-direct {p0, p4}, Lcom/qiniu/android/storage/UploadBlock;->createDataList(I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(JIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->expireAt:Ljava/lang/Long;

    .line 21
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 32
    iput-wide p1, p0, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    .line 33
    iput p3, p0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    .line 34
    iput p4, p0, Lcom/qiniu/android/storage/UploadBlock;->index:I

    .line 35
    iput-object p5, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    return-void
.end method

.method static blockFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadBlock;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    const-string v0, "offset"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 44
    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 45
    const-string v0, "index"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 46
    const-string v0, "expired_at"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 47
    const-string v0, "md5"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "ctx"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 50
    const-string/jumbo v1, "uploadDataList"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 53
    invoke-static {v10}, Lcom/qiniu/android/storage/UploadData;->dataFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadData;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 55
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_2
    new-instance v1, Lcom/qiniu/android/storage/UploadBlock;

    invoke-direct/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadBlock;-><init>(JIILjava/util/List;)V

    .line 60
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/qiniu/android/storage/UploadBlock;->expireAt:Ljava/lang/Long;

    .line 61
    iput-object v0, v1, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    .line 62
    iput-object v9, v1, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    return-object v1
.end method

.method private createDataList(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 105
    :goto_0
    iget v4, p0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    int-to-long v5, v4

    cmp-long v7, v1, v5

    if-gez v7, :cond_0

    int-to-long v4, v4

    sub-long/2addr v4, v1

    long-to-int v5, v4

    .line 107
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 108
    new-instance v5, Lcom/qiniu/android/storage/UploadData;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/qiniu/android/storage/UploadData;-><init>(JII)V

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method checkInfoStateAndUpdate()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/storage/UploadData;

    .line 118
    invoke-virtual {v1}, Lcom/qiniu/android/storage/UploadData;->checkStateAndUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected clearUploadState()V
    .locals 2

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/storage/UploadData;

    .line 164
    invoke-virtual {v1}, Lcom/qiniu/android/storage/UploadData;->clearUploadState()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method isCompleted()Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/storage/UploadData;

    .line 82
    invoke-virtual {v2}, Lcom/qiniu/android/storage/UploadData;->isUploaded()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method isValid()Z
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->expireAt:Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->expireAt:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1c20

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected nextUploadDataWithoutCheckData()Lcom/qiniu/android/storage/UploadData;
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/storage/UploadData;

    .line 149
    invoke-virtual {v2}, Lcom/qiniu/android/storage/UploadData;->needToUpload()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    iget-wide v1, p0, Lcom/qiniu/android/storage/UploadBlock;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget v1, p0, Lcom/qiniu/android/storage/UploadBlock;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget v1, p0, Lcom/qiniu/android/storage/UploadBlock;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "expired_at"

    iget-object v2, p0, Lcom/qiniu/android/storage/UploadBlock;->expireAt:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v1, "md5"

    iget-object v2, p0, Lcom/qiniu/android/storage/UploadBlock;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "ctx"

    iget-object v2, p0, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 131
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/storage/UploadData;

    .line 133
    invoke-virtual {v3}, Lcom/qiniu/android/storage/UploadData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 138
    :cond_1
    const-string/jumbo v2, "uploadDataList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method uploadSize()J
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadBlock;->uploadDataList:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 95
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/storage/UploadData;

    .line 96
    invoke-virtual {v3}, Lcom/qiniu/android/storage/UploadData;->uploadSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method
