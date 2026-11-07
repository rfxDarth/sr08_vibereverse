.class final enum Lorg/apache/commons/math3/ode/events/FilterType$2;
.super Lorg/apache/commons/math3/ode/events/FilterType;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/FilterType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/FilterType;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/FilterType$1;)V

    return-void
.end method


# virtual methods
.method protected getTriggeredIncreasing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz p4, :cond_7

    .line 272
    sget-object p4, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v7

    aget p4, p4, v7

    if-eq p4, v4, :cond_4

    if-eq p4, v3, :cond_3

    if-eq p4, v2, :cond_2

    if-eq p4, v1, :cond_1

    if-ne p4, v0, :cond_0

    cmpl-double p4, p2, v5

    if-ltz p4, :cond_c

    .line 317
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    .line 324
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    :cond_1
    cmpl-double p4, p2, v5

    if-ltz p4, :cond_c

    .line 308
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_2
    cmpg-double p4, p2, v5

    if-gtz p4, :cond_c

    .line 299
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_3
    cmpg-double p4, p2, v5

    if-gtz p4, :cond_c

    .line 290
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_4
    cmpl-double p1, p2, v5

    if-lez p1, :cond_5

    .line 277
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_5
    cmpg-double p1, p2, v5

    if-gez p1, :cond_6

    .line 280
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    .line 284
    :cond_6
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    .line 327
    :cond_7
    sget-object p4, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v7

    aget p4, p4, v7

    if-eq p4, v4, :cond_d

    if-eq p4, v3, :cond_b

    if-eq p4, v2, :cond_a

    if-eq p4, v1, :cond_9

    if-ne p4, v0, :cond_8

    cmpg-double p4, p2, v5

    if-gtz p4, :cond_c

    .line 372
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    .line 379
    :cond_8
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    :cond_9
    cmpg-double p4, p2, v5

    if-gtz p4, :cond_c

    .line 363
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_a
    cmpl-double p4, p2, v5

    if-ltz p4, :cond_c

    .line 354
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_b
    cmpl-double p4, p2, v5

    if-ltz p4, :cond_c

    .line 345
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    :cond_c
    return-object p1

    :cond_d
    cmpl-double p1, p2, v5

    if-lez p1, :cond_e

    .line 332
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    :cond_e
    cmpg-double p1, p2, v5

    if-gez p1, :cond_f

    .line 335
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1

    .line 339
    :cond_f
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p1
.end method
