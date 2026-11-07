.class public Lcom/sxr/sdk/ble/keepfit/service/utils/f;
.super Landroid/os/AsyncTask;
.source "FtpDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:J = 0x64L


# instance fields
.field final a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field private c:I

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    const-string v0, "FtpDownloadTask"

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->d:J

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/utils/f;Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Ljava/lang/String;JI)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 25
    :try_start_0
    const-string v0, "FtpDownloadTask"

    invoke-virtual {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Ljava/lang/String;JI)V
    .locals 7

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p4, :cond_2

    const/16 v2, 0x64

    if-ne p4, v2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget v2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c:I

    if-ne v2, p4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-wide v2, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    :goto_0
    return-void

    .line 16
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sxr/sdk/ble/keepfit/service/b;->i0:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v3, "filename"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 19
    const-string p2, "percent"

    invoke-virtual {v2, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Broadcast sent: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 22
    iput p4, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c:I

    .line 23
    iput-wide v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->d:J

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "FtpDownloadTask"

    invoke-virtual {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "FtpDownloadTask"

    invoke-virtual {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "FtpDownloadTask"

    invoke-virtual {p0, v0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 2
    const-string v0, "initContext"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    .line 4
    const-string p1, "initContext completed."

    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[debug]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[error]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[info]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[warn]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->Q:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "\u4e0b\u8f7d\u6587\u4ef6\u5f02\u5e38: "

    const-string v3, ", error: "

    const-string v4, "localPath"

    const-string v5, "password"

    const-string/jumbo v6, "username"

    const-string v7, "port"

    const-string/jumbo v8, "server"

    const-string/jumbo v9, "retryTimes"

    const-string v10, "errMessage"

    const-string v11, "FtpDownloadTask files number: "

    const-string/jumbo v12, "\u83b7\u53d6\u6587\u4ef6\u5217\u8868\u5f02\u5e38: "

    .line 2
    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_0

    return-object v14

    .line 4
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "doInBackground params length = "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v15, v0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 5
    aget-object v15, v0, v13

    const/4 v14, 0x1

    .line 6
    aget-object v17, v0, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v18, 0x2

    .line 7
    aget-object v14, v0, v18

    const/16 v19, 0x3

    move-object/from16 v20, v12

    .line 8
    aget-object v12, v0, v19

    const/16 v19, 0x4

    move-object/from16 v21, v3

    .line 9
    aget-object v3, v0, v19

    const/16 v19, 0x5

    .line 10
    aget-object v0, v0, v19

    move-object/from16 v19, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v22, v11

    const-string v11, "FtpDownloadTask ip = "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " , port = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " , user = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " , pass = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v11, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v11}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_21
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    const v1, 0xea60

    .line 20
    :try_start_1
    invoke-virtual {v11, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    const v1, 0xdbba00

    .line 21
    invoke-virtual {v11, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultTimeout(I)V

    .line 22
    invoke-virtual {v11, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setDataTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_20
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move/from16 v23, v2

    const-wide/16 v1, 0xa

    .line 23
    :try_start_2
    invoke-virtual {v11, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setControlKeepAliveTimeout(J)V

    .line 24
    invoke-virtual {v11, v15, v13}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v11, v14, v12}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1f
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-nez v0, :cond_2

    .line 28
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v1, "login error"

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {v0, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v1, v23

    .line 35
    :try_start_4
    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v2, p0

    .line 36
    :try_start_5
    invoke-virtual {v2, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    .line 37
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :try_start_6
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    :goto_0
    move-object v1, v2

    move-object v14, v11

    goto/16 :goto_2a

    :catch_3
    move-exception v0

    move-object/from16 v2, p0

    move/from16 v1, v23

    :goto_1
    move-object/from16 v25, v9

    move-object v9, v4

    move-object v4, v12

    move-object/from16 v12, v25

    move-object/from16 v25, v11

    move v11, v1

    move-object v1, v2

    goto/16 :goto_28

    :cond_2
    move-object/from16 v1, p0

    move/from16 v2, v23

    .line 71
    :try_start_7
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1e
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    const/4 v2, 0x1

    .line 72
    :try_start_8
    invoke-virtual {v11, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setUseEPSVwithIPv4(Z)V

    .line 73
    invoke-virtual {v11, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setAutodetectUTF8(Z)V

    const/4 v2, 0x2

    .line 74
    invoke-virtual {v11, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 76
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1d
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    move-object/from16 v25, v11

    move-object/from16 v11, v22

    :try_start_9
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 80
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1c
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 107
    array-length v0, v2

    if-nez v0, :cond_3

    .line 108
    const-string/jumbo v0, "\u6ca1\u6709\u627e\u5230\u4efb\u4f55\u6587\u4ef6"

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->j0:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    .line 111
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 117
    :cond_3
    array-length v11, v2

    move-object/from16 v22, v2

    move-object/from16 v26, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v20, 0x0

    :goto_2
    if-ge v2, v11, :cond_13

    aget-object v25, v22, v2

    .line 119
    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "task cancel"

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    .line 124
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 128
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v27, v2

    const-string/jumbo v2, "\u8df3\u8fc7\u76ee\u5f55: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v24, v6

    move-object/from16 v31, v9

    move/from16 v28, v11

    :cond_5
    :goto_3
    move-object/from16 v32, v12

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    const/16 v17, 0x1

    goto/16 :goto_1e

    :cond_6
    move/from16 v27, v2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FtpDownloadTask file name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v28, v11

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " , size = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->d(Ljava/lang/String;)V

    .line 139
    :try_start_a
    new-instance v4, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v4}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_19
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    const v5, 0xea60

    .line 140
    :try_start_b
    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    const v5, 0xdbba00

    .line 141
    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultTimeout(I)V

    .line 142
    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setDataTimeout(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_18
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object/from16 v24, v6

    const-wide/16 v5, 0xa

    .line 143
    :try_start_c
    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/net/ftp/FTPClient;->setControlKeepAliveTimeout(J)V

    .line 144
    invoke-virtual {v4, v15, v13}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    .line 146
    invoke-virtual {v4, v14, v12}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-nez v0, :cond_8

    .line 148
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u767b\u5f55\u5931\u8d25\uff0c\u65e0\u6cd5\u4e0b\u8f7d\u6587\u4ef6: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    add-int/lit8 v2, v20, 0x1

    .line 352
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 354
    :try_start_e
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 355
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_4
    move/from16 v20, v2

    move-object/from16 v31, v9

    goto/16 :goto_3

    :catch_5
    move-exception v0

    move v2, v3

    move-object/from16 v31, v9

    :goto_5
    move-object/from16 v32, v12

    :goto_6
    move-object/from16 v5, v19

    move/from16 v3, v20

    move-object/from16 v6, v21

    goto/16 :goto_1b

    .line 358
    :cond_8
    :try_start_f
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    const/4 v5, 0x1

    .line 359
    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setUseEPSVwithIPv4(Z)V

    .line 360
    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setAutodetectUTF8(Z)V

    const/4 v5, 0x2

    .line 361
    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    const/4 v0, -0x1

    .line 364
    iput v0, v1, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c:I

    .line 367
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v5
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_17
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object/from16 v31, v9

    const/4 v9, 0x0

    :try_start_10
    invoke-direct {v1, v0, v5, v6, v9}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Ljava/lang/String;JI)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v5
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_16
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    const-wide/16 v32, 0x0

    cmp-long v0, v5, v32

    if-gtz v0, :cond_9

    .line 374
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6587\u4ef6\u5927\u5c0f\u4e3a0\uff0c\u8df3\u8fc7: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->d(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    add-int/lit8 v3, v3, 0x1

    .line 557
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 559
    :try_start_12
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 560
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move v2, v3

    goto/16 :goto_5

    :cond_9
    const-wide/32 v32, 0x100000

    cmp-long v0, v5, v32

    if-gez v0, :cond_a

    .line 563
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5c0f\u6587\u4ef6\uff0c\u786e\u4fdd\u8fdb\u5ea6\u5e7f\u64ad: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object v2, v12

    :try_start_14
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v11
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    const/4 v9, 0x0

    :try_start_15
    invoke-direct {v1, v0, v11, v12, v9}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Ljava/lang/String;JI)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v2, v12

    :goto_7
    const/4 v9, 0x0

    :goto_8
    move-object/from16 v32, v2

    move v2, v3

    goto/16 :goto_6

    :cond_a
    move-object v2, v12

    const/4 v9, 0x0

    .line 569
    :goto_9
    :try_start_16
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v11

    .line 571
    new-instance v9, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;

    invoke-direct {v9, v1, v11, v12, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/utils/f;JLjava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/commons/net/ftp/FTPClient;->setCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    .line 642
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->c(Ljava/lang/String;)I

    move-result v0

    .line 643
    new-instance v9, Ljava/io/File;

    iget-object v11, v1, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 644
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 648
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    if-nez v12, :cond_b

    .line 650
    :try_start_17
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 654
    :cond_b
    :try_start_18
    invoke-static {v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u5f00\u59cb\u4e0b\u8f7d\u6587\u4ef6: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", \u5927\u5c0f: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 660
    :try_start_19
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    const v0, 0x493e0

    .line 662
    :try_start_1a
    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setDataTimeout(I)V

    .line 664
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v0

    .line 665
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 666
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    move-object/from16 v32, v2

    :try_start_1b
    const-string/jumbo v2, "\u4e0b\u8f7d\u5b8c\u6210: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-eqz v2, :cond_e

    move-object v2, v11

    .line 670
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    move-object/from16 v33, v2

    :try_start_1d
    const-string/jumbo v2, "\u672c\u5730\u6587\u4ef6\u5927\u5c0f: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", \u671f\u671b\u5927\u5c0f: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    cmp-long v0, v11, v5

    if-nez v0, :cond_c

    .line 675
    const-string/jumbo v0, "\u6587\u4ef6\u5927\u5c0f\u5339\u914d\uff0c\u4e0b\u8f7d\u6210\u529f"

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    sub-long/2addr v11, v5

    .line 679
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v11, 0x400

    cmp-long v0, v5, v11

    if-gez v0, :cond_d

    .line 680
    const-string/jumbo v0, "\u6587\u4ef6\u5927\u5c0f\u63a5\u8fd1\u5339\u914d\uff08\u8bef\u5dee < 1KB\uff09\uff0c\u8ba4\u4e3a\u6210\u529f"

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    :goto_a
    const/4 v2, 0x1

    goto :goto_b

    .line 683
    :cond_d
    const-string/jumbo v0, "\u6587\u4ef6\u5927\u5c0f\u4e0d\u5339\u914d\uff0c\u5220\u9664\u6587\u4ef6"

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    const/4 v2, 0x0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v33, v2

    goto :goto_e

    :cond_e
    move-object/from16 v33, v11

    move v2, v0

    .line 692
    :goto_b
    :try_start_1e
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    .line 693
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v5

    .line 694
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTP Reply Code: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Reply String: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    .line 696
    :try_start_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u83b7\u53d6FTP\u56de\u590d\u7801\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->d(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 699
    :goto_c
    :try_start_20
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    goto :goto_11

    :catchall_4
    move-exception v0

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object/from16 v32, v2

    :goto_d
    move-object/from16 v33, v11

    :goto_e
    move-object v2, v0

    .line 700
    :try_start_21
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    :try_start_22
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_c
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_d
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v33, v11

    .line 740
    :goto_10
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_14
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    move-object/from16 v5, v19

    :try_start_24
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    move-object/from16 v6, v21

    :try_start_25
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 743
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 744
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    :cond_f
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_10

    add-int/lit8 v3, v3, 0x1

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6587\u4ef6\u4e0b\u8f7d\u6210\u529f: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_12
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    move v2, v3

    move/from16 v3, v20

    goto :goto_12

    :cond_10
    add-int/lit8 v2, v20, 0x1

    .line 754
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_11
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    move/from16 v34, v3

    move v3, v2

    move/from16 v2, v34

    .line 759
    :goto_12
    :try_start_27
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 760
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u5220\u9664FTP\u6587\u4ef6: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", \u7ed3\u679c: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    goto :goto_13

    :catch_e
    move-exception v0

    .line 762
    :try_start_28
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u5220\u9664FTP\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_10
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    .line 767
    :goto_13
    :try_start_29
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 768
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_f
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    goto :goto_14

    :catch_f
    move-exception v0

    .line 770
    :try_start_2a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u5173\u95edFTP\u8fde\u63a5\u5931\u8d25: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_10
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    :goto_14
    move/from16 v20, v3

    const/16 v17, 0x1

    goto/16 :goto_1d

    :catch_10
    move-exception v0

    goto :goto_1b

    :catch_11
    move-exception v0

    move/from16 v34, v3

    move v3, v2

    move/from16 v2, v34

    goto :goto_1b

    :catch_12
    move-exception v0

    goto :goto_19

    :catch_13
    move-exception v0

    goto :goto_18

    :catch_14
    move-exception v0

    goto :goto_17

    :catch_15
    move-exception v0

    move-object/from16 v32, v2

    goto :goto_17

    :catch_16
    move-exception v0

    goto :goto_16

    :catch_17
    move-exception v0

    goto :goto_15

    :catchall_7
    move-exception v0

    move-object v14, v4

    goto :goto_1a

    :catch_18
    move-exception v0

    move-object/from16 v24, v6

    :goto_15
    move-object/from16 v31, v9

    :goto_16
    move-object/from16 v32, v12

    :goto_17
    move-object/from16 v5, v19

    :goto_18
    move-object/from16 v6, v21

    :goto_19
    move v2, v3

    move/from16 v3, v20

    goto :goto_1b

    :catchall_8
    move-exception v0

    const/4 v14, 0x0

    :goto_1a
    move-object v2, v0

    goto :goto_1f

    :catch_19
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v31, v9

    move-object/from16 v32, v12

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    move v2, v3

    move/from16 v3, v20

    const/4 v4, 0x0

    :goto_1b
    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 776
    :try_start_2b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->b(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    if-eqz v4, :cond_11

    .line 779
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 781
    :try_start_2c
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 782
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_1a

    goto :goto_1c

    :catch_1a
    move-exception v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_1c
    move/from16 v20, v3

    :goto_1d
    move v3, v2

    :goto_1e
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v6, v24

    move/from16 v11, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v9, v31

    move-object/from16 v12, v32

    goto/16 :goto_2

    :goto_1f
    if-eqz v14, :cond_12

    .line 785
    invoke-virtual {v14}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 787
    :try_start_2d
    invoke-virtual {v14}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 788
    invoke-virtual {v14}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 793
    :cond_12
    :goto_20
    throw v2

    :cond_13
    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v24, v6

    move-object/from16 v31, v9

    move-object/from16 v32, v12

    const/16 v17, 0x1

    if-nez v20, :cond_14

    const/4 v0, 0x1

    goto :goto_21

    :cond_14
    const/4 v0, 0x0

    .line 797
    :goto_21
    iput-boolean v0, v1, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->e:Z

    if-eqz v0, :cond_15

    .line 799
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->j0:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6240\u6709\u6587\u4ef6\u4e0b\u8f7d\u6210\u529f: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4e2a\u6587\u4ef6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    goto :goto_22

    .line 803
    :cond_15
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    const-string/jumbo v2, "\u90e8\u5206\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    invoke-virtual {v0, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    invoke-virtual {v0, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, v24

    .line 807
    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v5, v30

    move-object/from16 v4, v32

    .line 808
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v6, v26

    move-object/from16 v9, v29

    .line 809
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v11, v23

    move-object/from16 v12, v31

    .line 810
    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    const-string/jumbo v2, "successCount"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    const-string v2, "failCount"

    move/from16 v4, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u90e8\u5206\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25: \u6210\u529f="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u5931\u8d25="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->d(Ljava/lang/String;)V

    .line 817
    :goto_22
    iget-boolean v0, v1, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_9
    move-exception v0

    goto :goto_26

    :catch_1c
    move-exception v0

    move-object v2, v9

    move-object v9, v4

    move-object v4, v12

    move-object v12, v2

    move-object v2, v6

    goto :goto_24

    :catch_1d
    move-exception v0

    move-object v2, v9

    move-object v9, v4

    move-object v4, v12

    move-object v12, v2

    goto :goto_23

    :catchall_a
    move-exception v0

    goto :goto_25

    :catch_1e
    move-exception v0

    move-object/from16 v25, v9

    move-object v9, v4

    move-object v4, v12

    move-object/from16 v12, v25

    goto :goto_27

    :catch_1f
    move-exception v0

    move-object v1, v9

    move-object v9, v4

    move-object v4, v12

    move-object v12, v1

    move-object/from16 v1, p0

    :goto_23
    move-object v2, v6

    move-object/from16 v25, v11

    :goto_24
    move/from16 v11, v23

    goto :goto_29

    :catchall_b
    move-exception v0

    move-object/from16 v1, p0

    :goto_25
    move-object/from16 v25, v11

    :goto_26
    move-object/from16 v14, v25

    goto :goto_2a

    :catch_20
    move-exception v0

    move-object v1, v9

    move-object v9, v4

    move-object v4, v12

    move-object v12, v1

    move-object/from16 v1, p0

    :goto_27
    move-object/from16 v25, v11

    move v11, v2

    :goto_28
    move-object v2, v6

    :goto_29
    move-object v6, v3

    move-object/from16 v16, v25

    goto :goto_2b

    :catchall_c
    move-exception v0

    const/4 v14, 0x0

    :goto_2a
    move-object v2, v0

    goto :goto_2d

    :catch_21
    move-exception v0

    move-object v11, v9

    move-object v9, v4

    move-object v4, v12

    move-object v12, v11

    move v11, v2

    move-object v2, v6

    move-object v6, v3

    const/16 v16, 0x0

    .line 818
    :goto_2b
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v23, v11

    move-object/from16 v11, v20

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    .line 820
    new-instance v3, Landroid/content/Intent;

    sget-object v11, Lcom/sxr/sdk/ble/keepfit/service/b;->l0:Ljava/lang/String;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    invoke-virtual {v3, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    invoke-virtual {v3, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    invoke-virtual {v3, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v2, v23

    .line 827
    invoke-virtual {v3, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    invoke-virtual {v1, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->a(Landroid/content/Intent;)V

    .line 829
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    if-eqz v16, :cond_16

    .line 831
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 833
    :try_start_2f
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_22

    goto :goto_2c

    :catch_22
    move-exception v0

    .line 835
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    :goto_2c
    return-object v2

    :catchall_d
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_2a

    :goto_2d
    if-eqz v14, :cond_17

    .line 836
    invoke-virtual {v14}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 838
    :try_start_30
    invoke-virtual {v14}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_23

    goto :goto_2e

    :catch_23
    move-exception v0

    .line 840
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 843
    :cond_17
    :goto_2e
    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    const-string/jumbo p1, "\u6587\u4ef6\u4e0b\u8f7d\u6210\u529f"

    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    const-string/jumbo p1, "\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-direct {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 3
    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/f;->c(Ljava/lang/String;)V

    return-void
.end method
