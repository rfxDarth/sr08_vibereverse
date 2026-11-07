.class Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "QuiteModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 121
    const-string p2, "jringNOTIFY_QUITE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 122
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->stopAnim(Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->finish()V

    return-void

    .line 124
    :cond_0
    const-string p2, "jring.DEVICE_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    .line 126
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/theme/dup/QuiteModeActivity;)V

    :cond_1
    return-void
.end method
