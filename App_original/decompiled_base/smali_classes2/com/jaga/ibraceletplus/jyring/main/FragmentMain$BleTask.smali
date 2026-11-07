.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;
.super Landroid/os/AsyncTask;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method private constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 743
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 744
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 745
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$1;)V
    .locals 0

    .line 738
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V

    return-void
.end method

.method private SaveLog(Ljava/lang/String;)V
    .locals 5

    .line 1165
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$1000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-ui.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/JRing/log/"

    invoke-static {v0, p1, v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 738
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 38

    move-object/from16 v1, p0

    .line 751
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "jringACTION_NOTIFY_BLE_SYNC_DATE_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "jringACTION_NOTIFY_BLE_SYNC_DATA_BY_DAY_END"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "jringACTION_NOTIFY_BLE_SYNC_DATA_END"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "jringACTION_NOTIFY_BLE_SYNC_TOTAL_DATA_END"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    const-string v0, "0"

    const-string v2, "jring.SYNC_PROGRESS"

    const-string/jumbo v8, "type"

    const-wide/16 v9, 0x0

    const/16 v11, 0x64

    const-string/jumbo v12, "timestamp"

    const/high16 p1, 0x42c80000    # 100.0f

    const-string v13, "false"

    const-wide/16 v14, 0x3e8

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_10

    .line 754
    :pswitch_0
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 755
    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v12, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 756
    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    const-string/jumbo v12, "step"

    invoke-virtual {v10, v12, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 757
    iget-object v12, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    const-string v14, "heart"

    invoke-virtual {v12, v14, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 763
    iget-object v14, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v14}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v14

    invoke-virtual {v14, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 765
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v2

    iget-wide v14, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncStart:J

    sub-long v14, v8, v14

    long-to-float v2, v14

    mul-float v2, v2, p1

    iget-object v14, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    .line 766
    invoke-static {v14}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v14

    iget-wide v14, v14, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncEnd:J

    const/16 v16, 0x0

    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v6

    iget-wide v3, v6, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->timeSyncStart:J

    sub-long/2addr v14, v3

    long-to-float v3, v14

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 768
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v3

    if-le v2, v3, :cond_8

    .line 769
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$202(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I

    if-eq v7, v5, :cond_7

    const/4 v2, 0x2

    if-ne v7, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-eq v7, v2, :cond_6

    const/16 v2, 0xc

    if-eq v7, v2, :cond_6

    const/16 v2, 0xd

    if-ne v7, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_3

    :cond_6
    :goto_1
    const/4 v2, 0x2

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v2, 0x1

    .line 777
    :goto_3
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v4

    sub-int/2addr v4, v0

    mul-int v4, v4, v2

    const/16 v17, 0x3

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$202(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I

    .line 778
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Integer;

    aput-object v0, v2, v16

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->publishProgress([Ljava/lang/Object;)V

    .line 782
    :cond_8
    const-string v0, "FUNCTION_NEW_DISTANCE3"

    const-string v2, "FUNCTION_NEW_DISTANCE"

    if-eq v7, v5, :cond_17

    const/4 v3, 0x2

    if-ne v7, v3, :cond_9

    goto/16 :goto_7

    :cond_9
    const/4 v3, 0x3

    if-ne v7, v3, :cond_b

    if-eqz v12, :cond_32

    const/16 v0, 0xff

    if-ne v12, v0, :cond_a

    goto/16 :goto_10

    .line 812
    :cond_a
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 813
    invoke-virtual {v0, v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setHeartrate(I)V

    .line 814
    invoke-virtual {v0, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 815
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 816
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 817
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_b
    const/16 v3, 0xc

    if-ne v7, v3, :cond_c

    .line 819
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 820
    invoke-virtual {v0, v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    .line 821
    invoke-virtual {v0, v12}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setHeartrate(I)V

    .line 822
    invoke-virtual {v0, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 823
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 825
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_c
    const/16 v3, 0xd

    if-ne v7, v3, :cond_e

    if-eqz v10, :cond_32

    if-le v10, v11, :cond_d

    goto/16 :goto_10

    .line 829
    :cond_d
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 830
    invoke-virtual {v0, v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    .line 831
    invoke-virtual {v0, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 832
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 834
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_e
    const/16 v3, 0x65

    const/16 v4, 0x66

    if-eq v7, v3, :cond_11

    if-eq v7, v4, :cond_11

    const/16 v3, 0x68

    if-ne v7, v3, :cond_f

    goto :goto_4

    :cond_f
    const/16 v0, 0x67

    if-eq v7, v0, :cond_10

    const/16 v0, 0x69

    if-lt v7, v0, :cond_32

    const/16 v0, 0xef

    if-gt v7, v0, :cond_32

    .line 876
    :cond_10
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 877
    invoke-virtual {v0, v7}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 878
    invoke-virtual {v0, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 879
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    mul-int/lit8 v10, v10, 0xa

    .line 880
    invoke-virtual {v0, v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 881
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 838
    :cond_11
    :goto_4
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 839
    invoke-virtual {v3, v7}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 840
    invoke-virtual {v3, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 841
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v3, v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    .line 843
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v5

    invoke-static {v10, v5}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance(IF)F

    move-result v5

    .line 844
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v6

    invoke-virtual {v6, v2, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 846
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v6

    invoke-virtual {v6, v0, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 850
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v2

    invoke-static {v10, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance3(IF)F

    move-result v5

    goto :goto_5

    :cond_12
    if-eqz v2, :cond_13

    .line 853
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v2

    invoke-static {v10, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance2(IF)F

    move-result v5

    :cond_13
    :goto_5
    const/high16 v2, 0x447a0000    # 1000.0f

    if-ne v7, v4, :cond_14

    const/high16 v0, 0x41200000    # 10.0f

    mul-float v5, v5, v0

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr v5, v0

    mul-float v2, v2, v5

    .line 859
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v0

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v0

    goto :goto_6

    :cond_14
    const/16 v4, 0x68

    if-ne v7, v4, :cond_15

    const/high16 v0, 0x41100000    # 9.0f

    mul-float v5, v5, v0

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr v5, v0

    mul-float v2, v2, v5

    .line 863
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v0

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v0

    goto :goto_6

    :cond_15
    mul-float v2, v2, v5

    .line 866
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v4

    invoke-static {v2, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v4

    if-eqz v0, :cond_16

    .line 868
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v0

    invoke-static {v2, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie3(FF)F

    move-result v0

    goto :goto_6

    :cond_16
    move v0, v4

    :goto_6
    float-to-int v2, v5

    .line 872
    invoke-virtual {v3, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDistance(I)V

    float-to-int v0, v0

    .line 873
    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 874
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 786
    :cond_17
    :goto_7
    new-instance v3, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 787
    invoke-virtual {v3, v10}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    .line 788
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v4

    invoke-static {v10, v4}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance(IF)F

    move-result v4

    .line 789
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v5

    invoke-virtual {v5, v2, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 792
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v2

    invoke-static {v10, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance2(IF)F

    move-result v4

    .line 794
    :cond_18
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v2

    invoke-static {v4, v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie(FF)F

    move-result v2

    .line 796
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v5

    invoke-virtual {v5, v0, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 799
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v0

    invoke-static {v10, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getDistance3(IF)F

    move-result v4

    .line 800
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$400(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)F

    move-result v0

    invoke-static {v4, v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getCalorie3(FF)F

    move-result v2

    :cond_19
    float-to-int v0, v4

    .line 803
    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDistance(I)V

    float-to-int v0, v2

    .line 804
    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 805
    invoke-virtual {v3, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 806
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$500(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v3, v7}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 808
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_1
    const/16 v16, 0x0

    .line 886
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 887
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v12, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 889
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v4

    const-string v6, "P_SYNC_HISTORY_DAY"

    const-string v7, "-1"

    invoke-virtual {v4, v6, v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 890
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    neg-int v7, v4

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateOffset(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v14

    .line 891
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onGetDataByDayEnd "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    .line 893
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v2

    const-string v3, "FUNCTION_TEMPERATURE"

    invoke-virtual {v2, v3, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 895
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v3

    const-string v6, "FUNCTION_HAS_OXYGEN_OFFLINE"

    invoke-virtual {v3, v6, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 897
    iget-object v6, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v6

    const-string v7, "FUNCTION_HAS_PRESSURE"

    invoke-virtual {v6, v7, v13}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eq v0, v5, :cond_25

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1a

    goto/16 :goto_8

    :cond_1a
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1e

    if-eqz v2, :cond_1b

    .line 906
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/16 v2, 0xc

    invoke-interface {v0, v2, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDataByDay(II)I

    goto/16 :goto_10

    :cond_1b
    if-eqz v3, :cond_1c

    .line 908
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/16 v2, 0xd

    invoke-interface {v0, v2, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDataByDay(II)I

    goto/16 :goto_10

    :cond_1c
    if-eqz v6, :cond_1d

    .line 910
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getAdvSensorOfflineData(I)I

    goto/16 :goto_10

    .line 912
    :cond_1d
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getMultipleSportData(I)I

    goto/16 :goto_10

    :cond_1e
    const/16 v2, 0xc

    if-ne v0, v2, :cond_21

    if-eqz v3, :cond_1f

    .line 915
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/16 v2, 0xd

    invoke-interface {v0, v2, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDataByDay(II)I

    goto/16 :goto_10

    :cond_1f
    if-eqz v6, :cond_20

    .line 917
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getAdvSensorOfflineData(I)I

    goto/16 :goto_10

    .line 919
    :cond_20
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getMultipleSportData(I)I

    goto/16 :goto_10

    :cond_21
    const/16 v2, 0xd

    if-ne v0, v2, :cond_23

    if-eqz v6, :cond_22

    .line 922
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getAdvSensorOfflineData(I)I

    goto/16 :goto_10

    .line 924
    :cond_22
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getMultipleSportData(I)I

    goto/16 :goto_10

    :cond_23
    const/16 v2, 0xe

    if-ne v0, v2, :cond_24

    .line 926
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    invoke-interface {v0, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getMultipleSportData(I)I

    goto/16 :goto_10

    .line 929
    :cond_24
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    goto/16 :goto_10

    .line 903
    :cond_25
    :goto_8
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->mService:Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;

    const/4 v2, 0x2

    invoke-interface {v0, v2, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IRemoteService;->getDataByDay(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :catch_0
    move-exception v0

    .line 933
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveServiceSyncState(Z)V

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onGetDataByDayEnd exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 938
    :pswitch_2
    iget-object v3, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 940
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$600(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 942
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v12, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "insertSportHistory: thread start "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    mul-long v6, v6, v14

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    .line 944
    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "P_LAST_TIME_SYNC"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 945
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Lnet/grandcentrix/tray/AppPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "save last sync time: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v20, v14

    mul-long v14, v18, v20

    invoke-direct {v4, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    .line 947
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    iget-object v4, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$200(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 948
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string/jumbo v2, "userid"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 949
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v2, "P_ENABLE_GOOGLE_API"

    const/16 v16, 0x0

    .line 950
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 949
    invoke-virtual {v0, v2, v4}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 962
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-direct {v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;-><init>()V

    .line 966
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    div-long v22, v22, v20

    move-wide/from16 v24, v18

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 967
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2f

    .line 968
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v26

    cmp-long v8, v26, v22

    if-lez v8, :cond_26

    .line 969
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "insertSportHistory: ignored the future time: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v13}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v26

    move-wide/from16 v28, v6

    mul-long v5, v26, v20

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v10}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , timestamp = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v5

    mul-long v5, v5, v20

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    const/16 v6, 0xd

    const/16 v7, 0xc

    goto/16 :goto_e

    :cond_26
    move-wide/from16 v28, v6

    .line 973
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v36

    const-wide/16 v5, 0x12c

    add-long v5, v36, v5

    .line 974
    const-string v7, " - "

    cmp-long v8, v5, v18

    if-gez v8, :cond_27

    .line 975
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insertSportHistory: ignore item - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    mul-long v7, v36, v20

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with last sync "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    const/16 v7, 0xc

    goto/16 :goto_a

    .line 978
    :cond_27
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insertSportHistory: start with item - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    mul-long v7, v36, v20

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_28

    .line 982
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v30

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v31

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v32

    .line 983
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getHeartrate()I

    move-result v5

    int-to-float v5, v5

    const/16 v35, 0x0

    const/16 v33, 0x1

    move/from16 v34, v5

    .line 982
    invoke-virtual/range {v30 .. v37}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    const/16 v6, 0xd

    const/16 v7, 0xc

    goto/16 :goto_d

    :cond_28
    const/16 v7, 0xc

    if-ne v5, v7, :cond_2b

    .line 985
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v5

    .line 986
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v8}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getHeartrate()I

    move-result v8

    if-lez v5, :cond_2a

    if-gtz v8, :cond_29

    goto :goto_a

    .line 990
    :cond_29
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v6, "insert body temperature "

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v5, v5

    div-float v5, v5, p1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v5, v8

    div-float v5, v5, p1

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    .line 991
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v30

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v31

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v32

    .line 992
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v5

    int-to-float v5, v5

    div-float v34, v5, p1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getHeartrate()I

    move-result v5

    int-to-float v5, v5

    div-float v35, v5, p1

    const/16 v33, 0x10

    .line 991
    invoke-virtual/range {v30 .. v37}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    const/16 v6, 0xd

    goto :goto_d

    :cond_2a
    :goto_a
    move-wide/from16 v24, v36

    const/16 v6, 0xd

    goto :goto_e

    :cond_2b
    const/16 v6, 0xd

    if-ne v5, v6, :cond_2c

    .line 996
    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v30

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v31

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v32

    .line 997
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-virtual {v5}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v5

    int-to-float v5, v5

    const/16 v35, 0x0

    const/16 v33, 0xf

    move/from16 v34, v5

    .line 996
    invoke-virtual/range {v30 .. v37}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J

    goto :goto_d

    .line 1000
    :cond_2c
    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v30

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    .line 1001
    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v31

    iget-object v8, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    .line 1002
    invoke-static {v8}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$800(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v32

    .line 1003
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v33, v8

    check-cast v33, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    const/16 v8, 0xa

    if-ge v4, v8, :cond_2d

    if-ge v5, v11, :cond_2d

    const/16 v34, 0x1

    goto :goto_b

    :cond_2d
    const/16 v34, 0x0

    :goto_b
    if-eqz v0, :cond_2e

    if-ge v5, v11, :cond_2e

    const/16 v35, 0x1

    goto :goto_c

    :cond_2e
    const/16 v35, 0x0

    .line 1000
    :goto_c
    invoke-virtual/range {v30 .. v35}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->insertSportHistory(Ljava/lang/String;Ljava/lang/String;Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;ZZ)J

    :goto_d
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v24, v36

    :goto_e
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v6, v28

    const/4 v5, 0x1

    goto/16 :goto_9

    :cond_2f
    move-wide/from16 v28, v6

    cmp-long v0, v24, v18

    if-nez v0, :cond_31

    .line 1112
    new-instance v0, Ljava/util/Date;

    mul-long v2, v24, v20

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    new-instance v2, Ljava/util/Date;

    mul-long v3, v22, v20

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adjust for no records in the duration when today:  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    move-wide/from16 v2, v22

    goto :goto_f

    .line 1119
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not today timeSyncDate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", nowDate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    :cond_31
    move-wide/from16 v2, v24

    .line 1124
    :goto_f
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$700(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "cur sync timestamp:  "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    mul-long v14, v2, v20

    invoke-direct {v4, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    .line 1127
    new-instance v0, Landroid/content/Intent;

    const-string v4, "jringACTION_NOTIFY_BLE_CUR_SYNC_TIMESTAMP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v0, v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1129
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    .line 1130
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcastWithPackageToService(Landroid/content/Intent;)V

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[debug: sleep] insertSportHistory: thread end "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    move-wide/from16 v6, v28

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->SaveLog(Ljava/lang/String;)V

    .line 1137
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$202(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;I)I

    .line 1139
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->insertGoogleFitTask()V

    goto :goto_10

    :pswitch_3
    move-wide/from16 v20, v14

    .line 1142
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask$1;

    invoke-direct {v2, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask$1;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;)V

    move-wide/from16 v3, v20

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_32
    :goto_10
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fdd46a6 -> :sswitch_3
        -0x318c2ea1 -> :sswitch_2
        -0xba7f794 -> :sswitch_1
        0x6e07d25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 738
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 1177
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1179
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz p1, :cond_0

    .line 1180
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4

    .line 1171
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvToday:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->tvToday:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const v3, 0x7f13021e

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 738
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$BleTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
