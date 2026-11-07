.class public Lorg/osmdroid/util/SegmentIntersection;
.super Ljava/lang/Object;
.source "SegmentIntersection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z
    .locals 20

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    .line 93
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    const/16 v18, 0x0

    cmpg-double v19, p17, v16

    if-ltz v19, :cond_5

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpl-double v4, p17, v0

    if-lez v4, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpg-double v4, p17, v0

    if-ltz v4, :cond_5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpl-double v4, p17, v0

    if-lez v4, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpg-double v4, p19, v0

    if-ltz v4, :cond_5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpl-double v2, p19, v0

    if-lez v2, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpg-double v2, p19, v0

    if-ltz v2, :cond_5

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpl-double v2, p19, v0

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p16

    if-eqz v0, :cond_4

    .line 106
    invoke-static/range {p17 .. p18}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    .line 107
    invoke-static/range {p19 .. p20}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->y:J

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    return v18
.end method

.method private static divisionByZeroSideEffect(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 18

    .line 141
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffectX(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide/from16 v9, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    move-wide/from16 v1, p8

    move-wide/from16 v3, p10

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    move-object/from16 v17, p16

    .line 142
    invoke-static/range {v1 .. v17}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffectX(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffectY(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide/from16 v9, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    move-wide/from16 v1, p8

    move-wide/from16 v3, p10

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    move-object/from16 v17, p16

    .line 144
    invoke-static/range {v1 .. v17}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffectY(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static divisionByZeroSideEffectX(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 23

    const/4 v0, 0x0

    cmpl-double v1, p0, p4

    if-eqz v1, :cond_0

    return v0

    :cond_0
    cmpl-double v1, p8, p12

    if-nez v1, :cond_1

    return v0

    :cond_1
    sub-double v0, p0, p8

    sub-double v2, p12, p8

    div-double/2addr v0, v2

    sub-double v2, p14, p10

    mul-double v0, v0, v2

    add-double v21, v0, p10

    move-wide/from16 v19, p0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-object/from16 v18, p16

    .line 160
    invoke-static/range {v2 .. v22}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method

.method private static divisionByZeroSideEffectY(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 23

    const/4 v0, 0x0

    cmpl-double v1, p2, p6

    if-eqz v1, :cond_0

    return v0

    :cond_0
    cmpl-double v1, p10, p14

    if-nez v1, :cond_1

    return v0

    :cond_1
    sub-double v0, p2, p10

    sub-double v2, p14, p10

    div-double/2addr v0, v2

    sub-double v2, p12, p8

    mul-double v0, v0, v2

    add-double v19, v0, p8

    move-wide/from16 v21, p2

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-object/from16 v18, p16

    .line 176
    invoke-static/range {v2 .. v22}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method

.method public static intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 35

    .line 30
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->parallelSideEffect(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 33
    :cond_0
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->divisionByZeroSideEffect(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sub-double v0, p0, p4

    sub-double v2, p10, p14

    mul-double v4, v0, v2

    sub-double v6, p2, p6

    sub-double v8, p8, p12

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v12, v4, v10

    if-nez v12, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    mul-double v10, p0, p6

    mul-double v12, p2, p4

    sub-double/2addr v10, v12

    mul-double v8, v8, v10

    mul-double v12, p8, p14

    mul-double v14, p10, p12

    sub-double/2addr v12, v14

    mul-double v0, v0, v12

    sub-double/2addr v8, v0

    div-double v31, v8, v4

    mul-double v2, v2, v10

    mul-double v6, v6, v12

    sub-double/2addr v2, v6

    div-double v33, v2, v4

    move-wide/from16 v14, p0

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    move-wide/from16 v20, p6

    move-wide/from16 v22, p8

    move-wide/from16 v24, p10

    move-wide/from16 v26, p12

    move-wide/from16 v28, p14

    move-object/from16 v30, p16

    .line 42
    invoke-static/range {v14 .. v34}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method

.method private static middle(DDDD)D
    .locals 4

    .line 76
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 77
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static parallelSideEffect(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 22

    cmpl-double v0, p0, p4

    if-nez v0, :cond_0

    .line 54
    invoke-static/range {p0 .. p16}, Lorg/osmdroid/util/SegmentIntersection;->parallelSideEffectSameX(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    return v0

    :cond_0
    cmpl-double v0, p8, p12

    if-nez v0, :cond_1

    move-wide/from16 v9, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    move-wide/from16 v1, p8

    move-wide/from16 v3, p10

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    move-object/from16 v17, p16

    .line 57
    invoke-static/range {v1 .. v17}, Lorg/osmdroid/util/SegmentIntersection;->parallelSideEffectSameX(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    return v0

    :cond_1
    sub-double v0, p6, p2

    sub-double v2, p4, p0

    div-double/2addr v0, v2

    sub-double v2, p14, p10

    sub-double v4, p12, p8

    div-double/2addr v2, v4

    const/4 v4, 0x0

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_2

    return v4

    :cond_2
    mul-double v0, v0, p0

    sub-double v0, p2, v0

    mul-double v2, v2, p8

    sub-double v2, p10, v2

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_3

    return v4

    :cond_3
    move-wide/from16 v1, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p8

    move-wide/from16 v7, p12

    .line 70
    invoke-static/range {v1 .. v8}, Lorg/osmdroid/util/SegmentIntersection;->middle(DDDD)D

    move-result-wide v18

    move-wide/from16 v0, p2

    move-wide/from16 v2, p6

    move-wide/from16 v4, p10

    move-wide/from16 v6, p14

    .line 71
    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/SegmentIntersection;->middle(DDDD)D

    move-result-wide v20

    move-wide/from16 v9, p8

    move-wide/from16 v13, p12

    move-object/from16 v17, p16

    move-wide v11, v4

    move-wide v15, v6

    move-wide/from16 v5, p4

    move-wide v7, v2

    move-wide v3, v0

    move-wide/from16 v1, p0

    .line 72
    invoke-static/range {v1 .. v21}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method

.method private static parallelSideEffectSameX(DDDDDDDDLorg/osmdroid/util/PointL;)Z
    .locals 23

    const/4 v0, 0x0

    cmpl-double v1, p0, p4

    if-eqz v1, :cond_0

    return v0

    :cond_0
    cmpl-double v1, p8, p12

    if-eqz v1, :cond_1

    return v0

    :cond_1
    cmpl-double v1, p0, p8

    if-eqz v1, :cond_2

    return v0

    :cond_2
    move-wide/from16 v2, p2

    move-wide/from16 v4, p6

    move-wide/from16 v6, p10

    move-wide/from16 v8, p14

    .line 129
    invoke-static/range {v2 .. v9}, Lorg/osmdroid/util/SegmentIntersection;->middle(DDDD)D

    move-result-wide v21

    move-wide/from16 v19, p0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-object/from16 v18, p16

    .line 130
    invoke-static/range {v2 .. v22}, Lorg/osmdroid/util/SegmentIntersection;->check(DDDDDDDDLorg/osmdroid/util/PointL;DD)Z

    move-result v0

    return v0
.end method
