.class Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;
.super Ljava/lang/Object;
.source "SmsRspSimpleActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter$DeleteItemListener;


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

    .line 146
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 4

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 150
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "lastCrc"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_LATEST_SMSRSP_CRC"

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteSmsRspItem(I)V

    .line 154
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->removeBySmsRspId(I)V

    .line 155
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/SmsRspAdapter;->notifyDataSetChanged()V

    .line 156
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/SmsRspSimpleActivity;)V

    return-void
.end method
