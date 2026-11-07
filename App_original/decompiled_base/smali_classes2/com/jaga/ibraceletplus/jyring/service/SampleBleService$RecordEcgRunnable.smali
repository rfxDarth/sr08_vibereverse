.class Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$RecordEcgRunnable;
.super Ljava/lang/Object;
.source "SampleBleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordEcgRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 811
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$RecordEcgRunnable;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_ECG_RECORD_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$RecordEcgRunnable;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3500(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v5, "recordtime"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 816
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$RecordEcgRunnable;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 818
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$RecordEcgRunnable;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
