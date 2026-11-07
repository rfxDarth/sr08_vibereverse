.class Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$9;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$9;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 301
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v4, v4, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 302
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v4, v4, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    const/4 v6, 0x0

    .line 303
    :goto_1
    iget-object v7, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v7, v7, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    if-eq v3, v6, :cond_0

    .line 305
    iget-object v7, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$9$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$9;

    iget-object v7, v7, Lorg/apache/commons/math3/analysis/FunctionUtils$9;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v7, v7, v6

    invoke-interface {v7, p1, p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide v7

    mul-double v4, v4, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method
