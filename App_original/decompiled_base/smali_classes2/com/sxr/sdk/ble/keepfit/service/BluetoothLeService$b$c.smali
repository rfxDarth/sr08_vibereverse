.class Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;
.super Ljava/lang/Object;
.source "BluetoothLeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;->d:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;->b:Ljava/lang/String;

    iput p4, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;->d:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b;->a:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;->b:Ljava/lang/String;

    iget v3, p0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService$b$c;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->a(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
