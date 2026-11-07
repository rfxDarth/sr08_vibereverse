.class public Lcom/jaga/ibraceletplus/jyring/util/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static bufferCount:I

.field private static mappedByteBuffers:[Ljava/nio/MappedByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 15

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 27
    :try_start_0
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 28
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    long-to-double v4, v9

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v4, v6

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p0, v4

    sput p0, Lcom/jaga/ibraceletplus/jyring/util/MD5Util;->bufferCount:I

    .line 33
    new-array p0, p0, [Ljava/nio/MappedByteBuffer;

    sput-object p0, Lcom/jaga/ibraceletplus/jyring/util/MD5Util;->mappedByteBuffers:[Ljava/nio/MappedByteBuffer;

    const-wide/32 v11, 0x7fffffff

    const/4 p0, 0x0

    const-wide/16 v4, 0x0

    move-wide v5, v4

    move-wide v7, v11

    const/4 v2, 0x0

    .line 37
    :goto_0
    sget v4, Lcom/jaga/ibraceletplus/jyring/util/MD5Util;->bufferCount:I

    if-ge v2, v4, :cond_1

    sub-long v13, v9, v5

    cmp-long v4, v13, v11

    if-gez v4, :cond_0

    move-wide v7, v13

    .line 41
    :cond_0
    sget-object v13, Lcom/jaga/ibraceletplus/jyring/util/MD5Util;->mappedByteBuffers:[Ljava/nio/MappedByteBuffer;

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    aput-object v4, v13, v2

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/4 v3, 0x0

    .line 47
    :goto_1
    sget v4, Lcom/jaga/ibraceletplus/jyring/util/MD5Util;->bufferCount:I

    if-ge v3, v4, :cond_2

    .line 48
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/util/MD5Util;->mappedByteBuffers:[Ljava/nio/MappedByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 51
    array-length v3, v2

    .line 52
    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v5, v3, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-ge p0, v3, :cond_3

    .line 54
    :try_start_1
    aget-byte v1, v2, p0

    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    .line 55
    aget-char v5, v0, v5

    and-int/lit8 v1, v1, 0xf

    .line 56
    aget-char v1, v0, v1

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v1, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 61
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v1

    .line 63
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
