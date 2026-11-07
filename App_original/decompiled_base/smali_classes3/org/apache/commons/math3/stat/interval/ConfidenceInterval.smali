.class public Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;
.super Ljava/lang/Object;
.source "ConfidenceInterval.java"


# instance fields
.field private confidenceLevel:D

.field private lowerBound:D

.field private upperBound:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->checkParameters(DDD)V

    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 59
    iput-wide p2, p1, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->lowerBound:D

    .line 60
    iput-wide p4, p1, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->upperBound:D

    .line 61
    iput-wide v0, p1, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->confidenceLevel:D

    return-void
.end method

.method private checkParameters(DDD)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-double v3, p1, p3

    if-gez v3, :cond_1

    const-wide/16 p1, 0x0

    cmpg-double p3, p5, p1

    if-lez p3, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, p5, p1

    if-gez p3, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_CONFIDENCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x3

    new-array p6, p6, [Ljava/lang/Object;

    aput-object p3, p6, v2

    aput-object p4, p6, v1

    aput-object p5, p6, v0

    invoke-direct {p1, p2, p6}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 104
    :cond_1
    new-instance p5, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    invoke-direct {p5, p6, p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p5
.end method


# virtual methods
.method public getConfidenceLevel()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->confidenceLevel:D

    return-wide v0
.end method

.method public getLowerBound()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->lowerBound:D

    return-wide v0
.end method

.method public getUpperBound()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->upperBound:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->lowerBound:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->upperBound:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "] (confidence level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/interval/ConfidenceInterval;->confidenceLevel:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
