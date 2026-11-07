.class Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$5;
.super Landroid/os/CountDownTimer;
.source "SampleBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 822
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 940
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_ECG_RECORD_TIMER_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 942
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$5;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3702(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
