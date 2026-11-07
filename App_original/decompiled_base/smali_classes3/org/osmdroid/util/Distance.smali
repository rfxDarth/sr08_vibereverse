.class public Lorg/osmdroid/util/Distance;
.super Ljava/lang/Object;
.source "Distance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dotProduct(DDDDDD)D
    .locals 0

    sub-double/2addr p4, p0

    sub-double/2addr p8, p0

    mul-double p4, p4, p8

    sub-double/2addr p6, p2

    sub-double/2addr p10, p2

    mul-double p6, p6, p10

    add-double/2addr p4, p6

    return-wide p4
.end method

.method public static getProjectionFactorToLine(DDDDDD)D
    .locals 12

    cmpl-double v0, p4, p8

    if-nez v0, :cond_0

    cmpl-double v0, p6, p10

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    move-wide v8, p0

    move-wide v10, p2

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    .line 73
    invoke-static/range {v0 .. v11}, Lorg/osmdroid/util/Distance;->dotProduct(DDDDDD)D

    move-result-wide p0

    .line 74
    invoke-static/range {p4 .. p11}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static getProjectionFactorToSegment(DDDDDD)D
    .locals 0

    .line 86
    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToLine(DDDDDD)D

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmpg-double p4, p0, p2

    if-gez p4, :cond_0

    return-wide p2

    :cond_0
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double p4, p0, p2

    if-lez p4, :cond_1

    return-wide p2

    :cond_1
    return-wide p0
.end method

.method public static getSquaredDistanceToLine(DDDDDD)D
    .locals 14

    .line 32
    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToLine(DDDDDD)D

    move-result-wide v12

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 31
    invoke-static/range {v0 .. v13}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToProjection(DDDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getSquaredDistanceToPoint(DDDD)D
    .locals 0

    sub-double/2addr p0, p4

    sub-double/2addr p2, p6

    mul-double p0, p0, p0

    mul-double p2, p2, p2

    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static getSquaredDistanceToProjection(DDDDDDD)D
    .locals 0

    sub-double/2addr p8, p4

    mul-double p8, p8, p12

    add-double/2addr p4, p8

    sub-double/2addr p10, p6

    mul-double p10, p10, p12

    add-double/2addr p6, p10

    .line 57
    invoke-static/range {p0 .. p7}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getSquaredDistanceToSegment(DDDDDD)D
    .locals 14

    .line 43
    invoke-static/range {p0 .. p11}, Lorg/osmdroid/util/Distance;->getProjectionFactorToSegment(DDDDDD)D

    move-result-wide v12

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 42
    invoke-static/range {v0 .. v13}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToProjection(DDDDDDD)D

    move-result-wide p0

    return-wide p0
.end method
