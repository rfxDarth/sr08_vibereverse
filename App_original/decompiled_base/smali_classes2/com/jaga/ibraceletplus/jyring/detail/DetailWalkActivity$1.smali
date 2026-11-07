.class Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DetailWalkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "jringACTION_NOTIFY_BLE_SYNC_DATA_END"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/detail/DetailWalkActivity;->switchDate()V

    return-void
.end method
