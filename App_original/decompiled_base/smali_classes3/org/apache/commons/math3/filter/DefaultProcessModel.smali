.class public Lorg/apache/commons/math3/filter/DefaultProcessModel;
.super Ljava/lang/Object;
.source "DefaultProcessModel.java"

# interfaces
.implements Lorg/apache/commons/math3/filter/ProcessModel;


# instance fields
.field private controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private initialErrorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private initialStateEstimateVector:Lorg/apache/commons/math3/linear/RealVector;

.field private processNoiseCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private stateTransitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->stateTransitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 136
    iput-object p2, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 137
    iput-object p3, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->processNoiseCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 138
    iput-object p4, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->initialStateEstimateVector:Lorg/apache/commons/math3/linear/RealVector;

    .line 139
    iput-object p5, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->initialErrorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>([[D[[D[[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 111
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/filter/DefaultProcessModel;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method

.method public constructor <init>([[D[[D[[D[D[[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 80
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, p4}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    new-instance v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v5, p5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/filter/DefaultProcessModel;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method


# virtual methods
.method public getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->initialErrorCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->initialStateEstimateVector:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->processNoiseCovMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getStateTransitionMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/commons/math3/filter/DefaultProcessModel;->stateTransitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
