.class public Lorg/apache/commons/math3/optim/MaxEval;
.super Ljava/lang/Object;
.source "MaxEval.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final maxEval:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 40
    iput p1, p0, Lorg/apache/commons/math3/optim/MaxEval;->maxEval:I

    return-void

    .line 37
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public static unlimited()Lorg/apache/commons/math3/optim/MaxEval;
    .locals 2

    .line 60
    new-instance v0, Lorg/apache/commons/math3/optim/MaxEval;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getMaxEval()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/apache/commons/math3/optim/MaxEval;->maxEval:I

    return v0
.end method
