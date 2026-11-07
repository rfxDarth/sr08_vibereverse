.class Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;
.super Ljava/lang/Object;
.source "LevenbergMarquardtOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalData"
.end annotation


# instance fields
.field private final beta:[D

.field private final diagR:[D

.field private final jacNorm:[D

.field private final permutation:[I

.field private final rank:I

.field private final weightedJacobian:[[D


# direct methods
.method constructor <init>([[D[II[D[D[D)V
    .locals 0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->weightedJacobian:[[D

    .line 585
    iput-object p2, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->permutation:[I

    .line 586
    iput p3, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->rank:I

    .line 587
    iput-object p4, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->diagR:[D

    .line 588
    iput-object p5, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->jacNorm:[D

    .line 589
    iput-object p6, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->beta:[D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[[D
    .locals 0

    .line 556
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->weightedJacobian:[[D

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[I
    .locals 0

    .line 556
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->permutation:[I

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D
    .locals 0

    .line 556
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->diagR:[D

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D
    .locals 0

    .line 556
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->jacNorm:[D

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)I
    .locals 0

    .line 556
    iget p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->rank:I

    return p0
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;)[D
    .locals 0

    .line 556
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/leastsquares/LevenbergMarquardtOptimizer$InternalData;->beta:[D

    return-object p0
.end method
