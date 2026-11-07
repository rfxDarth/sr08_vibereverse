.class Lno/nordicsemi/android/dfu/DfuBaseService$4;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "DfuBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/dfu/DfuBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/DfuBaseService;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    .line 729
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 7

    .line 1035
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 1036
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1038
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 1042
    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    .line 1050
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 1044
    :cond_2
    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    mul-int/lit8 v5, v2, 0x3

    .line 1045
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$40()[C

    move-result-object v6

    ushr-int/lit8 v4, v4, 0x4

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v4, v5, 0x1

    .line 1046
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$40()[C

    move-result-object v6

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v6, v3

    aput-char v3, v0, v4

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_3

    add-int/lit8 v5, v5, 0x2

    const/16 v3, 0x2d

    .line 1048
    aput-char v3, v0, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 978
    invoke-virtual {p2, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v0, :cond_2

    .line 1016
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$27(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x2

    .line 1018
    invoke-virtual {p2, v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_1

    .line 1020
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$39(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    .line 1022
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notification received from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value (0x): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 1023
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$36(Lno/nordicsemi/android/dfu/DfuBaseService;[B)V

    goto/16 :goto_1

    .line 982
    :cond_2
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$37()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$15()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 985
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v4, 0x14

    invoke-virtual {p2, v4, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v2, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$38(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 986
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$21(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 988
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$24(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    .line 991
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$25(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$26(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$27(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$28(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 996
    :cond_3
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$29(Lno/nordicsemi/android/dfu/DfuBaseService;)[B

    move-result-object p2

    .line 997
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$30(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 998
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v2, p1, v0, p2, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$31(Lno/nordicsemi/android/dfu/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 999
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$32(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    return-void

    .line 992
    :cond_4
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p2, "Upload terminated"

    const/16 v0, 0xf

    invoke-static {p1, v0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V
    :try_end_0
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1005
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v0, "Error while reading the input stream"

    invoke-static {p2, v0, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$33(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1006
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 p2, 0x1004

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    goto :goto_1

    .line 1002
    :catch_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p2, "Invalid HEX file"

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 1003
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 p2, 0x1003

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 1028
    :goto_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1029
    :try_start_1
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1028
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    if-nez p3, :cond_0

    .line 962
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Read Response received from "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", value (0x): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x5

    invoke-static {p1, v0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 963
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$36(Lno/nordicsemi/android/dfu/DfuBaseService;[B)V

    .line 964
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$6(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    goto :goto_0

    .line 966
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Characteristic read error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 967
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 p2, p3, 0x4000

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 971
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 972
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 971
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    const/4 v0, 0x1

    if-nez p3, :cond_8

    .line 883
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$15()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x5

    if-eqz p3, :cond_7

    .line 884
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$16(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$17(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 886
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$18(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {p3, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$19(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 887
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$20(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p3, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$21(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 891
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$22(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result p3

    const/4 v1, 0x0

    if-lez p3, :cond_0

    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$20(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result p3

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$22(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v2

    if-ne p3, v2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 892
    :goto_0
    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$18(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v2

    iget-object v3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$23(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez p3, :cond_a

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 899
    :cond_2
    :try_start_0
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$24(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    .line 902
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$25(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$26(Lno/nordicsemi/android/dfu/DfuBaseService;)I

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$27(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$28(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 911
    :cond_3
    iget-object p3, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$29(Lno/nordicsemi/android/dfu/DfuBaseService;)[B

    move-result-object p3

    .line 912
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$30(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 913
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v1, p1, p2, p3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$31(Lno/nordicsemi/android/dfu/DfuBaseService;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    .line 914
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$32(Lno/nordicsemi/android/dfu/DfuBaseService;)V

    return-void

    .line 904
    :cond_4
    :goto_2
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :try_start_1
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p3, "Upload terminated"

    const/16 v0, 0xf

    invoke-static {p2, v0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 906
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 907
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 904
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Lno/nordicsemi/android/dfu/internal/exception/HexFileValidationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 920
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p3, "Error while reading the input stream"

    invoke-static {p2, p3, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$33(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 921
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 p2, 0x1004

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    goto/16 :goto_3

    .line 917
    :catch_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p2, "Invalid HEX file"

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 918
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 p2, 0x1003

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    goto/16 :goto_3

    .line 923
    :cond_5
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$16(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 925
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Data written to "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", value (0x): "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 926
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$34(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    goto/16 :goto_3

    .line 929
    :cond_6
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Data written to "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", value (0x): "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 930
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$35(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    goto :goto_3

    .line 934
    :cond_7
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Data written to "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", value (0x): "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService$4;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 935
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$6(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    goto :goto_3

    .line 942
    :cond_8
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$28(Lno/nordicsemi/android/dfu/DfuBaseService;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 943
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$6(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    goto :goto_3

    .line 945
    :cond_9
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Characteristic write error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 946
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 p2, p3, 0x4000

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 951
    :goto_3
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 952
    :try_start_3
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 951
    monitor-exit p1

    :cond_a
    :goto_4
    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_3

    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 735
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p3, "Connected to GATT server"

    invoke-static {p2, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 736
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p3, -0x2

    invoke-static {p2, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 750
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 p3, 0xc

    if-ne p2, p3, :cond_0

    .line 752
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :try_start_1
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p3, "Waiting 1600 ms for a possible Service Changed indication..."

    invoke-static {p2, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$7(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 754
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string/jumbo p3, "wait(1600)"

    invoke-static {p2, v0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    const-wide/16 p2, 0x640

    .line 755
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 752
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    .line 768
    :cond_0
    :goto_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p3, "gatt.discoverServices()"

    invoke-static {p2, v0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    .line 769
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    .line 770
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    if-eqz p1, :cond_1

    const-string p3, "succeed"

    goto :goto_1

    :cond_1
    const-string p3, "failed"

    :goto_1
    const-string v0, "Attempting to start service discovery... "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    if-nez p1, :cond_6

    .line 773
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 p2, 0x1005

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    goto :goto_2

    :cond_2
    if-nez p3, :cond_5

    .line 779
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p2, "Disconnected from GATT server"

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 780
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$4(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    .line 781
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    goto :goto_2

    .line 784
    :cond_3
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection state change error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    if-nez p3, :cond_4

    .line 786
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 787
    :cond_4
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$4(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    .line 788
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const p3, 0x8000

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 792
    :cond_5
    :goto_2
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 793
    :try_start_3
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 792
    monitor-exit p1

    :cond_6
    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    if-nez p3, :cond_1

    .line 830
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$11()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 831
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$12()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 833
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p2

    const/4 p3, 0x0

    aget-byte p2, p2, p3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p1, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$13(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    .line 834
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$6(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    goto :goto_0

    .line 838
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Descriptor read error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 839
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 p2, p3, 0x4000

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 843
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 844
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 843
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    if-nez p3, :cond_3

    .line 851
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$11()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 852
    invoke-static {}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$12()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 854
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p2

    aget-byte p2, p2, v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$13(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    goto :goto_2

    .line 857
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p2

    aget-byte p2, p2, v0

    if-ne p2, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    invoke-static {p1, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$14(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    goto :goto_2

    .line 861
    :cond_3
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Descriptor write error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 862
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 p2, p3, 0x4000

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 866
    :cond_4
    :goto_2
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 867
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 866
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 800
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p2, "Services discovered"

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$1(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 801
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p2, -0x3

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$2(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    goto :goto_0

    .line 803
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service discovery error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$10(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 804
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 p2, p2, 0x4000

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$9(Lno/nordicsemi/android/dfu/DfuBaseService;I)V

    .line 811
    :goto_0
    monitor-enter p0

    .line 813
    :try_start_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string/jumbo p2, "wait(1000)"

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$8(Lno/nordicsemi/android/dfu/DfuBaseService;ILjava/lang/String;)V

    const-wide/16 p1, 0x3e8

    .line 814
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 811
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 823
    :try_start_2
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$4;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 822
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    .line 811
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
