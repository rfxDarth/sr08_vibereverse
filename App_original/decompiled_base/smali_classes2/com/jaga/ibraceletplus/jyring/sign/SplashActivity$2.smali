.class Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    const-string v1, "check database init state is null."

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->saveLog(Ljava/lang/String;)V

    const-wide/16 v0, 0x12c

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 92
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->init(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    const-string v1, "database init success."

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->saveLog(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "database init failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/sign/SplashActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method
