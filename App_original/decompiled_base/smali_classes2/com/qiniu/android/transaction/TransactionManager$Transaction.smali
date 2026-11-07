.class public Lcom/qiniu/android/transaction/TransactionManager$Transaction;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/transaction/TransactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field private static final TransactionTypeNormal:I = 0x0

.field private static final TransactionTypeTime:I = 0x1


# instance fields
.field public final actionHandler:Ljava/lang/Runnable;

.field public final after:I

.field private createTime:J

.field protected executedCount:J

.field private final interval:I

.field private isExecuting:Z

.field public final name:Ljava/lang/String;

.field protected nextExecutionTime:J

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/Runnable;)V
    .locals 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 207
    iput-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->executedCount:J

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->isExecuting:Z

    const/4 v0, 0x1

    .line 243
    iput v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->type:I

    .line 244
    iput-object p1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->name:Ljava/lang/String;

    .line 245
    iput p2, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->after:I

    .line 246
    iput p3, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->interval:I

    .line 247
    iput-object p4, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionHandler:Ljava/lang/Runnable;

    .line 248
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->createTime:J

    int-to-long p1, p2

    add-long/2addr p3, p1

    .line 249
    iput-wide p3, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->nextExecutionTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 207
    iput-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->executedCount:J

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->isExecuting:Z

    .line 221
    iput v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->type:I

    .line 222
    iput-object p1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->name:Ljava/lang/String;

    .line 223
    iput p2, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->after:I

    .line 224
    iput v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->interval:I

    .line 225
    iput-object p3, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionHandler:Ljava/lang/Runnable;

    .line 226
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->createTime:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    .line 227
    iput-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->nextExecutionTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->handleAction()V

    return-void
.end method

.method private declared-synchronized handleAction()V
    .locals 5

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->shouldAction()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 285
    monitor-exit p0

    return-void

    .line 287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->actionHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 288
    iput-boolean v1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->isExecuting:Z

    .line 289
    iget-wide v1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->executedCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->executedCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :catch_0
    :try_start_3
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v0

    iget v2, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->interval:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->nextExecutionTime:J

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->isExecuting:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method


# virtual methods
.method public isExecuting()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->isExecuting:Z

    return v0
.end method

.method protected maybeCompleted()Z
    .locals 6

    .line 274
    iget v0, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 275
    iget-wide v2, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->executedCount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected shouldAction()Z
    .locals 9

    .line 258
    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentSecondTimestamp()J

    move-result-wide v0

    .line 259
    iget v2, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->type:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 260
    iget-wide v5, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->executedCount:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    iget-wide v5, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->nextExecutionTime:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    if-ne v2, v4, :cond_2

    .line 262
    iget-wide v5, p0, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->nextExecutionTime:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_2

    return v4

    :cond_2
    return v3
.end method
