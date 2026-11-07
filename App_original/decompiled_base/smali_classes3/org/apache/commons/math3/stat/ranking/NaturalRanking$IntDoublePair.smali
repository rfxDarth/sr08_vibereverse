.class Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;
.super Ljava/lang/Object;
.source "NaturalRanking.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/ranking/NaturalRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntDoublePair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;",
        ">;"
    }
.end annotation


# instance fields
.field private final position:I

.field private final value:D


# direct methods
.method public constructor <init>(DI)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->value:D

    .line 443
    iput p3, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->position:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 428
    check-cast p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->compareTo(Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;)I
    .locals 4

    .line 454
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->value:D

    iget-wide v2, p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public getPosition()I
    .locals 1

    .line 472
    iget v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->position:I

    return v0
.end method

.method public getValue()D
    .locals 2

    .line 464
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$IntDoublePair;->value:D

    return-wide v0
.end method
