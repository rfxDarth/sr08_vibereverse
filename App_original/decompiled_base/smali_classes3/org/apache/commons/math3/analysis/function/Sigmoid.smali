.class public Lorg/apache/commons/math3/analysis/function/Sigmoid;
.super Ljava/lang/Object;
.source "Sigmoid.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/Sigmoid$Parametric;
    }
.end annotation


# instance fields
.field private final hi:D

.field private final lo:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 53
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/Sigmoid;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    .line 65
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    return-void
.end method

.method static synthetic access$000(DDD)D
    .locals 0

    .line 42
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->value(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static value(DDD)D
    .locals 2

    sub-double/2addr p4, p2

    neg-double p0, p0

    .line 162
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    div-double/2addr p4, p0

    add-double/2addr p2, p4

    return-wide p2
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 6

    .line 78
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/function/Sigmoid;->value(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 171
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 172
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    .line 173
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    .line 176
    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    aput-wide v4, v3, v9

    .line 177
    invoke-static {v3, v2, v1, v7, v8}, Ljava/util/Arrays;->fill([DIID)V

    :goto_0
    move-object/from16 v1, p1

    goto :goto_4

    .line 187
    :cond_0
    new-array v6, v1, [D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double v12, v4, v10

    div-double v12, v10, v12

    .line 190
    iget-wide v14, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->hi:D

    move-wide/from16 v16, v7

    iget-wide v7, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    sub-double/2addr v14, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_3

    .line 195
    aput-wide v10, v6, v7

    move v8, v7

    move-wide/from16 v18, v16

    :goto_2
    if-ltz v8, :cond_2

    mul-double v18, v18, v4

    .line 197
    aget-wide v20, v6, v8

    add-double v18, v18, v20

    if-le v8, v2, :cond_1

    add-int/lit8 v2, v8, -0x1

    sub-int v21, v7, v8

    const/16 v22, 0x0

    add-int/lit8 v9, v21, 0x2

    int-to-double v10, v9

    add-int/lit8 v9, v8, -0x2

    .line 199
    aget-wide v23, v6, v9

    mul-double v10, v10, v23

    move-wide/from16 v23, v4

    int-to-double v4, v2

    aget-wide v25, v6, v2

    mul-double v4, v4, v25

    sub-double/2addr v10, v4

    aput-wide v10, v6, v2

    goto :goto_3

    :cond_1
    move-wide/from16 v23, v4

    const/16 v22, 0x0

    .line 201
    aput-wide v16, v6, v22

    :goto_3
    add-int/lit8 v8, v8, -0x1

    move-wide/from16 v4, v23

    const/4 v2, 0x1

    const/4 v9, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_2
    move-wide/from16 v23, v4

    const/16 v22, 0x0

    mul-double v14, v14, v12

    mul-double v18, v18, v14

    .line 206
    aput-wide v18, v3, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    const/4 v9, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_3
    const/16 v22, 0x0

    .line 211
    aget-wide v1, v3, v22

    iget-wide v4, v0, Lorg/apache/commons/math3/analysis/function/Sigmoid;->lo:D

    add-double/2addr v1, v4

    aput-wide v1, v3, v22

    goto :goto_0

    .line 215
    :goto_4
    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    return-object v1
.end method
