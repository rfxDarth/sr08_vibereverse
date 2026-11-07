.class public Lorg/apache/commons/math3/random/EmpiricalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;,
        Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;,
        Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_BIN_COUNT:I = 0x3e8

.field private static final FILE_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final serialVersionUID:J = 0x4f81c2041f1ef85eL


# instance fields
.field private final binCount:I

.field private final binStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private delta:D

.field private loaded:Z

.field private max:D

.field private min:D

.field protected final randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

.field private sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

.field private upperBounds:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 144
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 153
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    return-void
.end method

.method private constructor <init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V
    .locals 3

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 120
    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 123
    iput-wide v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 126
    iput-wide v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    const-wide/16 v1, 0x0

    .line 129
    iput-wide v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    const/4 v1, 0x0

    .line 135
    iput-boolean v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    .line 138
    iput-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    .line 216
    iput p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    .line 217
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    .line 218
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomDataImpl;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-virtual {p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->getDelegate()Lorg/apache/commons/math3/random/RandomDataGenerator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 165
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataGenerator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomDataImpl;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x3e8

    .line 203
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomDataImpl;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 176
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;-><init>(ILorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object p0
.end method

.method static synthetic access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object p1
.end method

.method private cumBinP(I)D
    .locals 3

    .line 842
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method private fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    .line 430
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    .line 431
    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    sub-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    .line 434
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 437
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    if-ge v1, v2, :cond_1

    .line 438
    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 439
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->computeBinStats()V

    .line 446
    iget p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    .line 447
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 p1, 0x1

    const/4 v0, 0x1

    .line 449
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    .line 450
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v6, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    sub-int/2addr v1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    return-void
.end method

.method private findBin(D)I
    .locals 2

    .line 463
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result p1

    iget p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    return p1
.end method

.method private k(D)Lorg/apache/commons/math3/distribution/RealDistribution;
    .locals 0

    .line 831
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result p1

    .line 832
    iget-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object p1

    return-object p1
.end method

.method private kB(I)D
    .locals 6

    .line 818
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v0

    .line 819
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v1

    if-nez p1, :cond_0

    .line 820
    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    const/4 p1, 0x0

    aget-wide v4, v0, p1

    :goto_0
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(DD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    aget-wide v2, v0, v2

    aget-wide v4, v0, p1

    goto :goto_0
.end method

.method private pB(I)D
    .locals 5

    if-nez p1, :cond_0

    .line 795
    iget-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    aget-wide v1, v0, p1

    add-int/lit8 p1, p1, -0x1

    aget-wide v3, v0, p1

    sub-double/2addr v1, v3

    return-wide v1
.end method

.method private pBminus(I)D
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 806
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    add-int/lit8 p1, p1, -0x1

    aget-wide v1, v0, p1

    return-wide v1
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 10

    .line 644
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 646
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1

    .line 649
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result v0

    .line 650
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pBminus(I)D

    move-result-wide v1

    .line 651
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v3

    .line 652
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v5

    .line 653
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v6

    if-nez v0, :cond_2

    .line 654
    iget-wide v8, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    aget-wide v8, v5, v0

    .line 655
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->k(D)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v0

    .line 656
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide p1

    invoke-interface {v0, v8, v9}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v8

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    mul-double v3, v3, p1

    add-double/2addr v1, v3

    return-wide v1
.end method

.method public density(D)D
    .locals 3

    .line 622
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->findBin(D)I

    move-result v0

    .line 626
    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v1

    .line 627
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/math3/distribution/RealDistribution;->density(D)D

    move-result-wide p1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v1

    mul-double p1, p1, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v0

    div-double/2addr p1, v0

    return-wide p1

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getBinCount()I
    .locals 1

    .line 518
    iget v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    return v0
.end method

.method public getBinStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    return-object v0
.end method

.method public getGeneratorUpperBounds()[D
    .locals 4

    .line 571
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    array-length v1, v0

    .line 572
    new-array v2, v1, [D

    const/4 v3, 0x0

    .line 573
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method protected getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;
    .locals 8

    .line 853
    new-instance v0, Lorg/apache/commons/math3/distribution/NormalDistribution;

    iget-object v1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-object v0
.end method

.method public getNextValue()D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 477
    iget-boolean v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DD)D

    move-result-wide v2

    const/4 v0, 0x0

    .line 485
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    if-ge v0, v6, :cond_2

    .line 486
    iget-object v6, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->upperBounds:[D

    aget-wide v7, v6, v0

    cmpg-double v6, v2, v7

    if-gtz v6, :cond_1

    .line 487
    iget-object v6, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 488
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    .line 489
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    .line 490
    invoke-virtual {p0, v6}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/distribution/RealDistribution;->sample()D

    move-result-wide v0

    return-wide v0

    .line 492
    :cond_0
    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_BIN_SELECTED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 478
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DISTRIBUTION_NOT_LOADED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getNumericalMean()D
    .locals 2

    .line 719
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    .line 727
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleStats()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-object v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    .line 735
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    .line 743
    iget-wide v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    return-wide v0
.end method

.method public getUpperBounds()[D
    .locals 9

    .line 546
    iget v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 547
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binCount:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 548
    iget-wide v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    iget-wide v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->delta:D

    add-int/lit8 v6, v1, 0x1

    int-to-double v7, v6

    mul-double v4, v4, v7

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    move v1, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 550
    iget-wide v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->max:D

    aput-wide v3, v0, v2

    return-object v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    if-ltz v3, :cond_5

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p1, v3

    if-gtz v5, :cond_5

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 688
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSupportLowerBound()D

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez v5, :cond_1

    .line 692
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getSupportUpperBound()D

    move-result-wide v0

    return-wide v0

    .line 696
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->cumBinP(I)D

    move-result-wide v3

    cmpg-double v5, v3, p1

    if-gez v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->binStats:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getKernel(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/distribution/RealDistribution;

    move-result-object v3

    .line 701
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->kB(I)D

    move-result-wide v4

    .line 702
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getUpperBounds()[D

    move-result-object v6

    if-nez v0, :cond_3

    .line 703
    iget-wide v6, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->min:D

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v0, -0x1

    aget-wide v7, v6, v7

    move-wide v6, v7

    .line 704
    :goto_1
    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v8

    .line 705
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pB(I)D

    move-result-wide v10

    .line 706
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->pBminus(I)D

    move-result-wide v12

    sub-double v12, p1, v12

    cmpg-double v0, v12, v1

    if-gtz v0, :cond_4

    return-wide v6

    :cond_4
    mul-double v12, v12, v4

    div-double/2addr v12, v10

    add-double/2addr v8, v12

    .line 711
    invoke-interface {v3, v8, v9}, Lorg/apache/commons/math3/distribution/RealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v0

    return-wide v0

    .line 684
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method

.method public isLoaded()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    return v0
.end method

.method public isSupportConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public load(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 289
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 290
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 292
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 294
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    .line 295
    invoke-virtual {v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->computeStats()V

    .line 297
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 298
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    :try_start_1
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;)V

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 306
    :catch_1
    throw v0
.end method

.method public load(Ljava/net/URL;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 255
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 256
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    :try_start_0
    new-instance v2, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    .line 261
    invoke-virtual {v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->computeStats()V

    .line 262
    iget-object v2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->sampleStats:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    .line 266
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    new-instance p1, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;

    invoke-direct {p1, p0, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;)V

    .line 268
    iput-boolean v6, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    .line 263
    :cond_0
    :try_start_3
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->URL_CONTAINS_NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 271
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 274
    :catch_1
    throw p1
.end method

.method public load([D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 229
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;[D)V

    .line 231
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;->computeStats()V

    .line 233
    new-instance v0, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/random/EmpiricalDistribution$ArrayDataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;[D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->fillBinStats(Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->loaded:Z

    return-void

    .line 236
    :catch_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1
.end method

.method public probability(D)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public reSeed(J)V
    .locals 1

    .line 593
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    return-void
.end method

.method public reseedRandomGenerator(J)V
    .locals 1

    .line 785
    iget-object v0, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->reSeed(J)V

    return-void
.end method

.method public sample()D
    .locals 2

    .line 776
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->getNextValue()D

    move-result-wide v0

    return-wide v0
.end method
