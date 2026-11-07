.class public Lcom/jaga/ibraceletplus/jyring/ota/Statics;
.super Ljava/lang/Object;
.source "Statics.java"


# static fields
.field public static final BLUETOOTH_GATT_UPDATE:Ljava/lang/String; = "jringBluetoothGattUpdate"

.field public static final CLIENT_CONFIG_DESCRIPTOR:Ljava/util/UUID;

.field public static final CONNECTION_STATE_UPDATE:Ljava/lang/String; = "jringConnectionState"

.field public static final DEFAULT_BLOCK_SIZE_VALUE:Ljava/lang/String; = "240"

.field public static final DEFAULT_CS_VALUE:I = 0x3

.field public static final DEFAULT_FILE_CHUNK_SIZE:I = 0x14

.field public static final DEFAULT_I2C_DEVICE_ADDRESS:Ljava/lang/String; = "0x50"

.field public static final DEFAULT_MEMORY_BANK:I = 0x0

.field public static final DEFAULT_MEMORY_TYPE:I = 0x3

.field public static final DEFAULT_MISO_VALUE:I = 0x5

.field public static final DEFAULT_MOSI_VALUE:I = 0x6

.field public static final DEFAULT_MTU:I = 0x17

.field public static final DEFAULT_SCK_VALUE:I = 0x0

.field public static final DEFAULT_SCL_GPIO_VALUE:I = 0x2

.field public static final DEFAULT_SDA_GPIO_VALUE:I = 0x3

.field public static final ERROR_COMMUNICATION:I = 0xffff

.field public static final ERROR_SUOTA_NOT_FOUND:I = 0xfffe

.field public static final MEMORY_TYPE_I2C:I = 0x4

.field public static final MEMORY_TYPE_RETENTION_RAM:I = 0x2

.field public static final MEMORY_TYPE_SPI:I = 0x3

.field public static final MEMORY_TYPE_SPOTA_INDEX:I = 0x65

.field public static final MEMORY_TYPE_SUOTA_INDEX:I = 0x64

.field public static final MEMORY_TYPE_SYSTEM_RAM:I = 0x1

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_HARDWARE_REVISION_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_IEEE_11073:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_PNP_ID:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_SERIAL_NUMBER_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_CHARACTERISTIC_SYSTEM_ID:Ljava/util/UUID;

.field public static final ORG_BLUETOOTH_SERVICE_DEVICE_INFORMATION:Ljava/util/UUID;

.field public static final PROGRESS_UPDATE:Ljava/lang/String; = "jringProgressUpdate"

.field public static final SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

.field public static final SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

.field public static final SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

.field public static final SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

.field public static final SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

.field public static final SPOTA_SERVICE_UUID:Ljava/util/UUID;

.field public static final SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

.field public static final SUOTA_L2CAP_PSM_UUID:Ljava/util/UUID;

.field public static final SUOTA_MTU_UUID:Ljava/util/UUID;

.field public static final SUOTA_PATCH_DATA_CHAR_SIZE_UUID:Ljava/util/UUID;

.field public static SUOTA_VERSION_1_1:I = 0xb

.field public static SUOTA_VERSION_1_2:I = 0xc

.field public static SUOTA_VERSION_1_3:I = 0xd

.field public static final SUOTA_VERSION_UUID:Ljava/util/UUID;

.field private static final gpioStringPattern:Ljava/util/regex/Pattern;

.field private static prevInputPrefKeyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "0000fef5-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    .line 30
    const-string v0, "8082caa8-41a6-4021-91c6-56f9b954cc34"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 31
    const-string v0, "724249f0-5eC3-4b5f-8804-42345af08651"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    .line 32
    const-string v0, "6c53db25-47a1-45fe-a022-7c92fb334fd4"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    .line 33
    const-string v0, "9d84b9a3-000c-49d8-9183-855b673fda31"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    .line 34
    const-string v0, "457871e8-d516-4ca1-9116-57d0b17b9cb2"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    .line 35
    const-string v0, "5f78df94-798c-46f5-990a-b3eb6a065c88"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    .line 37
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->CLIENT_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    .line 39
    const-string v0, "64B4E8B5-0DE5-401B-A21D-ACC8DB3B913A"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_VERSION_UUID:Ljava/util/UUID;

    .line 40
    const-string v0, "42C3DFDD-77BE-4D9C-8454-8F875267FB3B"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_PATCH_DATA_CHAR_SIZE_UUID:Ljava/util/UUID;

    .line 41
    const-string v0, "B7DE1EEA-823D-43BB-A3AF-C4903DFCE23C"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_MTU_UUID:Ljava/util/UUID;

    .line 42
    const-string v0, "61C8849C-F639-4765-946E-5C3419BEBB2A"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->SUOTA_L2CAP_PSM_UUID:Ljava/util/UUID;

    .line 44
    const-string v0, "0000180a-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_SERVICE_DEVICE_INFORMATION:Ljava/util/UUID;

    .line 45
    const-string v0, "00002A29-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    .line 46
    const-string v0, "00002A24-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

    .line 47
    const-string v0, "00002A25-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    .line 48
    const-string v0, "00002A27-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    .line 49
    const-string v0, "00002A26-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    .line 50
    const-string v0, "00002A28-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    .line 51
    const-string v0, "00002A23-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SYSTEM_ID:Ljava/util/UUID;

    .line 52
    const-string v0, "00002A2A-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_IEEE_11073:Ljava/util/UUID;

    .line 53
    const-string v0, "00002A50-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_PNP_ID:Ljava/util/UUID;

    .line 78
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics$1;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/ota/Statics$1;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->prevInputPrefKeyMap:Landroid/util/SparseArray;

    .line 94
    const-string v0, "P(\\d+)_(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->gpioStringPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileDirectoriesCreated(Landroid/content/Context;)Z
    .locals 2

    .line 116
    const-string/jumbo v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "fileDirectoriesCreated"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getPreviousInput(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 106
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->prevInputPrefKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gpioStringToInt(Ljava/lang/String;)I
    .locals 2

    .line 97
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->gpioStringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v0

    return p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid GPIO string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setFileDirectoriesCreated(Landroid/content/Context;)V
    .locals 2

    .line 120
    const-string/jumbo v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "fileDirectoriesCreated"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPreviousInput(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 111
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/ota/Statics;->prevInputPrefKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
