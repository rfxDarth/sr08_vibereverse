.class Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$3;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$3;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 5

    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_0
    if-ltz v0, :cond_0

    .line 128
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v3, v3, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    .line 129
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$3$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$3;

    iget-object v3, v3, Lorg/apache/commons/math3/analysis/FunctionUtils$3;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v3, v3, v0

    invoke-interface {v3, p1, p2}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->value(D)D

    move-result-wide p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
