.class final Lorg/apache/commons/math3/analysis/FunctionUtils$13;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->fix2ndArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field final synthetic val$fixed:D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/BivariateFunction;D)V
    .locals 0

    .line 401
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$13;->val$f:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$13;->val$fixed:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 3

    .line 404
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$13;->val$f:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$13;->val$fixed:D

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide p1

    return-wide p1
.end method
