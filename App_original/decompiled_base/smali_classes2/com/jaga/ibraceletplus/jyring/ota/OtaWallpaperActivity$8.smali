.class Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;
.super Ljava/lang/Object;
.source "OtaWallpaperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->startDeviceScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scan device timeout, stop device scan now."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$900(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)V

    .line 766
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f13056b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 767
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 769
    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$8;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method
