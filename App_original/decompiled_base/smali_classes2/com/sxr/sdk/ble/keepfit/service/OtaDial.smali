.class public Lcom/sxr/sdk/ble/keepfit/service/OtaDial;
.super Ljava/lang/Object;
.source "OtaDial.java"


# static fields
.field public static g:I = 0x1

.field public static h:I = 0x2

.field public static i:I = 0x3

.field public static j:I = 0x4

.field public static k:I = 0x5

.field public static l:I = 0x0

.field public static m:I = 0x32

.field public static n:I = 0x64

.field public static o:I = 0x65

.field private static p:I = 0x1

.field private static q:I = 0x2

.field private static r:I = 0x3


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

.field private c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

.field private d:Landroid/bluetooth/BluetoothDevice;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    .line 5
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->d:Landroid/bluetooth/BluetoothDevice;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->f:I

    .line 18
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 26
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/sxr/sdk/ble/keepfit/service/OtaDial;)Lcom/sxr/sdk/ble/keepfit/service/ota/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;)[B
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 32
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

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

    .line 39
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, p1

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct/range {p0 .. p1}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 42
    invoke-static {v11}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    mul-int v12, v6, v7

    mul-int/lit8 v12, v12, 0x8

    .line 43
    new-array v12, v12, [B

    .line 45
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v10, p4

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v9, p5

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p8

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v8, p9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
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

    .line 53
    :try_start_1
    invoke-virtual/range {v1 .. v16}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->wallpapergendataFromJNI([B[BIIIIIIIIIIIII)I

    move-result v2

    .line 55
    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 56
    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v2, v1, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-static {v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v17

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 66
    :cond_0
    invoke-virtual {v1, v2, v4}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_0
    move-object/from16 v1, p0

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a:Ljava/lang/String;

    const-string v1, "onOtaSuccess"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->f:I

    sget v1, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->p:I

    if-ne v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->t()V

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->d:Landroid/bluetooth/BluetoothDevice;

    .line 24
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->b()V

    .line 25
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->q()V

    return-void
.end method

.method protected a(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a:Ljava/lang/String;

    const-string/jumbo v1, "startOta"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->stringFromJNI()Ljava/lang/String;

    .line 4
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->f:I

    .line 5
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->e:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->d:Landroid/bluetooth/BluetoothDevice;

    .line 7
    new-instance p2, Lcom/sxr/sdk/ble/keepfit/service/ota/g;

    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    invoke-direct {p2, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    .line 8
    invoke-virtual {p2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->q()V

    .line 9
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a()V

    .line 10
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {p2, p3}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 12
    sget p2, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->r:I

    if-ne p1, p2, :cond_0

    .line 13
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(I)I

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->k(I)I

    .line 18
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$a;

    invoke-direct {p2, p0}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$a;-><init>(Lcom/sxr/sdk/ble/keepfit/service/OtaDial;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a:Ljava/lang/String;

    const-string/jumbo v1, "startOtaService"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$b;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v2, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->d:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial$b;-><init>(Lcom/sxr/sdk/ble/keepfit/service/OtaDial;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/sxr/sdk/ble/keepfit/service/ota/b;)V

    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 10
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v1, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->j:I

    sget v2, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->l:I

    invoke-interface {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a:Ljava/lang/String;

    const-string/jumbo v1, "startUpdate"

    invoke-virtual {p0, v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->b:Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;

    iget-object v0, v0, Lcom/sxr/sdk/ble/keepfit/service/BluetoothLeService;->K:Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;

    sget v1, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->i:I

    sget v2, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->n:I

    invoke-interface {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/IServiceCallback;->onGetOtaUpdate(II)V

    .line 4
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/e;->a(Ljava/lang/String;)Lcom/sxr/sdk/ble/keepfit/service/ota/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Lcom/sxr/sdk/ble/keepfit/service/ota/e;)V

    .line 5
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->j(I)V

    .line 6
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const-string v2, "240"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->e(I)V

    .line 8
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->d(I)V

    .line 9
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->h(I)V

    .line 10
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->i(I)V

    .line 11
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->l(I)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    sget-object v1, Lcom/sxr/sdk/ble/keepfit/service/ota/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string/jumbo v1, "step"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Lcom/sxr/sdk/ble/keepfit/service/OtaDial;->c:Lcom/sxr/sdk/ble/keepfit/service/ota/b;

    invoke-virtual {v1, v0}, Lcom/sxr/sdk/ble/keepfit/service/ota/b;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method

.method public native wallpaperGetTimePositionFromJNI([I[I[I[I[I[I[I[I[I[I[I[IIIIIII)I
.end method

.method public native wallpapergendataFromJNI([B[BIIIIIIIIIIIII)I
.end method
