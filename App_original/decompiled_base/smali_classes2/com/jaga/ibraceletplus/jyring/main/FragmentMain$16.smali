.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;
.super Landroid/os/CountDownTimer;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;JJ)V
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

    .line 5469
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 5497
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 5498
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7602(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 5473
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 5474
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTick "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$2300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Ljava/lang/String;)V

    .line 5476
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 5477
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/lit16 v1, v1, 0x9c4

    .line 5478
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/lit16 v0, v0, 0xdac

    .line 5484
    new-instance v2, Landroid/content/Intent;

    const-string v3, "jringTEMPERATURE_DATA_BROADCAST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5485
    const-string/jumbo v3, "surfaceTemp"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5486
    const-string v1, "bodyTemp"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5487
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 5489
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 5490
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 5491
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$7500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_0
    return-void
.end method
