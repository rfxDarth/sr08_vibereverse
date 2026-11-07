.class public Lorg/apache/commons/math3/genetics/ChromosomePair;
.super Ljava/lang/Object;
.source "ChromosomePair.java"


# instance fields
.field private final first:Lorg/apache/commons/math3/genetics/Chromosome;

.field private final second:Lorg/apache/commons/math3/genetics/Chromosome;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->first:Lorg/apache/commons/math3/genetics/Chromosome;

    .line 41
    iput-object p2, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->second:Lorg/apache/commons/math3/genetics/Chromosome;

    return-void
.end method


# virtual methods
.method public getFirst()Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->first:Lorg/apache/commons/math3/genetics/Chromosome;

    return-object v0
.end method

.method public getSecond()Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/commons/math3/genetics/ChromosomePair;->second:Lorg/apache/commons/math3/genetics/Chromosome;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "(%s,%s)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
