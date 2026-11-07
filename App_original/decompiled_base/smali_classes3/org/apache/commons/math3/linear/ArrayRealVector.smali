.class public Lorg/apache/commons/math3/linear/ArrayRealVector;
.super Lorg/apache/commons/math3/linear/RealVector;
.source "ArrayRealVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

.field private static final serialVersionUID:J = -0xf3cbe05aa2dda3bL


# instance fields
.field private data:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lorg/apache/commons/math3/linear/RealVectorFormat;->getInstance()Lorg/apache/commons/math3/linear/RealVectorFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 66
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 76
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 77
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 4

    .line 211
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 212
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 213
    iget-object v1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    .line 222
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 223
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    .line 224
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    add-int v2, v0, v1

    .line 225
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 226
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v3, v1, :cond_0

    .line 228
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    add-int v2, v0, v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    aput-wide v4, p1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 203
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayRealVector;[D)V
    .locals 4

    .line 252
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 253
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    .line 254
    array-length v1, p2

    add-int v2, v0, v1

    .line 255
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 256
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v0, 0x0

    .line 180
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 181
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 177
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 7

    .line 237
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 238
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 239
    iget-object v1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int v2, v0, v1

    .line 240
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 242
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p1, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 86
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void
.end method

.method public constructor <init>([DII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    .line 126
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 129
    new-array v0, p3, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v1, 0x0

    .line 130
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 127
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p3, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 124
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>([DLorg/apache/commons/math3/linear/ArrayRealVector;)V
    .locals 4

    .line 265
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 266
    array-length v0, p1

    .line 267
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v1

    add-int v2, v0, v1

    .line 268
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    .line 269
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object p1, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object p2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p1, v3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-void

    .line 106
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>([D[D)V
    .locals 4

    .line 278
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 279
    array-length v0, p1

    .line 280
    array-length v1, p2

    add-int v2, v0, v1

    .line 281
    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    .line 282
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .locals 4

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    .line 139
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v0, 0x0

    .line 140
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealVector;-><init>()V

    if-eqz p1, :cond_2

    .line 160
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    .line 163
    new-array p3, p3, [D

    iput-object p3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    move p3, p2

    :goto_0
    if-ge p3, v1, :cond_0

    .line 165
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    sub-int v2, p3, p2

    aget-object v3, p1, p3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 161
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p3, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2

    .line 158
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 296
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 297
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 298
    array-length v0, p1

    .line 299
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 300
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 301
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 303
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v5, v4, v1

    aget-wide v7, p1, v1

    add-double/2addr v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 307
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 308
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 309
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 310
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 312
    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v3

    aget-wide v4, v0, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    aput-wide v4, v0, v3

    goto :goto_1

    .line 314
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public addToEntry(ID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 674
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 676
    :catch_0
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p3, p1, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public append(Lorg/apache/commons/math3/linear/ArrayRealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 1

    .line 630
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V

    return-object v0
.end method

.method public append(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    .line 636
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [D

    .line 637
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    aput-wide p1, v1, v0

    .line 639
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    .line 617
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/ArrayRealVector;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 619
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v0
.end method

.method protected checkVectorDimensions(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    if-ne v0, p1, :cond_0

    return-void

    .line 759
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method protected checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 745
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    return-void
.end method

.method public combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 39
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 851
    instance-of v0, p5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 852
    check-cast p5, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p5, p5, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 853
    array-length v0, p5

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 854
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 855
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aget-wide v4, p5, v1

    mul-double v4, v4, p3

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 859
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 860
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    invoke-virtual {p5, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double v4, v4, p3

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 39
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public copy()Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 2

    .line 289
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/ArrayRealVector;Z)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 456
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v0, :cond_1

    .line 457
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 458
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 460
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 461
    aget-wide v4, v3, v2

    aget-wide v6, p1, v2

    mul-double v4, v4, v6

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    .line 465
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 423
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 424
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 425
    array-length v0, p1

    .line 426
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 427
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 428
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 430
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v5, v4, v1

    aget-wide v7, p1, v1

    div-double/2addr v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 434
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 435
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v2, 0x0

    .line 436
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 437
    aget-wide v3, v0, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    div-double/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 399
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 400
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 401
    array-length v0, p1

    .line 402
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 403
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 404
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 406
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v5, v4, v1

    aget-wide v7, p1, v1

    mul-double v5, v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 410
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 411
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v2, 0x0

    .line 412
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 413
    aget-wide v3, v0, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    mul-double v3, v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 415
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 808
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/RealVector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 812
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/linear/RealVector;

    .line 813
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 817
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 818
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result p1

    return p1

    :cond_3
    const/4 v1, 0x0

    .line 821
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 822
    aget-wide v4, v3, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getDataRef()[D
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    return v0
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 501
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 502
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 503
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 505
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 506
    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    mul-double v4, v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    .line 511
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 513
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 514
    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double v4, v4, v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 517
    :cond_2
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEntry(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 600
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 602
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 525
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 526
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 527
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 529
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 530
    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    .line 531
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    .line 535
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 537
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 538
    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 539
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public getL1Norm()D
    .locals 7

    .line 482
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    .line 483
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 549
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 550
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 551
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 553
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 554
    aget-wide v4, v0, v1

    aget-wide v6, p1, v1

    sub-double/2addr v4, v6

    .line 555
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    .line 559
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 561
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 562
    aget-wide v4, v0, v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 563
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-wide v2
.end method

.method public getLInfNorm()D
    .locals 7

    .line 492
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    .line 493
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getNorm()D
    .locals 7

    .line 472
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    mul-double v5, v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 475
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 649
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 651
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    iget-object v2, v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 653
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 654
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    return-object v0

    .line 647
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 834
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    return v0

    .line 837
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->hash([D)I

    move-result v0

    return v0
.end method

.method public isInfinite()Z
    .locals 6

    .line 788
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 792
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v4, v0, v3

    .line 793
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isNaN()Z
    .locals 6

    .line 771
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, v0, v3

    .line 772
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->copy()Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    .line 362
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 363
    aget-wide v2, v1, v0

    add-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    .line 389
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 390
    aget-wide v2, v1, v0

    div-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    .line 380
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 381
    aget-wide v2, v1, v0

    mul-double v2, v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapSubtractToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    const/4 v0, 0x0

    .line 371
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 372
    aget-wide v2, v1, v0

    sub-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 4

    const/4 v0, 0x0

    .line 353
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 354
    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11

    .line 572
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 573
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 574
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    .line 575
    array-length v2, p1

    .line 576
    invoke-static {v0, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_0

    .line 579
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v7, v6, v4

    aget-wide v9, p1, v5

    mul-double v7, v7, v9

    invoke-interface {v3, v4, v5, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    .line 584
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    .line 585
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    .line 586
    invoke-static {v0, v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_3

    .line 589
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v7, v6, v4

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v9

    mul-double v7, v7, v9

    invoke-interface {v3, v4, v5, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public set(D)V
    .locals 1

    .line 720
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public setEntry(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 663
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aput-wide p2, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 665
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 685
    instance-of v0, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v0, :cond_0

    .line 686
    check-cast p2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setSubVector(I[D)V

    return-void

    :cond_0
    move v0, p1

    .line 689
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 690
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    sub-int v2, v0, p1

    invoke-virtual {p2, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 693
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    .line 694
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    return-void
.end method

.method public setSubVector(I[D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 710
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 712
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    .line 713
    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndex(I)V

    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 322
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 323
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    .line 324
    array-length v0, p1

    .line 325
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(I)V

    .line 326
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 327
    iget-object v3, v2, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    :goto_0
    if-ge v1, v0, :cond_0

    .line 329
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v5, v4, v1

    aget-wide v7, p1, v1

    sub-double/2addr v5, v7

    aput-wide v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 333
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 334
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 335
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 336
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 338
    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v3

    aget-wide v4, v0, v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v0, v3

    goto :goto_1

    .line 340
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[D
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 732
    sget-object v0, Lorg/apache/commons/math3/linear/ArrayRealVector;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealVectorFormat;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/linear/RealVectorFormat;->format(Lorg/apache/commons/math3/linear/RealVector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 5

    .line 914
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    .line 915
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 916
    aget-wide v3, v0, v2

    invoke-interface {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 918
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 926
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndices(II)V

    .line 927
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 929
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v1

    aput-wide v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 931
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 5

    .line 869
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    .line 870
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 871
    aget-wide v3, v0, v2

    invoke-interface {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 873
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 881
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->checkIndices(II)V

    .line 882
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    array-length v0, v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 884
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayRealVector;->data:[D

    aget-wide v1, v0, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 886
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 2

    .line 941
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 953
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 2

    .line 896
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 908
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayRealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D

    move-result-wide p1

    return-wide p1
.end method
