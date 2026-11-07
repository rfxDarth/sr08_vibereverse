.class public Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;
.super Ljava/lang/Object;
.source "SampleGattAttributes.java"


# static fields
.field public static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

.field public static HEART_RATE_MEASUREMENT:Ljava/lang/String;

.field public static HJT_IBRACELETPLUS_RX:Ljava/lang/String;

.field public static HJT_IBRACELETPLUS_SERVICE:Ljava/lang/String;

.field public static HJT_IBRACELETPLUS_SERVICE_TX2:Ljava/lang/String;

.field public static HJT_IBRACELETPLUS_TX:Ljava/lang/String;

.field public static HJT_IBRACELETPLUS_TX2:Ljava/lang/String;

.field public static RAW_DATA_RX:Ljava/lang/String;

.field public static RAW_DATA_TX:Ljava/lang/String;

.field public static attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    .line 2
    const-string v1, "00002a37-0000-1000-8000-00805f9b34fb"

    sput-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    .line 3
    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 4
    const-string v1, "000056ff-0000-1000-8000-00805f9b34fb"

    sput-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_SERVICE:Ljava/lang/String;

    .line 5
    const-string v2, "000033f4-0000-1000-8000-00805f9b34fb"

    sput-object v2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_RX:Ljava/lang/String;

    .line 6
    const-string v2, "000033f3-0000-1000-8000-00805f9b34fb"

    sput-object v2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_TX:Ljava/lang/String;

    .line 7
    const-string v2, "000033f6-0000-1000-8000-00805f9b34fb"

    sput-object v2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_RX:Ljava/lang/String;

    .line 8
    const-string v2, "000033f5-0000-1000-8000-00805f9b34fb"

    sput-object v2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_TX:Ljava/lang/String;

    .line 12
    const-string v2, "0000ffe5-0000-1000-8000-00805f9b34fb"

    sput-object v2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_SERVICE_TX2:Ljava/lang/String;

    .line 13
    const-string v2, "0000ffe9-0000-1000-8000-00805f9b34fb"

    sput-object v2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_TX2:Ljava/lang/String;

    .line 17
    const-string v2, "0000180d-0000-1000-8000-00805f9b34fb"

    const-string v3, "Heart Rate Service"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v2, "0000180a-0000-1000-8000-00805f9b34fb"

    const-string v3, "Device Information Service"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HEART_RATE_MEASUREMENT:Ljava/lang/String;

    const-string v3, "Heart Rate Measurement"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v2, "00002a29-0000-1000-8000-00805f9b34fb"

    const-string v3, "Manufacturer Name String"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v2, "HJT ISSC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_RX:Ljava/lang/String;

    const-string v3, "Receiver"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->HJT_IBRACELETPLUS_TX:Ljava/lang/String;

    const-string v4, "Transport"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    const-string v1, "000057ff-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_RX:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->RAW_DATA_TX:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/service/bean/SampleGattAttributes;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method
