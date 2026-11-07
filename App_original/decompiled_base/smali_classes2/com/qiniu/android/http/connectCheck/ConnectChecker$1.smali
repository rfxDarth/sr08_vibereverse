.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;
.super Ljava/lang/Object;
.source "ConnectChecker.java"

# interfaces
.implements Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker;->check()Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;

.field final synthetic val$wait:Lcom/qiniu/android/utils/Wait;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;Lcom/qiniu/android/utils/Wait;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;->val$result:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;

    iput-object p2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;->val$result:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;

    invoke-static {v0, p1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;->access$102(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    .line 57
    iget-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-virtual {p1}, Lcom/qiniu/android/utils/Wait;->stopWait()V

    return-void
.end method
