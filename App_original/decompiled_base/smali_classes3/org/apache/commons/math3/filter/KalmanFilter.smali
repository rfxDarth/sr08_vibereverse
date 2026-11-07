.class public Lorg/apache/commons/math3/filter/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field private controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

.field private measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private measurementMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final measurementModel:Lorg/apache/commons/math3/filter/MeasurementModel;

.field private final processModel:Lorg/apache/commons/math3/filter/ProcessModel;

.field private stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

.field private transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private transitionMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/filter/ProcessModel;Lorg/apache/commons/math3/filter/MeasurementModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    .line 127
    iput-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementModel:Lorg/apache/commons/math3/filter/MeasurementModel;

    .line 129
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getStateTransitionMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 130
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 134
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getControlMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 140
    :goto_0
    invoke-interface {p2}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 141
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 147
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    invoke-interface {p2}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    .line 150
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    if-nez v1, :cond_1

    .line 155
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    goto :goto_1

    .line 157
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialStateEstimate()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    .line 160
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 167
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    if-nez v1, :cond_2

    .line 168
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_2

    .line 170
    :cond_2
    invoke-interface {p1}, Lorg/apache/commons/math3/filter/ProcessModel;->getInitialErrorCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 176
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 184
    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p1

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-ne p1, v1, :cond_3

    goto :goto_3

    .line 188
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    iget-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p2

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1

    .line 195
    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 198
    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 206
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    if-ne p1, v0, :cond_5

    return-void

    .line 207
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1

    .line 199
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    iget-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p2

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1

    .line 177
    :cond_7
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    iget-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p2

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1

    .line 161
    :cond_8
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p2

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method


# virtual methods
.method public correct(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .line 352
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementModel:Lorg/apache/commons/math3/filter/MeasurementModel;

    invoke-interface {v1}, Lorg/apache/commons/math3/filter/MeasurementModel;->getMeasurementNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->inverse(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    .line 372
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    .line 380
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 381
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 354
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public correct([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .line 333
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->correct(Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method

.method public getErrorCovariance()[[D
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method public getErrorCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getMeasurementDimension()I
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    return v0
.end method

.method public getStateDimension()I
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getStateEstimation()[D
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method public getStateEstimationVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public predict()V
    .locals 2

    const/4 v0, 0x0

    .line 272
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->predict(Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method

.method public predict(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 297
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 305
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    if-eqz p1, :cond_2

    .line 309
    iget-object v1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->controlMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->stateEstimation:Lorg/apache/commons/math3/linear/RealVector;

    .line 314
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->transitionMatrixT:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->processModel:Lorg/apache/commons/math3/filter/ProcessModel;

    invoke-interface {v0}, Lorg/apache/commons/math3/filter/ProcessModel;->getProcessNoise()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/filter/KalmanFilter;->errorCovariance:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public predict([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 284
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/filter/KalmanFilter;->predict(Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method
