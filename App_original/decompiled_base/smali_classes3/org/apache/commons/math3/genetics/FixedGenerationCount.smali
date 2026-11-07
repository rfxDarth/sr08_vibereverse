.class public Lorg/apache/commons/math3/genetics/FixedGenerationCount;
.super Ljava/lang/Object;
.source "FixedGenerationCount.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/StoppingCondition;


# instance fields
.field private final maxGenerations:I

.field private numGenerations:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    if-lez p1, :cond_0

    .line 46
    iput p1, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->maxGenerations:I

    return-void

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public getNumGenerations()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    return v0
.end method

.method public isSatisfied(Lorg/apache/commons/math3/genetics/Population;)Z
    .locals 2

    .line 57
    iget p1, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    iget v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->maxGenerations:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    add-int/2addr p1, v1

    .line 58
    iput p1, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->numGenerations:I

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method
