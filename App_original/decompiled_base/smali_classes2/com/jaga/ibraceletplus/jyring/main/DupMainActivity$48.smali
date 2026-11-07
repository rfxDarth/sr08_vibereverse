.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;
.super Ljava/util/TimerTask;
.source "DupMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->actionMediaButtonSpecial2(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field final synthetic val$keyEvent:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;I)V
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

    .line 5145
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;->val$keyEvent:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5149
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5150
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;->val$keyEvent:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 5151
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5152
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$48;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v2, ".playback.mediasession.MediaKeyReceiver"

    invoke-virtual {v1, v0, v2}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
