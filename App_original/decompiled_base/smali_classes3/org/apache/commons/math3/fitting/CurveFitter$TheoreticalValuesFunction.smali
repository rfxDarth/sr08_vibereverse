.class Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;
.super Ljava/lang/Object;
.source "CurveFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/CurveFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TheoreticalValuesFunction"
.end annotation


# instance fields
.field private final f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field final synthetic this$0:Lorg/apache/commons/math3/fitting/CurveFitter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/fitting/CurveFitter;Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->this$0:Lorg/apache/commons/math3/fitting/CurveFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;)Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;
    .locals 0

    .line 187
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;->f:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    return-object p0
.end method


# virtual methods
.method public getModelFunction()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;
    .locals 2

    .line 202
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    new-instance v1, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$1;-><init>(Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;-><init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;)V

    return-object v0
.end method

.method public getModelFunctionJacobian()Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;
    .locals 2

    .line 221
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;

    new-instance v1, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$2;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction$2;-><init>(Lorg/apache/commons/math3/fitting/CurveFitter$TheoreticalValuesFunction;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunctionJacobian;-><init>(Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)V

    return-object v0
.end method
