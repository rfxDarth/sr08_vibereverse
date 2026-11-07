.class public Lorg/apache/commons/math3/analysis/function/Pow;
.super Ljava/lang/Object;
.source "Pow.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 0

    .line 32
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p1

    return-wide p1
.end method
