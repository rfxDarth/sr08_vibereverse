.class Lcom/qiniu/android/storage/UploadSourceStream;
.super Lcom/qiniu/android/storage/UploadSource;
.source "UploadSourceStream.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private hasSize:Z

.field private id:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private readOffset:J

.field private size:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadSource;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->readOffset:J

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->hasSize:Z

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->size:J

    .line 18
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public couldReloadSource()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->id:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getSize()J
    .locals 5

    .line 50
    iget-wide v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->size:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method getSourceType()Ljava/lang/String;
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->hasSize:Z

    if-eqz v0, :cond_0

    const-string v0, "Stream:HasSize"

    return-object v0

    :cond_0
    const-string v0, "Stream:NoSize"

    return-object v0
.end method

.method public readData(IJ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 80
    monitor-enter p0

    .line 83
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->readOffset:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_4

    .line 85
    new-array p2, p1, [B

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadSourceStream;->inputStream:Ljava/io/InputStream;

    sub-int v2, p1, v0

    invoke-virtual {v1, p2, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v0, p1, :cond_2

    .line 96
    new-array p1, v0, [B

    .line 97
    invoke-static {p2, p3, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p1

    .line 101
    :cond_2
    iget-wide v2, p0, Lcom/qiniu/android/storage/UploadSourceStream;->readOffset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/qiniu/android/storage/UploadSourceStream;->readOffset:J

    if-eqz v1, :cond_3

    .line 103
    iput-wide v2, p0, Lcom/qiniu/android/storage/UploadSourceStream;->size:J

    .line 112
    :cond_3
    monitor-exit p0

    return-object p2

    :cond_4
    cmp-long v2, v0, p2

    if-gez v2, :cond_5

    .line 107
    iget-object v2, p0, Lcom/qiniu/android/storage/UploadSourceStream;->inputStream:Ljava/io/InputStream;

    sub-long v3, p2, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->readOffset:J

    goto :goto_0

    .line 109
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "read stream data error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 76
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "inputStream is empty"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reloadSource()Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->readOffset:J

    const/4 v0, 0x0

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceStream;->fileName:Ljava/lang/String;

    return-void
.end method

.method setId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceStream;->id:Ljava/lang/String;

    return-void
.end method

.method protected setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    iput-boolean v0, p0, Lcom/qiniu/android/storage/UploadSourceStream;->hasSize:Z

    .line 59
    iput-wide p1, p0, Lcom/qiniu/android/storage/UploadSourceStream;->size:J

    return-void
.end method
