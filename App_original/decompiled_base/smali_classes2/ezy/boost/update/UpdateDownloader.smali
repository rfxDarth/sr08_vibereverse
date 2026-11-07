.class Lezy/boost/update/UpdateDownloader;
.super Landroid/os/AsyncTask;
.source "UpdateDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezy/boost/update/UpdateDownloader$LoadingRandomAccessFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x19000

.field private static final EVENT_COMPLETE:I = 0x3

.field private static final EVENT_PROGRESS:I = 0x2

.field private static final EVENT_START:I = 0x1

.field private static final TIME_OUT:I = 0x7530


# instance fields
.field private mAgent:Lezy/boost/update/IDownloadAgent;

.field private mBytesLoaded:J

.field private mBytesTemp:J

.field private mBytesTotal:J

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mContext:Landroid/content/Context;

.field private mSpeed:J

.field private mTemp:Ljava/io/File;

.field private mTimeBegin:J

.field private mTimeLast:J

.field private mTimeUsed:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lezy/boost/update/IDownloadAgent;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mBytesLoaded:J

    .line 49
    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mBytesTotal:J

    .line 50
    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mBytesTemp:J

    .line 51
    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mTimeBegin:J

    const-wide/16 v2, 0x1

    .line 52
    iput-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mTimeUsed:J

    .line 53
    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mTimeLast:J

    .line 54
    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mSpeed:J

    .line 60
    iput-object p2, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    .line 61
    iput-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    .line 62
    iput-object p3, p0, Lezy/boost/update/UpdateDownloader;->mUrl:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lezy/boost/update/UpdateDownloader;->mTemp:Ljava/io/File;

    .line 64
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lezy/boost/update/UpdateDownloader;->mBytesTemp:J

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lezy/boost/update/UpdateDownloader;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mBytesLoaded:J

    return-wide v0
.end method

.method static synthetic access$002(Lezy/boost/update/UpdateDownloader;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lezy/boost/update/UpdateDownloader;->mBytesLoaded:J

    return-wide p1
.end method

.method static synthetic access$100(Lezy/boost/update/UpdateDownloader;[Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateDownloader;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lezy/boost/update/UpdateError;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const v0, 0x19000

    .line 198
    new-array v3, v0, [B

    .line 199
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v5, p1

    invoke-direct {v4, v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 202
    :try_start_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-wide v10, v6

    const/4 v9, 0x0

    .line 207
    :goto_0
    invoke-virtual {v1}, Lezy/boost/update/UpdateDownloader;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_4

    .line 208
    invoke-virtual {v4, v3, v8, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {v2, v3, v8, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v9, v12

    .line 215
    invoke-virtual {v1}, Lezy/boost/update/UpdateDownloader;->checkNetwork()V

    .line 217
    iget-wide v12, v1, Lezy/boost/update/UpdateDownloader;->mSpeed:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_1

    move-wide v10, v6

    goto :goto_0

    :cond_1
    cmp-long v12, v10, v6

    if-nez v12, :cond_2

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto :goto_0

    .line 221
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/16 v14, 0x7530

    cmp-long v16, v12, v14

    if-gtz v16, :cond_3

    goto :goto_0

    .line 222
    :cond_3
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v3, v1, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v6, 0xbbf

    invoke-direct {v0, v3, v6}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 228
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 229
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return v9

    :catchall_0
    move-exception v0

    .line 227
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 228
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 229
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 150
    const-string v0, "Accept"

    const-string v1, "application/*"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2710

    .line 151
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p1
.end method

.method private download()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lezy/boost/update/UpdateError;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lezy/boost/update/UpdateDownloader;->checkNetwork()V

    .line 158
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lezy/boost/update/UpdateDownloader;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 159
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 161
    invoke-virtual {p0}, Lezy/boost/update/UpdateDownloader;->checkStatus()V

    .line 163
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mBytesTotal:J

    .line 165
    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mBytesTemp:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lezy/boost/update/UpdateDownloader;->checkSpace(JJ)V

    .line 168
    iget-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mBytesTemp:J

    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mBytesTotal:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    .line 169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    cmp-long v9, v0, v2

    if-nez v9, :cond_0

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v8, v0, v4

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateDownloader;->publishProgress([Ljava/lang/Object;)V

    return-wide v5

    :cond_0
    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    .line 174
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 175
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lezy/boost/update/UpdateDownloader;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mBytesTemp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 179
    invoke-virtual {p0}, Lezy/boost/update/UpdateDownloader;->checkStatus()V

    .line 182
    :cond_1
    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v8, v0, v4

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateDownloader;->publishProgress([Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lezy/boost/update/UpdateDownloader$LoadingRandomAccessFile;

    iget-object v2, p0, Lezy/boost/update/UpdateDownloader;->mTemp:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lezy/boost/update/UpdateDownloader$LoadingRandomAccessFile;-><init>(Lezy/boost/update/UpdateDownloader;Ljava/io/File;)V

    invoke-direct {p0, v0, v1}, Lezy/boost/update/UpdateDownloader;->copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 186
    invoke-virtual {p0}, Lezy/boost/update/UpdateDownloader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    iget-wide v1, p0, Lezy/boost/update/UpdateDownloader;->mBytesTemp:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Lezy/boost/update/UpdateDownloader;->mBytesTotal:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const-wide/16 v1, -0x1

    cmp-long v5, v3, v1

    if-nez v5, :cond_3

    goto :goto_0

    .line 188
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download incomplete("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mBytesTemp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mBytesTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    .line 189
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v2, 0xbc1

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    throw v0

    :cond_4
    :goto_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public static getAvailableStorage()J
    .locals 5

    .line 250
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v1, v1, v3

    return-wide v1

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method checkNetwork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lezy/boost/update/UpdateError;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v2, 0xbbe

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    throw v0
.end method

.method checkSpace(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lezy/boost/update/UpdateError;
        }
    .end annotation

    .line 141
    invoke-static {}, Lezy/boost/update/UpdateDownloader;->getAvailableStorage()J

    move-result-wide v0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "need = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, p3, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\nspace = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    cmp-long p1, v3, v0

    if-gtz p1, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance p1, Lezy/boost/update/UpdateError;

    iget-object p2, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 p3, 0xbbb

    invoke-direct {p1, p2, p3}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    throw p1
.end method

.method checkStatus()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lezy/boost/update/UpdateError;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xce

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v2, 0xbc0

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 4

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mTimeBegin:J

    .line 78
    :try_start_0
    invoke-direct {p0}, Lezy/boost/update/UpdateDownloader;->download()J

    move-result-wide v0

    .line 79
    invoke-virtual {p0}, Lezy/boost/update/UpdateDownloader;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v2, 0xbba

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Lezy/boost/update/IDownloadAgent;->setError(Lezy/boost/update/UpdateError;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 82
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v2, 0xbb9

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Lezy/boost/update/IDownloadAgent;->setError(Lezy/boost/update/UpdateError;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lezy/boost/update/UpdateUtil;->verify(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 84
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v2, 0xbc2

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Lezy/boost/update/IDownloadAgent;->setError(Lezy/boost/update/UpdateError;)V
    :try_end_0
    .catch Lezy/boost/update/UpdateError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_2
    :goto_0
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 92
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v2, 0xbbd

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Lezy/boost/update/IDownloadAgent;->setError(Lezy/boost/update/UpdateError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_3

    goto :goto_1

    :catch_1
    move-exception p1

    .line 89
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 90
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    new-instance v0, Lezy/boost/update/UpdateError;

    iget-object v1, p0, Lezy/boost/update/UpdateDownloader;->mContext:Landroid/content/Context;

    const/16 v2, 0xbbc

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, v0}, Lezy/boost/update/IDownloadAgent;->setError(Lezy/boost/update/UpdateError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_3

    goto :goto_1

    :catch_2
    move-exception p1

    .line 87
    :try_start_3
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    invoke-interface {v0, p1}, Lezy/boost/update/IDownloadAgent;->setError(Lezy/boost/update/UpdateError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_3

    .line 96
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 95
    :goto_2
    iget-object v0, p0, Lezy/boost/update/UpdateDownloader;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getBytesLoaded()J
    .locals 4

    .line 70
    iget-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mBytesLoaded:J

    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mBytesTemp:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    invoke-interface {p1}, Lezy/boost/update/IDownloadAgent;->onFinish()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateDownloader;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6

    const/4 v0, 0x0

    .line 105
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mTimeLast:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x384

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    :goto_0
    return-void

    .line 114
    :cond_1
    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mTimeLast:J

    .line 115
    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mTimeBegin:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lezy/boost/update/UpdateDownloader;->mTimeUsed:J

    .line 116
    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mBytesLoaded:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    iput-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mSpeed:J

    .line 117
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    invoke-virtual {p0}, Lezy/boost/update/UpdateDownloader;->getBytesLoaded()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-wide v2, p0, Lezy/boost/update/UpdateDownloader;->mBytesTotal:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lezy/boost/update/IDownloadAgent;->onProgress(I)V

    return-void

    .line 107
    :cond_2
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader;->mAgent:Lezy/boost/update/IDownloadAgent;

    invoke-interface {p1}, Lezy/boost/update/IDownloadAgent;->onStart()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
