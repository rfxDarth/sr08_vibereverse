.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "AlarmDrinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 209
    const-string p2, "jringACTION_NOTIFY_BLE_SET_ALARM_SUCCESS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->ivSync:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ViewUtil;->stopAnim(Landroid/view/View;)V

    .line 211
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$6;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->finish()V

    :cond_0
    return-void
.end method
