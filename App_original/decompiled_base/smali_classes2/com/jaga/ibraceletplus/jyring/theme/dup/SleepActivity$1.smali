.class Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SleepActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string p2, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->stopAnim(Landroid/view/View;)V

    .line 90
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/SleepActivity;->finish()V

    :cond_0
    return-void
.end method
