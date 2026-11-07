.class Lcom/jaga/ibraceletplus/jyring/ota/Callback$1;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/Callback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/Callback;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/Callback;

    const-string v1, "le device discoverServices"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/ota/Callback;->saveLog(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/Callback$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method
