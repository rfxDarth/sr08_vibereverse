.class public Lno/nordicsemi/android/error/GattError;
.super Ljava/lang/Object;
.source "GattError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x101

    if-eq p0, v0, :cond_6

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    and-int/lit16 v0, p0, 0x2000

    if-lez v0, :cond_5

    and-int/lit16 v0, p0, -0x2001

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    const-string p0, "REMOTE DFU OPERATION FAILED"

    return-object p0

    .line 182
    :cond_1
    const-string p0, "REMOTE DFU INVALID CRC ERROR"

    return-object p0

    .line 180
    :cond_2
    const-string p0, "REMOTE DFU DATA SIZE EXCEEDS LIMIT"

    return-object p0

    .line 178
    :cond_3
    const-string p0, "REMOTE DFU NOT SUPPORTED"

    return-object p0

    .line 176
    :cond_4
    const-string p0, "REMOTE DFU INVALID STATE"

    return-object p0

    .line 187
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :pswitch_0
    const-string p0, "DFU FILE NOT WORD ALIGNED"

    return-object p0

    .line 171
    :pswitch_1
    const-string p0, "INIT PACKET REQUIRED"

    return-object p0

    .line 169
    :pswitch_2
    const-string p0, "BLUETOOTH ADAPTER DISABLED"

    return-object p0

    .line 167
    :pswitch_3
    const-string p0, "DFU FILE TYPE NOT SUPPORTED"

    return-object p0

    .line 165
    :pswitch_4
    const-string p0, "DFU CHARACTERISTICS NOT FOUND"

    return-object p0

    .line 163
    :pswitch_5
    const-string p0, "DFU SERVICE NOT FOUND"

    return-object p0

    .line 161
    :pswitch_6
    const-string p0, "DFU SERVICE DISCOVERY NOT STARTED"

    return-object p0

    .line 157
    :pswitch_7
    const-string p0, "DFU IO EXCEPTION"

    return-object p0

    .line 153
    :pswitch_8
    const-string p0, "DFU NOT A VALID HEX FILE"

    return-object p0

    .line 151
    :pswitch_9
    const-string p0, "DFU FILE ERROR"

    return-object p0

    .line 159
    :pswitch_a
    const-string p0, "DFU FILE NOT FOUND"

    return-object p0

    .line 149
    :pswitch_b
    const-string p0, "DFU DEVICE DISCONNECTED"

    return-object p0

    .line 145
    :pswitch_c
    const-string p0, "GATT VALUE OUT OF RANGE"

    return-object p0

    .line 143
    :pswitch_d
    const-string p0, "GATT PROCEDURE IN PROGRESS"

    return-object p0

    .line 141
    :pswitch_e
    const-string p0, "GATT CCCD CFG ERROR"

    return-object p0

    .line 139
    :pswitch_f
    const-string p0, "GATT CONGESTED"

    return-object p0

    .line 137
    :pswitch_10
    const-string p0, "GATT NOT ENCRYPTED"

    return-object p0

    .line 135
    :pswitch_11
    const-string p0, "GATT ENCRYPTED NO MITM"

    return-object p0

    .line 133
    :pswitch_12
    const-string p0, "GATT SERVICE STARTED"

    return-object p0

    .line 131
    :pswitch_13
    const-string p0, "GATT INVALID CFG"

    return-object p0

    .line 129
    :pswitch_14
    const-string p0, "GATT MORE"

    return-object p0

    .line 127
    :pswitch_15
    const-string p0, "GATT AUTH FAIL"

    return-object p0

    .line 125
    :pswitch_16
    const-string p0, "GATT PENDING"

    return-object p0

    .line 109
    :pswitch_17
    const-string p0, "GATT ILLEGAL PARAMETER"

    return-object p0

    .line 123
    :pswitch_18
    const-string p0, "GATT CMD STARTED"

    return-object p0

    .line 121
    :pswitch_19
    const-string p0, "GATT ERROR"

    return-object p0

    .line 119
    :pswitch_1a
    const-string p0, "GATT BUSY"

    return-object p0

    .line 117
    :pswitch_1b
    const-string p0, "GATT DB FULL"

    return-object p0

    .line 115
    :pswitch_1c
    const-string p0, "GATT WRONG STATE"

    return-object p0

    .line 113
    :pswitch_1d
    const-string p0, "GATT INTERNAL ERROR"

    return-object p0

    .line 111
    :pswitch_1e
    const-string p0, "GATT NO RESOURCES"

    return-object p0

    .line 107
    :pswitch_1f
    const-string p0, "GATT INSUF RESOURCE"

    return-object p0

    .line 105
    :pswitch_20
    const-string p0, "GATT UNSUPPORT GRP TYPE"

    return-object p0

    .line 103
    :pswitch_21
    const-string p0, "GATT INSUF ENCRYPTION"

    return-object p0

    .line 101
    :pswitch_22
    const-string p0, "GATT ERR UNLIKELY"

    return-object p0

    .line 99
    :pswitch_23
    const-string p0, "GATT INVALID ATTR LEN"

    return-object p0

    .line 97
    :pswitch_24
    const-string p0, "GATT INSUF KEY SIZE"

    return-object p0

    .line 95
    :pswitch_25
    const-string p0, "GATT NOT LONG"

    return-object p0

    .line 93
    :pswitch_26
    const-string p0, "GATT NOT FOUND"

    return-object p0

    .line 91
    :pswitch_27
    const-string p0, "GATT PREPARE Q FULL"

    return-object p0

    .line 89
    :pswitch_28
    const-string p0, "GATT INSUF AUTHORIZATION"

    return-object p0

    .line 87
    :pswitch_29
    const-string p0, "GATT INVALID OFFSET"

    return-object p0

    .line 85
    :pswitch_2a
    const-string p0, "GATT REQ NOT SUPPORTED"

    return-object p0

    .line 83
    :pswitch_2b
    const-string p0, "GATT INSUF AUTHENTICATION"

    return-object p0

    .line 81
    :pswitch_2c
    const-string p0, "GATT INVALID PDU"

    return-object p0

    .line 79
    :pswitch_2d
    const-string p0, "GATT WRITE NOT PERMIT"

    return-object p0

    .line 77
    :pswitch_2e
    const-string p0, "GATT READ NOT PERMIT"

    return-object p0

    .line 75
    :pswitch_2f
    const-string p0, "GATT INVALID HANDLE"

    return-object p0

    .line 147
    :cond_6
    const-string p0, "TOO MANY OPEN CONNECTIONS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfd
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1000
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1009
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseConnectionError(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x13

    if-eq p0, v0, :cond_5

    const/16 v0, 0x16

    if-eq p0, v0, :cond_4

    const/16 v0, 0x22

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x85

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    const-string p0, "GATT CONN CANCEL "

    return-object p0

    .line 60
    :cond_1
    const-string p0, "GATT ERROR"

    return-object p0

    .line 54
    :cond_2
    const-string p0, "GATT CONN FAIL ESTABLISH"

    return-object p0

    .line 56
    :cond_3
    const-string p0, "GATT CONN LMP TIMEOUT"

    return-object p0

    .line 52
    :cond_4
    const-string p0, "GATT CONN TERMINATE LOCAL HOST"

    return-object p0

    .line 50
    :cond_5
    const-string p0, "GATT CONN TERMINATE PEER USER"

    return-object p0

    .line 48
    :cond_6
    const-string p0, "GATT CONN TIMEOUT"

    return-object p0

    .line 46
    :cond_7
    const-string p0, "GATT CONN L2C FAILURE"

    return-object p0

    .line 44
    :cond_8
    const-string p0, "SUCCESS"

    return-object p0
.end method
