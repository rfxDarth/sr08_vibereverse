.class public Lorg/apache/commons/math3/ml/distance/CanberraDistance;
.super Ljava/lang/Object;
.source "CanberraDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x60c281567cfc58a4L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    .line 35
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 36
    aget-wide v5, p1, v2

    aget-wide v7, p2, v2

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    .line 37
    aget-wide v7, p1, v2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    aget-wide v9, p2, v2

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    cmpl-double v9, v5, v0

    if-nez v9, :cond_0

    cmpl-double v9, v7, v0

    if-nez v9, :cond_0

    move-wide v5, v0

    goto :goto_1

    :cond_0
    div-double/2addr v5, v7

    :goto_1
    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method
