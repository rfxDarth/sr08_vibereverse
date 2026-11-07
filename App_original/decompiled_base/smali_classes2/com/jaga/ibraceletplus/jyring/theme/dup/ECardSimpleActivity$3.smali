.class Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;
.super Ljava/lang/Object;
.source "ECardSimpleActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter$DeleteItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 4

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 143
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "on delete item lastCrc"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->saveLog(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_LATEST_ECARD_CRC"

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteECardItem(I)V

    .line 147
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->removeById(I)V

    .line 148
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->notifyDataSetChanged()V

    .line 149
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V

    .line 151
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V

    return-void
.end method
