.class Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$1;
.super Ljava/lang/Object;
.source "OtaWallpaperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->bleDeviceItem:Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-virtual {v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$402(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 579
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->access$400(Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Landroid/content/Intent;

    const-string v1, "jringACTION_NOTIFY_SERVER_FIRMWARE_UPGRADE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5$1;->this$1:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity$5;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaWallpaperActivity;->sendBroadcastWithPackage(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
