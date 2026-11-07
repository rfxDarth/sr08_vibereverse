.class Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$DeleteItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 4

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 141
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "on delete item lastCrc:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v2, "P_LATEST_CONTACT_CRC"

    invoke-virtual {v1, v2, v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->deleteContactItem(I)V

    .line 145
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->removeByContactId(I)V

    .line 146
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->notifyDataSetChanged()V

    .line 147
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)V

    .line 149
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)V

    return-void
.end method
