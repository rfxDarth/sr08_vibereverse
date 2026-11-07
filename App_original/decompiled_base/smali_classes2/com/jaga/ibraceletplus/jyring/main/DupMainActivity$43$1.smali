.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$1;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->onConnectStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3042
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3045
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3046
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3047
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->requestIgnoreBatteryOptimizations()V

    .line 3051
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$43;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$3200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    return-void
.end method
