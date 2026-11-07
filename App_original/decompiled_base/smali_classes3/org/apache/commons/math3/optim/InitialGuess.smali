.class public Lorg/apache/commons/math3/optim/InitialGuess;
.super Ljava/lang/Object;
.source "InitialGuess.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final init:[D


# direct methods
.method public constructor <init>([D)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/InitialGuess;->init:[D

    return-void
.end method


# virtual methods
.method public getInitialGuess()[D
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/commons/math3/optim/InitialGuess;->init:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
