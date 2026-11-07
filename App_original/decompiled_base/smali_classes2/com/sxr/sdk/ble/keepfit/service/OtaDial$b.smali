.class Lcom/sxr/sdk/ble/keepfit/service/OtaDial$b;
.super Lcom/sxr/sdk/ble/keepfit/service/ota/d;
.source "OtaDial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/sxr/sdk/ble/keepfit/service/OtaDial;


# direct methods
.method constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/OtaDial;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/sxr/sdk/ble/keepfit/service/ota/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$b;->g:Lcom/sxr/sdk/ble/keepfit/service/OtaDial;

    invoke-direct {p0, p2, p3, p4}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/sxr/sdk/ble/keepfit/service/ota/b;)V

    return-void
.end method


# virtual methods
.method protected varargs onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$b;->onProgressUpdate([Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method
