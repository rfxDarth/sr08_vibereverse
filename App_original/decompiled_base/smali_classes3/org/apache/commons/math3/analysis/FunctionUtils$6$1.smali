.class Lorg/apache/commons/math3/analysis/FunctionUtils$6$1;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$6;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$6;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$6;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$6$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 5

    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$6$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$6;

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$6;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    const/4 v2, 0x1

    .line 216
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$6$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$6;

    iget-object v3, v3, Lorg/apache/commons/math3/analysis/FunctionUtils$6;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 217
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$6$1;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$6;

    iget-object v3, v3, Lorg/apache/commons/math3/analysis/FunctionUtils$6;->val$f:[Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
