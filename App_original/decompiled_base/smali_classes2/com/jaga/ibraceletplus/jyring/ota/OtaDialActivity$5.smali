.class Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$5;
.super Ljava/lang/Object;
.source "OtaDialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 386
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130565

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/OtaDialActivity;Landroid/content/Intent;Z)V

    return-void
.end method
