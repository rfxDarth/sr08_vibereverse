.class public Lorg/apache/commons/math3/ode/JacobianMatrices;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;,
        Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;,
        Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;
    }
.end annotation


# instance fields
.field private dirtyParameter:Z

.field private efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field private index:I

.field private jacobianProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ode/ParameterJacobianProvider;",
            ">;"
        }
    .end annotation
.end field

.field private jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

.field private matricesData:[D

.field private paramDim:I

.field private pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

.field private selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

.field private stateDim:I


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D)V

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/math3/ode/JacobianMatrices;-><init>(Lorg/apache/commons/math3/ode/MainStateJacobianProvider;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/ode/MainStateJacobianProvider;[Ljava/lang/String;)V
    .locals 6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    const/4 v1, -0x1

    .line 126
    iput v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    .line 128
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    .line 129
    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    .line 131
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/MainStateJacobianProvider;->getDimension()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 134
    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    .line 135
    iput p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I

    goto :goto_1

    .line 137
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lorg/apache/commons/math3/ode/ParameterConfiguration;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    const/4 v0, 0x0

    .line 138
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    new-instance v2, Lorg/apache/commons/math3/ode/ParameterConfiguration;

    aget-object v3, p2, v0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/ParameterConfiguration;-><init>(Ljava/lang/String;D)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    array-length p2, p2

    iput p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I

    .line 143
    :goto_1
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    .line 145
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;

    .line 149
    iget p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I

    add-int/2addr v0, p2

    mul-int v0, v0, p2

    new-array p2, v0, [D

    iput-object p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    .line 150
    :goto_2
    iget p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    if-ge p1, p2, :cond_2

    .line 151
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    add-int/lit8 p2, p2, 0x1

    mul-int p2, p2, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I
    .locals 0

    .line 57
    iget p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I
    .locals 0

    .line 57
    iget p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->paramDim:I

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/ode/JacobianMatrices;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    return p0
.end method

.method static synthetic access$402(Lorg/apache/commons/math3/ode/JacobianMatrices;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    return p1
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/ParameterizedODE;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    return-object p0
.end method

.method static synthetic access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;

    return-object p0
.end method

.method private checkDimension(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    :goto_0
    if-ne p2, p1, :cond_1

    return-void

    .line 334
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public addParameterJacobianProvider(Lorg/apache/commons/math3/ode/ParameterJacobianProvider;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jacobianProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentMainSetJacobian([[D)V
    .locals 6

    .line 295
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryState(I)[D

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 298
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    if-ge v2, v4, :cond_0

    .line 299
    aget-object v5, p1, v2

    invoke-static {v0, v3, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iget v4, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentParameterJacobian(Ljava/lang/String;[D)V
    .locals 7

    .line 312
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryState(I)[D

    move-result-object v0

    .line 314
    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    mul-int v1, v1, v1

    .line 315
    iget-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 316
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    iget p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-static {v0, v1, p2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 320
    :cond_0
    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerVariationalEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->jode:Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    instance-of v1, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->access$000(Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;)Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-result-object v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimary()Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 175
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 176
    new-instance v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;-><init>(Lorg/apache/commons/math3/ode/JacobianMatrices;Lorg/apache/commons/math3/ode/JacobianMatrices$1;)V

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->addSecondaryEquations(Lorg/apache/commons/math3/ode/SecondaryEquations;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    return-void

    .line 172
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;

    invoke-direct {p1}, Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;-><init>()V

    throw p1
.end method

.method public setInitialMainStateJacobian([[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 240
    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/JacobianMatrices;->checkDimension(ILjava/lang/Object;)V

    .line 241
    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->checkDimension(ILjava/lang/Object;)V

    .line 245
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    .line 246
    iget-object v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    iget v6, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-static {v4, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget v4, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    if-eqz p1, :cond_1

    .line 251
    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    :cond_1
    return-void
.end method

.method public setInitialParameterJacobian(Ljava/lang/String;[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 270
    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->checkDimension(ILjava/lang/Object;)V

    .line 273
    iget v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    mul-int v0, v0, v0

    .line 274
    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 275
    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    iget-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    iget v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->efode:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    if-eqz p1, :cond_0

    .line 278
    iget p2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->index:I

    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->matricesData:[D

    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setSecondaryState(I[D)V

    :cond_0
    return-void

    .line 282
    :cond_1
    iget v5, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->stateDim:I

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setParameterStep(Ljava/lang/String;D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/ode/UnknownParameterException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->selectedParameters:[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 217
    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {v3, p2, p3}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->setHP(D)V

    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/ode/UnknownParameterException;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/ode/UnknownParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setParameterizedODE(Lorg/apache/commons/math3/ode/ParameterizedODE;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->pode:Lorg/apache/commons/math3/ode/ParameterizedODE;

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices;->dirtyParameter:Z

    return-void
.end method
