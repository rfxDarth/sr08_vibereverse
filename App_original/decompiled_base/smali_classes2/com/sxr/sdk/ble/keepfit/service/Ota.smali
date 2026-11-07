.class public Lcom/sxr/sdk/ble/keepfit/service/Ota;
.super Ljava/lang/Object;
.source "Ota.java"


# static fields
.field public static l:I = 0x1

.field public static m:I = 0x2

.field public static n:I = 0x3

.field public static o:I = 0x4

.field public static p:I = 0x5

.field public static q:I = 0x0

.field public static r:I = 0x32

.field public static s:I = 0x64

.field public static t:I = 0x65

.field public static u:I = 0x1

.field public static v:I = 0x2

.field public static w:I = 0x3


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

.field private c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

.field private d:Ljava/lang/String;

.field private e:I

.field protected f:Z

.field protected g:Z

.field protected h:Landroid/bluetooth/BluetoothDevice;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    .line 7
    const-string v1, ""

    iput-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    .line 8
    sget v2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->u:I

    iput v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->e:I

    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    .line 18
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->g:Z

    .line 24
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->h:Landroid/bluetooth/BluetoothDevice;

    .line 25
    iput-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->i:Ljava/lang/String;

    .line 147
    iput-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->j:Z

    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->k:Landroid/os/Handler;

    .line 229
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 192
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->h:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/Ota;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/Ota;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "-"

    const-string v4, "lAddr "

    .line 45
    :try_start_0
    const-string/jumbo v5, "updateInfo"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 47
    const-string/jumbo v6, "updateMode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    iget-boolean v7, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->g:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_3

    const-string v7, "individual"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x10

    .line 50
    invoke-static {v2, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 51
    iget-object v7, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "macList"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 54
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_2

    .line 55
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 56
    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 57
    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v9

    .line 58
    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v8

    .line 59
    invoke-static {v14, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    .line 60
    invoke-static {v13, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    .line 61
    iget-object v13, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "lStart "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lEnd "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v3, v14, v10

    if-gtz v3, :cond_1

    cmp-long v3, v10, v8

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_0
    move-object/from16 v16, v3

    .line 66
    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    const/4 v12, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    const/16 v6, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    if-nez v12, :cond_3

    .line 71
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaInfo(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_3
    const-string/jumbo v2, "versionCode"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    const/16 v3, 0x9

    .line 80
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 81
    :goto_2
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "versionFw "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    if-eqz v3, :cond_6

    move/from16 v4, p3

    if-le v2, v4, :cond_5

    .line 85
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v5, v2, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaInfo(ZLjava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-boolean v2, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    .line 87
    invoke-direct {v1, v0, v4}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lorg/json/JSONObject;Z)V

    return-void

    .line 89
    :cond_5
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaInfo(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_6
    iget-object v0, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    const-string/jumbo v2, "service or callback is null."

    invoke-virtual {v1, v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .locals 5

    const-string v0, "fwUrl "

    .line 99
    :try_start_0
    const-string/jumbo v1, "updateInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 101
    const-string v1, "fwUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "md5"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v2, v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v3, Lcom/sxr/sdk/ble/keepfit/service/Ota;->l:I

    sget v4, Lcom/sxr/sdk/ble/keepfit/service/Ota;->q:I

    invoke-interface {v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    .line 109
    :cond_0
    iget-boolean v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->j:Z

    if-eqz v2, :cond_1

    .line 110
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    if-eqz p1, :cond_4

    .line 111
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget p2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->l:I

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->r:I

    invoke-interface {p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    return-void

    .line 115
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_3

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 118
    invoke-static {v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 120
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    if-eqz p1, :cond_4

    .line 121
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget p2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->l:I

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->t:I

    invoke-interface {p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    return-void

    .line 125
    :cond_2
    iget-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    if-eqz p1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    const-string p2, "getOtaFile call startOta"

    invoke-virtual {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->e:I

    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->h:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 128
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget p2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->l:I

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->s:I

    invoke-interface {p1, p2, v0}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    return-void

    .line 133
    :cond_3
    new-instance p2, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;

    invoke-direct {p2, p0, p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota$b;-><init>(Lcom/sxr/sdk/ble/keepfit/service/Ota;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/h;->a(Ljava/lang/String;Lcom/sxr/sdk/ble/keepfit/service/utils/h$d;)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->j:Z

    .line 167
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/Ota;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->j:Z

    return p1
.end method

.method public static a(Landroid/graphics/Bitmap;)[B
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 198
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    return-object p0
.end method

.method static synthetic c(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/sxr/sdk/ble/keepfit/service/Ota;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->e:I

    return p0
.end method

.method static synthetic f(Lcom/sxr/sdk/ble/keepfit/service/Ota;)Lcom/sxr/sdk/ble/keepfit/service/ota/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIIIII)Ljava/lang/String;
    .locals 18

    move/from16 v6, p6

    move/from16 v7, p7

    const-string/jumbo v0, "translateBmpToBin:"

    const-string v1, "fileName: "

    const-string/jumbo v2, "watchReviewHeight: "

    const-string/jumbo v3, "watchReviewWidth: "

    const-string/jumbo v4, "watchUnitWidth: "

    const-string/jumbo v5, "watchHeight: "

    const-string/jumbo v8, "watchWidth: "

    const-string/jumbo v9, "watchShapeType: "

    const-string/jumbo v10, "watchColorType: "

    const-string v11, "imgFilename: "

    .line 205
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, p1

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct/range {p0 .. p1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 208
    invoke-static {v11}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    mul-int v12, v6, v7

    mul-int/lit8 v12, v12, 0x8

    .line 209
    new-array v12, v12, [B

    .line 211
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v10, p4

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v9, p5

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p8

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v8, p9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p10

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v10

    move v10, v4

    move v4, v3

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, v0

    move-object v0, v1

    move v5, v9

    move-object v3, v12

    move-object/from16 v1, p0

    move/from16 v12, p12

    move v9, v2

    move-object v2, v11

    move/from16 v11, p11

    .line 219
    :try_start_1
    invoke-virtual/range {v1 .. v16}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->wallpapergendataFromJNI([B[BIIIIIIIIIIIII)I

    move-result v2

    .line 221
    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 222
    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-static {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v17

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    :cond_0
    invoke-virtual {v1, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_0
    move-object/from16 v1, p0

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    const-string/jumbo v1, "startOta"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->e:I

    .line 178
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->h:Landroid/bluetooth/BluetoothDevice;

    .line 180
    new-instance p2, Lcom/sxr/sdk/ble/keepfit/service/ota/g;

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    .line 181
    invoke-virtual {p2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->q()V

    .line 182
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a()V

    .line 183
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 185
    sget p2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->w:I

    if-ne p1, p2, :cond_0

    .line 186
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(I)I

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(I)I

    .line 191
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sxr/sdk/ble/keepfit/service/Ota$c;

    invoke-direct {p2, p0}, Lcom/sxr/sdk/ble/keepfit/service/Ota$c;-><init>(Lcom/sxr/sdk/ble/keepfit/service/Ota;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->h:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const-string/jumbo v0, "time "

    const-string v1, "OTA_TIME"

    .line 6
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->i:Ljava/lang/String;

    .line 8
    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->T:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-object v2, v3

    .line 15
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sxr/sdk/ble/keepfit/service/b;->R:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OTA_JSON"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    const-string/jumbo v3, "{}"

    invoke-static {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 20
    iget-object v5, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sxr/sdk/ble/keepfit/service/utils/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 28
    const-string/jumbo v1, "updateInfo"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "expire"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 29
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " expire "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x36ee80

    mul-long v6, v6, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 32
    invoke-direct {p0, v3, p1, p3}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "en"

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "http://download.keeprapid.com/apps/smartband/keepfit/fwupdater/%s/%s/update.json"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 42
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "compareOta url "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;

    invoke-direct {v0, p0, v2, p1, p3}, Lcom/sxr/sdk/ble/keepfit/service/Ota$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/Ota;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/utils/h;->a(Ljava/lang/String;Lcom/sxr/sdk/ble/keepfit/service/utils/h$e;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 203
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 204
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    const-string v1, "onOtaSuccess"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->e:I

    sget v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->u:I

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->t()V

    :cond_0
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->h:Landroid/bluetooth/BluetoothDevice;

    .line 38
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->b()V

    .line 39
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->q()V

    return-void
.end method

.method protected b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const-string/jumbo v0, "startOta2 onGetOtaUpdate : "

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    const-string/jumbo v3, "startOta2 ..."

    invoke-virtual {p0, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v2, v2, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v3, Lcom/sxr/sdk/ble/keepfit/service/Ota;->n:I

    sget v4, Lcom/sxr/sdk/ble/keepfit/service/Ota;->s:I

    invoke-interface {v2, v3, v4}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    .line 5
    new-instance v2, Lcom/sxr/sdk/ble/keepfit/service/ota/g;

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/g;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v2, p1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 8
    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a(Ljava/lang/String;)Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Lcom/sxr/sdk/ble/keepfit/service/ota/e;)V

    const/4 v3, 0x3

    .line 9
    invoke-virtual {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->j(I)V

    .line 10
    const-string v4, "240"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->e(I)V

    .line 12
    invoke-virtual {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->d(I)V

    const/4 v3, 0x5

    .line 13
    invoke-virtual {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->h(I)V

    const/4 v3, 0x6

    .line 14
    invoke-virtual {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->i(I)V

    .line 15
    invoke-virtual {v2, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->l(I)V

    .line 17
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 18
    new-instance v3, Lcom/sxr/sdk/ble/keepfit/service/ota/d;

    iget-object v4, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {v3, v4, p1, v2}, Lcom/sxr/sdk/ble/keepfit/service/ota/d;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/sxr/sdk/ble/keepfit/service/ota/b;)V

    .line 19
    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v3, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object p1, p1, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->o:I

    sget v3, Lcom/sxr/sdk/ble/keepfit/service/Ota;->q:I

    invoke-interface {p1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    .line 22
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->o:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->q:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :goto_0
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->f:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    const-string/jumbo v1, "startOtaService"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/Ota$d;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->h:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/Ota$d;-><init>(Lcom/sxr/sdk/ble/keepfit/service/Ota;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/sxr/sdk/ble/keepfit/service/ota/b;)V

    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 11
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->o:I

    sget v2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->q:I

    invoke-interface {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a:Ljava/lang/String;

    const-string/jumbo v1, "startUpdate"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/Ota;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v1, Lcom/sxr/sdk/ble/keepfit/service/Ota;->n:I

    sget v2, Lcom/sxr/sdk/ble/keepfit/service/Ota;->s:I

    invoke-interface {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a(Ljava/lang/String;)Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Lcom/sxr/sdk/ble/keepfit/service/ota/e;)V

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->j(I)V

    .line 7
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const-string v2, "240"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->e(I)V

    .line 9
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->d(I)V

    .line 10
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->h(I)V

    .line 11
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->i(I)V

    .line 12
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->l(I)V

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string/jumbo v1, "step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/Ota;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method

.method public native wallpaperGetTimePositionFromJNI([I[I[I[I[I[I[I[I[I[I[I[IIIIIII)I
.end method

.method public native wallpapergendataFromJNI([B[BIIIIIIIIIIIII)I
.end method
