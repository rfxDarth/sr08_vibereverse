.class Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;
.super Landroid/content/BroadcastReceiver;
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

    .line 491
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NLServerReceiver receive: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 498
    :cond_0
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " , "

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 500
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 502
    const-string v0, "pdus"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_1

    goto/16 :goto_4

    .line 505
    :cond_1
    array-length v0, p2

    new-array v1, v0, [Landroid/telephony/SmsMessage;

    const/4 v4, 0x0

    .line 506
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 507
    aget-object v5, p2, v4

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v3, v0, :cond_29

    .line 509
    aget-object p2, v1, v3

    .line 510
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    .line 511
    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    .line 512
    invoke-static {p1, v8}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 514
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED : "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 515
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {v4, p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    .line 517
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$700(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 518
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-static/range {v4 .. v10}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 523
    :cond_4
    const-string v1, "jringACTION_NOTIFY_NLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1c

    .line 524
    const-string v0, "notification_package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    const-string v1, "notification_user"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 526
    const-string v1, "notification_text"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 527
    const-string v1, "currentTimeMillis"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 531
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {v1, p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    if-eqz v0, :cond_29

    if-eqz v12, :cond_29

    .line 534
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    .line 536
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_MMS:Ljava/lang/String;

    .line 538
    :cond_5
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_SMS_ANDROID11:Ljava/lang/String;

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 540
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 541
    :cond_6
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$700(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 542
    invoke-static {p1, v10}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 543
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 v9, 0x1

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 546
    :cond_7
    const-string v11, ""

    :goto_2
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WECHAT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 547
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$800(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 548
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 v9, 0x2

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_8
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_MOBILEQQ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 551
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$900(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 552
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 v9, 0x3

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_9
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 555
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1000(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 556
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 v9, 0x4

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_a
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_TWITTER:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 559
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 560
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 v9, 0x6

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_b
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_SKYPE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 563
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 564
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 v9, 0x5

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_c
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_LINE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 567
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 568
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x8

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_d
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WHATSAPP:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 571
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1400(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 572
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 v9, 0x7

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_e
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_KAKAOTALK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 575
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1500(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 576
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x9

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_f
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 586
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_DINGDING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 587
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1700(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 588
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0xb

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_10
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WANGWANG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 591
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1800(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 592
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0xc

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_11
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_INSTAGRAM:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 595
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$1900(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 596
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0xd

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_12
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_LINKEDIN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 599
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2000(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 600
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0xe

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_13
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_SNAPCHAT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 603
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 604
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0xf

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_14
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_WEIBO:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 607
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 608
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x10

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_15
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_TUMBLR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 611
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 612
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x11

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_16
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_NATEON:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 615
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2400(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 616
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x12

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_17
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_VIBER:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 619
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2500(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 620
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x13

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_18
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_TELEGRAM:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 623
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 624
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x14

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_19
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2700(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 629
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_VKONTAKTE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 630
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2800(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 631
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x18

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_1a
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_PINTEREST:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 634
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$2900(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 635
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x1a

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_1b
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->NOTIFICATION_PACKAGE_GMAIL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 638
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3000(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 639
    iget-object v6, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/16 v9, 0x1c

    invoke-static/range {v6 .. v12}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$600(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 645
    :cond_1c
    const-string p1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v1, "state"

    if-eqz p1, :cond_1d

    .line 646
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 647
    const-string v1, "incoming_number"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 648
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 651
    :cond_1d
    const-string p1, "jringACTION_NOTIFY_PERMISSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 652
    const-string p1, "permission"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 653
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listen call action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    .line 654
    const-string p2, "android.permission.READ_CALL_LOG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1e

    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 655
    :cond_1e
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->listenCall()V

    return-void

    .line 657
    :cond_1f
    const-string p1, "jringECG_DATA_BROADCAST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto/16 :goto_4

    .line 664
    :cond_20
    const-string p1, "jringACTION_ECG_FUNCTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto/16 :goto_4

    .line 752
    :cond_21
    const-string p1, "jringFUNCTION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 753
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const-string p2, "onGetBandFunction function changed."

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    .line 754
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V

    return-void

    .line 756
    :cond_22
    const-string p1, "jringACTION_NOTIFY_SETTING_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 757
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const-string p2, "onGetBandFunction setting changed."

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    .line 758
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3200(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V

    return-void

    .line 760
    :cond_23
    const-string p1, "jringWALK_DATA_BROADCAST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 761
    const-string/jumbo p1, "step"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    .line 762
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync timestamp step: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const v3, 0x7f1301f6

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 764
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    iget v0, p2, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyId:I

    invoke-virtual {p2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startForeground(ILandroid/app/Notification;)V

    return-void

    .line 766
    :cond_24
    const-string p1, "jringACTION_NOTIFY_BLE_CUR_SYNC_TIMESTAMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 767
    const-string/jumbo p1, "timestamp"

    invoke-virtual {p2, p1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 769
    iget-object v4, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sync timestamp: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", now: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    cmp-long v4, p1, v0

    if-gtz v4, :cond_29

    .line 771
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    mul-long p1, p1, v2

    invoke-virtual {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 772
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    iget v0, p2, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyId:I

    invoke-virtual {p2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startForeground(ILandroid/app/Notification;)V

    return-void

    .line 775
    :cond_25
    const-string p1, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 776
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 777
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ble state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$100(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_26

    .line 780
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const p2, 0x7f130509

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_26
    const/4 p2, 0x1

    if-ne p1, p2, :cond_27

    .line 782
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const p2, 0x7f13050a

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 784
    :cond_27
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const p2, 0x7f13050b

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 786
    :goto_3
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3300(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 787
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    iget v0, p2, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->notifyId:I

    invoke-virtual {p2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->startForeground(ILandroid/app/Notification;)V

    return-void

    .line 789
    :cond_28
    const-string p1, "jringACTION_NOTIFY_ENABLE_PERMISSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 790
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$4;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;->access$3400(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V

    :cond_29
    :goto_4
    return-void
.end method
