.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->computePartialDerivatives()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

.field final synthetic val$aYY:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V
    .locals 0

    .line 570
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;->val$aYY:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 10

    mul-double v0, p1, p1

    mul-double v2, v0, p1

    const/4 v4, 0x4

    .line 574
    new-array v5, v4, [D

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v5, v6

    const/4 v9, 0x1

    aput-wide p1, v5, v9

    const/4 p1, 0x2

    aput-wide v0, v5, p1

    const/4 p2, 0x3

    aput-wide v2, v5, p2

    .line 576
    new-array v0, v4, [D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v6

    aput-wide v1, v0, v9

    aput-wide v7, v0, p1

    aput-wide p3, v0, p2

    .line 578
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iget-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$4;->val$aYY:[[D

    invoke-static {p1, v5, v0, p2}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide p1

    return-wide p1
.end method
