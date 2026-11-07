.class public Lorg/apache/commons/math3/ode/events/EventFilter;
.super Ljava/lang/Object;
.source "EventFilter.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/events/EventHandler;


# static fields
.field private static final HISTORY_SIZE:I = 0x64


# instance fields
.field private extremeT:D

.field private final filter:Lorg/apache/commons/math3/ode/events/FilterType;

.field private forward:Z

.field private final rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private final transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

.field private final updates:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;Lorg/apache/commons/math3/ode/events/FilterType;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    .line 85
    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    const/16 p1, 0x64

    .line 86
    new-array p2, p1, [Lorg/apache/commons/math3/ode/events/Transformer;

    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    .line 87
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    return-void
.end method


# virtual methods
.method public eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    .locals 1

    .line 196
    iget-object p4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/events/FilterType;->getTriggeredIncreasing()Z

    move-result v0

    invoke-interface {p4, p1, p2, p3, v0}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object p1

    return-object p1
.end method

.method public g(D[D)D
    .locals 9

    .line 107
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    .line 110
    iget-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 111
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length v5, v4

    sub-int/2addr v5, v3

    .line 112
    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    cmpg-double v8, v6, p1

    if-gez v8, :cond_1

    .line 116
    aget-object v4, v4, v5

    .line 117
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {v6, v4, v0, v1, p3}, Lorg/apache/commons/math3/ode/events/FilterType;->selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;

    move-result-object p3

    if-eq p3, v4, :cond_0

    .line 125
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    invoke-static {v4, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {v4, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    aput-wide v3, v2, v5

    .line 128
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object p3, v2, v5

    .line 131
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 134
    invoke-virtual {p3, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    if-lez v5, :cond_3

    .line 141
    iget-object p3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    aget-wide v3, p3, v5

    cmpg-double p3, v3, p1

    if-gtz p3, :cond_2

    .line 143
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object p1, p1, v5

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p1

    return-wide p1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 147
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object p1, p1, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p1

    return-wide p1

    .line 151
    :cond_4
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    cmpg-double v6, p1, v4

    if-gez v6, :cond_6

    .line 155
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v4, v4, v2

    .line 156
    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {v5, v4, v0, v1, p3}, Lorg/apache/commons/math3/ode/events/FilterType;->selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;

    move-result-object p3

    if-eq p3, v4, :cond_5

    .line 164
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    aput-wide v4, v3, v2

    .line 167
    iget-object v3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object p3, v3, v2

    .line 170
    :cond_5
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 173
    invoke-virtual {p3, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p1

    return-wide p1

    .line 179
    :cond_6
    :goto_1
    iget-object p3, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    array-length v4, p3

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_8

    .line 180
    aget-wide v4, p3, v2

    cmpg-double p3, p1, v4

    if-gtz p3, :cond_7

    .line 182
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object p1, p1, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p1

    return-wide p1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    :cond_8
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length p2, p3

    sub-int/2addr p2, v3

    aget-object p1, p1, p2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public init(D[DD)V
    .locals 6

    .line 94
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/events/EventHandler;->init(D[DD)V

    cmpl-double p1, v4, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 97
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1

    :cond_1
    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 98
    :goto_1
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 99
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    sget-object p2, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    return-void
.end method

.method public resetState(D[D)V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    return-void
.end method
