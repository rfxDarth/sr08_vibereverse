.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;
.super Ljava/lang/Object;
.source "ConnectChecker.java"

# interfaces
.implements Lcom/qiniu/android/http/request/IRequestClient$CompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker;->checkHost(Ljava/lang/String;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

.field final synthetic val$hasCallback:[Z

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>([ZLjava/lang/String;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;->val$hasCallback:[Z

    iput-object p2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lorg/json/JSONObject;)V
    .locals 2

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object p3, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;->val$hasCallback:[Z

    const/4 v0, 0x0

    aget-boolean v1, p3, v0

    if-eqz v1, :cond_0

    .line 162
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 164
    aput-boolean v1, p3, v0

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "== checkHost:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;->val$host:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " responseInfo:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    invoke-interface {p1, p2}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;->complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    return-void

    :catchall_0
    move-exception p1

    .line 165
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
