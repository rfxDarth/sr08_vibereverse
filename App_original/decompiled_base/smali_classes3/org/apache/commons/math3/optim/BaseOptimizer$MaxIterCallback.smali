.class Lorg/apache/commons/math3/optim/BaseOptimizer$MaxIterCallback;
.super Ljava/lang/Object;
.source "BaseOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/BaseOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxIterCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/optim/BaseOptimizer$1;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer$MaxIterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public trigger(I)V
    .locals 1

    .line 258
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
