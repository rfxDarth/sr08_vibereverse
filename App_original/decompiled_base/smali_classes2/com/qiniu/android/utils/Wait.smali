.class public Lcom/qiniu/android/utils/Wait;
.super Ljava/lang/Object;
.source "Wait.java"


# instance fields
.field final completeSingle:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/qiniu/android/utils/Wait;->completeSingle:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public startWait()V
    .locals 5

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/qiniu/android/utils/Wait;->completeSingle:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/utils/Wait;->completeSingle:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method

.method public stopWait()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/qiniu/android/utils/Wait;->completeSingle:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
