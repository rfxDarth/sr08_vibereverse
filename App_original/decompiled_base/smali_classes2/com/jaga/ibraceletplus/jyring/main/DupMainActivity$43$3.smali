.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->onGetOtaInfo(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

.field final synthetic val$b:Z

.field final synthetic val$otaInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3719
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

    iput-boolean p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;->val$b:Z

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;->val$otaInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3722
    iget-boolean v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;->val$b:Z

    if-eqz v0, :cond_0

    .line 3723
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;->val$otaInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$4300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;)V

    return-void

    .line 3725
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$3;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "onGetOtaInfo update P_OTA_INDICATOR: P_OTA_INDICATOR_VIEWED"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 3726
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v1, "P_OTA_INDICATOR"

    const-string v2, "P_OTA_INDICATOR_VIEWED"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
