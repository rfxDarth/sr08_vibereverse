.class Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BpAdjustActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 57
    const-string p2, "jringACTION_NOTIFY_BLE_SET_BPADJUST_SUCCESS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->stopAnim(Landroid/view/View;)V

    .line 59
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/BpAdjustActivity;->finish()V

    :cond_0
    return-void
.end method
