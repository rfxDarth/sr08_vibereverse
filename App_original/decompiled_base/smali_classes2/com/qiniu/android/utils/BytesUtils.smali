.class public Lcom/qiniu/android/utils/BytesUtils;
.super Ljava/lang/Object;
.source "BytesUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static subBytes([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p1

    .line 25
    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 29
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 30
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 26
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "copy bytes out of range"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
