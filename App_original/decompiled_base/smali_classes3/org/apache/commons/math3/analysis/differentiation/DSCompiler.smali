.class public Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
.super Ljava/lang/Object;
.source "DSCompiler.java"


# static fields
.field private static compilers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[[",
            "Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final compIndirection:[[[I

.field private final derivativesIndirection:[[I

.field private final lowerIndirection:[I

.field private final multIndirection:[[[I

.field private final order:I

.field private final parameters:I

.field private final sizes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    .line 167
    iput p2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    .line 168
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileSizes(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    .line 169
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileDerivativesIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    .line 172
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileLowerIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    .line 175
    invoke-static {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileMultiplicationIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[I)[[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 178
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileCompositionIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[[I[[I)[[[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    return-void
.end method

.method private static compileCompositionIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[[I[[I)[[[I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    move/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v5, p4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_e

    if-nez v4, :cond_0

    goto/16 :goto_a

    :cond_0
    move-object/from16 v0, p2

    .line 422
    iget-object v0, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v9, v0

    .line 423
    iget-object v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v10, v2

    add-int v2, v9, v10

    .line 424
    new-array v11, v2, [[[I

    .line 427
    invoke-static {v0, v7, v11, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    .line 434
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 435
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    aget-object v14, v0, v12

    array-length v15, v14

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v15, :cond_5

    aget-object v2, v14, v0

    .line 440
    array-length v3, v2

    add-int/2addr v3, v8

    const/16 v16, 0x1

    new-array v8, v3, [I

    .line 441
    aget v17, v2, v7

    aput v17, v8, v7

    .line 442
    aget v17, v2, v16

    add-int/lit8 v17, v17, 0x1

    aput v17, v8, v16

    const/16 v17, 0x0

    .line 443
    new-array v7, v1, [I

    add-int/lit8 v18, v1, -0x1

    .line 444
    aput v16, v7, v18

    move/from16 p2, v0

    .line 445
    array-length v0, v2

    invoke-static {v1, v4, v5, v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v19

    aput v19, v8, v0

    move/from16 v19, v9

    const/4 v9, 0x2

    .line 446
    :goto_2
    array-length v0, v2

    if-ge v9, v0, :cond_1

    .line 449
    aget v0, v2, v9

    move-object/from16 v21, v2

    iget-object v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move/from16 v22, v3

    move/from16 v3, p0

    move/from16 v20, p2

    move/from16 v23, v9

    move-object/from16 v24, v21

    const/4 v9, 0x2

    move/from16 v21, v10

    move/from16 v10, v22

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->convertIndex(II[[III[[I)I

    move-result v0

    aput v0, v8, v23

    add-int/lit8 v0, v23, 0x1

    move/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v5, p4

    move v9, v0

    move v3, v10

    move/from16 v10, v21

    move-object/from16 v2, v24

    goto :goto_2

    :cond_1
    move/from16 v20, p2

    move-object/from16 v24, v2

    move/from16 v21, v10

    const/4 v9, 0x2

    move v10, v3

    .line 453
    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->sort([III)V

    .line 454
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    move-object/from16 v10, v24

    .line 457
    :goto_3
    array-length v0, v10

    if-ge v8, v0, :cond_4

    .line 458
    array-length v0, v10

    new-array v1, v0, [I

    .line 459
    aget v2, v10, v17

    aput v2, v1, v17

    .line 460
    aget v2, v10, v16

    aput v2, v1, v16

    const/4 v2, 0x2

    .line 461
    :goto_4
    array-length v3, v10

    if-ge v2, v3, :cond_3

    move v3, v0

    .line 464
    aget v0, v10, v2

    move v4, v2

    iget-object v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move v5, v3

    move/from16 v3, p0

    move-object v9, v1

    move v6, v5

    move-object/from16 v24, v10

    move/from16 v1, p0

    move-object/from16 v5, p4

    move v10, v4

    move/from16 v4, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->convertIndex(II[[III[[I)I

    move-result v0

    aput v0, v9, v10

    if-ne v10, v8, :cond_2

    .line 469
    aget-object v0, p5, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    aget v0, v7, v18

    add-int/lit8 v0, v0, 0x1

    aput v0, v7, v18

    .line 471
    invoke-static {v1, v4, v5, v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v0

    aput v0, v9, v10

    :cond_2
    add-int/lit8 v2, v10, 0x1

    move v0, v6

    move-object v1, v9

    move-object/from16 v10, v24

    const/4 v9, 0x2

    const/16 v17, 0x0

    move-object/from16 v6, p3

    goto :goto_4

    :cond_3
    move/from16 v4, p1

    move-object/from16 v5, p4

    move v6, v0

    move-object v9, v1

    move-object/from16 v24, v10

    const/4 v0, 0x2

    move/from16 v1, p0

    .line 474
    invoke-static {v9, v0, v6}, Ljava/util/Arrays;->sort([III)V

    .line 475
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p3

    const/4 v9, 0x2

    const/16 v17, 0x0

    goto :goto_3

    :cond_4
    move/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v5, p4

    add-int/lit8 v0, v20, 0x1

    move-object/from16 v6, p3

    move/from16 v9, v19

    move/from16 v10, v21

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_5
    move/from16 v19, v9

    move/from16 v21, v10

    const/16 v16, 0x1

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 482
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 483
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/16 v17, 0x0

    .line 484
    aget v6, v3, v17

    if-lez v6, :cond_b

    add-int/lit8 v6, v2, 0x1

    .line 485
    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 486
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 487
    array-length v8, v3

    array-length v9, v7

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    :goto_7
    const/4 v9, 0x1

    :goto_8
    if-eqz v8, :cond_8

    .line 488
    array-length v10, v3

    if-ge v9, v10, :cond_8

    .line 489
    aget v10, v3, v9

    aget v14, v7, v9

    if-ne v10, v14, :cond_7

    const/4 v10, 0x1

    goto :goto_9

    :cond_7
    const/4 v10, 0x0

    :goto_9
    and-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_8
    if-eqz v8, :cond_9

    const/16 v17, 0x0

    .line 493
    aget v8, v3, v17

    aget v9, v7, v17

    add-int/2addr v8, v9

    aput v8, v3, v17

    .line 495
    aput v17, v7, v17

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 498
    :cond_a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    add-int v9, v19, v12

    .line 502
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[I

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v11, v9

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p3

    move/from16 v9, v19

    move/from16 v10, v21

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_d
    return-object v11

    :cond_e
    :goto_a
    const/4 v0, 0x1

    .line 419
    new-array v1, v0, [[I

    const/4 v2, 0x0

    filled-new-array {v0, v2}, [I

    move-result-object v3

    aput-object v3, v1, v2

    new-array v0, v0, [[[I

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static compileDerivativesIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 272
    :cond_0
    iget-object p1, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    array-length p1, p1

    .line 273
    iget-object v3, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    array-length v3, v3

    add-int v4, p1, v3

    .line 274
    new-array v0, v0, [I

    aput p0, v0, v2

    aput v4, v0, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    .line 279
    iget-object v5, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v5, v5, v4

    aget-object v6, v0, v4

    add-int/lit8 v7, p0, -0x1

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v3, :cond_2

    .line 288
    iget-object v4, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v4, v4, p2

    add-int v5, p1, p2

    aget-object v6, v0, v5

    invoke-static {v4, v1, v6, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    aget-object v4, v0, v5

    add-int/lit8 v5, p0, -0x1

    aget v6, v4, v5

    add-int/2addr v6, v2

    aput v6, v4, v5

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    .line 269
    :cond_3
    :goto_2
    new-array p1, v0, [I

    aput p0, p1, v2

    aput v2, p1, v1

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method private static compileLowerIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    if-gt p1, p0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    iget-object p0, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    array-length p1, p0

    .line 322
    iget-object v1, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    array-length v1, v1

    add-int v2, p1, v1

    .line 323
    new-array v2, v2, [I

    .line 324
    invoke-static {p0, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v0, v1, :cond_1

    add-int p0, p1, v0

    .line 326
    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v3

    iget-object v4, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    aput v3, v2, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 317
    :cond_2
    :goto_1
    filled-new-array {v0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static compileMultiplicationIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[I)[[[I
    .locals 16

    move-object/from16 v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    move-object/from16 v3, p2

    .line 356
    iget-object v3, v3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v4, v3

    .line 357
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v5, v5

    add-int v6, v4, v5

    .line 358
    new-array v6, v6, [[[I

    .line 360
    invoke-static {v3, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_6

    .line 363
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    aget-object v7, v7, v3

    .line 364
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    .line 365
    :goto_1
    array-length v11, v7

    if-ge v9, v11, :cond_1

    .line 366
    aget-object v11, v7, v9

    aget v12, v11, v2

    aget v13, v11, v1

    aget v13, p4, v13

    aget v11, v11, v10

    add-int/2addr v11, v4

    filled-new-array {v12, v13, v11}, [I

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    aget-object v11, v7, v9

    aget v12, v11, v2

    aget v13, v11, v1

    add-int/2addr v13, v4

    aget v11, v11, v10

    aget v11, p4, v11

    filled-new-array {v12, v13, v11}, [I

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 371
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    .line 372
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 373
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    .line 374
    aget v12, v11, v2

    if-lez v12, :cond_4

    add-int/lit8 v12, v9, 0x1

    .line 375
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 376
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 377
    aget v14, v11, v1

    aget v15, v13, v1

    if-ne v14, v15, :cond_2

    aget v14, v11, v10

    aget v15, v13, v10

    if-ne v14, v15, :cond_2

    .line 379
    aget v14, v11, v2

    aget v15, v13, v2

    add-int/2addr v14, v15

    aput v14, v11, v2

    .line 381
    aput v2, v13, v2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 384
    :cond_3
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    add-int v8, v4, v3

    .line 388
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [[I

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    aput-object v7, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v6

    .line 352
    :cond_7
    :goto_4
    new-array v0, v1, [[I

    filled-new-array {v1, v2, v2}, [I

    move-result-object v3

    aput-object v3, v0, v2

    new-array v1, v1, [[[I

    aput-object v0, v1, v2

    return-object v1
.end method

.method private static compileSizes(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I
    .locals 5

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    .line 242
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    if-nez p0, :cond_0

    .line 244
    aget-object p0, v0, v1

    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([II)V

    return-object v0

    .line 246
    :cond_0
    iget-object p2, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    invoke-static {p2, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    aget-object p2, v0, p0

    aput v3, p2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 249
    aget-object p2, v0, p0

    add-int/lit8 v2, v1, 0x1

    aget v1, p2, v1

    add-int/lit8 v4, p0, -0x1

    aget-object v4, v0, v4

    aget v4, v4, v2

    add-int/2addr v1, v4

    aput v1, p2, v2

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static convertIndex(II[[III[[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 613
    new-array v0, p3, [I

    .line 614
    aget-object p0, p2, p0

    const/4 p2, 0x0

    invoke-static {p1, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    invoke-static {p0, p2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    invoke-static {p3, p4, p5, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result p0

    return p0
.end method

.method public static getCompiler(II)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 195
    sget-object v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    if-eqz v0, :cond_0

    .line 196
    array-length v1, v0

    if-le v1, p0, :cond_0

    aget-object v1, v0, p0

    array-length v2, v1

    if-le v2, p1, :cond_0

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 203
    :cond_1
    array-length v2, v0

    :goto_0
    invoke-static {p0, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 204
    :cond_2
    aget-object v3, v0, v1

    array-length v3, v3

    :goto_1
    invoke-static {p1, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    const/4 v5, 0x2

    .line 205
    new-array v5, v5, [I

    aput v3, v5, v4

    aput v2, v5, v1

    const-class v2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    .line 209
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 210
    aget-object v4, v0, v3

    aget-object v5, v2, v3

    array-length v6, v4

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int v4, p0, p1

    if-gt v3, v4, :cond_8

    sub-int v4, v3, p0

    .line 216
    invoke-static {v1, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    :goto_4
    invoke-static {p1, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-gt v4, v5, :cond_7

    sub-int v5, v3, v4

    .line 218
    aget-object v6, v2, v5

    aget-object v7, v6, v4

    if-nez v7, :cond_6

    const/4 v7, 0x0

    if-nez v5, :cond_4

    move-object v8, v7

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v5, -0x1

    .line 219
    aget-object v8, v2, v8

    aget-object v8, v8, v4

    :goto_5
    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v4, -0x1

    .line 220
    aget-object v7, v6, v7

    .line 221
    :goto_6
    new-instance v9, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v9, v5, v4, v8, v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;-><init>(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    aput-object v9, v6, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 227
    :cond_8
    sget-object v1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    aget-object p0, v2, p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static varargs getPartialDerivativeIndex(II[[I[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    move v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ltz p0, :cond_2

    .line 576
    aget v4, p3, p0

    add-int/2addr v2, v4

    if-gt v2, p1, :cond_1

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_0

    .line 588
    aget-object v4, p2, p0

    add-int/lit8 v6, v3, -0x1

    aget v3, v4, v3

    add-int/2addr v1, v3

    move v4, v5

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 581
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_2
    return v1
.end method


# virtual methods
.method public acos([DI[DI)V
    .locals 26

    move-object/from16 v0, p0

    .line 1265
    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1266
    aget-wide v4, p1, p2

    .line 1267
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v6

    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 1268
    iget v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v6, :cond_4

    .line 1276
    new-array v6, v6, [D

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 1277
    aput-wide v7, v6, v1

    mul-double v7, v4, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v11, v9, v7

    div-double/2addr v9, v11

    .line 1280
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 1281
    aget-wide v13, v6, v1

    mul-double v13, v13, v11

    aput-wide v13, v3, v2

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 1282
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v14, v15, :cond_4

    add-int/lit8 v15, v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    int-to-double v1, v15

    add-int/lit8 v18, v14, -0x2

    .line 1286
    aget-wide v18, v6, v18

    mul-double v1, v1, v18

    aput-wide v1, v6, v15

    const-wide/16 v1, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double v1, v1, v7

    .line 1288
    aget-wide v18, v6, v15

    add-double v1, v1, v18

    if-le v15, v13, :cond_0

    add-int/lit8 v18, v15, -0x2

    add-int/lit8 v13, v15, -0x1

    move-wide/from16 v20, v1

    int-to-double v0, v13

    .line 1290
    aget-wide v22, v6, v13

    mul-double v0, v0, v22

    mul-int/lit8 v2, v14, 0x2

    sub-int/2addr v2, v15

    move-wide/from16 v22, v0

    int-to-double v0, v2

    add-int/lit8 v2, v15, -0x3

    aget-wide v24, v6, v2

    mul-double v0, v0, v24

    add-double v0, v22, v0

    aput-wide v0, v6, v18

    const/4 v0, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v20, v1

    const/4 v0, 0x2

    if-ne v15, v0, :cond_1

    .line 1292
    aget-wide v1, v6, v16

    aput-wide v1, v6, v17

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x2

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    and-int/lit8 v13, v14, 0x1

    if-nez v13, :cond_3

    mul-double v1, v1, v4

    :cond_3
    mul-double v11, v11, v9

    mul-double v1, v1, v11

    .line 1300
    aput-wide v1, v3, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1306
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public acosh([DI[DI)V
    .locals 26

    move-object/from16 v0, p0

    .line 1594
    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1595
    aget-wide v4, p1, p2

    .line 1596
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acosh(D)D

    move-result-wide v6

    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 1597
    iget v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v6, :cond_4

    .line 1605
    new-array v6, v6, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1606
    aput-wide v7, v6, v1

    mul-double v9, v4, v4

    sub-double v11, v9, v7

    div-double/2addr v7, v11

    .line 1609
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 1610
    aget-wide v13, v6, v1

    mul-double v13, v13, v11

    aput-wide v13, v3, v2

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 1611
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v14, v15, :cond_4

    add-int/lit8 v15, v14, -0x1

    const/16 v16, 0x0

    rsub-int/lit8 v1, v14, 0x1

    move-object/from16 v18, v3

    const/16 v17, 0x1

    int-to-double v2, v1

    add-int/lit8 v1, v14, -0x2

    .line 1615
    aget-wide v19, v6, v1

    mul-double v2, v2, v19

    aput-wide v2, v6, v15

    const-wide/16 v1, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double v1, v1, v9

    .line 1617
    aget-wide v19, v6, v15

    add-double v1, v1, v19

    if-le v15, v13, :cond_0

    add-int/lit8 v3, v15, -0x2

    rsub-int/lit8 v13, v15, 0x1

    move-wide/from16 v20, v1

    int-to-double v0, v13

    add-int/lit8 v2, v15, -0x1

    .line 1619
    aget-wide v22, v6, v2

    mul-double v0, v0, v22

    mul-int/lit8 v2, v14, 0x2

    sub-int v2, v15, v2

    move-wide/from16 v22, v0

    int-to-double v0, v2

    add-int/lit8 v2, v15, -0x3

    aget-wide v24, v6, v2

    mul-double v0, v0, v24

    add-double v0, v22, v0

    aput-wide v0, v6, v3

    const/4 v0, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v20, v1

    const/4 v0, 0x2

    if-ne v15, v0, :cond_1

    .line 1621
    aget-wide v1, v6, v17

    neg-double v1, v1

    aput-wide v1, v6, v16

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x2

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    and-int/lit8 v3, v14, 0x1

    if-nez v3, :cond_3

    mul-double v1, v1, v4

    :cond_3
    mul-double v11, v11, v7

    mul-double v1, v1, v11

    .line 1629
    aput-wide v1, v18, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, v18

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1635
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public add([DI[DI[DI)V
    .locals 6

    const/4 v0, 0x0

    .line 747
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p6, v0

    add-int v2, p2, v0

    .line 748
    aget-wide v2, p1, v2

    add-int v4, p4, v0

    aget-wide v4, p3, v4

    add-double/2addr v2, v4

    aput-wide v2, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public asin([DI[DI)V
    .locals 26

    move-object/from16 v0, p0

    .line 1322
    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1323
    aget-wide v4, p1, p2

    .line 1324
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v6

    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 1325
    iget v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v6, :cond_4

    .line 1333
    new-array v6, v6, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1334
    aput-wide v7, v6, v1

    mul-double v9, v4, v4

    sub-double v11, v7, v9

    div-double/2addr v7, v11

    .line 1337
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 1338
    aget-wide v13, v6, v1

    mul-double v13, v13, v11

    aput-wide v13, v3, v2

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 1339
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v14, v15, :cond_4

    add-int/lit8 v15, v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    int-to-double v1, v15

    add-int/lit8 v18, v14, -0x2

    .line 1343
    aget-wide v18, v6, v18

    mul-double v1, v1, v18

    aput-wide v1, v6, v15

    const-wide/16 v1, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double v1, v1, v9

    .line 1345
    aget-wide v18, v6, v15

    add-double v1, v1, v18

    if-le v15, v13, :cond_0

    add-int/lit8 v18, v15, -0x2

    add-int/lit8 v13, v15, -0x1

    move-wide/from16 v20, v1

    int-to-double v0, v13

    .line 1347
    aget-wide v22, v6, v13

    mul-double v0, v0, v22

    mul-int/lit8 v2, v14, 0x2

    sub-int/2addr v2, v15

    move-wide/from16 v22, v0

    int-to-double v0, v2

    add-int/lit8 v2, v15, -0x3

    aget-wide v24, v6, v2

    mul-double v0, v0, v24

    add-double v0, v22, v0

    aput-wide v0, v6, v18

    const/4 v0, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v20, v1

    const/4 v0, 0x2

    if-ne v15, v0, :cond_1

    .line 1349
    aget-wide v1, v6, v16

    aput-wide v1, v6, v17

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x2

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    and-int/lit8 v13, v14, 0x1

    if-nez v13, :cond_3

    mul-double v1, v1, v4

    :cond_3
    mul-double v11, v11, v7

    mul-double v1, v1, v11

    .line 1357
    aput-wide v1, v3, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1363
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public asinh([DI[DI)V
    .locals 26

    move-object/from16 v0, p0

    .line 1651
    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1652
    aget-wide v4, p1, p2

    .line 1653
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asinh(D)D

    move-result-wide v6

    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 1654
    iget v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v6, :cond_4

    .line 1662
    new-array v6, v6, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1663
    aput-wide v7, v6, v1

    mul-double v9, v4, v4

    add-double v11, v9, v7

    div-double/2addr v7, v11

    .line 1666
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 1667
    aget-wide v13, v6, v1

    mul-double v13, v13, v11

    aput-wide v13, v3, v2

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 1668
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v14, v15, :cond_4

    add-int/lit8 v15, v14, -0x1

    const/16 v16, 0x0

    rsub-int/lit8 v1, v14, 0x1

    move-object/from16 v18, v3

    const/16 v17, 0x1

    int-to-double v2, v1

    add-int/lit8 v1, v14, -0x2

    .line 1672
    aget-wide v19, v6, v1

    mul-double v2, v2, v19

    aput-wide v2, v6, v15

    const-wide/16 v1, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double v1, v1, v9

    .line 1674
    aget-wide v19, v6, v15

    add-double v1, v1, v19

    if-le v15, v13, :cond_0

    add-int/lit8 v3, v15, -0x2

    add-int/lit8 v13, v15, -0x1

    move-wide/from16 v20, v1

    int-to-double v0, v13

    .line 1676
    aget-wide v22, v6, v13

    mul-double v0, v0, v22

    mul-int/lit8 v2, v14, 0x2

    sub-int v2, v15, v2

    move-wide/from16 v22, v0

    int-to-double v0, v2

    add-int/lit8 v2, v15, -0x3

    aget-wide v24, v6, v2

    mul-double v0, v0, v24

    add-double v0, v22, v0

    aput-wide v0, v6, v3

    const/4 v0, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v20, v1

    const/4 v0, 0x2

    if-ne v15, v0, :cond_1

    .line 1678
    aget-wide v1, v6, v17

    aput-wide v1, v6, v16

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x2

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    and-int/lit8 v3, v14, 0x1

    if-nez v3, :cond_3

    mul-double v1, v1, v4

    :cond_3
    mul-double v11, v11, v7

    mul-double v1, v1, v11

    .line 1686
    aput-wide v1, v18, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, v18

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1692
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public atan([DI[DI)V
    .locals 26

    move-object/from16 v0, p0

    .line 1379
    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1380
    aget-wide v4, p1, p2

    .line 1381
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v6

    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 1382
    iget v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v6, :cond_4

    .line 1390
    new-array v6, v6, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1391
    aput-wide v7, v6, v1

    mul-double v9, v4, v4

    add-double v11, v9, v7

    div-double v11, v7, v11

    mul-double v7, v7, v11

    .line 1395
    aput-wide v7, v3, v2

    const/4 v7, 0x2

    move-wide v13, v11

    const/4 v8, 0x2

    .line 1396
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v8, v15, :cond_4

    add-int/lit8 v15, v8, -0x1

    const/16 v16, 0x0

    neg-int v1, v8

    move-object/from16 v18, v3

    const/16 v17, 0x1

    int-to-double v2, v1

    add-int/lit8 v1, v8, -0x2

    .line 1400
    aget-wide v19, v6, v1

    mul-double v2, v2, v19

    aput-wide v2, v6, v15

    const-wide/16 v1, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double v1, v1, v9

    .line 1402
    aget-wide v19, v6, v15

    add-double v1, v1, v19

    if-le v15, v7, :cond_0

    add-int/lit8 v3, v15, -0x2

    add-int/lit8 v7, v15, -0x1

    move-wide/from16 v20, v1

    int-to-double v0, v7

    .line 1404
    aget-wide v22, v6, v7

    mul-double v0, v0, v22

    mul-int/lit8 v2, v8, 0x2

    sub-int/2addr v7, v2

    move-wide/from16 v22, v0

    int-to-double v0, v7

    add-int/lit8 v2, v15, -0x3

    aget-wide v24, v6, v2

    mul-double v0, v0, v24

    add-double v0, v22, v0

    aput-wide v0, v6, v3

    const/4 v0, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v20, v1

    const/4 v0, 0x2

    if-ne v15, v0, :cond_1

    .line 1406
    aget-wide v1, v6, v17

    aput-wide v1, v6, v16

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x2

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    and-int/lit8 v3, v8, 0x1

    if-nez v3, :cond_3

    mul-double v1, v1, v4

    :cond_3
    mul-double v13, v13, v11

    mul-double v1, v1, v13

    .line 1414
    aput-wide v1, v18, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, v18

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1420
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public atan2([DI[DI[DI)V
    .locals 13

    .line 1439
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v1, v0, [D

    const/4 v6, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v0, p0

    move/from16 v2, p4

    move-object v5, v1

    move-object/from16 v1, p3

    .line 1440
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    move-object v7, v5

    .line 1441
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v8

    new-array v3, v8, [D

    move-object v5, v3

    move-object v3, p1

    move v4, p2

    move-object v1, p1

    move v2, p2

    .line 1442
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v3, v5

    move-object v1, v7

    .line 1443
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    const/4 v3, 0x2

    move-object v4, v1

    move-object v1, v5

    const/4 v5, 0x0

    .line 1444
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->rootN([DII[DI)V

    move-object v5, v1

    move-object v1, v4

    .line 1446
    aget-wide v2, p3, p4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    cmpl-double v0, v2, v11

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1449
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    const/4 v4, 0x0

    move v2, p2

    move-object v3, v5

    move-object v5, v1

    move-object v1, p1

    .line 1450
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    move-object v1, v5

    move-object v5, v3

    .line 1451
    invoke-virtual {p0, v1, v7, v5, v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    :goto_0
    if-ge v7, v8, :cond_2

    add-int v1, p6, v7

    .line 1453
    aget-wide v2, v5, v7

    mul-double v2, v2, v9

    aput-wide v2, p5, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1459
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->subtract([DI[DI[DI)V

    const/4 v4, 0x0

    move v2, p2

    move-object v3, v5

    move-object v5, v1

    move-object v1, p1

    .line 1460
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    move-object v1, v5

    move-object v5, v3

    .line 1461
    invoke-virtual {p0, v1, v7, v5, v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    .line 1462
    aget-wide v1, v5, v7

    cmpg-double v3, v1, v11

    if-gtz v3, :cond_1

    const-wide v3, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_1

    :cond_1
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    :goto_1
    mul-double v1, v1, v9

    sub-double/2addr v3, v1

    aput-wide v3, p5, p6

    const/4 v1, 0x1

    :goto_2
    if-ge v1, v8, :cond_2

    add-int v2, p6, v1

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    .line 1465
    aget-wide v6, v5, v1

    mul-double v6, v6, v3

    aput-wide v6, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1471
    :cond_2
    aget-wide v1, p1, p2

    aget-wide v3, p3, p4

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v1

    aput-wide v1, p5, p6

    return-void
.end method

.method public atanh([DI[DI)V
    .locals 26

    move-object/from16 v0, p0

    .line 1708
    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1709
    aget-wide v4, p1, p2

    .line 1710
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atanh(D)D

    move-result-wide v6

    const/4 v1, 0x0

    aput-wide v6, v3, v1

    .line 1711
    iget v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v6, :cond_4

    .line 1719
    new-array v6, v6, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1720
    aput-wide v7, v6, v1

    mul-double v9, v4, v4

    sub-double v11, v7, v9

    div-double v11, v7, v11

    mul-double v7, v7, v11

    .line 1724
    aput-wide v7, v3, v2

    const/4 v7, 0x2

    move-wide v13, v11

    const/4 v8, 0x2

    .line 1725
    :goto_0
    iget v15, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v8, v15, :cond_4

    add-int/lit8 v15, v8, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    int-to-double v1, v8

    add-int/lit8 v18, v8, -0x2

    .line 1729
    aget-wide v18, v6, v18

    mul-double v1, v1, v18

    aput-wide v1, v6, v15

    const-wide/16 v1, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double v1, v1, v9

    .line 1731
    aget-wide v18, v6, v15

    add-double v1, v1, v18

    if-le v15, v7, :cond_0

    add-int/lit8 v18, v15, -0x2

    add-int/lit8 v7, v15, -0x1

    move-wide/from16 v20, v1

    int-to-double v0, v7

    .line 1733
    aget-wide v22, v6, v7

    mul-double v0, v0, v22

    mul-int/lit8 v2, v8, 0x2

    sub-int/2addr v2, v15

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v22, v0

    int-to-double v0, v2

    add-int/lit8 v2, v15, -0x3

    aget-wide v24, v6, v2

    mul-double v0, v0, v24

    add-double v0, v22, v0

    aput-wide v0, v6, v18

    const/4 v0, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v20, v1

    const/4 v0, 0x2

    if-ne v15, v0, :cond_1

    .line 1735
    aget-wide v1, v6, v16

    aput-wide v1, v6, v17

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x2

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    and-int/lit8 v7, v8, 0x1

    if-nez v7, :cond_3

    mul-double v1, v1, v4

    :cond_3
    mul-double v13, v13, v11

    mul-double v1, v1, v13

    .line 1743
    aput-wide v1, v3, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1749
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1815
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    if-ne v0, v1, :cond_1

    .line 1818
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1819
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget p1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 1816
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget p1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public compose([DI[D[DI)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1765
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1766
    aget-object v2, v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 1768
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 1769
    aget-object v6, v2, v5

    .line 1770
    aget v7, v6, v0

    int-to-double v7, v7

    const/4 v9, 0x1

    aget v9, v6, v9

    aget-wide v9, p3, v9

    mul-double v7, v7, v9

    const/4 v9, 0x2

    .line 1771
    :goto_2
    array-length v10, v6

    if-ge v9, v10, :cond_0

    .line 1772
    aget v10, v6, v9

    add-int/2addr v10, p2

    aget-wide v10, p1, v10

    mul-double v7, v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    add-double/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int v2, p5, v1

    .line 1776
    aput-wide v3, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cos([DI[DI)V
    .locals 8

    .line 1158
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1159
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1160
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1161
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v5, v1

    const/4 v0, 0x2

    .line 1162
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 1163
    aget-wide v1, v5, v1

    neg-double v1, v1

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1168
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public cosh([DI[DI)V
    .locals 8

    .line 1487
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1488
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1489
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1490
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    const/4 v0, 0x2

    .line 1491
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 1492
    aget-wide v1, v5, v1

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1497
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public divide([DI[DI[DI)V
    .locals 7

    .line 806
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result p4

    new-array v3, p4, [D

    move-object v4, v3

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v1, p3

    .line 807
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DII[DI)V

    const/4 p2, 0x0

    move-object v1, p1

    move-object v5, p5

    move v6, p6

    move-object v3, v4

    const/4 v4, 0x0

    .line 808
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    return-void
.end method

.method public exp([DI[DI)V
    .locals 7

    .line 1035
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [D

    .line 1036
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    invoke-static {v4, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .line 1039
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public expm1([DI[DI)V
    .locals 8

    .line 1055
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1056
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1057
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/2addr v0, v1

    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    invoke-static {v5, v1, v0, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1060
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public getFreeParameters()I
    .locals 1

    .line 634
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 641
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    return v0
.end method

.method public varargs getPartialDerivativeIndex([I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 546
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 550
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result p1

    return p1

    .line 547
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getPartialDerivativeOrders(I)[I
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSize()I
    .locals 2

    .line 652
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    aget v0, v0, v1

    return v0
.end method

.method public linearCombination(D[DID[DID[DID[DI[DI)V
    .locals 19

    const/4 v0, 0x0

    .line 726
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p18, v0

    add-int v2, p4, v0

    .line 727
    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    add-int v2, p12, v0

    aget-wide v13, p11, v2

    add-int v2, p16, v0

    aget-wide v17, p15, v2

    move-wide/from16 v3, p1

    move-wide/from16 v7, p5

    move-wide/from16 v11, p9

    move-wide/from16 v15, p13

    invoke-static/range {v3 .. v18}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v5

    aput-wide v5, p17, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public linearCombination(D[DID[DID[DI[DI)V
    .locals 15

    const/4 v0, 0x0

    .line 695
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p14, v0

    add-int v2, p4, v0

    .line 696
    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    add-int v2, p12, v0

    aget-wide v13, p11, v2

    move-wide/from16 v3, p1

    move-wide/from16 v7, p5

    move-wide/from16 v11, p9

    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v5

    aput-wide v5, p13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public linearCombination(D[DID[DI[DI)V
    .locals 11

    const/4 v0, 0x0

    .line 670
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p10, v0

    add-int v2, p4, v0

    .line 671
    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    move-wide v3, p1

    move-wide/from16 v7, p5

    invoke-static/range {v3 .. v10}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    aput-wide v5, p9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public log([DI[DI)V
    .locals 10

    .line 1076
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1077
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1078
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1079
    aget-wide v6, p1, p2

    div-double/2addr v2, v6

    move-wide v6, v2

    .line 1081
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v1, v0, :cond_0

    .line 1082
    aput-wide v6, v5, v1

    neg-int v0, v1

    int-to-double v8, v0

    mul-double v8, v8, v2

    mul-double v6, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1088
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public log10([DI[DI)V
    .locals 10

    .line 1130
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1131
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1132
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1133
    aget-wide v6, p1, p2

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 1134
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    div-double v6, v2, v6

    .line 1135
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v1, v0, :cond_0

    .line 1136
    aput-wide v6, v5, v1

    neg-int v0, v1

    int-to-double v8, v0

    mul-double v8, v8, v2

    mul-double v6, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1142
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public log1p([DI[DI)V
    .locals 10

    .line 1103
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1104
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1105
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1106
    aget-wide v2, p1, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    div-double/2addr v6, v2

    move-wide v2, v6

    .line 1108
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v1, v0, :cond_0

    .line 1109
    aput-wide v2, v5, v1

    neg-int v0, v1

    int-to-double v8, v0

    mul-double v8, v8, v6

    mul-double v2, v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1115
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public multiply([DI[DI[DI)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 781
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 782
    aget-object v2, v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 784
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 785
    aget-object v6, v2, v5

    aget v7, v6, v0

    int-to-double v7, v7

    const/4 v9, 0x1

    aget v9, v6, v9

    add-int/2addr v9, p2

    aget-wide v9, p1, v9

    mul-double v7, v7, v9

    const/4 v9, 0x2

    aget v6, v6, v9

    add-int/2addr v6, p4

    aget-wide v9, p3, v6

    mul-double v7, v7, v9

    add-double/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int v2, p6, v1

    .line 789
    aput-wide v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pow(D[DI[DI)V
    .locals 7

    .line 854
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    move-wide v2, p1

    move-object p2, p3

    move p3, p4

    new-array p4, v0, [D

    const/4 p1, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    .line 856
    aget-wide v2, p2, p3

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 857
    aput-wide v2, p4, p1

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    if-ge v1, v0, :cond_2

    neg-double v2, v2

    .line 861
    aput-wide v2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 864
    invoke-static {p4, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    goto :goto_2

    .line 867
    :cond_1
    aget-wide v4, p2, p3

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v4

    aput-wide v4, p4, p1

    .line 868
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    :goto_1
    if-ge v1, v0, :cond_2

    add-int/lit8 p1, v1, -0x1

    .line 870
    aget-wide v4, p4, p1

    mul-double v4, v4, v2

    aput-wide v4, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move-object p1, p0

    .line 876
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public pow([DID[DI)V
    .locals 8

    .line 894
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v1, v0, 0x1

    new-array v5, v1, [D

    .line 895
    aget-wide v1, p1, p2

    int-to-double v3, v0

    sub-double v3, p3, v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    .line 896
    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    :goto_0
    if-lez v2, :cond_0

    .line 897
    aput-wide v0, v5, v2

    .line 898
    aget-wide v3, p1, p2

    mul-double v0, v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 900
    aput-wide v0, v5, v2

    const/4 v0, 0x1

    move-wide v1, p3

    .line 902
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v3, :cond_1

    .line 903
    aget-wide v3, v5, v0

    mul-double v3, v3, v1

    aput-wide v3, v5, v0

    int-to-double v3, v0

    sub-double v3, p3, v3

    mul-double v1, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p5

    move v7, p6

    .line 908
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public pow([DII[DI)V
    .locals 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-nez p3, :cond_0

    .line 926
    aput-wide v0, p4, p5

    add-int/lit8 p1, p5, 0x1

    .line 927
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result p2

    add-int/2addr p5, p2

    const-wide/16 p2, 0x0

    invoke-static {p4, p1, p5, p2, p3}, Ljava/util/Arrays;->fill([DIID)V

    return-void

    .line 933
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v3, v2, 0x1

    new-array v7, v3, [D

    const/4 v3, 0x0

    if-lez p3, :cond_2

    .line 937
    invoke-static {v2, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 938
    aget-wide v1, p1, p2

    sub-int v4, p3, v0

    invoke-static {v1, v2, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    :goto_0
    if-lez v0, :cond_1

    .line 940
    aput-wide v1, v7, v0

    .line 941
    aget-wide v4, p1, p2

    mul-double v1, v1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 943
    :cond_1
    aput-wide v1, v7, v3

    goto :goto_2

    .line 946
    :cond_2
    aget-wide v4, p1, p2

    div-double/2addr v0, v4

    neg-int v2, p3

    .line 947
    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    .line 948
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v3, v2, :cond_3

    .line 949
    aput-wide v4, v7, v3

    mul-double v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    int-to-double v0, p3

    const/4 v2, 0x1

    .line 955
    :goto_3
    iget v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v2, v3, :cond_4

    .line 956
    aget-wide v3, v7, v2

    mul-double v3, v3, v0

    aput-wide v3, v7, v2

    sub-int v3, p3, v2

    int-to-double v3, v3

    mul-double v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v8, p4

    move v9, p5

    .line 961
    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public pow([DI[DI[DI)V
    .locals 8

    .line 978
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v2, v0, [D

    const/4 v0, 0x0

    .line 979
    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log([DI[DI)V

    .line 980
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result p1

    new-array v6, p1, [D

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    .line 981
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 982
    invoke-virtual {p0, v6, v0, p5, p6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->exp([DI[DI)V

    return-void
.end method

.method public remainder([DI[DI[DI)V
    .locals 8

    .line 825
    aget-wide v0, p1, p2

    aget-wide v2, p3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v0

    .line 826
    aget-wide v2, p1, p2

    sub-double/2addr v2, v0

    aget-wide v4, p3, p4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v2

    .line 829
    aput-wide v0, p5, p6

    const/4 v0, 0x1

    .line 832
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p6, v0

    add-int v4, p2, v0

    .line 833
    aget-wide v4, p1, v4

    add-int v6, p4, v0

    aget-wide v6, p3, v6

    mul-double v6, v6, v2

    sub-double/2addr v4, v6

    aput-wide v4, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rootN([DII[DI)V
    .locals 13

    move/from16 v0, p3

    .line 999
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v6, v1, [D

    const/4 v1, 0x2

    const/4 v3, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-ne v0, v1, :cond_0

    .line 1002
    aget-wide v7, p1, p2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    aput-wide v7, v6, v3

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    div-double/2addr v9, v7

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1005
    aget-wide v7, p1, p2

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v7

    aput-wide v7, v6, v3

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    mul-double v9, v9, v7

    goto :goto_0

    .line 1008
    :cond_1
    aget-wide v7, p1, p2

    int-to-double v9, v0

    div-double v11, v4, v9

    invoke-static {v7, v8, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    aput-wide v7, v6, v3

    add-int/lit8 v1, v0, -0x1

    .line 1009
    invoke-static {v7, v8, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    :goto_0
    mul-double v9, v9, v7

    div-double v9, v4, v9

    :goto_1
    int-to-double v0, v0

    div-double v0, v4, v0

    .line 1012
    aget-wide v7, p1, p2

    div-double v11, v4, v7

    .line 1013
    :goto_2
    iget v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v2, v3, :cond_2

    .line 1014
    aput-wide v9, v6, v2

    int-to-double v3, v2

    sub-double v3, v0, v3

    mul-double v3, v3, v11

    mul-double v9, v9, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1019
    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public sin([DI[DI)V
    .locals 8

    .line 1184
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1185
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1186
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1187
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    const/4 v0, 0x2

    .line 1188
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 1189
    aget-wide v1, v5, v1

    neg-double v1, v1

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1194
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public sinh([DI[DI)V
    .locals 8

    .line 1513
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1514
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1515
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1516
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    const/4 v0, 0x2

    .line 1517
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 1518
    aget-wide v1, v5, v1

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1523
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public subtract([DI[DI[DI)V
    .locals 6

    const/4 v0, 0x0

    .line 763
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p6, v0

    add-int v2, p2, v0

    .line 764
    aget-wide v2, p1, v2

    add-int v4, p4, v0

    aget-wide v4, p3, v4

    sub-double/2addr v2, v4

    aput-wide v2, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tan([DI[DI)V
    .locals 24

    move-object/from16 v0, p0

    .line 1210
    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1211
    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v4

    const/4 v1, 0x0

    .line 1212
    aput-wide v4, v3, v1

    .line 1214
    iget v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v6, :cond_4

    const/4 v7, 0x2

    add-int/2addr v6, v7

    .line 1223
    new-array v6, v6, [D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1224
    aput-wide v8, v6, v2

    mul-double v8, v4, v4

    const/4 v10, 0x1

    .line 1226
    :goto_0
    iget v11, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, 0x1

    int-to-double v12, v10

    .line 1230
    aget-wide v14, v6, v10

    mul-double v12, v12, v14

    aput-wide v12, v6, v11

    const-wide/16 v12, 0x0

    move v14, v11

    :goto_1
    if-ltz v14, :cond_2

    mul-double v12, v12, v8

    .line 1232
    aget-wide v15, v6, v14

    add-double/2addr v12, v15

    if-le v14, v7, :cond_0

    add-int/lit8 v15, v14, -0x2

    const/16 v16, 0x0

    add-int/lit8 v1, v14, -0x1

    move-object/from16 v18, v3

    const/16 v17, 0x1

    int-to-double v2, v1

    .line 1234
    aget-wide v19, v6, v1

    mul-double v2, v2, v19

    add-int/lit8 v1, v14, -0x3

    move-wide/from16 v20, v8

    int-to-double v7, v1

    aget-wide v22, v6, v1

    mul-double v7, v7, v22

    add-double/2addr v2, v7

    aput-wide v2, v6, v15

    const/4 v1, 0x2

    goto :goto_2

    :cond_0
    move-object/from16 v18, v3

    move-wide/from16 v20, v8

    const/4 v1, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ne v14, v1, :cond_1

    .line 1236
    aget-wide v2, v6, v17

    aput-wide v2, v6, v16

    :cond_1
    :goto_2
    add-int/lit8 v14, v14, -0x2

    move-object/from16 v3, v18

    move-wide/from16 v8, v20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v3

    move-wide/from16 v20, v8

    const/4 v1, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    and-int/lit8 v2, v10, 0x1

    if-nez v2, :cond_3

    mul-double v12, v12, v4

    .line 1243
    :cond_3
    aput-wide v12, v18, v10

    move v10, v11

    move-object/from16 v3, v18

    move-wide/from16 v8, v20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    goto :goto_0

    :cond_4
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1249
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public tanh([DI[DI)V
    .locals 24

    move-object/from16 v0, p0

    .line 1539
    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    .line 1540
    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->tanh(D)D

    move-result-wide v4

    const/4 v1, 0x0

    .line 1541
    aput-wide v4, v3, v1

    .line 1543
    iget v6, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v6, :cond_4

    const/4 v7, 0x2

    add-int/2addr v6, v7

    .line 1552
    new-array v6, v6, [D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1553
    aput-wide v8, v6, v2

    mul-double v8, v4, v4

    const/4 v10, 0x1

    .line 1555
    :goto_0
    iget v11, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, 0x1

    neg-int v12, v10

    int-to-double v12, v12

    .line 1559
    aget-wide v14, v6, v10

    mul-double v12, v12, v14

    aput-wide v12, v6, v11

    const-wide/16 v12, 0x0

    move v14, v11

    :goto_1
    if-ltz v14, :cond_2

    mul-double v12, v12, v8

    .line 1561
    aget-wide v15, v6, v14

    add-double/2addr v12, v15

    if-le v14, v7, :cond_0

    add-int/lit8 v15, v14, -0x2

    const/16 v16, 0x0

    add-int/lit8 v1, v14, -0x1

    move-object/from16 v18, v3

    const/16 v17, 0x1

    int-to-double v2, v1

    .line 1563
    aget-wide v19, v6, v1

    mul-double v2, v2, v19

    add-int/lit8 v1, v14, -0x3

    move-wide/from16 v20, v8

    int-to-double v7, v1

    aget-wide v22, v6, v1

    mul-double v7, v7, v22

    sub-double/2addr v2, v7

    aput-wide v2, v6, v15

    const/4 v1, 0x2

    goto :goto_2

    :cond_0
    move-object/from16 v18, v3

    move-wide/from16 v20, v8

    const/4 v1, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ne v14, v1, :cond_1

    .line 1565
    aget-wide v2, v6, v17

    aput-wide v2, v6, v16

    :cond_1
    :goto_2
    add-int/lit8 v14, v14, -0x2

    move-object/from16 v3, v18

    move-wide/from16 v8, v20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v3

    move-wide/from16 v20, v8

    const/4 v1, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    and-int/lit8 v2, v10, 0x1

    if-nez v2, :cond_3

    mul-double v12, v12, v4

    .line 1572
    :cond_3
    aput-wide v12, v18, v10

    move v10, v11

    move-object/from16 v3, v18

    move-wide/from16 v8, v20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    goto :goto_0

    :cond_4
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1578
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public varargs taylor([DI[D)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1790
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 1791
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeOrders(I)[I

    move-result-object v3

    add-int v4, p2, v0

    .line 1792
    aget-wide v4, p1, v4

    const/4 v6, 0x0

    .line 1793
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 1794
    aget v7, v3, v6

    if-lez v7, :cond_0

    .line 1796
    :try_start_0
    aget-wide v8, p3, v6

    invoke-static {v8, v9, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    aget v9, v3, v6

    invoke-static {v9}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v9
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/NotPositiveException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v9, v9

    div-double/2addr v7, v9

    mul-double v4, v4, v7

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1800
    new-instance p2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-double/2addr v1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method
