.class Lorg/apache/commons/math3/linear/SchurTransformer;
.super Ljava/lang/Object;
.source "SchurTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0x64


# instance fields
.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final epsilon:D

.field private final matrixP:[[D

.field private final matrixT:[[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    .line 70
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/HessenbergTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 76
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getH()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    .line 77
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 79
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 80
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 83
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->transform()V

    return-void

    .line 71
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method

.method private computeShift(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 267
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v1

    iput-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    const-wide/16 v4, 0x0

    .line 268
    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move/from16 v6, p1

    if-ge v6, v1, :cond_0

    .line 270
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    aget-wide v8, v6, v7

    iput-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 271
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v8, v6, v1

    aget-wide v9, v8, v7

    aget-object v6, v6, v7

    aget-wide v7, v6, v1

    mul-double v9, v9, v7

    iput-wide v9, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    :cond_0
    const/16 v6, 0xa

    if-ne v2, v6, :cond_2

    .line 276
    iget-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    iget-wide v10, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    add-double/2addr v8, v10

    iput-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    const/4 v6, 0x0

    :goto_0
    if-gt v6, v1, :cond_1

    .line 278
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v8, v8, v6

    aget-wide v9, v8, v6

    iget-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v9, v11

    aput-wide v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 280
    :cond_1
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v6, v6, v1

    add-int/lit8 v8, v1, -0x1

    aget-wide v9, v6, v8

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v6, v6, v8

    add-int/lit8 v8, v1, -0x2

    aget-wide v11, v6, v8

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    mul-double v11, v11, v9

    .line 281
    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 282
    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    const-wide/high16 v11, -0x4024000000000000L    # -0.4375

    mul-double v11, v11, v9

    mul-double v11, v11, v9

    .line 283
    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    :cond_2
    const/16 v6, 0x1e

    if-ne v2, v6, :cond_5

    .line 288
    iget-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-wide v10, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    mul-double v8, v8, v8

    .line 289
    iget-wide v12, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    add-double/2addr v8, v12

    cmpl-double v2, v8, v4

    if-lez v2, :cond_5

    .line 291
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 292
    iget-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-wide v12, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    cmpg-double v2, v8, v12

    if-gez v2, :cond_3

    neg-double v4, v4

    .line 295
    :cond_3
    iget-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    iget-wide v12, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    iget-wide v14, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move-wide/from16 v16, v8

    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v14, v7

    div-double/2addr v14, v10

    add-double/2addr v14, v4

    div-double/2addr v12, v14

    sub-double v8, v16, v12

    const/4 v7, 0x0

    :goto_1
    if-gt v7, v1, :cond_4

    .line 297
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v7

    aget-wide v4, v2, v7

    sub-double/2addr v4, v8

    aput-wide v4, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 299
    :cond_4
    iget-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v1, v8

    iput-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    const-wide v1, 0x3feed916872b020cL    # 0.964

    .line 300
    iput-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    iput-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iput-wide v1, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    :cond_5
    return-void
.end method

.method private findSmallSubDiagonalElement(ID)I
    .locals 6

    :goto_0
    if-lez p1, :cond_2

    .line 245
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v0, v0, p1

    aget-wide v4, v0, p1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    move-wide v2, p2

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v0, v0, p1

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    mul-double v4, v4, v2

    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private getNorm()D
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 226
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 228
    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 229
    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private initQRStep(IILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    add-int/lit8 v4, p2, -0x2

    :goto_0
    if-lt v4, v1, :cond_2

    .line 318
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v4

    .line 319
    iget-wide v8, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v8, v6

    .line 320
    iget-wide v10, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    sub-double/2addr v10, v6

    mul-double v12, v8, v10

    .line 321
    iget-wide v14, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    sub-double/2addr v12, v14

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v14, v4, 0x1

    aget-object v15, v5, v14

    aget-wide v16, v15, v4

    div-double v12, v12, v16

    aget-object v16, v5, v4

    aget-wide v17, v16, v14

    add-double v12, v12, v17

    const/16 v17, 0x0

    aput-wide v12, p4, v17

    .line 322
    aget-wide v12, v15, v14

    sub-double/2addr v12, v6

    sub-double/2addr v12, v8

    sub-double/2addr v12, v10

    const/4 v8, 0x1

    aput-wide v12, p4, v8

    add-int/lit8 v9, v4, 0x2

    .line 323
    aget-object v5, v5, v9

    aget-wide v9, v5, v14

    aput-wide v9, p4, v3

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, -0x1

    .line 329
    aget-wide v9, v16, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    aget-wide v11, p4, v8

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    aget-wide v15, p4, v3

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v11, v15

    mul-double v9, v9, v11

    .line 330
    aget-wide v11, p4, v17

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v8, v8, v5

    aget-wide v15, v8, v5

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v15, v5

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v14

    aget-wide v6, v5, v14

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v15, v5

    mul-double v11, v11, v15

    .line 334
    iget-wide v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    mul-double v5, v5, v11

    cmpg-double v7, v9, v5

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v4
.end method

.method private performDoubleQRStep(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 355
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    const/4 v5, 0x0

    .line 356
    aget-wide v6, p5, v5

    const/4 v8, 0x1

    .line 357
    aget-wide v9, p5, v8

    const/4 v11, 0x2

    .line 358
    aget-wide v12, p5, v11

    move v14, v1

    :goto_0
    add-int/lit8 v15, v2, -0x1

    const-wide/16 v16, 0x0

    if-gt v14, v15, :cond_e

    if-eq v14, v15, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    if-eq v14, v1, :cond_3

    .line 363
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v6, v14

    add-int/lit8 v9, v14, -0x1

    aget-wide v12, v7, v9

    add-int/lit8 v7, v14, 0x1

    .line 364
    aget-object v7, v6, v7

    aget-wide v18, v7, v9

    if-eqz v15, :cond_1

    add-int/lit8 v7, v14, 0x2

    .line 365
    aget-object v6, v6, v7

    aget-wide v9, v6, v9

    goto :goto_2

    :cond_1
    move-wide/from16 v9, v16

    .line 366
    :goto_2
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v6, v6, v20

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v6, v6, v20

    iput-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 367
    iget-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    const-wide/16 v22, 0x0

    move-wide/from16 v20, v6

    iget-wide v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    move-wide/from16 v24, v5

    invoke-static/range {v20 .. v25}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v24, v4

    move-wide v6, v12

    const/16 p5, 0x1

    move-wide v12, v9

    move-wide/from16 v9, v18

    const/16 v18, 0x2

    goto/16 :goto_8

    .line 370
    :cond_2
    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v6, v12, v5

    .line 371
    iget-wide v12, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v12, v18, v12

    move-wide/from16 v18, v9

    const/4 v5, 0x1

    .line 372
    iget-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v8, v18, v8

    move-wide/from16 v26, v12

    move-wide v12, v8

    move-wide/from16 v9, v26

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    :goto_3
    mul-double v18, v6, v6

    mul-double v20, v9, v9

    add-double v18, v18, v20

    mul-double v20, v12, v12

    add-double v18, v18, v20

    move-wide/from16 v20, v6

    const/16 p5, 0x1

    .line 374
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    cmpg-double v7, v20, v16

    if-gez v7, :cond_4

    neg-double v5, v5

    :cond_4
    cmpl-double v7, v5, v16

    if-eqz v7, :cond_d

    if-eq v14, v1, :cond_5

    .line 380
    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v7, v14

    add-int/lit8 v8, v14, -0x1

    move-wide/from16 v22, v12

    const/16 v18, 0x2

    neg-double v11, v5

    move-wide/from16 v24, v5

    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    mul-double v11, v11, v5

    aput-wide v11, v7, v8

    move/from16 v5, p1

    goto :goto_4

    :cond_5
    move-wide/from16 v24, v5

    move-wide/from16 v22, v12

    const/16 v18, 0x2

    move/from16 v5, p1

    if-eq v5, v1, :cond_6

    .line 382
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v6, v6, v14

    add-int/lit8 v7, v14, -0x1

    aget-wide v11, v6, v7

    neg-double v11, v11

    aput-wide v11, v6, v7

    :cond_6
    :goto_4
    add-double v6, v20, v24

    div-double v11, v6, v24

    .line 385
    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v11, v9, v24

    .line 386
    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    div-double v12, v22, v24

    div-double/2addr v9, v6

    div-double v16, v22, v6

    move v8, v14

    :goto_5
    if-ge v8, v4, :cond_8

    .line 393
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v6, v14

    aget-wide v19, v7, v8

    add-int/lit8 v11, v14, 0x1

    aget-object v21, v6, v11

    aget-wide v22, v21, v8

    mul-double v22, v22, v9

    add-double v19, v19, v22

    if-eqz v15, :cond_7

    add-int/lit8 v21, v14, 0x2

    .line 395
    aget-object v6, v6, v21

    aget-wide v21, v6, v8

    mul-double v23, v16, v21

    add-double v19, v19, v23

    mul-double v23, v19, v12

    sub-double v21, v21, v23

    .line 396
    aput-wide v21, v6, v8

    .line 398
    :cond_7
    aget-wide v21, v7, v8

    move/from16 v24, v4

    iget-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    mul-double v4, v4, v19

    sub-double v21, v21, v4

    aput-wide v21, v7, v8

    .line 399
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v11

    aget-wide v5, v4, v8

    move-object v7, v4

    move-wide/from16 v21, v5

    iget-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    mul-double v4, v4, v19

    sub-double v5, v21, v4

    aput-wide v5, v7, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, p1

    move-wide/from16 v6, v19

    move/from16 v4, v24

    goto :goto_5

    :cond_8
    move/from16 v24, v4

    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v5, v14, 0x3

    .line 403
    invoke-static {v2, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 404
    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v7, v4

    aget-wide v19, v7, v14

    mul-double v5, v5, v19

    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-object v11, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v11, v11, v4

    add-int/lit8 v19, v14, 0x1

    aget-wide v20, v11, v19

    mul-double v7, v7, v20

    add-double/2addr v5, v7

    if-eqz v15, :cond_9

    add-int/lit8 v7, v14, 0x2

    .line 406
    aget-wide v20, v11, v7

    mul-double v22, v12, v20

    add-double v5, v5, v22

    mul-double v22, v5, v16

    sub-double v20, v20, v22

    .line 407
    aput-wide v20, v11, v7

    :cond_9
    move-wide v6, v5

    .line 409
    aget-wide v20, v11, v14

    sub-double v20, v20, v6

    aput-wide v20, v11, v14

    .line 410
    aget-wide v20, v11, v19

    mul-double v22, v6, v9

    sub-double v20, v20, v22

    aput-wide v20, v11, v19

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 414
    :cond_a
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_7
    if-gt v5, v4, :cond_c

    .line 416
    iget-wide v6, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v8, v8, v5

    aget-wide v19, v8, v14

    mul-double v6, v6, v19

    move v8, v4

    move v11, v5

    iget-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v1, v1, v11

    add-int/lit8 v19, v14, 0x1

    aget-wide v20, v1, v19

    mul-double v4, v4, v20

    add-double/2addr v6, v4

    if-eqz v15, :cond_b

    add-int/lit8 v4, v14, 0x2

    .line 418
    aget-wide v20, v1, v4

    mul-double v22, v12, v20

    add-double v6, v6, v22

    mul-double v22, v6, v16

    sub-double v20, v20, v22

    .line 419
    aput-wide v20, v1, v4

    .line 421
    :cond_b
    aget-wide v4, v1, v14

    sub-double/2addr v4, v6

    aput-wide v4, v1, v14

    .line 422
    aget-wide v4, v1, v19

    mul-double v20, v6, v9

    sub-double v4, v4, v20

    aput-wide v4, v1, v19

    add-int/lit8 v5, v11, 0x1

    move/from16 v1, p2

    move v4, v8

    goto :goto_7

    :cond_c
    move-wide/from16 v12, v16

    goto :goto_8

    :cond_d
    move/from16 v24, v4

    move-wide/from16 v22, v12

    const/16 v18, 0x2

    move-wide/from16 v6, v20

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p2

    move/from16 v4, v24

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_e
    const/16 v18, 0x2

    add-int/lit8 v1, p2, 0x2

    move v3, v1

    :goto_9
    if-gt v3, v2, :cond_10

    .line 429
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v3

    add-int/lit8 v5, v3, -0x2

    aput-wide v16, v4, v5

    if-le v3, v1, :cond_f

    add-int/lit8 v5, v3, -0x3

    .line 431
    aput-wide v16, v4, v5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    return-void
.end method

.method private transform()V
    .locals 22

    move-object/from16 v0, p0

    .line 133
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v6, v1

    .line 136
    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getNorm()D

    move-result-wide v7

    .line 139
    new-instance v4, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;-><init>(Lorg/apache/commons/math3/linear/SchurTransformer$1;)V

    add-int/lit8 v9, v6, -0x1

    move v3, v9

    const/4 v1, 0x0

    :goto_0
    if-ltz v3, :cond_7

    .line 147
    invoke-direct {v0, v3, v7, v8}, Lorg/apache/commons/math3/linear/SchurTransformer;->findSmallSubDiagonalElement(ID)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 152
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v3

    aget-wide v11, v1, v3

    iget-wide v13, v4, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v11, v13

    aput-wide v11, v1, v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_5

    .line 157
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v1, v5

    aget-wide v11, v2, v5

    aget-object v1, v1, v3

    aget-wide v13, v1, v3

    sub-double/2addr v11, v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v15

    mul-double v15, v11, v11

    .line 158
    aget-wide v17, v1, v5

    aget-wide v19, v2, v3

    mul-double v17, v17, v19

    add-double v15, v15, v17

    move-wide/from16 v18, v11

    .line 159
    iget-wide v10, v4, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v13, v10

    aput-wide v13, v1, v3

    .line 160
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v5

    aget-wide v10, v1, v5

    iget-wide v12, v4, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v10, v12

    aput-wide v10, v1, v5

    const-wide/16 v1, 0x0

    cmpl-double v10, v15, v1

    if-ltz v10, :cond_4

    .line 163
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    cmpl-double v12, v18, v1

    if-ltz v12, :cond_1

    add-double v11, v18, v10

    goto :goto_2

    :cond_1
    sub-double v11, v18, v10

    .line 169
    :goto_2
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v3

    aget-wide v13, v1, v5

    .line 170
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    add-double/2addr v1, v15

    div-double/2addr v13, v1

    div-double/2addr v11, v1

    mul-double v1, v13, v13

    mul-double v15, v11, v11

    add-double/2addr v1, v15

    .line 173
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v13, v1

    div-double/2addr v11, v1

    move v1, v5

    :goto_3
    if-ge v1, v6, :cond_2

    .line 179
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v10, v2, v5

    aget-wide v15, v10, v1

    mul-double v18, v11, v15

    .line 180
    aget-object v2, v2, v3

    aget-wide v20, v2, v1

    mul-double v20, v20, v13

    add-double v18, v18, v20

    aput-wide v18, v10, v1

    .line 181
    aget-wide v18, v2, v1

    mul-double v18, v18, v11

    mul-double v15, v15, v13

    sub-double v18, v18, v15

    aput-wide v18, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_4
    if-gt v1, v3, :cond_3

    .line 186
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v2, v2, v1

    aget-wide v15, v2, v5

    mul-double v18, v11, v15

    .line 187
    aget-wide v20, v2, v3

    mul-double v20, v20, v13

    add-double v18, v18, v20

    aput-wide v18, v2, v5

    .line 188
    aget-wide v18, v2, v3

    mul-double v18, v18, v11

    mul-double v15, v15, v13

    sub-double v18, v18, v15

    aput-wide v18, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_5
    if-gt v1, v9, :cond_4

    .line 193
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v2, v2, v1

    aget-wide v15, v2, v5

    mul-double v18, v11, v15

    .line 194
    aget-wide v20, v2, v3

    mul-double v20, v20, v13

    add-double v18, v18, v20

    aput-wide v18, v2, v5

    .line 195
    aget-wide v18, v2, v3

    mul-double v18, v18, v11

    mul-double v15, v15, v13

    sub-double v18, v18, v15

    aput-wide v18, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, -0x2

    goto/16 :goto_1

    .line 202
    :cond_5
    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/SchurTransformer;->computeShift(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;)V

    add-int/lit8 v10, v1, 0x1

    const/16 v1, 0x64

    if-gt v10, v1, :cond_6

    const/4 v1, 0x3

    .line 211
    new-array v5, v1, [D

    move v1, v2

    .line 213
    invoke-direct {v0, v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/SchurTransformer;->initQRStep(IILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)I

    move-result v2

    .line 214
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/SchurTransformer;->performDoubleQRStep(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)V

    move v1, v10

    :goto_6
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 206
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v0

    :cond_7
    return-void
.end method


# virtual methods
.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getPT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
