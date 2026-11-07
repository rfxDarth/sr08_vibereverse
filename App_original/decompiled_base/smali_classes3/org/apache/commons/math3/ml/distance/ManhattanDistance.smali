.class public Lorg/apache/commons/math3/ml/distance/ManhattanDistance;
.super Ljava/lang/Object;
.source "ManhattanDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = -0x7e66aa5a2479773eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 0

    .line 34
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->distance1([D[D)D

    move-result-wide p1

    return-wide p1
.end method
