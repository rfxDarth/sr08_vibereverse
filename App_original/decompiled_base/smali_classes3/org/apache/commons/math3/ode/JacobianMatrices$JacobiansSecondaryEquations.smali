.class Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/SecondaryEquations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JacobiansSecondaryEquations"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;Lorg/apache/commons/math3/ode/JacobianMatrices$1;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;-><init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V

    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D[D[D)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 357
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$400(Lorg/apache/commons/math3/ode/JacobianMatrices;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v6}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$600(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/ParameterizedODE;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v7}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;Lorg/apache/commons/math3/ode/ParameterizedODE;[Lorg/apache/commons/math3/ode/ParameterConfiguration;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$402(Lorg/apache/commons/math3/ode/JacobianMatrices;Z)Z

    .line 366
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v2, v5, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [[D

    .line 367
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v7

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface/range {v7 .. v12}, Lorg/apache/commons/math3/ode/MainStateJacobianProvider;->computeMainStateJacobian(D[D[D[[D)V

    const/4 v2, 0x0

    .line 370
    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 371
    aget-object v4, v12, v2

    const/4 v5, 0x0

    .line 372
    :goto_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v9

    if-ge v5, v9, :cond_2

    move v13, v5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 376
    :goto_2
    iget-object v14, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v14}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v14

    if-ge v9, v14, :cond_1

    .line 377
    aget-wide v14, v4, v9

    aget-wide v16, p5, v13

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    .line 378
    iget-object v14, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v14}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 380
    :cond_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v9

    mul-int v9, v9, v2

    add-int/2addr v9, v5

    aput-wide v10, v1, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_3
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 386
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    new-array v2, v2, [D

    .line 387
    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v5

    mul-int v4, v4, v5

    .line 388
    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v5

    array-length v9, v5

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_9

    aget-object v11, v5, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-nez v13, :cond_7

    .line 390
    iget-object v15, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v15}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_7

    .line 391
    iget-object v15, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v15}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;

    .line 392
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 393
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v19, v2

    move v3, v14

    move-object v13, v15

    move-wide/from16 v14, p1

    invoke-interface/range {v13 .. v19}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->computeParameterJacobian(D[D[DLjava/lang/String;[D)V

    const/4 v2, 0x0

    .line 395
    :goto_5
    iget-object v13, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v13}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v13

    if-ge v2, v13, :cond_5

    .line 396
    aget-object v13, v12, v2

    .line 398
    aget-wide v14, v19, v2

    move/from16 v17, v4

    const/4 v6, 0x0

    const/16 v16, 0x1

    .line 399
    :goto_6
    iget-object v7, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v7}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 400
    aget-wide v7, v13, v6

    aget-wide v20, p5, v17

    mul-double v7, v7, v20

    add-double/2addr v14, v7

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_4
    add-int v6, v4, v2

    .line 403
    aput-wide v14, v1, v6

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x1

    goto :goto_7

    :cond_6
    move-object/from16 v19, v2

    move v3, v14

    :goto_7
    const/16 v16, 0x1

    add-int/lit8 v14, v3, 0x1

    move-object/from16 v2, v19

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v19, v2

    const/16 v16, 0x1

    if-nez v13, :cond_8

    .line 409
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    add-int/2addr v2, v4

    const-wide/16 v6, 0x0

    invoke-static {v1, v4, v2, v6, v7}, Ljava/util/Arrays;->fill([DIID)V

    goto :goto_8

    :cond_8
    const-wide/16 v6, 0x0

    .line 411
    :goto_8
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v19

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method public getDimension()I
    .locals 3

    .line 348
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v1}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    return v0
.end method
