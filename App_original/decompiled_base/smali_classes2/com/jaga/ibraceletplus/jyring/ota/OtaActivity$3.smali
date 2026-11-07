.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$3;
.super Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;
.source "OtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->startOtaService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/jaga/ibraceletplus/jyring/ota/BluetoothManager;)V

    return-void
.end method


# virtual methods
.method protected varargs onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->setGatt(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 225
    check-cast p1, [Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$3;->onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
