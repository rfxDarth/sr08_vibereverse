.class public Lcom/qiniu/android/storage/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# instance fields
.field private final config:Lcom/qiniu/android/storage/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    new-instance v0, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/storage/Configuration;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {p1}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    .line 76
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsLocalLoadTransaction()Z

    .line 77
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->setDnsCheckWhetherCachedValidTransactionAction()Z

    .line 78
    invoke-static {}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->startMonitor()V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/storage/Recorder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Recorder;Lcom/qiniu/android/storage/KeyGenerator;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/storage/Recorder;Lcom/qiniu/android/storage/KeyGenerator;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    new-instance v0, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/storage/Configuration$Builder;->recorder(Lcom/qiniu/android/storage/Recorder;Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/Configuration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/UploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method private checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z
    .locals 8

    if-eqz p4, :cond_7

    .line 451
    const-string v0, "no input data"

    if-nez p3, :cond_0

    .line 452
    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p3

    :goto_0
    move-object v4, p3

    goto :goto_2

    .line 453
    :cond_0
    instance-of v1, p3, [B

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, [B

    array-length v1, v1

    if-nez v1, :cond_1

    .line 454
    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p3

    goto :goto_0

    .line 455
    :cond_1
    instance-of v0, p3, Ljava/io/File;

    const-string v1, "file is empty"

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 456
    invoke-static {v1}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p3

    goto :goto_0

    .line 457
    :cond_2
    instance-of v0, p3, Lcom/qiniu/android/storage/UploadSource;

    if-eqz v0, :cond_3

    check-cast p3, Lcom/qiniu/android/storage/UploadSource;

    invoke-virtual {p3}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v4

    cmp-long p3, v4, v2

    if-nez p3, :cond_3

    .line 458
    invoke-static {v1}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p3

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 459
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    goto :goto_0

    .line 460
    :cond_5
    :goto_1
    const-string p3, "no token"

    invoke-static {p3}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p3

    goto :goto_0

    :goto_2
    if-eqz v4, :cond_6

    .line 463
    iget-object v5, v4, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 447
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "complete handler is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .locals 6

    move-object v0, p0

    move-object v5, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    .line 478
    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->reportQuality(Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Ljava/lang/String;)V

    move-object p4, v1

    if-eqz p7, :cond_0

    move-object p3, p7

    .line 480
    new-instance p7, Lcom/qiniu/android/utils/Wait;

    invoke-direct {p7}, Lcom/qiniu/android/utils/Wait;-><init>()V

    .line 481
    new-instance p1, Lcom/qiniu/android/storage/UploadManager$5;

    move-object p2, p0

    move-object p6, p5

    move-object p5, v3

    invoke-direct/range {p1 .. p7}, Lcom/qiniu/android/storage/UploadManager$5;-><init>(Lcom/qiniu/android/storage/UploadManager;Lcom/qiniu/android/storage/UpCompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/utils/Wait;)V

    invoke-static {p1}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    .line 488
    invoke-virtual {p7}, Lcom/qiniu/android/utils/Wait;->startWait()V

    :cond_0
    return-void
.end method

.method private putData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .locals 9

    .line 364
    invoke-static {p4}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 365
    invoke-virtual {v4}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v0, Lcom/qiniu/android/storage/Configuration;->zone:Lcom/qiniu/android/common/Zone;

    invoke-static {v0, v1, v4}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsCheckAndPrefetchTransaction(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z

    .line 372
    invoke-static {p4}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->setToken(Ljava/lang/String;)V

    .line 374
    new-instance v7, Lcom/qiniu/android/storage/UploadManager$3;

    invoke-direct {v7, p0, p4, p1, p6}, Lcom/qiniu/android/storage/UploadManager$3;-><init>(Lcom/qiniu/android/storage/UploadManager;Ljava/lang/String;[BLcom/qiniu/android/storage/UpCompletionHandler;)V

    .line 380
    new-instance v0, Lcom/qiniu/android/storage/FormUpload;

    iget-object v6, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/FormUpload;-><init>([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    .line 381
    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    move-object v1, p1

    move-object v2, p3

    .line 366
    const-string p1, "invalid token"

    invoke-static {p1}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p6

    move-object v4, v1

    move-object v3, v2

    move-object v1, p0

    move-object v2, p4

    .line 367
    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method private putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .locals 13

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    const-string v1, "get upload file data error:"

    .line 390
    invoke-direct {p0, p2, v5, p1, v8}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 394
    :cond_0
    invoke-static {v5}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 395
    invoke-virtual {v3}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v4, v0, Lcom/qiniu/android/storage/Configuration;->zone:Lcom/qiniu/android/common/Zone;

    invoke-static {v0, v4, v3}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->addDnsCheckAndPrefetchTransaction(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z

    .line 402
    invoke-static {v5}, Lcom/qiniu/android/storage/serverConfig/ServerConfigMonitor;->setToken(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v6

    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget v0, v0, Lcom/qiniu/android/storage/Configuration;->putThreshold:I

    int-to-long v11, v0

    cmp-long v0, v6, v11

    if-gtz v0, :cond_3

    const/4 v3, 0x0

    .line 408
    :try_start_0
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {p1, v0, v9, v10}, Lcom/qiniu/android/storage/UploadSource;->readData(IJ)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->close()V

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 410
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->localIOError(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->close()V

    move-object v2, v3

    move-object v3, v0

    :goto_0
    if-nez v3, :cond_2

    .line 415
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move-object/from16 v6, p4

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/storage/UploadManager;->putData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v2, p3

    move-object/from16 v8, p5

    move-object v5, v3

    move-object v3, p2

    .line 417
    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    :goto_1
    return-void

    .line 412
    :goto_2
    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->close()V

    .line 413
    throw v0

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Lcom/qiniu/android/storage/KeyGenerator;->gen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :cond_4
    move-object v7, p2

    .line 427
    :goto_3
    new-instance v0, Lcom/qiniu/android/storage/UploadManager$4;

    invoke-direct {v0, p0, v5, p1, v8}, Lcom/qiniu/android/storage/UploadManager$4;-><init>(Lcom/qiniu/android/storage/UploadManager;Ljava/lang/String;Lcom/qiniu/android/storage/UploadSource;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    .line 433
    iget-object v4, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-boolean v4, v4, Lcom/qiniu/android/storage/Configuration;->useConcurrentResumeUpload:Z

    if-eqz v4, :cond_5

    move-object v8, v0

    .line 434
    new-instance v0, Lcom/qiniu/android/storage/ConcurrentResumeUpload;

    iget-object v5, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v6, v5, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/qiniu/android/storage/ConcurrentResumeUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    .line 435
    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    move-object v8, v0

    .line 437
    new-instance v0, Lcom/qiniu/android/storage/PartsUpload;

    iget-object v5, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v6, v5, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/qiniu/android/storage/PartsUpload;-><init>(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/Recorder;Ljava/lang/String;Lcom/qiniu/android/storage/BaseUpload$UpTaskCompletionHandler;)V

    .line 438
    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    return-void

    .line 396
    :cond_6
    :goto_4
    const-string v0, "invalid token"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v2, v5

    move-object v5, v0

    .line 397
    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/UploadManager;->completeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method private reportQuality(Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadTaskMetrics;Ljava/lang/String;)V
    .locals 7

    .line 498
    invoke-static {p5}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 499
    invoke-virtual {v0}, Lcom/qiniu/android/storage/UpToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p4, :cond_1

    move-object v1, p4

    goto :goto_0

    .line 503
    :cond_1
    new-instance v1, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;-><init>(Ljava/lang/String;)V

    .line 505
    :goto_0
    new-instance v2, Lcom/qiniu/android/collect/ReportItem;

    invoke-direct {v2}, Lcom/qiniu/android/collect/ReportItem;-><init>()V

    .line 506
    const-string v3, "quality"

    const-string v4, "log_type"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->getUpType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "up_type"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "up_time"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-static {p3}, Lcom/qiniu/android/collect/ReportItem;->qualityResult(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "result"

    invoke-virtual {v2, v3, v4}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v3, "target_key"

    invoke-virtual {v2, p1, v3}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object p1, v0, Lcom/qiniu/android/storage/UpToken;->bucket:Ljava/lang/String;

    const-string/jumbo v0, "target_bucket"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->totalElapsedTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v0, "total_elapsed_time"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->getUcQueryMetrics()Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 514
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->getUcQueryMetrics()Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->totalElapsedTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v0, "uc_query_elapsed_time"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    :cond_2
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->requestCount()Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v0, "requests_count"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->regionCount()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "regions_count"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->bytesSend()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "bytes_sent"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->systemName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "os_name"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->systemVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "os_version"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkLanguage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sdk_name"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkVerion()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sdk_version"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->lastMetrics()Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 527
    invoke-virtual {p1}, Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;->lastMetrics()Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 529
    invoke-virtual {p1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->getHijacked()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hijacking"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    :cond_3
    invoke-static {p3}, Lcom/qiniu/android/collect/ReportItem;->requestReportErrorType(Lcom/qiniu/android/http/ResponseInfo;)Ljava/lang/String;

    move-result-object p1

    .line 534
    const-string v0, "error_type"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    .line 536
    iget-object p1, p3, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p3, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object p1, p3, Lcom/qiniu/android/http/ResponseInfo;->message:Ljava/lang/String;

    .line 537
    :goto_1
    const-string v0, "error_description"

    invoke-virtual {v2, p1, v0}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    :cond_5
    instance-of p1, p2, Lcom/qiniu/android/storage/UploadSource;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_6

    .line 542
    move-object p1, p2

    check-cast p1, Lcom/qiniu/android/storage/UploadSource;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/UploadSource;->getSize()J

    move-result-wide v3

    goto :goto_2

    .line 543
    :cond_6
    instance-of p1, p2, [B

    if-eqz p1, :cond_7

    .line 544
    move-object p1, p2

    check-cast p1, [B

    array-length p1, p1

    int-to-long v3, p1

    goto :goto_2

    :cond_7
    move-wide v3, v0

    .line 546
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v5, "file_size"

    invoke-virtual {v2, p1, v5}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 549
    invoke-virtual {p3}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p4}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->totalElapsedTime()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_8

    cmp-long p1, v3, v0

    if-lez p1, :cond_8

    .line 551
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->totalElapsedTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qiniu/android/utils/Utils;->calculateSpeed(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "perceptive_speed"

    invoke-virtual {v2, p1, p2}, Lcom/qiniu/android/collect/ReportItem;->setReport(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    :cond_8
    invoke-static {}, Lcom/qiniu/android/collect/UploadInfoReporter;->getInstance()Lcom/qiniu/android/collect/UploadInfoReporter;

    move-result-object p1

    invoke-virtual {p1, v2, p5}, Lcom/qiniu/android/collect/UploadInfoReporter;->report(Lcom/qiniu/android/collect/ReportItem;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private syncPut(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 8

    .line 332
    new-instance v0, Lcom/qiniu/android/utils/Wait;

    invoke-direct {v0}, Lcom/qiniu/android/utils/Wait;-><init>()V

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    new-instance v7, Lcom/qiniu/android/storage/UploadManager$2;

    invoke-direct {v7, p0, v1, v0}, Lcom/qiniu/android/storage/UploadManager$2;-><init>(Lcom/qiniu/android/storage/UploadManager;Ljava/util/ArrayList;Lcom/qiniu/android/utils/Wait;)V

    .line 344
    invoke-direct {p0, p2, p3, p1, v7}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 345
    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/storage/UploadManager;->putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    .line 348
    :cond_0
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Wait;->startWait()V

    .line 350
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 351
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/http/ResponseInfo;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public put(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 1

    .line 160
    invoke-direct {p0, p3, p4, p1, p5}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p2

    .line 163
    new-instance p2, Lcom/qiniu/android/storage/UploadSourceUri;

    invoke-direct {p2, p1, v0}, Lcom/qiniu/android/storage/UploadSourceUri;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    move-object p1, p6

    move-object p6, p5

    move-object p5, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/qiniu/android/storage/UploadManager;->putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method public put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 7

    .line 136
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v2, Lcom/qiniu/android/storage/UploadSourceFile;

    invoke-direct {v2, p1}, Lcom/qiniu/android/storage/UploadSourceFile;-><init>(Ljava/io/File;)V

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 1

    .line 187
    invoke-direct {p0, p6, p7, p1, p8}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p2

    .line 190
    new-instance p2, Lcom/qiniu/android/storage/UploadSourceStream;

    invoke-direct {p2, p1}, Lcom/qiniu/android/storage/UploadSourceStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    invoke-virtual {p2, v0}, Lcom/qiniu/android/storage/UploadSourceStream;->setId(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2, p3, p4}, Lcom/qiniu/android/storage/UploadSourceStream;->setSize(J)V

    .line 193
    invoke-virtual {p2, p5}, Lcom/qiniu/android/storage/UploadSourceStream;->setFileName(Ljava/lang/String;)V

    move-object p1, p0

    move-object p3, p6

    move-object p4, p7

    move-object p6, p8

    move-object p5, p9

    .line 194
    invoke-direct/range {p1 .. p6}, Lcom/qiniu/android/storage/UploadManager;->putSource(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 7

    .line 115
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 8

    .line 95
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v6, p5

    .line 98
    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/storage/UploadManager;->putData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    return-void
.end method

.method public syncPut(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 1

    .line 285
    new-instance v0, Lcom/qiniu/android/storage/UploadSourceUri;

    invoke-direct {v0, p1, p2}, Lcom/qiniu/android/storage/UploadSourceUri;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/qiniu/android/storage/UploadManager;->syncPut(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public syncPut(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 1

    .line 263
    new-instance v0, Lcom/qiniu/android/storage/UploadSourceFile;

    invoke-direct {v0, p1}, Lcom/qiniu/android/storage/UploadSourceFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/qiniu/android/storage/UploadManager;->syncPut(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public syncPut(Ljava/io/InputStream;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 1

    .line 310
    new-instance v0, Lcom/qiniu/android/storage/UploadSourceStream;

    invoke-direct {v0, p1}, Lcom/qiniu/android/storage/UploadSourceStream;-><init>(Ljava/io/InputStream;)V

    .line 311
    invoke-virtual {v0, p2}, Lcom/qiniu/android/storage/UploadSourceStream;->setId(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p3, p4}, Lcom/qiniu/android/storage/UploadSourceStream;->setSize(J)V

    .line 313
    invoke-virtual {v0, p5}, Lcom/qiniu/android/storage/UploadSourceStream;->setFileName(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, v0, p6, p7, p8}, Lcom/qiniu/android/storage/UploadManager;->syncPut(Lcom/qiniu/android/storage/UploadSource;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public syncPut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 1

    .line 249
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/qiniu/android/storage/UploadManager;->syncPut(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method

.method public syncPut([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 9

    .line 212
    new-instance v0, Lcom/qiniu/android/utils/Wait;

    invoke-direct {v0}, Lcom/qiniu/android/utils/Wait;-><init>()V

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    new-instance v8, Lcom/qiniu/android/storage/UploadManager$1;

    invoke-direct {v8, p0, v1, v0}, Lcom/qiniu/android/storage/UploadManager$1;-><init>(Lcom/qiniu/android/storage/UploadManager;Ljava/util/ArrayList;Lcom/qiniu/android/utils/Wait;)V

    .line 225
    invoke-direct {p0, p2, p3, p1, v8}, Lcom/qiniu/android/storage/UploadManager;->checkAndNotifyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 226
    invoke-direct/range {v2 .. v8}, Lcom/qiniu/android/storage/UploadManager;->putData([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/qiniu/android/utils/Wait;->startWait()V

    .line 231
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 232
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/http/ResponseInfo;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
