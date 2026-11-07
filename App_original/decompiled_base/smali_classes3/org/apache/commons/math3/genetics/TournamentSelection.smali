.class public Lorg/apache/commons/math3/genetics/TournamentSelection;
.super Ljava/lang/Object;
.source "TournamentSelection.java"

# interfaces
.implements Lorg/apache/commons/math3/genetics/SelectionPolicy;


# instance fields
.field private arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    return-void
.end method

.method private tournament(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getPopulationSize()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 77
    new-instance v0, Lorg/apache/commons/math3/genetics/TournamentSelection$1;

    iget v1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/genetics/TournamentSelection$1;-><init>(Lorg/apache/commons/math3/genetics/TournamentSelection;I)V

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getChromosomes()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    :goto_0
    iget p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    if-ge v2, p1, :cond_0

    .line 88
    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result p1

    .line 89
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/genetics/Chromosome;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/genetics/ListPopulation;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    .line 91
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/ListPopulation;->getFittestChromosome()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_LARGE_TOURNAMENT_ARITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v3, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getPopulationSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const/4 v2, 0x1

    aput-object p1, v4, v2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    return v0
.end method

.method public select(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/commons/math3/genetics/ChromosomePair;

    check-cast p1, Lorg/apache/commons/math3/genetics/ListPopulation;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/TournamentSelection;->tournament(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/TournamentSelection;->tournament(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v0
.end method

.method public setArity(I)V
    .locals 0

    .line 112
    iput p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->arity:I

    return-void
.end method
