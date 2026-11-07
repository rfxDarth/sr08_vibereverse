.class Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RunRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 123
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v6, "jringACTION_NOTIFY_ALARM_MANAGER"

    const/4 v7, 0x2

    const/4 v10, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "jringACTION_NOTIFY_LOACTION_CHANGED_TEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "jringACTION_NOTIFY_SPORTS_STEPS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "jringSENSORDATA_BROADCAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "jringBLESTATECHANGED_BROADCAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_5
    const-string v3, "jringLOACTION_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_1
    const-string v3, ""

    const-string v11, "lon"

    const-string v12, "lat"

    const/high16 v13, -0x40800000    # -1.0f

    const-string v14, "gps"

    const-string/jumbo v15, "totalTime : "

    const/16 p1, 0x3

    const-string/jumbo v5, "state"

    const-string/jumbo v4, "totalTime"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-wide/16 v8, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 125
    :pswitch_0
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->saveLog(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 127
    invoke-virtual {v1, v12, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    .line 128
    invoke-virtual {v1, v11, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    .line 130
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1, v2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;F)V

    .line 132
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v17

    aput-object v2, v7, v16

    const-string v1, "UI receive location %s %s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-virtual {v2, v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->saveLog(Ljava/lang/String;)V

    .line 134
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-nez v1, :cond_6

    .line 135
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1, v3, v4, v5, v6}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V

    return-void

    .line 137
    :cond_6
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1, v3, v4, v5, v6}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V

    return-void

    .line 188
    :pswitch_1
    const-string/jumbo v2, "steps"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 190
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvStep:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 195
    :pswitch_2
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 203
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_9

    .line 206
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    const v3, 0x10000001

    invoke-virtual {v1, v3, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1002(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 207
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 209
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 211
    :cond_7
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1000(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_8
    :pswitch_3
    const/4 v4, 0x1

    goto :goto_2

    :pswitch_4
    const/4 v4, 0x0

    .line 170
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 171
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "recv ble state changed: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->saveLog(Ljava/lang/String;)V

    if-ne v2, v7, :cond_8

    .line 173
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$600(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Z)V

    .line 176
    :goto_2
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    .line 178
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    const-string v4, "data"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$702(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;I)I

    .line 179
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_9

    .line 180
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$800(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v1

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v2

    mul-int v1, v1, v2

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v2

    add-int/2addr v1, v2

    .line 181
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$912(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;I)I

    .line 182
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v4

    div-int/2addr v1, v4

    invoke-static {v2, v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$802(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;I)I

    .line 183
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvHeartrate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$700(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 141
    :pswitch_5
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->saveLog(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 143
    invoke-virtual {v1, v12, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    .line 144
    invoke-virtual {v1, v11, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v11

    .line 145
    const-string v3, "error"

    const/4 v13, 0x0

    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 147
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/4 v7, 0x4

    const/16 v19, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v14, v7, v13

    const/16 v16, 0x1

    aput-object v15, v7, v16

    aput-object v17, v7, v19

    aput-object v18, v7, p1

    const-string v13, "UI receive location %s %s %s %s"

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 148
    iget-object v13, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-virtual {v13, v7}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->saveLog(Ljava/lang/String;)V

    .line 150
    iget-object v7, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v7, v7, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvLocation:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v3, v2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;F)V

    .line 153
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, ":"

    invoke-static {v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatTime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpl-double v2, v5, v8

    if-nez v2, :cond_a

    cmpl-double v2, v11, v8

    if-nez v2, :cond_a

    :cond_9
    :goto_3
    return-void

    .line 157
    :cond_a
    const-string/jumbo v2, "totalDistance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    .line 158
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 159
    sget v4, Lcom/jaga/ibraceletplus/jyring/CommonAttributes;->KM2MILE:F

    mul-float v2, v2, v4

    .line 160
    :cond_b
    iget-object v4, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v4, v4, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvDistance:Landroid/widget/TextView;

    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "0.00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v2, v8

    float-to-double v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvPace:Landroid/widget/TextView;

    const-string/jumbo v4, "totalPace"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v7, "\'"

    invoke-static {v4, v7}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->formatTime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->tvCalor:Landroid/widget/TextView;

    const-string/jumbo v4, "totalCalor"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-nez v1, :cond_c

    .line 165
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1, v5, v6, v11, v12}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V

    return-void

    .line 167
    :cond_c
    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1, v5, v6, v11, v12}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$500(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;DD)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76a53498 -> :sswitch_5
        -0x602db4fa -> :sswitch_4
        0x9a55d20 -> :sswitch_3
        0x2272dd98 -> :sswitch_2
        0x2ae31d0e -> :sswitch_1
        0x4b9a7d7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
