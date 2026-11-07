.class public Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/OptimizationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopulationSize"
.end annotation


# instance fields
.field private final lambda:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 458
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;->lambda:I

    return-void

    .line 456
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public getPopulationSize()I
    .locals 1

    .line 465
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;->lambda:I

    return v0
.end method
