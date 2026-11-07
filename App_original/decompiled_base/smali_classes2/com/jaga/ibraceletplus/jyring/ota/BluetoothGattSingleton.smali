.class public Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;
.super Ljava/lang/Object;
.source "BluetoothGattSingleton.java"


# static fields
.field private static gatt:Landroid/bluetooth/BluetoothGatt;

.field private static spotaMemInfoCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 11
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public static getSpotaMemInfoCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .line 24
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->spotaMemInfoCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public static setGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    .line 16
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    if-eq p0, v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 18
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 20
    :cond_0
    sput-object p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->gatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public static setSpotaMemInfoCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/jaga/ibraceletplus/jyring/ota/BluetoothGattSingleton;->spotaMemInfoCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method
