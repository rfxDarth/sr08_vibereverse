.class public Lorg/apache/commons/math3/analysis/FunctionUtils;
.super Ljava/lang/Object;
.source "FunctionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$6;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$6;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 145
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$4;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$4;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs add([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1

    .line 165
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$5;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$5;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static collector(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 1

    .line 373
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Identity;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/Identity;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->collector(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;

    move-result-object p0

    return-object p0
.end method

.method public static collector(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
    .locals 1

    .line 350
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$11;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/apache/commons/math3/analysis/FunctionUtils$11;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;DLorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static combine(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 329
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$10;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$3;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$1;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs compose([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1

    .line 75
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$2;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static fix1stArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 385
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$12;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;D)V

    return-object v0
.end method

.method public static fix2ndArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 401
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils$13;-><init>(Lorg/apache/commons/math3/analysis/BivariateFunction;D)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$9;-><init>([Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 233
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$7;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$7;-><init>([Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public static varargs multiply([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1

    .line 253
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$8;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$8;-><init>([Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-lez p5, :cond_2

    const/4 v0, 0x0

    cmpl-double v1, p1, p3

    if-gez v1, :cond_1

    .line 438
    new-array v1, p5, [D

    sub-double/2addr p3, p1

    int-to-double v2, p5

    div-double/2addr p3, v2

    :goto_0
    if-ge v0, p5, :cond_0

    int-to-double v2, v0

    mul-double v2, v2, p3

    add-double/2addr v2, p1

    .line 441
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 435
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 430
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public static toDifferentiableMultivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$16;-><init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$18;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$18;-><init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V

    return-object v0
.end method

.method public static toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$14;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$14;-><init>(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)V

    return-object v0
.end method

.method public static toMultivariateDifferentiableFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$17;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)V

    return-object v0
.end method

.method public static toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 732
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$19;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)V

    return-object v0
.end method

.method public static toUnivariateDifferential(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    new-instance v0, Lorg/apache/commons/math3/analysis/FunctionUtils$15;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/FunctionUtils$15;-><init>(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V

    return-object v0
.end method
