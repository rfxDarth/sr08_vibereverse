.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;
.super Ljava/lang/Object;
.source "ConnectChecker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker;->checkHost(Ljava/lang/String;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

.field final synthetic val$hasCallback:[Z

.field final synthetic val$timeoutMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;


# direct methods
.method constructor <init>([ZLcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$hasCallback:[Z

    iput-object p2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$timeoutMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    iput-object p3, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$hasCallback:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 141
    monitor-exit p0

    return-object v3

    :cond_0
    const/4 v2, 0x1

    .line 143
    aput-boolean v2, v0, v1

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$timeoutMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-virtual {v0}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->end()V

    .line 146
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;->val$timeoutMetrics:Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-interface {v0, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;->complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    return-object v3

    :catchall_0
    move-exception v0

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
