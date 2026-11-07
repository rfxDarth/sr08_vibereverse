.class Lcom/qiniu/android/storage/UploadSourceFile;
.super Lcom/qiniu/android/storage/UploadSource;
.source "UploadSourceFile.java"


# instance fields
.field private final file:Ljava/io/File;

.field private final randomAccessFile:Ljava/io/RandomAccessFile;

.field private readException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadSource;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->readException:Ljava/lang/Exception;

    .line 14
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceFile;->file:Ljava/io/File;

    .line 17
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceFile;->readException:Ljava/lang/Exception;

    .line 21
    :goto_0
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method public couldReloadSource()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadSourceFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadSourceFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method getSourceType()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "File"

    return-object v0
.end method

.method public readData(IJ)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/qiniu/android/storage/UploadSourceFile;->readException:Ljava/lang/Exception;

    if-eqz p1, :cond_0

    .line 53
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/qiniu/android/storage/UploadSourceFile;->readException:Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 55
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "file is invalid"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-array v1, p1, [B

    .line 62
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_3

    .line 64
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    sub-int v2, p1, p3

    invoke-virtual {v0, v1, p3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p3, v0

    goto :goto_0

    :cond_3
    :goto_1
    if-ge p3, p1, :cond_4

    .line 72
    new-array p1, p3, [B

    .line 73
    invoke-static {v1, p2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_4
    return-object v1

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public reloadSource()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
