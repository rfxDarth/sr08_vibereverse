.class public Lorg/apache/commons/math3/ml/distance/EarthMoversDistance;
.super Ljava/lang/Object;
.source "EarthMoversDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x4b0892d12c4e138aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v2, v0

    const/4 v4, 0x0

    .line 38
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 39
    aget-wide v5, p1, v4

    add-double/2addr v5, v2

    aget-wide v2, p2, v4

    sub-double v2, v5, v2

    .line 40
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
