.class public Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;
.super Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;
.source "SimpleUnivariateValueChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker<",
        "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ITERATION_CHECK_DISABLED:I = -0x1


# instance fields
.field private final maxIterationCount:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>(DD)V

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;-><init>(DD)V

    if-lez p5, :cond_0

    .line 106
    iput p5, p0, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    return-void

    .line 104
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 43
    check-cast p2, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    check-cast p3, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->converged(ILorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;)Z

    move-result p1

    return p1
.end method

.method public converged(ILorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;)Z
    .locals 5

    .line 129
    iget v0, p0, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->maxIterationCount:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-lt p1, v0, :cond_0

    return v2

    .line 133
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide p1

    .line 134
    invoke-virtual {p3}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    sub-double v3, p1, v0

    .line 135
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    .line 136
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->getRelativeThreshold()D

    move-result-wide v0

    mul-double p1, p1, v0

    cmpg-double p3, v3, p1

    if-lez p3, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/univariate/SimpleUnivariateValueChecker;->getAbsoluteThreshold()D

    move-result-wide p1

    cmpg-double p3, v3, p1

    if-gtz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v2
.end method
