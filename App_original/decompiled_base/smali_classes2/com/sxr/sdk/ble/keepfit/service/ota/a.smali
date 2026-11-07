.class public Lcom/sxr/sdk/ble/keepfit/service/ota/a;
.super Ljava/lang/Object;
.source "BluetoothGattSingleton.java"


# static fields
.field private static a:Landroid/bluetooth/BluetoothGatt;

.field private static b:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public static a(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    if-eq p0, v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 4
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 6
    :cond_0
    sput-object p0, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->a:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 7
    sput-object p0, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method

.method public static b()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/ota/a;->b:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method
