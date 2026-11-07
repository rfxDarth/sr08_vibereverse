.class final Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;
.super Ljava/lang/Object;
.source "RandomGeneratorFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/random/RandomGeneratorFactory;->createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$rng:Ljava/util/Random;


# direct methods
.method constructor <init>(Ljava/util/Random;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-void
.end method

.method public nextDouble()D
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public nextGaussian()D
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    if-lez p1, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1

    .line 72
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public nextLong()J
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(I)V
    .locals 3

    .line 46
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public setSeed(J)V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public setSeed([I)V
    .locals 3

    .line 51
    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$1;->val$rng:Ljava/util/Random;

    invoke-static {p1}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->convertToLong([I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method
