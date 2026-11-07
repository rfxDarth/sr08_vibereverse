.class Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;
.super Ljava/lang/Object;
.source "FastFourierTransformer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/transform/FastFourierTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiDimensionalComplexMatrix"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected dimensionSize:[I

.field protected multiDimensionalComplexArray:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    .line 528
    :goto_0
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 529
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 531
    aget-object v1, v1, v0

    goto :goto_0

    .line 535
    :cond_0
    new-array v1, v2, [I

    iput-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    const/4 v1, 0x0

    .line 540
    :goto_1
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 541
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 542
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    aput v4, v2, v1

    .line 543
    aget-object p1, p1, v0

    move v1, v3

    goto :goto_1

    :cond_1
    return-void
.end method

.method private clone(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;)V
    .locals 9

    .line 651
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 653
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 654
    aget v5, v5, v3

    mul-int v4, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 656
    :cond_0
    array-length v3, v5

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v1

    aput v4, v5, v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 657
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 658
    iget-object v7, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v7, v7

    invoke-static {v0, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    .line 660
    :goto_2
    iget-object v7, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v8, v7

    if-ge v6, v8, :cond_2

    .line 661
    aget v8, v0, v6

    add-int/2addr v8, v1

    aput v8, v0, v6

    .line 662
    aget v7, v7, v6

    if-ge v8, v7, :cond_1

    goto :goto_3

    .line 665
    :cond_1
    aput v2, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 670
    :cond_3
    array-length v0, v3

    :goto_4
    if-ge v2, v0, :cond_4

    aget-object v1, v3, v2

    .line 671
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->get([I)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->set(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 637
    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;

    const-class v1, Lorg/apache/commons/math3/complex/Complex;

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;-><init>(Ljava/lang/Object;)V

    .line 640
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->clone(Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;)V

    return-object v0
.end method

.method public varargs get([I)Lorg/apache/commons/math3/complex/Complex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 559
    iget-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length p1, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 560
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v1, v1

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 566
    :cond_1
    array-length v1, p1

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 572
    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    .line 574
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 575
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget v2, p1, v0

    aget-object v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    :cond_2
    check-cast v1, Lorg/apache/commons/math3/complex/Complex;

    return-object v1

    .line 567
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    return-object v0
.end method

.method public getDimensionSizes()[I
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public varargs set(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 592
    iget-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length p1, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 593
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length p2, p2

    invoke-direct {p1, v0, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 599
    :cond_1
    array-length v1, p2

    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 605
    iget-object v1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->multiDimensionalComplexArray:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 606
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 607
    aget v2, p2, v0

    aget-object v1, v1, v2

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_2
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget v0, p2, v0

    aget-object v0, v1, v0

    check-cast v0, Lorg/apache/commons/math3/complex/Complex;

    .line 611
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget p2, p2, v2

    aput-object p1, v1, p2

    return-object v0

    .line 600
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer$MultiDimensionalComplexMatrix;->dimensionSize:[I

    array-length v0, v0

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method
