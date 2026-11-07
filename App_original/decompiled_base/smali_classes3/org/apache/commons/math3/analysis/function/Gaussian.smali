.class public Lorg/apache/commons/math3/analysis/function/Gaussian;
.super Ljava/lang/Object;
.source "Gaussian.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
    }
.end annotation


# instance fields
.field private final i2s2:D

.field private final is:D

.field private final mean:D

.field private final norm:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 90
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 83
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    mul-double v0, v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v5, v2, v0

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/analysis/function/Gaussian;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    if-lez v2, :cond_0

    .line 67
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    .line 68
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    div-double/2addr p1, p5

    .line 69
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, p1

    mul-double p3, p3, p1

    .line 70
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->i2s2:D

    return-void

    .line 64
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method static synthetic access$000(DDD)D
    .locals 0

    .line 41
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static value(DDD)D
    .locals 2

    neg-double v0, p0

    mul-double v0, v0, p0

    mul-double v0, v0, p4

    .line 206
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    mul-double p2, p2, p0

    return-wide p2
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 8

    .line 95
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    sub-double v2, p1, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    iget-wide v6, p0, Lorg/apache/commons/math3/analysis/function/Gaussian;->i2s2:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/function/Gaussian;->value(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 215
    iget-wide v1, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v3

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->mean:D

    sub-double/2addr v3, v5

    mul-double v1, v1, v3

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [D

    .line 225
    new-array v6, v3, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x0

    .line 226
    aput-wide v7, v6, v9

    mul-double v7, v1, v1

    .line 228
    iget-wide v10, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->norm:D

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    mul-double v12, v12, v7

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v12

    mul-double v10, v10, v12

    .line 229
    sget-wide v12, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    const-wide/16 v14, 0x0

    cmpg-double v16, v10, v12

    if-gtz v16, :cond_1

    .line 230
    invoke-static {v5, v14, v15}, Ljava/util/Arrays;->fill([DD)V

    :cond_0
    move-object/from16 v1, p1

    move-object v2, v5

    goto :goto_3

    .line 232
    :cond_1
    aput-wide v10, v5, v9

    const/4 v12, 0x1

    :goto_0
    if-ge v12, v3, :cond_0

    add-int/lit8 v13, v12, -0x1

    move-wide/from16 v17, v10

    const/16 v16, 0x0

    .line 237
    aget-wide v9, v6, v13

    neg-double v9, v9

    aput-wide v9, v6, v12

    move v9, v12

    move-wide v10, v14

    :goto_1
    if-ltz v9, :cond_4

    mul-double v10, v10, v7

    .line 239
    aget-wide v19, v6, v9

    add-double v10, v10, v19

    const/4 v13, 0x2

    if-le v9, v13, :cond_2

    add-int/lit8 v13, v9, -0x2

    add-int/lit8 v14, v9, -0x1

    move-object/from16 v21, v5

    const/4 v15, 0x1

    int-to-double v4, v14

    .line 241
    aget-wide v22, v6, v14

    mul-double v4, v4, v22

    add-int/lit8 v14, v9, -0x3

    aget-wide v22, v6, v14

    sub-double v4, v4, v22

    aput-wide v4, v6, v13

    goto :goto_2

    :cond_2
    move-object/from16 v21, v5

    const/4 v15, 0x1

    if-ne v9, v13, :cond_3

    .line 243
    aget-wide v4, v6, v15

    aput-wide v4, v6, v16

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, -0x2

    move-object/from16 v5, v21

    const/4 v4, 0x1

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v21, v5

    const/4 v15, 0x1

    and-int/lit8 v4, v12, 0x1

    if-ne v4, v15, :cond_5

    mul-double v10, v10, v1

    .line 250
    :cond_5
    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/function/Gaussian;->is:D

    mul-double v4, v4, v17

    mul-double v10, v10, v4

    .line 251
    aput-wide v10, v21, v12

    add-int/lit8 v12, v12, 0x1

    move-wide v10, v4

    move-object/from16 v5, v21

    const/4 v4, 0x1

    const/4 v9, 0x0

    const-wide/16 v14, 0x0

    goto :goto_0

    .line 256
    :goto_3
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    return-object v1
.end method
