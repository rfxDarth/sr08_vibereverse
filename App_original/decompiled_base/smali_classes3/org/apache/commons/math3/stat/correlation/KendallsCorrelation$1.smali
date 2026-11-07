.class Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;
.super Ljava/lang/Object;
.source "KendallsCorrelation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlation([D[D)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/util/Pair<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;->this$0:Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 171
    check-cast p1, Lorg/apache/commons/math3/util/Pair;

    check-cast p2, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$1;->compare(Lorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)I"
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1
.end method
