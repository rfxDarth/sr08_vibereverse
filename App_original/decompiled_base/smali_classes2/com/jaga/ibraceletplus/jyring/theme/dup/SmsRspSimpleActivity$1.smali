.class Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;
.super Ljava/lang/Object;
.source "SmsRspSimpleActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    .line 132
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->remove(I)V

    .line 133
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->insert(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;I)V

    .line 134
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->lvSmsRsp:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->moveCheckState(II)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 137
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 138
    const-string p2, "lastCrc"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_LATEST_SMSRSP_CRC"

    invoke-virtual {p2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
