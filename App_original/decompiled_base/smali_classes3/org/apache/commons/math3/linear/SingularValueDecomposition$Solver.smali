.class Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;
.super Ljava/lang/Object;
.source "SingularValueDecomposition.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Solver"
.end annotation


# instance fields
.field private nonSingular:Z

.field private final pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method private constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZD)V
    .locals 8

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 679
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 681
    aget-wide v2, p1, v1

    cmpl-double v4, v2, p5

    if-lez v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    .line 686
    :goto_1
    aget-object v2, p2, v1

    const/4 v3, 0x0

    .line 687
    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 688
    aget-wide v6, v2, v3

    mul-double v6, v6, v4

    aput-wide v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface {p3, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 692
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->nonSingular:Z

    return-void
.end method

.method synthetic constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$1;)V
    .locals 0

    .line 661
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 741
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public isNonSingular()Z
    .locals 1

    .line 732
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->nonSingular:Z

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 723
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;->pseudoInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method
