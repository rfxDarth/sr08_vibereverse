.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$4;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 889
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 892
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v1, "Latitude"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 893
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v1

    const-string v3, "Longitude"

    invoke-virtual {v1, v3, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 894
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    .line 895
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 896
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 898
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v2, v1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 901
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 902
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 904
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->gpsUploadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
