.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;
.super Ljava/lang/Object;
.source "ConnectChecker.java"

# interfaces
.implements Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker;->checkAllHosts(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

.field final synthetic val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    iput-object p2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V
    .locals 6

    const-string v0, "== check all hosts has completed totalCount:"

    const-string v1, "== check all hosts completed totalCount:"

    .line 105
    invoke-static {p1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->isConnected(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)Z

    move-result v2

    .line 106
    iget-object v3, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    monitor-enter v3

    .line 107
    :try_start_0
    iget-object v4, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$512(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;I)I

    .line 108
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v2}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v2

    iget-object v3, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v3}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "== check all hosts not completed totalCount:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " completeCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    return-void

    .line 110
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    monitor-enter v2

    .line 111
    :try_start_1
    iget-object v3, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v3}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$600(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " completeCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 113
    monitor-exit v2

    return-void

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " completeCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v0, v5}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$602(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;Z)Z

    .line 118
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    invoke-interface {v0, p1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;->complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    return-void

    :catchall_0
    move-exception p1

    .line 118
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 108
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
