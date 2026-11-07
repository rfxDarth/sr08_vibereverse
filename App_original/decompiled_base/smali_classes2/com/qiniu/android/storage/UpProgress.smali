.class Lcom/qiniu/android/storage/UpProgress;
.super Ljava/lang/Object;
.source "UpProgress.java"


# instance fields
.field private final handler:Lcom/qiniu/android/storage/UpProgressHandler;

.field private maxProgressUploadBytes:J

.field private previousUploadBytes:J


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UpProgressHandler;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->maxProgressUploadBytes:J

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->previousUploadBytes:J

    .line 13
    iput-object p1, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/UpProgress;)Lcom/qiniu/android/storage/UpProgressHandler;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    return-object p0
.end method

.method private notify(Ljava/lang/String;JJ)V
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    if-nez v0, :cond_0

    move-object v2, p0

    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, v0, Lcom/qiniu/android/storage/UpProgressBytesHandler;

    if-eqz v0, :cond_1

    .line 56
    new-instance v1, Lcom/qiniu/android/storage/UpProgress$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/qiniu/android/storage/UpProgress$1;-><init>(Lcom/qiniu/android/storage/UpProgress;Ljava/lang/String;JJ)V

    invoke-static {v1}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    const-wide/16 p1, 0x0

    cmp-long p3, v6, p1

    if-gtz p3, :cond_2

    :goto_0
    return-void

    :cond_2
    long-to-double p1, v4

    long-to-double p3, v6

    div-double/2addr p1, p3

    .line 71
    new-instance p3, Lcom/qiniu/android/storage/UpProgress$2;

    invoke-direct {p3, p0, v3, p1, p2}, Lcom/qiniu/android/storage/UpProgress$2;-><init>(Lcom/qiniu/android/storage/UpProgress;Ljava/lang/String;D)V

    invoke-static {p3}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public notifyDone(Ljava/lang/String;J)V
    .locals 6

    move-wide v4, p2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/storage/UpProgress;->notify(Ljava/lang/String;JJ)V

    return-void
.end method

.method public progress(Ljava/lang/String;JJ)V
    .locals 5

    .line 17
    iget-object v0, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    cmp-long v3, p2, p4

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    if-lez v2, :cond_2

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-wide v2, p0, Lcom/qiniu/android/storage/UpProgress;->maxProgressUploadBytes:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    long-to-double v0, p4

    const-wide v2, 0x3fee666666666666L    # 0.95

    mul-double v0, v0, v2

    double-to-long v0, v0

    .line 24
    iput-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->maxProgressUploadBytes:J

    .line 26
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->maxProgressUploadBytes:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 33
    :cond_2
    monitor-enter p0

    .line 34
    :try_start_2
    iget-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->previousUploadBytes:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    .line 35
    iput-wide p2, p0, Lcom/qiniu/android/storage/UpProgress;->previousUploadBytes:J

    .line 40
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/qiniu/android/storage/UpProgress;->notify(Ljava/lang/String;JJ)V

    move-object p1, p0

    return-void

    :cond_3
    move-object p1, p0

    .line 38
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object p1, p0

    :goto_0
    move-object p2, v0

    .line 40
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p2

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_4
    :goto_1
    move-object p1, p0

    return-void
.end method
