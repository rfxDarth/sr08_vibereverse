.class public Lorg/apache/commons/math3/analysis/function/Signum;
.super Ljava/lang/Object;
.source "Signum.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 0

    .line 32
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide p1

    return-wide p1
.end method
