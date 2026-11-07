.class public Lcom/jaga/ibraceletplus/jyring/util/QRHelper;
.super Ljava/lang/Object;
.source "QRHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReult(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/QRHelper;->scanBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 27
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static recode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 39
    const-string v0, "ISO-8859-1"

    .line 41
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "GB2312"

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 51
    const-string p0, ""

    return-object p0
.end method

.method private static scan(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;
    .locals 11

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 56
    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int p0, p0, v1

    new-array v4, p0, [I

    .line 60
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 61
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 60
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 62
    new-instance p0, Lcom/google/zxing/RGBLuminanceSource;

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2, v4}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 64
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 65
    new-instance p0, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {p0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    .line 67
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 73
    invoke-virtual {p0}, Lcom/google/zxing/FormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/ChecksumException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 69
    invoke-virtual {p0}, Lcom/google/zxing/NotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static scanBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/QRHelper;->scan(Landroid/graphics/Bitmap;)Lcom/google/zxing/Result;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/QRHelper;->recode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
