.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$2$1;
.super Ljava/lang/Object;
.source "ConnectChecker.java"

# interfaces
.implements Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker$2;->action(Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/connectCheck/ConnectChecker$2;

.field final synthetic val$singleFlightComplete:Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$2;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$2$1;->this$0:Lcom/qiniu/android/http/connectCheck/ConnectChecker$2;

    iput-object p2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$2$1;->val$singleFlightComplete:Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$2$1;->val$singleFlightComplete:Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    invoke-interface {v0, p1}, Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
