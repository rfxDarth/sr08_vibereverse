.class public Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
.super Ljava/lang/Object;
.source "SparseGradient.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1332cd1L


# instance fields
.field private final derivatives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private value:D


# direct methods
.method private constructor <init>(DDLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    if-eqz p5, :cond_0

    .line 83
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 84
    iget-object p5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    mul-double v1, v1, p3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(DLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    if-eqz p3, :cond_0

    .line 67
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static atan2(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 0

    .line 613
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan2(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    return-object p0
.end method

.method public static createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .line 94
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public static createVariable(ID)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 3

    .line 103
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public static hypot(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 0

    .line 449
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->hypot(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    return-object p0
.end method

.method public static pow(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_2

    .line 508
    iget-wide p0, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 509
    invoke-virtual {p2, p0, p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->compose(DD)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    return-object p0

    :cond_0
    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 511
    invoke-virtual {p2, p0, p1, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->compose(DD)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p0

    return-object p0

    .line 513
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    return-object p0

    .line 516
    :cond_2
    iget-wide v0, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    .line 517
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    mul-double v5, v3, p0

    iget-object v7, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->abs()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 5

    .line 335
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 337
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->acos()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 567
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v3, v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    div-double v3, v5, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->acosh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 634
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->acosh(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v3, v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    div-double v3, v5, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 3

    .line 181
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-double/2addr v1, p1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 9

    .line 140
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-double/2addr v1, v3

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 141
    iget-object p1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 143
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    if-nez v3, :cond_0

    .line 145
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public addInPlace(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)V
    .locals 8

    .line 167
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v2, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    .line 168
    iget-object p1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 170
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    if-nez v2, :cond_0

    .line 172
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->asin()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 572
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v3, v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v3, v5, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    div-double v3, v5, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->asinh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 639
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->asinh(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v3, v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    div-double v3, v5, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 577
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v3, v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    div-double v3, v5, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan2(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public atan2(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 584
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .line 587
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    .line 590
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->divide(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    goto :goto_1

    .line 595
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->subtract(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->divide(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .line 596
    iget-wide v1, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    const-wide v1, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_0

    :cond_1
    const-wide v1, 0x400921fb54442d18L    # Math.PI

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .line 601
    :goto_1
    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v0
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->atanh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 644
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atanh(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v3, v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v3, v5, v3

    div-double v3, v5, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->cbrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .line 465
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v3

    .line 466
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double v0, v0, v3

    mul-double v0, v0, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v0

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v2
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->ceil()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .line 345
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public compose(DD)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 680
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->copySign(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->copySign(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public copySign(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 5

    .line 380
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 381
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    :cond_0
    if-gez v4, :cond_2

    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    :cond_1
    return-object p0

    .line 385
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public copySign(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 370
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 371
    iget-wide v2, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    if-gez p1, :cond_2

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    :cond_1
    return-object p0

    .line 375
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->cos()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 551
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->cosh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 618
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->divide(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->divide(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public divide(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 287
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, p1

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 12

    .line 267
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v1, v3

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 270
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 271
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-wide v7, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 273
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 275
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    if-nez v4, :cond_1

    .line 277
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    iget-wide v5, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    neg-double v5, v5

    iget-wide v7, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v5, v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 279
    :cond_1
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-wide v8, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v10, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v8, v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double v8, v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 845
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 846
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    .line 847
    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v5, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v3, v4, v5, v6, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 850
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 853
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 854
    iget-object v4, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    .line 857
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_5
    return v0

    :cond_6
    return v2
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->exp()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .line 523
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    .line 524
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    move-wide v5, v3

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v2
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->expm1()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 529
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->floor()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .line 350
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public getDerivative(I)D
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$1;-><init>(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)V

    return-object v0
.end method

.method public getReal()D
    .locals 2

    .line 135
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .line 130
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 875
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit16 v0, v0, 0x329

    add-int/lit16 v0, v0, 0x2e7

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0xa7

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->hypot(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public hypot(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 3

    .line 399
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 401
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 405
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v0

    .line 406
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v1

    add-int/lit8 v2, v1, 0x1b

    if-le v0, v2, :cond_2

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->abs()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v0, 0x1b

    if-le v1, v2, :cond_3

    .line 412
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->abs()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/2addr v0, v1

    .line 416
    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    .line 419
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v2

    .line 420
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    .line 423
    invoke-virtual {v2, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    .line 427
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 402
    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 400
    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p9, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual/range {p0 .. p9}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p9, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p12, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p5, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p5, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p7, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p8, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 46
    check-cast p2, [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination([D[Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 46
    check-cast p1, [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    check-cast p2, [Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->linearCombination([Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;[Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 9

    .line 748
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .line 751
    iget-wide v3, p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v7, p6, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide v1, p1

    move-wide v5, p4

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    iput-wide p1, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 15

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    move-wide/from16 v2, p1

    move-object/from16 v4, p9

    .line 780
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v5

    move-wide/from16 v6, p4

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v5

    move-wide/from16 v8, p7

    invoke-virtual {v4, v8, v9}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v12

    .line 783
    iget-wide v10, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v0, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v4, v4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide v13, v6

    move-wide v6, v0

    move-wide v0, v2

    move-wide v2, v10

    move-wide v10, v4

    move-wide v4, v13

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v0

    iput-wide v0, v12, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v12
.end method

.method public linearCombination(DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;DLorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 22

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    move-object/from16 v2, p9

    move-wide/from16 v3, p1

    move-object/from16 v5, p12

    .line 817
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    move-wide/from16 v7, p4

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    move-wide/from16 v10, p7

    invoke-virtual {v2, v10, v11}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    move-wide/from16 v14, p10

    invoke-virtual {v5, v14, v15}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v6

    .line 820
    iget-wide v12, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v0, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide/from16 v16, v0

    iget-wide v0, v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide/from16 v20, v0

    move-object v0, v6

    move-wide v6, v7

    move-wide/from16 v8, v16

    move-wide/from16 v16, v20

    move-wide v2, v3

    move-wide v4, v12

    move-wide/from16 v12, v18

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 9

    .line 734
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .line 737
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v3, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v5, p3, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v7, p4, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    iput-wide p1, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 13

    .line 763
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual/range {p5 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    .line 766
    iget-wide v1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v3, p2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 p1, p3

    iget-wide v5, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 p1, p4

    iget-wide v7, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 p1, p5

    iget-wide v9, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 p1, p6

    iget-wide v11, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide p1

    iput-wide p1, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 20

    .line 798
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual/range {p5 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual/range {p7 .. p8}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    move-object/from16 v1, p1

    .line 801
    iget-wide v2, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v1, p2

    iget-wide v4, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v1, p3

    iget-wide v6, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v1, p4

    iget-wide v8, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v1, p5

    iget-wide v10, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v1, p6

    iget-wide v12, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v1, p7

    iget-wide v14, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-object/from16 v1, p8

    move-wide/from16 v16, v2

    iget-wide v1, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    move-wide/from16 v18, v16

    move-wide/from16 v16, v1

    move-wide/from16 v2, v18

    invoke-static/range {v2 .. v17}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v0
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    const/4 v0, 0x0

    .line 713
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const/4 v2, 0x0

    .line 714
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 715
    aget-object v3, p2, v2

    aget-wide v4, p1, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    :cond_0
    array-length v2, p2

    new-array v2, v2, [D

    .line 720
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 721
    aget-object v3, p2, v0

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getValue()D

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 723
    :cond_1
    invoke-static {p1, v2}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide p1

    iput-wide p1, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v1
.end method

.method public linearCombination([Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;[Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 689
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const/4 v2, 0x0

    .line 690
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 691
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->add(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    :cond_0
    array-length v2, p1

    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 696
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 697
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 699
    :cond_1
    array-length p1, p2

    new-array p1, p1, [D

    .line 700
    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 701
    aget-object v3, p2, v0

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getValue()D

    move-result-wide v3

    aput-wide v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 703
    :cond_2
    invoke-static {v2, p1}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide p1

    iput-wide p1, v1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-object v1
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->log()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 534
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v3, v5

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public log10()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 541
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->log1p()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 546
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    div-double v3, v5, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 257
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v1, v1, p1

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 262
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    int-to-double v3, p1

    mul-double v1, v1, v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 11

    .line 207
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v1, v1, v3

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 211
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 212
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 216
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    if-nez v3, :cond_1

    .line 218
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    :cond_1
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public multiplyInPlace(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)V
    .locals 11

    .line 240
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 241
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 245
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    if-nez v3, :cond_1

    .line 247
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    iget-wide v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 249
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 252
    :cond_2
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v2, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    return-void
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 292
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    neg-double v1, v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public numVars()I
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->pow(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->pow(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->pow(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 483
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v5, p1, v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, p1

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public pow(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    if-nez p1, :cond_0

    .line 489
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    return-object p1

    .line 491
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    add-int/lit8 v2, p1, -0x1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    .line 492
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    mul-double v3, v3, v0

    int-to-double v5, p1

    mul-double v5, v5, v0

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v2
.end method

.method public pow(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->log()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->exp()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->reciprocal()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 454
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    mul-double v1, v1, v1

    div-double/2addr v5, v1

    move-wide v1, v3

    move-wide v3, v5

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->remainder(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->remainder(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public remainder(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 3

    .line 319
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide p1

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public remainder(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 4

    .line 326
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v2, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v0

    .line 327
    iget-wide v2, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    sub-double/2addr v2, v0

    iget-wide v0, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v0

    .line 329
    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->subtract(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->rint()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .line 355
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->rootN(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public rootN(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 14

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->cbrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1

    .line 476
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v6, v4, v2

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v9

    .line 477
    new-instance v8, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v9, v10, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    mul-double v2, v2, v0

    div-double v11, v4, v2

    iget-object v13, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v8
.end method

.method public round()J
    .locals 2

    .line 360
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public scalb(I)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 7

    .line 390
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2, p1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v1

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 391
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 392
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6, p1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->signum()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .line 365
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sin()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 556
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sinh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 623
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .line 459
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 460
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    div-double v5, v0, v3

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v2
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 46
    check-cast p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->subtract(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object p1

    return-object p1
.end method

.method public subtract(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 3

    .line 202
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    sub-double/2addr v1, p1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 9

    .line 187
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    sub-double/2addr v1, v3

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DLjava/util/Map;)V

    .line 188
    iget-object p1, p1, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 190
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    if-nez v3, :cond_0

    .line 192
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->tan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .line 561
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v3

    .line 562
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v5, v3, v3

    add-double/2addr v5, v0

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v2
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->tanh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 8

    .line 628
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->tanh(D)D

    move-result-wide v3

    .line 629
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v5, v3, v3

    sub-double v5, v0, v5

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v2
.end method

.method public varargs taylor([D)D
    .locals 7

    .line 666
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    const/4 v2, 0x0

    .line 667
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 668
    aget-wide v3, p1, v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getDerivative(I)D

    move-result-wide v5

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public toDegrees()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 651
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->toDegrees(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->toDegrees(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method

.method public toRadians()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 6

    .line 658
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->toRadians(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->toRadians(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->derivatives:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;-><init>(DDLjava/util/Map;)V

    return-object v0
.end method
