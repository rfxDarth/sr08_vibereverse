.class Lcom/qiniu/android/utils/AsyncRun$1;
.super Ljava/util/TimerTask;
.source "AsyncRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/utils/AsyncRun;->runInMain(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/qiniu/android/utils/AsyncRun$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/qiniu/android/utils/AsyncRun;->access$000()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/utils/AsyncRun$1;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    invoke-virtual {p0}, Lcom/qiniu/android/utils/AsyncRun$1;->cancel()Z

    return-void
.end method
