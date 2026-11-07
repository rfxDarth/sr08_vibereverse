.class public Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;
.super Ljava/lang/Object;
.source "SpearmansCorrelation.java"


# instance fields
.field private final data:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

.field private final rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;-><init>(Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1

    .line 86
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->data:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 103
    new-instance p2, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object p2, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->data:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 75
    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 76
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    return-void
.end method

.method private getNaNPositions([D)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 233
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 234
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5

    .line 197
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    instance-of v1, v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    if-ne v0, v1, :cond_1

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 200
    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 201
    invoke-interface {p1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v3, 0x0

    .line 208
    :goto_1
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 209
    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_3

    .line 215
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 218
    :cond_3
    :goto_2
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 219
    iget-object p1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private removeValues([DLjava/util/Set;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[D"
        }
    .end annotation

    .line 249
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 252
    :cond_0
    array-length v0, p1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 253
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 255
    aget-wide v4, p1, v1

    aput-wide v4, v0, v2

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 139
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankTransform(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    .line 140
    new-instance v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 152
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public correlation([D[D)D
    .locals 4

    .line 165
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 167
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    instance-of v0, v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    check-cast v1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->getNaNPositions([D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object p1

    .line 181
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->removeValues([DLjava/util/Set;)[D

    move-result-object p2

    .line 183
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankingAlgorithm:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v1, p2}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlation([D[D)D

    move-result-wide p1

    return-wide p1

    .line 168
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object v2, v1, p1

    invoke-direct {p2, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    .line 166
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getRankCorrelation()Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->rankCorrelation:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    return-object v0
.end method
