.class Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;
.super Ljava/lang/Object;
.source "ECardSimpleActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;


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

    .line 118
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    .line 123
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->remove(I)V

    .line 124
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/ECardAdapter;->insert(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;I)V

    .line 125
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->lvItem:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->moveCheckState(II)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 128
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on drop item lastCrc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->saveLog(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v0, "P_LATEST_ECARD_CRC"

    invoke-virtual {p2, v0, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/theme/dup/ECardSimpleActivity;)V

    :cond_0
    return-void
.end method
