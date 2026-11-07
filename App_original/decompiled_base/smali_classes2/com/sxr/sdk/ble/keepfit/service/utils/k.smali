.class public Lcom/sxr/sdk/ble/keepfit/service/utils/k;
.super Ljava/lang/Object;
.source "ScannerServiceParser.java"


# static fields
.field private static final a:Ljava/lang/String; = "ScannerServiceParser"

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:I = 0x5

.field private static final g:I = 0x6

.field private static final h:I = 0x7

.field private static final i:I = 0x8

.field private static final j:I = 0x9

.field private static final k:B = 0x1t

.field private static final l:B = 0x2t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)I
    .locals 1

    .line 60
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 61
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 40
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 42
    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 45
    aget-byte v4, p0, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    add-int/2addr v3, v2

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, -0x1

    .line 48
    invoke-static {p0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 4

    .line 49
    const-string v0, "ScannerServiceParser"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, p1, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 54
    const-string p1, "Error when reading complete local name"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception p0

    .line 55
    const-string p1, "Unable to convert the complete local name to UTF-8"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static a(Ljava/lang/String;[BII)Z
    .locals 0

    add-int/2addr p2, p3

    const/4 p3, 0x4

    sub-int/2addr p2, p3

    .line 56
    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    .line 57
    invoke-virtual {p0, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a([BLjava/util/UUID;Z)Z
    .locals 12

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_14

    xor-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez p2, :cond_2

    if-eqz v3, :cond_2

    return v2

    .line 8
    :cond_2
    array-length p2, p0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_13

    .line 10
    aget-byte v5, p0, v4

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    add-int/lit8 v6, v4, 0x1

    .line 14
    aget-byte v7, p0, v6

    const/4 v8, 0x3

    if-eqz p1, :cond_10

    const/4 v9, 0x2

    if-eq v7, v9, :cond_d

    if-ne v7, v8, :cond_5

    goto :goto_a

    :cond_5
    const/4 v9, 0x4

    if-eq v7, v9, :cond_a

    const/4 v10, 0x5

    if-ne v7, v10, :cond_6

    goto :goto_6

    :cond_6
    const/4 v9, 0x6

    if-eq v7, v9, :cond_7

    const/4 v9, 0x7

    if-ne v7, v9, :cond_10

    :cond_7
    add-int/lit8 v9, v4, 0x2

    :goto_3
    add-int v10, v6, v5

    sub-int/2addr v10, v2

    if-ge v9, v10, :cond_10

    if-nez v3, :cond_9

    const/16 v3, 0x10

    .line 25
    invoke-static {p1, p0, v9, v3}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->a(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v3, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x10

    goto :goto_3

    :cond_a
    :goto_6
    add-int/lit8 v10, v4, 0x2

    :goto_7
    add-int v11, v6, v5

    sub-int/2addr v11, v2

    if-ge v10, v11, :cond_10

    if-nez v3, :cond_c

    .line 26
    invoke-static {p1, p0, v10, v9}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->c(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v3, 0x1

    :goto_9
    add-int/lit8 v10, v10, 0x4

    goto :goto_7

    :cond_d
    :goto_a
    add-int/lit8 v10, v4, 0x2

    :goto_b
    add-int v11, v6, v5

    sub-int/2addr v11, v2

    if-ge v10, v11, :cond_10

    if-nez v3, :cond_f

    .line 27
    invoke-static {p1, p0, v10, v9}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->b(Ljava/lang/String;[BII)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v3, 0x1

    :goto_d
    add-int/lit8 v10, v10, 0x2

    goto :goto_b

    :cond_10
    if-nez v1, :cond_12

    if-ne v7, v2, :cond_12

    add-int/lit8 v4, v4, 0x2

    .line 37
    aget-byte v1, p0, v4

    and-int/2addr v1, v8

    if-lez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_e

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_e
    add-int/lit8 v5, v5, -0x1

    add-int/2addr v6, v5

    add-int/lit8 v4, v6, 0x1

    goto :goto_2

    :cond_13
    if-eqz v1, :cond_14

    if-eqz v3, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method private static b(Ljava/lang/String;[BII)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const/16 p3, 0x8

    .line 2
    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;[BII)Z
    .locals 0

    add-int/2addr p2, p3

    const/4 p3, 0x4

    sub-int/2addr p2, p3

    .line 1
    invoke-static {p1, p2}, Lcom/sxr/sdk/ble/keepfit/service/utils/k;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    .line 2
    invoke-virtual {p0, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
