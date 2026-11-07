.class Lorg/apache/commons/math3/linear/SymmLQ$State;
.super Ljava/lang/Object;
.source "SymmLQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SymmLQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field static final CBRT_MACH_PREC:D

.field static final MACH_PREC:D


# instance fields
.field private final a:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field private final b:Lorg/apache/commons/math3/linear/RealVector;

.field private bIsNull:Z

.field private beta:D

.field private beta1:D

.field private bstep:D

.field private cgnorm:D

.field private final check:Z

.field private dbar:D

.field private final delta:D

.field private gammaZeta:D

.field private gbar:D

.field private gmax:D

.field private gmin:D

.field private final goodb:Z

.field private hasConverged:Z

.field private lqnorm:D

.field private final m:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field private final mb:Lorg/apache/commons/math3/linear/RealVector;

.field private minusEpsZeta:D

.field private oldb:D

.field private r1:Lorg/apache/commons/math3/linear/RealVector;

.field private r2:Lorg/apache/commons/math3/linear/RealVector;

.field private rnorm:D

.field private final shift:D

.field private snprod:D

.field private tnorm:D

.field private wbar:Lorg/apache/commons/math3/linear/RealVector;

.field private final xL:Lorg/apache/commons/math3/linear/RealVector;

.field private y:Lorg/apache/commons/math3/linear/RealVector;

.field private ynorm2:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 366
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    .line 367
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->CBRT_MACH_PREC:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V
    .locals 1

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    .line 392
    iput-object p2, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    .line 393
    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 394
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    .line 395
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    .line 396
    iput-wide p5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    if-nez p2, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    const/4 p1, 0x0

    .line 398
    iput-boolean p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    .line 399
    iput-boolean p9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    .line 400
    iput-wide p7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->delta:D

    return-void
.end method

.method private static checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
        }
    .end annotation

    .line 419
    invoke-virtual {p2, p2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    .line 420
    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    .line 421
    sget-wide v4, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    add-double/2addr v4, v0

    sget-wide v6, Lorg/apache/commons/math3/linear/SymmLQ$State;->CBRT_MACH_PREC:D

    mul-double v4, v4, v6

    sub-double/2addr v0, v2

    .line 422
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpl-double p3, v0, v4

    if-gtz p3, :cond_0

    return-void

    .line 424
    :cond_0
    new-instance p3, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;

    invoke-direct {p3}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;-><init>()V

    .line 425
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    .line 426
    const-string v1, "operator"

    invoke-virtual {v0, v1, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    const-string p0, "vector1"

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string p0, "vector2"

    invoke-virtual {v0, p0, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    const-string p0, "threshold"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    throw p3
.end method

.method private static daxpbypz(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    .line 482
    invoke-virtual {p6}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 485
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v2, v2, p0

    invoke-virtual {p5, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double v4, v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p6, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 486
    invoke-virtual {p6, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    .line 463
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 465
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double v2, v2, p0

    invoke-virtual {p3, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p3, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
        }
    .end annotation

    .line 445
    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 446
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    .line 447
    const-string v2, "operator"

    invoke-virtual {v1, v2, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string p0, "vector"

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    throw v0
.end method

.method private updateNorms()V
    .locals 13

    .line 761
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 762
    iget-wide v2, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 763
    sget-wide v4, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double v6, v0, v4

    mul-double v0, v0, v2

    mul-double v2, v0, v4

    .line 765
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->delta:D

    mul-double v0, v0, v8

    .line 766
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-nez v12, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v8

    .line 767
    :goto_0
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    mul-double v8, v8, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    .line 769
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    mul-double v8, v8, v10

    .line 770
    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    .line 779
    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    cmpg-double v12, v10, v8

    if-gtz v12, :cond_1

    .line 780
    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    div-double/2addr v6, v8

    goto :goto_1

    .line 782
    :cond_1
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v10, v11, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    div-double v6, v8, v6

    :goto_1
    mul-double v4, v4, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v10, v4, v8

    if-gez v10, :cond_5

    .line 787
    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpg-double v6, v4, v2

    if-lez v6, :cond_4

    .line 794
    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->rnorm:D

    .line 795
    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    cmpg-double v6, v4, v2

    if-lez v6, :cond_3

    cmpg-double v2, v4, v0

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    return-void

    .line 792
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/linear/SingularOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularOperatorException;-><init>()V

    throw v0

    .line 785
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;

    invoke-direct {v0, v6, v7}, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;-><init>(D)V

    throw v0
.end method


# virtual methods
.method bEqualsNullVector()Z
    .locals 1

    .line 813
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    return v0
.end method

.method betaEqualsZero()Z
    .locals 5

    .line 823
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    sget-wide v2, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getNormOfResidual()D
    .locals 2

    .line 832
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->rnorm:D

    return-wide v0
.end method

.method hasConverged()Z
    .locals 1

    .line 804
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    return v0
.end method

.method init()V
    .locals 11

    .line 545
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 550
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    .line 551
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 552
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    if-eqz v4, :cond_1

    .line 553
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lorg/apache/commons/math3/linear/SymmLQ$State;->checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 556
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    .line 558
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v0, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 560
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 562
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    .line 566
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    .line 572
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 573
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 574
    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    if-eqz v4, :cond_4

    .line 575
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-static {v4, v0, v3, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 581
    :cond_4
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    neg-double v3, v3

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v4, v0, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 582
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    neg-double v7, v3

    .line 583
    iget-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v7, v9

    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 590
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v7

    .line 591
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v9

    neg-double v7, v7

    div-double/2addr v7, v9

    .line 592
    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8, v0, v9}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 593
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    .line 594
    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v8, :cond_5

    .line 595
    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 597
    :cond_5
    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    .line 598
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    cmpg-double v9, v7, v1

    if-gez v9, :cond_6

    .line 600
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 602
    :cond_6
    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 610
    iget-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    .line 611
    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 612
    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    .line 613
    iput-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    .line 614
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    .line 615
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    .line 616
    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double v5, v3, v3

    mul-double v7, v7, v7

    add-double/2addr v5, v7

    .line 617
    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    .line 618
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    .line 619
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    sget-wide v5, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    .line 620
    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    .line 622
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-eqz v3, :cond_7

    .line 623
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    .line 624
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    goto :goto_1

    .line 626
    :cond_7
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    .line 628
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->updateNorms()V

    return-void
.end method

.method refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 12

    .line 504
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 505
    iget-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    const/4 v5, 0x0

    cmpg-double v6, v1, v3

    if-gez v6, :cond_1

    .line 506
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-nez v1, :cond_0

    .line 507
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p1, v5, v0}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    return-void

    .line 509
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v1, v3

    :goto_0
    if-ge v5, v0, :cond_4

    .line 511
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    .line 512
    iget-object v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    mul-double v3, v3, v1

    add-double/2addr v6, v3

    .line 513
    invoke-virtual {p1, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 517
    :cond_1
    iget-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 518
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v3, v6

    if-nez v8, :cond_2

    sget-wide v3, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double v3, v3, v1

    .line 519
    :cond_2
    iget-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    div-double/2addr v1, v3

    .line 520
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double v6, v6, v1

    add-double/2addr v3, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v3, v6

    .line 522
    iget-boolean v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-nez v6, :cond_3

    :goto_1
    if-ge v5, v0, :cond_4

    .line 524
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    .line 525
    iget-object v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    mul-double v6, v6, v1

    add-double/2addr v3, v6

    .line 526
    invoke-virtual {p1, v5, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v5, v0, :cond_4

    .line 530
    iget-object v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    .line 531
    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v8, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    .line 532
    iget-object v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v10, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v10

    mul-double v8, v8, v1

    add-double/2addr v6, v8

    mul-double v10, v10, v3

    add-double/2addr v6, v10

    .line 533
    invoke-virtual {p1, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method update()V
    .locals 31

    move-object/from16 v0, p0

    .line 638
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v6

    .line 639
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 640
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    neg-double v4, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    neg-double v1, v1

    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    div-double v7, v1, v7

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static/range {v4 .. v10}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpbypz(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 641
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v1

    neg-double v3, v1

    .line 652
    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    div-double/2addr v3, v7

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v4, v5, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 666
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iput-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    .line 667
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    iput-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    .line 668
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v4, :cond_0

    .line 669
    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 671
    :cond_0
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    iput-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    .line 672
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    const-wide/16 v7, 0x0

    cmpg-double v5, v3, v7

    if-gez v5, :cond_1

    .line 674
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v4}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 676
    :cond_1
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 685
    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    mul-double v9, v1, v1

    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    mul-double v13, v11, v11

    add-double/2addr v9, v13

    mul-double v3, v3, v3

    add-double/2addr v9, v3

    add-double/2addr v7, v9

    iput-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    .line 693
    iget-wide v3, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    mul-double v3, v3, v3

    mul-double v11, v11, v11

    add-double/2addr v3, v11

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 694
    iget-wide v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    div-double/2addr v7, v3

    .line 695
    iget-wide v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    div-double/2addr v9, v3

    .line 705
    iget-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    mul-double v13, v7, v11

    mul-double v15, v9, v1

    add-double/2addr v13, v15

    mul-double v11, v11, v9

    mul-double v1, v1, v7

    sub-double/2addr v11, v1

    .line 706
    iput-wide v11, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 707
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double v11, v9, v1

    move-wide v15, v1

    neg-double v1, v7

    mul-double v1, v1, v15

    .line 708
    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    .line 709
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    div-double/2addr v1, v3

    mul-double v15, v1, v7

    mul-double v17, v1, v9

    .line 720
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v5

    const/16 v19, 0x0

    move-wide/from16 v20, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    .line 722
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v22

    .line 723
    invoke-virtual {v6, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v24

    .line 724
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v26

    .line 725
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v28, v26, v15

    add-double v22, v22, v28

    mul-double v28, v24, v17

    move/from16 v30, v5

    move-object/from16 v19, v6

    add-double v5, v22, v28

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 726
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v26, v26, v9

    mul-double v24, v24, v7

    sub-double v5, v26, v24

    invoke-virtual {v2, v1, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v19

    move/from16 v5, v30

    goto :goto_0

    .line 734
    :cond_2
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double v7, v7, v5

    mul-double v7, v7, v20

    add-double/2addr v1, v7

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    mul-double v5, v5, v9

    .line 735
    iput-wide v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    .line 736
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    .line 737
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    .line 738
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    mul-double v3, v20, v20

    add-double/2addr v1, v3

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    .line 739
    iget-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    mul-double v13, v13, v20

    sub-double/2addr v1, v13

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    neg-double v1, v11

    mul-double v1, v1, v20

    .line 740
    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    .line 753
    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->updateNorms()V

    return-void
.end method
