.class public Lorg/apache/commons/math3/transform/FastHadamardTransformer;
.super Ljava/lang/Object;
.source "FastHadamardTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330293L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected fht([D)[D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 231
    array-length v0, p1

    .line 232
    div-int/lit8 v1, v0, 0x2

    int-to-long v2, v0

    .line 234
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 244
    new-array v2, v0, [D

    .line 245
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int/lit8 v7, v6, 0x2

    .line 259
    aget-wide v8, v2, v7

    add-int/2addr v7, v4

    aget-wide v10, v2, v7

    add-double/2addr v8, v10

    aput-wide v8, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_2
    if-ge v6, v0, :cond_1

    mul-int/lit8 v7, v6, 0x2

    sub-int/2addr v7, v0

    .line 264
    aget-wide v8, v2, v7

    add-int/2addr v7, v4

    aget-wide v10, v2, v7

    sub-double/2addr v8, v10

    aput-wide v8, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v5, v5, 0x1

    move-object v12, v2

    move-object v2, p1

    move-object p1, v12

    goto :goto_0

    :cond_2
    return-object v2

    .line 235
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p1, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method protected fht([I)[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 282
    array-length v0, p1

    .line 283
    div-int/lit8 v1, v0, 0x2

    int-to-long v2, v0

    .line 285
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 295
    new-array v2, v0, [I

    .line 296
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int/lit8 v7, v6, 0x2

    .line 310
    aget v8, v2, v7

    add-int/2addr v7, v4

    aget v7, v2, v7

    add-int/2addr v8, v7

    aput v8, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_2
    if-ge v6, v0, :cond_1

    mul-int/lit8 v7, v6, 0x2

    sub-int/2addr v7, v0

    .line 315
    aget v8, v2, v7

    add-int/2addr v7, v4

    aget v7, v2, v7

    sub-int/2addr v8, v7

    aput v8, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v5, v5, 0x1

    move-object v9, v2

    move-object v2, p1

    move-object p1, v9

    goto :goto_0

    :cond_2
    return-object v2

    .line 286
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p1, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 0

    .line 71
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object p1

    return-object p1
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 4

    .line 52
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object p2

    array-length p1, p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-static {p2, v2, v3}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p1

    return-object p1
.end method

.method public transform([I)[I
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([I)[I

    move-result-object p1

    return-object p1
.end method
