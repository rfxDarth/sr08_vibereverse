.class final Lorg/apache/commons/math3/analysis/FunctionUtils$10;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->combine(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$combiner:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field final synthetic val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field final synthetic val$g:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/BivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$10;->val$combiner:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$10;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iput-object p3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$10;->val$g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 4

    .line 332
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$10;->val$combiner:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$10;->val$f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$10;->val$g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {v3, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p1

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide p1

    return-wide p1
.end method
