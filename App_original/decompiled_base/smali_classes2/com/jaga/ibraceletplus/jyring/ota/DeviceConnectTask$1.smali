.class Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;
.super Ljava/lang/Object;
.source "DeviceConnectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;)Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    const-string v2, "gatt connect SDK_INT < 23"

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->saveLog(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->access$100(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    iget-object v1, v1, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->access$000(Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;)Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/BaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    const-string v2, "gatt connect SDK_INT >= 23"

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->saveLog(Ljava/lang/String;)V

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;

    const-string v2, "gatt connect"

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/ota/DeviceConnectTask;->saveLog(Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->setGatt(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
