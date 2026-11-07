.class Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;
.super Landroid/telephony/PhoneStateListener;
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
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8

    .line 374
    const-string v0, ""

    if-nez p2, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p2

    .line 376
    :goto_0
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    .line 378
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_6

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    goto/16 :goto_3

    .line 390
    :cond_2
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$500(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)I

    move-result p2

    if-ne p2, p1, :cond_3

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 392
    :cond_3
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_1
    return-void

    .line 395
    :cond_4
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2, v5}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$302(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 397
    new-instance p2, Landroid/content/Intent;

    const-string v1, "jringACTION_INCOMING_PHONE_NUM"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    const-string v1, "incomingNumber"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-virtual {v1, p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 401
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2, v5}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 402
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    move-object p2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 384
    :cond_6
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$302(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 386
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$400(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V

    .line 407
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$3;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2, p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$502(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;I)I

    return-void
.end method
