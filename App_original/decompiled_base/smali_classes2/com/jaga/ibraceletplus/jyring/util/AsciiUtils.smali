.class public Lcom/jaga/ibraceletplus/jyring/util/AsciiUtils;
.super Ljava/lang/Object;
.source "AsciiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFirst18Ascii([B)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 14
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/16 v1, 0x12

    .line 18
    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 19
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 20
    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    .line 28
    aget-byte v6, v2, v5

    if-eqz v6, :cond_1

    const/4 p0, 0x0

    :cond_1
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    const/4 v4, 0x0

    :cond_2
    if-nez p0, :cond_3

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez p0, :cond_8

    if-eqz v4, :cond_5

    goto :goto_3

    .line 43
    :cond_5
    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v2, p0

    :goto_2
    if-ge v3, v2, :cond_7

    aget-char v4, p0, v3

    const/16 v5, 0x20

    if-lt v4, v5, :cond_6

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_6

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 57
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    return-object v0
.end method
