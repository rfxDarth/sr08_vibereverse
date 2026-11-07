.class Lcom/qiniu/android/storage/UploadInfoV2;
.super Lcom/qiniu/android/storage/UploadInfo;
.source "UploadInfoV2.java"


# static fields
.field private static final DataListCapacityIncrement:I = 0x2

.field private static final TypeKey:Ljava/lang/String; = "infoType"

.field private static final TypeValue:Ljava/lang/String; = "UploadInfoV2"

.field private static final maxDataSize:I = 0x40000000


# instance fields
.field private dataList:Lcom/qiniu/android/utils/ListVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/utils/ListVector<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSize:I

.field expireAt:Ljava/lang/Long;

.field private isEOF:Z

.field private readException:Ljava/io/IOException;

.field uploadId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/qiniu/android/storage/UploadSource;ILcom/qiniu/android/utils/ListVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/storage/UploadSource;",
            "I",
            "Lcom/qiniu/android/utils/ListVector<",
            "Lcom/qiniu/android/storage/UploadData;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;-><init>(Lcom/qiniu/android/storage/UploadSource;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 37
    iput p2, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    .line 38
    iput-object p3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    return-void
.end method

.method constructor <init>(Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/Configuration;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;-><init>(Lcom/qiniu/android/storage/UploadSource;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 43
    iget p1, p2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    .line 44
    new-instance p1, Lcom/qiniu/android/utils/ListVector;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p2}, Lcom/qiniu/android/utils/ListVector;-><init>(II)V

    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    return-void
.end method

.method static infoFromJson(Lcom/qiniu/android/storage/UploadSource;Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadInfoV2;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 58
    :cond_0
    :try_start_0
    const-string v1, "infoType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "dataSize"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 60
    const-string v3, "expireAt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 61
    const-string/jumbo v4, "uploadId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    const-string v5, "dataList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 63
    new-instance v6, Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/qiniu/android/utils/ListVector;-><init>(II)V

    const/4 v7, 0x0

    .line 64
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 65
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 66
    invoke-static {v8}, Lcom/qiniu/android/storage/UploadData;->dataFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/storage/UploadData;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 68
    invoke-virtual {v6, v8}, Lcom/qiniu/android/utils/ListVector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 75
    :cond_2
    new-instance v5, Lcom/qiniu/android/storage/UploadInfoV2;

    invoke-direct {v5, p0, v2, v6}, Lcom/qiniu/android/storage/UploadInfoV2;-><init>(Lcom/qiniu/android/storage/UploadSource;ILcom/qiniu/android/utils/ListVector;)V

    .line 76
    invoke-virtual {v5, p1}, Lcom/qiniu/android/storage/UploadInfoV2;->setInfoFromJson(Lorg/json/JSONObject;)V

    .line 77
    iput-object v3, v5, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    .line 78
    iput-object v4, v5, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    .line 80
    const-string p1, "UploadInfoV2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadSource;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Lcom/qiniu/android/storage/UploadInfoV2;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return-object v5

    :catch_0
    :cond_4
    :goto_1
    return-object v0
.end method

.method private loadData(Lcom/qiniu/android/storage/UploadData;)Lcom/qiniu/android/storage/UploadData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 184
    :cond_0
    iget-object v1, p1, Lcom/qiniu/android/storage/UploadData;->data:[B

    if-eqz v1, :cond_1

    return-object p1

    .line 191
    :cond_1
    :try_start_0
    iget v1, p1, Lcom/qiniu/android/storage/UploadData;->size:I

    iget-wide v2, p1, Lcom/qiniu/android/storage/UploadData;->offset:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/qiniu/android/storage/UploadInfoV2;->readData(IJ)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    .line 198
    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    invoke-static {v1}, Lcom/qiniu/android/utils/MD5;->encrypt([B)Ljava/lang/String;

    move-result-object v0

    .line 204
    array-length v2, v1

    iget v3, p1, Lcom/qiniu/android/storage/UploadData;->size:I

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lcom/qiniu/android/storage/UploadData;->md5:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/qiniu/android/storage/UploadData;->md5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 205
    :cond_3
    new-instance v2, Lcom/qiniu/android/storage/UploadData;

    iget-wide v3, p1, Lcom/qiniu/android/storage/UploadData;->offset:J

    array-length v5, v1

    iget p1, p1, Lcom/qiniu/android/storage/UploadData;->index:I

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/qiniu/android/storage/UploadData;-><init>(JII)V

    .line 206
    iput-object v0, v2, Lcom/qiniu/android/storage/UploadData;->md5:Ljava/lang/String;

    move-object p1, v2

    .line 209
    :cond_4
    iget-object v0, p1, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    iput-object v1, p1, Lcom/qiniu/android/storage/UploadData;->data:[B

    .line 211
    sget-object v0, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {p1, v0}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    return-object p1

    .line 213
    :cond_5
    sget-object v0, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {p1, v0}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    return-object p1

    :cond_6
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 193
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 194
    throw p1
.end method

.method private nextUploadDataFormDataList()Lcom/qiniu/android/storage/UploadData;
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 156
    new-array v0, v0, [Lcom/qiniu/android/storage/UploadData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 157
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v3, Lcom/qiniu/android/storage/UploadInfoV2$1;

    invoke-direct {v3, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2$1;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;[Lcom/qiniu/android/storage/UploadData;)V

    invoke-virtual {v1, v3}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 168
    aget-object v0, v0, v2

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method checkInfoStateAndUpdate()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v1, Lcom/qiniu/android/storage/UploadInfoV2$6;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/UploadInfoV2$6;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    return-void
.end method

.method clearUploadState()V
    .locals 2

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    .line 263
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v1, Lcom/qiniu/android/storage/UploadInfoV2$3;

    invoke-direct {v1, p0}, Lcom/qiniu/android/storage/UploadInfoV2$3;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    return-void
.end method

.method getPartIndexOfData(Lcom/qiniu/android/storage/UploadData;)I
    .locals 0

    .line 88
    iget p1, p1, Lcom/qiniu/android/storage/UploadData;->index:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getPartInfoArray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v2, Lcom/qiniu/android/storage/UploadInfoV2$2;

    invoke-direct {v2, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2$2;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isAllUploaded()Z
    .locals 4

    .line 305
    iget-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    new-array v0, v2, [Z

    aput-boolean v2, v0, v1

    .line 313
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v3, Lcom/qiniu/android/storage/UploadInfoV2$5;

    invoke-direct {v3, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2$5;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;[Z)V

    invoke-virtual {v2, v3}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 324
    aget-boolean v0, v0, v1

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z
    .locals 2

    .line 248
    invoke-super {p0, p1}, Lcom/qiniu/android/storage/UploadInfo;->isSameUploadInfo(Lcom/qiniu/android/storage/UploadInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 252
    :cond_0
    instance-of v0, p1, Lcom/qiniu/android/storage/UploadInfoV2;

    if-nez v0, :cond_1

    return v1

    .line 256
    :cond_1
    check-cast p1, Lcom/qiniu/android/storage/UploadInfoV2;

    .line 257
    iget v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    iget p1, p1, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method isValid()Z
    .locals 6

    .line 291
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadInfo;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1c20

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method nextUploadData()Lcom/qiniu/android/storage/UploadData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadInfoV2;->nextUploadDataFormDataList()Lcom/qiniu/android/storage/UploadData;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 97
    iget-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/qiniu/android/utils/ListVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/storage/UploadData;

    .line 108
    iget-wide v2, v0, Lcom/qiniu/android/storage/UploadData;->offset:J

    iget v0, v0, Lcom/qiniu/android/storage/UploadData;->size:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v0}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v0

    .line 111
    new-instance v4, Lcom/qiniu/android/storage/UploadData;

    iget v5, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    invoke-direct {v4, v2, v3, v5, v0}, Lcom/qiniu/android/storage/UploadData;-><init>(JII)V

    move-object v0, v4

    goto :goto_1

    .line 101
    :cond_2
    throw v0

    .line 116
    :cond_3
    :goto_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2;->loadData(Lcom/qiniu/android/storage/UploadData;)Lcom/qiniu/android/storage/UploadData;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 124
    iput-boolean v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    .line 126
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v1}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v1

    iget v4, v0, Lcom/qiniu/android/storage/UploadData;->index:I

    if-le v1, v4, :cond_7

    .line 127
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    iget v0, v0, Lcom/qiniu/android/storage/UploadData;->index:I

    invoke-virtual {v1, v3, v0}, Lcom/qiniu/android/utils/ListVector;->subList(II)Lcom/qiniu/android/utils/ListVector;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    return-object v2

    .line 131
    :cond_4
    iget v4, v2, Lcom/qiniu/android/storage/UploadData;->index:I

    iget-object v5, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v5}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 133
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4, v2}, Lcom/qiniu/android/utils/ListVector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eq v2, v0, :cond_6

    .line 136
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    iget v5, v2, Lcom/qiniu/android/storage/UploadData;->index:I

    invoke-virtual {v4, v5, v2}, Lcom/qiniu/android/utils/ListVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_6
    :goto_2
    iget v4, v2, Lcom/qiniu/android/storage/UploadData;->size:I

    iget v5, v0, Lcom/qiniu/android/storage/UploadData;->size:I

    if-ge v4, v5, :cond_7

    .line 141
    iput-boolean v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    .line 143
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v4

    iget v5, v0, Lcom/qiniu/android/storage/UploadData;->index:I

    add-int/2addr v5, v1

    if-le v4, v5, :cond_7

    .line 144
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    iget v0, v0, Lcom/qiniu/android/storage/UploadData;->index:I

    add-int/2addr v0, v1

    invoke-virtual {v4, v3, v0}, Lcom/qiniu/android/utils/ListVector;->subList(II)Lcom/qiniu/android/utils/ListVector;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    :cond_7
    return-object v2

    :catch_0
    move-exception v0

    .line 118
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 119
    throw v0
.end method

.method reloadSource()Z
    .locals 1

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->isEOF:Z

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->readException:Ljava/io/IOException;

    .line 243
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadInfo;->reloadSource()Z

    move-result v0

    return v0
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .locals 5

    .line 340
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 345
    :cond_0
    :try_start_0
    const-string v2, "infoType"

    const-string v3, "UploadInfoV2"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v2, "dataSize"

    iget v3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataSize:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v2, "expireAt"

    iget-object v3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->expireAt:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string/jumbo v2, "uploadId"

    iget-object v3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 350
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 351
    iget-object v3, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v4, Lcom/qiniu/android/storage/UploadInfoV2$7;

    invoke-direct {v4, p0, v2}, Lcom/qiniu/android/storage/UploadInfoV2$7;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;Lorg/json/JSONArray;)V

    invoke-virtual {v3, v4}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 365
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    iget-object v4, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    invoke-virtual {v4}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    return-object v1

    .line 368
    :cond_1
    const-string v3, "dataList"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    return-object v1
.end method

.method uploadSize()J
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qiniu/android/utils/ListVector;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 278
    new-array v0, v0, [J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 279
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadInfoV2;->dataList:Lcom/qiniu/android/utils/ListVector;

    new-instance v2, Lcom/qiniu/android/storage/UploadInfoV2$4;

    invoke-direct {v2, p0, v0}, Lcom/qiniu/android/storage/UploadInfoV2$4;-><init>(Lcom/qiniu/android/storage/UploadInfoV2;[J)V

    invoke-virtual {v1, v2}, Lcom/qiniu/android/utils/ListVector;->enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V

    .line 286
    aget-wide v1, v0, v3

    :cond_1
    :goto_0
    return-wide v1
.end method
