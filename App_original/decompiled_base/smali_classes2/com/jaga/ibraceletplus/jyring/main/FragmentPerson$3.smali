.class Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$3;
.super Landroid/content/BroadcastReceiver;
.source "FragmentPerson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "jringACTION_NOTIFY_DEVICE_FIRMWARE_VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 309
    :cond_0
    const-string/jumbo p1, "version"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    const-string p1, "cid"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    const-string v0, "did"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 312
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson$3;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-static {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->access$100(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
