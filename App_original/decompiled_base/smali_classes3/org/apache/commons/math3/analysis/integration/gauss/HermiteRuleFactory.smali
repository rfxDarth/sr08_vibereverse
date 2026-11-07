.class public Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "HermiteRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final H0:D = 0.7511255444649425

.field private static final H1:D = 1.0622519320271968

.field private static final SQRT_PI:D = 1.772453850905516


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair<",
            "[",
            "Ljava/lang/Double;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    new-array v1, v5, [Ljava/lang/Double;

    aput-object v3, v1, v4

    const-wide v2, 0x3ffc5bf891b4ef6bL    # 1.772453850905516

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Double;

    aput-object v2, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    add-int/lit8 v6, v0, -0x1

    move-object/from16 v7, p0

    .line 76
    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Double;

    .line 79
    new-array v9, v0, [Ljava/lang/Double;

    .line 80
    new-array v10, v0, [Ljava/lang/Double;

    mul-int/lit8 v11, v6, 0x2

    int-to-double v11, v11

    .line 82
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-int/lit8 v13, v0, 0x2

    int-to-double v13, v13

    .line 83
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 86
    div-int/lit8 v15, v0, 0x2

    move-wide/from16 v16, v1

    const/4 v1, 0x0

    :goto_0
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    const-wide v20, 0x3fe8093870155910L    # 0.7511255444649425

    if-ge v1, v15, :cond_9

    if-nez v1, :cond_1

    neg-double v4, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v1, -0x1

    .line 89
    aget-object v4, v8, v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_1
    const/4 v2, 0x1

    if-ne v15, v2, :cond_2

    const-wide/high16 v22, -0x4020000000000000L    # -0.5

    goto :goto_2

    .line 91
    :cond_2
    aget-object v22, v8, v1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    :goto_2
    const-wide v24, 0x3ff0fefbe1c2b6c9L    # 1.0622519320271968

    mul-double v26, v4, v24

    move-wide/from16 v28, v20

    :goto_3
    if-ge v2, v0, :cond_3

    move/from16 v30, v1

    add-int/lit8 v1, v2, 0x1

    move-object/from16 v31, v3

    move-wide/from16 v32, v4

    int-to-double v3, v1

    div-double v34, v18, v3

    .line 104
    invoke-static/range {v34 .. v35}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v34

    move v5, v1

    int-to-double v1, v2

    div-double/2addr v1, v3

    .line 105
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    mul-double v34, v34, v32

    mul-double v34, v34, v26

    mul-double v1, v1, v28

    sub-double v1, v34, v1

    move-wide/from16 v28, v26

    move-object/from16 v3, v31

    move-wide/from16 v26, v1

    move v2, v5

    move/from16 v1, v30

    move-wide/from16 v4, v32

    goto :goto_3

    :cond_3
    move/from16 v30, v1

    move-object/from16 v31, v3

    move-wide/from16 v32, v4

    add-double v4, v32, v22

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v1

    move-wide/from16 v28, v20

    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_8

    sub-double v28, v22, v32

    .line 123
    invoke-static {v4, v5}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v34

    cmpg-double v3, v28, v34

    if-gtz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    mul-double v28, v4, v24

    move-wide/from16 v36, v1

    move-wide/from16 v34, v20

    const/4 v1, 0x1

    :goto_6
    if-ge v1, v0, :cond_5

    add-int/lit8 v2, v1, 0x1

    move/from16 v38, v6

    int-to-double v6, v2

    div-double v39, v18, v6

    .line 129
    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v39

    move/from16 v41, v2

    int-to-double v1, v1

    div-double/2addr v1, v6

    .line 130
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    mul-double v39, v39, v4

    mul-double v39, v39, v28

    mul-double v1, v1, v34

    sub-double v1, v39, v1

    move-object/from16 v7, p0

    move-wide/from16 v34, v28

    move/from16 v6, v38

    move-wide/from16 v28, v1

    move/from16 v1, v41

    goto :goto_6

    :cond_5
    move/from16 v38, v6

    if-nez v3, :cond_7

    mul-double v1, v26, v28

    cmpg-double v6, v1, v16

    if-gez v6, :cond_6

    move-wide/from16 v22, v4

    goto :goto_7

    :cond_6
    move-wide/from16 v32, v4

    move-wide/from16 v26, v28

    :goto_7
    add-double v1, v32, v22

    mul-double v4, v1, v36

    :cond_7
    move-object/from16 v7, p0

    move-wide/from16 v28, v34

    move-wide/from16 v1, v36

    move/from16 v6, v38

    goto :goto_4

    :cond_8
    move/from16 v38, v6

    mul-double v28, v28, v13

    mul-double v28, v28, v28

    div-double v18, v18, v28

    .line 152
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v30

    .line 153
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v10, v30

    sub-int v6, v38, v30

    neg-double v1, v4

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v6

    .line 157
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v10, v6

    add-int/lit8 v1, v30, 0x1

    move-object/from16 v7, p0

    move-object/from16 v3, v31

    move/from16 v6, v38

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v31, v3

    .line 164
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_b

    const/4 v5, 0x1

    :goto_8
    if-ge v5, v0, :cond_a

    add-int/lit8 v1, v5, 0x1

    int-to-double v1, v1

    int-to-double v3, v5

    div-double/2addr v3, v1

    .line 168
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    neg-double v1, v1

    mul-double v20, v20, v1

    add-int/lit8 v5, v5, 0x2

    goto :goto_8

    :cond_a
    mul-double v13, v13, v20

    mul-double v13, v13, v13

    div-double v18, v18, v13

    .line 173
    aput-object v31, v9, v15

    .line 174
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v10, v15

    .line 177
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v0, v9, v10}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
