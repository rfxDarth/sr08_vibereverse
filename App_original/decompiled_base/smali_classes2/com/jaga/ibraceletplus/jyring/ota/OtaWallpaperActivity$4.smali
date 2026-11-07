.class Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$4;
.super Ljava/lang/Object;
.source "OtaWallpaperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;
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

    .line 508
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "jringACTION_NOTIFY_SERVER_FIRMWARE_DOWNLOAD_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    return-void
.end method
