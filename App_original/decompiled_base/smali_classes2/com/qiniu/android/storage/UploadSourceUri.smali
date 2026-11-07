.class Lcom/qiniu/android/storage/UploadSourceUri;
.super Lcom/qiniu/android/storage/UploadSourceStream;
.source "UploadSourceUri.java"


# instance fields
.field private modifyDate:Ljava/lang/String;

.field private readException:Ljava/lang/Exception;

.field private resolver:Landroid/content/ContentResolver;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/UploadSourceStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->readException:Ljava/lang/Exception;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->modifyDate:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceUri;->uri:Landroid/net/Uri;

    .line 30
    iput-object p2, p0, Lcom/qiniu/android/storage/UploadSourceUri;->resolver:Landroid/content/ContentResolver;

    .line 32
    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->reloadSource()Z

    .line 33
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->loadFileInfo()V

    return-void
.end method

.method private createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->getContextResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadSourceUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getContextResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->resolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    return-object v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->resolver:Landroid/content/ContentResolver;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private loadFileInfo()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->tryLoadFileInfoByPath()V

    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->tryLoadFileInfoByCursor()V

    return-void
.end method

.method private tryLoadFileInfoByCursor()V
    .locals 7

    .line 129
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->getContextResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 136
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/storage/UploadSourceUri;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 146
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 148
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/qiniu/android/storage/UploadSourceUri;->setSize(J)V

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qiniu/android/storage/UploadSourceUri;->setFileName(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->modifyDate:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 159
    :cond_2
    :try_start_2
    const-string v0, "_size"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 160
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 161
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 162
    invoke-virtual {p0, v2, v3}, Lcom/qiniu/android/storage/UploadSourceUri;->setSize(J)V

    .line 165
    :cond_3
    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 166
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 167
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qiniu/android/storage/UploadSourceUri;->setFileName(Ljava/lang/String;)V

    .line 170
    :cond_4
    const-string v0, "date_modified"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 171
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 172
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->modifyDate:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :cond_5
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 176
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 178
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 179
    throw v0
.end method

.method private tryLoadFileInfoByPath()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadSourceUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qiniu/android/storage/UploadSourceUri;->setFileName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/qiniu/android/storage/UploadSourceUri;->setSize(J)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->modifyDate:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 79
    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method public couldReloadSource()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadSourceUri;->modifyDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSourceType()Ljava/lang/String;
    .locals 1

    .line 197
    const-string v0, "Uri"

    return-object v0
.end method

.method public readData(IJ)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->readException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/qiniu/android/storage/UploadSourceStream;->readData(IJ)[B

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Uri read data exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/qiniu/android/storage/UploadSourceUri;->readException:Ljava/lang/Exception;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/qiniu/android/storage/UploadSourceUri;->readException:Ljava/lang/Exception;

    invoke-direct {p1, p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public reloadSource()Z
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/qiniu/android/storage/UploadSourceStream;->reloadSource()Z

    .line 49
    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->close()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceUri;->readException:Ljava/lang/Exception;

    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/qiniu/android/storage/UploadSourceUri;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/qiniu/android/storage/UploadSourceUri;->setInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    iput-object v1, p0, Lcom/qiniu/android/storage/UploadSourceUri;->readException:Ljava/lang/Exception;

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
