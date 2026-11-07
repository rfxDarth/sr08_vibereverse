.class public abstract Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.super Ljava/lang/Object;
.source "AbstractMultivariateRealDistribution.java"

# interfaces
.implements Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;


# instance fields
.field private final dimension:I

.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 43
    iput p2, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->dimension:I

    return-void
.end method


# virtual methods
.method public getDimension()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->dimension:I

    return v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    return-void
.end method

.method public abstract sample()[D
.end method

.method public sample(I)[[D
    .locals 3

    if-lez p1, :cond_1

    .line 65
    iget v0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->dimension:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p1, v1, v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    :goto_0
    if-ge v0, p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->sample()[D

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 62
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method
