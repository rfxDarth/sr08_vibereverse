.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.super Lorg/apache/commons/math3/ode/MultistepIntegrator;
.source "AdamsIntegrator.java"


# instance fields
.field private final transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIDDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 59
    invoke-direct/range {p0 .. p11}, Lorg/apache/commons/math3/ode/MultistepIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    move-object p1, p0

    .line 61
    invoke-static {p2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDD[D[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 84
    invoke-direct/range {p0 .. p9}, Lorg/apache/commons/math3/ode/MultistepIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    move-object p1, p0

    .line 86
    invoke-static {p2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    return-void
.end method


# virtual methods
.method protected initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 6

    .line 100
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->transformer:Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    return-void
.end method
