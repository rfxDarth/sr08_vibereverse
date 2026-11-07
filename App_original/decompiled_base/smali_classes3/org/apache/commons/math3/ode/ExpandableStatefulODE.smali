.class public Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
.super Ljava/lang/Object;
.source "ExpandableStatefulODE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
    }
.end annotation


# instance fields
.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

.field private final primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

.field private final primaryState:[D

.field private final primaryStateDot:[D

.field private time:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    .line 75
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 76
    new-instance p1, Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;-><init>(II)V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 77
    iput-wide v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->time:D

    .line 78
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    .line 79
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addSecondaryEquations(Lorg/apache/commons/math3/ode/SecondaryEquations;)I
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    .line 143
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    .line 146
    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getFirstIndex()I

    move-result v1

    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v0

    add-int/2addr v0, v1

    .line 149
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    invoke-direct {v2, p1, v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;-><init>(Lorg/apache/commons/math3/ode/SecondaryEquations;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public computeDerivatives(D[D[D)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    invoke-virtual {v0, p3, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 122
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    .line 123
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 124
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$300(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/SecondaryEquations;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v9

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$200(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v10

    move-wide v5, p1

    invoke-interface/range {v4 .. v10}, Lorg/apache/commons/math3/ode/SecondaryEquations;->computeDerivatives(D[D[D[D[D)V

    .line 126
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p1

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$200(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    move-wide p1, v5

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object p2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    invoke-virtual {p1, p2, p4}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    return-void
.end method

.method public getCompleteState()[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    new-array v0, v0, [D

    .line 293
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 294
    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    .line 295
    invoke-static {v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v3

    invoke-static {v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPrimary()Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primary:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    return-object v0
.end method

.method public getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    return-object v0
.end method

.method public getPrimaryState()[D
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getPrimaryStateDot()[D
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryStateDot:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;
    .locals 4

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/apache/commons/math3/ode/EquationsMapper;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 170
    iget-object v3, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    invoke-static {v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSecondaryState(I)[D
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    invoke-static {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object p1

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    return-object p1
.end method

.method public getSecondaryStateDot(I)[D
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    invoke-static {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$200(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object p1

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    return-object p1
.end method

.method public getTime()D
    .locals 2

    .line 186
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->time:D

    return-wide v0
.end method

.method public getTotalDimension()I
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v0

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getFirstIndex()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public setCompleteState([D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 270
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryMapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    .line 276
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    .line 277
    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lorg/apache/commons/math3/ode/EquationsMapper;->extractEquationData([D[D)V

    goto :goto_0

    :cond_0
    return-void

    .line 271
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public setPrimaryState([D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 197
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 202
    array-length v0, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 198
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget-object v1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->primaryState:[D

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public setSecondaryState(I[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;

    invoke-static {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D

    move-result-object p1

    .line 234
    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 239
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 235
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p1, p1

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public setTime(D)V
    .locals 0

    .line 179
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->time:D

    return-void
.end method
