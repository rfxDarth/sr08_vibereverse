.class public Lorg/apache/commons/math3/filter/DefaultMeasurementModel;
.super Ljava/lang/Object;
.source "DefaultMeasurementModel.java"

# interfaces
.implements Lorg/apache/commons/math3/filter/MeasurementModel;


# instance fields
.field private measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private measurementNoise:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 73
    iput-object p2, p0, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;->measurementNoise:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public constructor <init>([[D[[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)V

    return-void
.end method


# virtual methods
.method public getMeasurementMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;->measurementMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getMeasurementNoise()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/commons/math3/filter/DefaultMeasurementModel;->measurementNoise:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
