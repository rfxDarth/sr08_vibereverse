.class public Lorg/apache/commons/math3/optim/PointValuePair;
.super Lorg/apache/commons/math3/util/Pair;
.source "PointValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/PointValuePair$DataTransferObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/util/Pair<",
        "[D",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13303c1L


# direct methods
.method public constructor <init>([DD)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DDZ)V

    return-void
.end method

.method public constructor <init>([DDZ)V
    .locals 0

    if-eqz p4, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .line 88
    new-instance v0, Lorg/apache/commons/math3/optim/PointValuePair$DataTransferObject;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointValuePair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/PointValuePair$DataTransferObject;-><init>([DD)V

    return-object v0
.end method


# virtual methods
.method public getPoint()[D
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointValuePair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getPointRef()[D
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/PointValuePair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
