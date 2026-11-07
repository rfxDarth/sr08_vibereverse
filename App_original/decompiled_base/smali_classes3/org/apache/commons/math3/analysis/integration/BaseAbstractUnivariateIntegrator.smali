.class public abstract Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.super Ljava/lang/Object;
.source "BaseAbstractUnivariateIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/integration/UnivariateIntegrator;


# static fields
.field public static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-15

.field public static final DEFAULT_MAX_ITERATIONS_COUNT:I = 0x7fffffff

.field public static final DEFAULT_MIN_ITERATIONS_COUNT:I = 0x3

.field public static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-6


# instance fields
.field private final absoluteAccuracy:D

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field protected final iterations:Lorg/apache/commons/math3/util/Incrementor;

.field private max:D

.field private min:D

.field private final minimalIterationCount:I

.field private final relativeAccuracy:D


# direct methods
.method protected constructor <init>(DD)V
    .locals 7

    const/4 v5, 0x3

    const v6, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 142
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    return-void
.end method

.method protected constructor <init>(DDII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->relativeAccuracy:D

    .line 117
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->absoluteAccuracy:D

    if-lez p5, :cond_1

    if-le p6, p5, :cond_0

    .line 126
    iput p5, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->minimalIterationCount:I

    .line 127
    new-instance p1, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {p1}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    .line 128
    invoke-virtual {p1, p6}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 131
    new-instance p1, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {p1}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    return-void

    .line 124
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method protected constructor <init>(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v3, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v5, p1

    move v6, p2

    .line 158
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    return-void
.end method


# virtual methods
.method protected computeObjectiveValue(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p1

    .line 218
    new-instance p2, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw p2
.end method

.method protected abstract doIntegrate()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public getAbsoluteAccuracy()D
    .locals 2

    .line 169
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->absoluteAccuracy:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method protected getMax()D
    .locals 2

    .line 202
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->max:D

    return-wide v0
.end method

.method public getMaximalIterationCount()I
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method protected getMin()D
    .locals 2

    .line 196
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->min:D

    return-wide v0
.end method

.method public getMinimalIterationCount()I
    .locals 1

    .line 174
    iget v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->minimalIterationCount:I

    return v0
.end method

.method public getRelativeAccuracy()D
    .locals 2

    .line 164
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->relativeAccuracy:D

    return-wide v0
.end method

.method public integrate(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 261
    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)V

    .line 264
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->doIntegrate()D

    move-result-wide p1

    return-wide p1
.end method

.method protected setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 241
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 242
    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 245
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->min:D

    .line 246
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->max:D

    .line 247
    iput-object p2, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->function:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 248
    iget-object p2, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 249
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 250
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    return-void
.end method
