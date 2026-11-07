.class Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;


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

    .line 116
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    .line 121
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->remove(I)V

    .line 122
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->insert(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;I)V

    .line 123
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->lvContact:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->moveCheckState(II)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 126
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on drop item lastCrc:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->saveLog(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_LATEST_CONTACT_CRC"

    invoke-virtual {p2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/ContactActivity;)V

    :cond_0
    return-void
.end method
