.class public Lorg/apache/commons/math3/dfp/Dfp;
.super Ljava/lang/Object;
.source "Dfp.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD_TRAP:Ljava/lang/String; = "add"

.field private static final ALIGN_TRAP:Ljava/lang/String; = "align"

.field private static final DIVIDE_TRAP:Ljava/lang/String; = "divide"

.field public static final ERR_SCALE:I = 0x7ff8

.field public static final FINITE:B = 0x0t

.field private static final GREATER_THAN_TRAP:Ljava/lang/String; = "greaterThan"

.field public static final INFINITE:B = 0x1t

.field private static final LESS_THAN_TRAP:Ljava/lang/String; = "lessThan"

.field public static final MAX_EXP:I = 0x8000

.field public static final MIN_EXP:I = -0x7fff

.field private static final MULTIPLY_TRAP:Ljava/lang/String; = "multiply"

.field private static final NAN_STRING:Ljava/lang/String; = "NaN"

.field private static final NEG_INFINITY_STRING:Ljava/lang/String; = "-Infinity"

.field private static final NEW_INSTANCE_TRAP:Ljava/lang/String; = "newInstance"

.field private static final NEXT_AFTER_TRAP:Ljava/lang/String; = "nextAfter"

.field private static final POS_INFINITY_STRING:Ljava/lang/String; = "Infinity"

.field public static final QNAN:B = 0x3t

.field public static final RADIX:I = 0x2710

.field public static final SNAN:B = 0x2t

.field private static final SQRT_TRAP:Ljava/lang/String; = "sqrt"

.field private static final TRUNC_TRAP:Ljava/lang/String; = "trunc"


# instance fields
.field protected exp:I

.field private final field:Lorg/apache/commons/math3/dfp/DfpField;

.field protected mant:[I

.field protected nans:B

.field protected sign:B


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 326
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 327
    iget v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 328
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 329
    iget-object p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v0, 0x1

    .line 185
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 187
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 188
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 2

    int-to-long v0, p2

    .line 196
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 545
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 546
    iput-byte p2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 p1, 0x0

    .line 547
    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 548
    iput-byte p3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 258
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v2, 0x1

    .line 262
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v3, 0x0

    .line 263
    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 264
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 265
    iput-object v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 267
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide v6, 0xfffffffffffffL

    and-long v8, v4, v6

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v10, v4

    const/16 v12, 0x34

    shr-long/2addr v10, v12

    long-to-int v11, v10

    add-int/lit16 v10, v11, -0x3ff

    const/16 v12, -0x3ff

    move-wide v15, v6

    const-wide/high16 v6, 0x10000000000000L

    const-wide/16 v17, 0x0

    const-wide/high16 v19, -0x8000000000000000L

    const/4 v13, -0x1

    const-wide/16 v21, 0x0

    if-ne v10, v12, :cond_3

    cmpl-double v10, p2, v17

    if-nez v10, :cond_1

    and-long v1, v4, v19

    cmp-long v3, v1, v21

    if-eqz v3, :cond_0

    .line 276
    iput-byte v13, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_0
    return-void

    :cond_1
    add-int/lit16 v11, v11, -0x3fe

    move v10, v11

    :goto_0
    and-long v11, v8, v6

    cmp-long v14, v11, v21

    if-nez v14, :cond_2

    add-int/lit8 v10, v10, -0x1

    shl-long/2addr v8, v2

    goto :goto_0

    :cond_2
    and-long/2addr v8, v15

    :cond_3
    const/16 v11, 0x400

    if-ne v10, v11, :cond_6

    cmpl-double v1, p2, p2

    if-eqz v1, :cond_4

    .line 294
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, 0x3

    .line 295
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    :cond_4
    cmpg-double v1, p2, v17

    if-gez v1, :cond_5

    .line 297
    iput-byte v13, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 298
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    .line 300
    :cond_5
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 301
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    .line 306
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v1, v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 307
    new-instance v8, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v8, v1, v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    invoke-virtual {v2, v8}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 308
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1, v10}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    and-long v4, v4, v19

    cmp-long v2, v4, v21

    if-eqz v2, :cond_7

    .line 311
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 314
    :cond_7
    iget-object v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 316
    iget v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 317
    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 2

    int-to-long v0, p2

    .line 204
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 10

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v0, 0x0

    .line 215
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 216
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const-wide/high16 v1, -0x8000000000000000L

    const/4 p1, 0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_0

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    .line 228
    iput-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-long p2, p2

    goto :goto_1

    .line 231
    :cond_1
    iput-byte p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 234
    :goto_1
    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    :goto_2
    cmp-long v4, p2, v2

    if-eqz v4, :cond_2

    .line 236
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v5, v6

    array-length v7, v4

    sub-int/2addr v7, p1

    sub-int/2addr v7, v6

    invoke-static {v4, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, p1

    const-wide/16 v6, 0x2710

    rem-long v8, p2, v6

    long-to-int v9, v8

    aput v9, v4, v5

    .line 238
    div-long/2addr p2, v6

    .line 239
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v4, p1

    iput v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_4

    .line 245
    :goto_3
    iget-object p2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length p3, p2

    sub-int/2addr p3, p1

    if-ge v0, p3, :cond_4

    .line 246
    aget p3, p2, v0

    if-eqz p3, :cond_3

    add-int/2addr p3, p1

    .line 247
    aput p3, p2, v0

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 336
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 339
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v2, 0x1

    .line 340
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v3, 0x0

    .line 341
    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 342
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move-object/from16 v4, p1

    .line 343
    iput-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 348
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result v4

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x8

    new-array v6, v4, [C

    .line 351
    const-string v7, "Infinity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 352
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 353
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    .line 357
    :cond_0
    const-string v7, "-Infinity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_1

    .line 358
    iput-byte v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 359
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    .line 363
    :cond_1
    const-string v7, "NaN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x3

    if-eqz v7, :cond_2

    .line 364
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 365
    iput-byte v9, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    .line 370
    :cond_2
    const-string v7, "e"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 372
    const-string v7, "E"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :cond_3
    const/16 v10, 0x39

    const/16 v11, 0x30

    if-eq v7, v8, :cond_8

    .line 379
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v7, v2

    .line 380
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 383
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_6

    .line 385
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x1

    const/16 v2, 0x2d

    if-ne v15, v2, :cond_4

    const/4 v13, 0x1

    goto :goto_1

    .line 390
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v11, :cond_5

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v10, :cond_5

    mul-int/lit8 v14, v14, 0xa

    .line 391
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v14, v2

    sub-int/2addr v14, v11

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/16 v16, 0x1

    if-eqz v13, :cond_7

    neg-int v14, v14

    :cond_7
    move-object v1, v12

    goto :goto_2

    :cond_8
    const/16 v16, 0x1

    const/4 v14, 0x0

    .line 404
    :goto_2
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_9

    .line 405
    iput-byte v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_9
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 414
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x31

    const/16 v17, 0x0

    const/16 v3, 0x2e

    if-lt v13, v15, :cond_a

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-gt v13, v10, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v7, :cond_b

    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_b

    add-int/lit8 v12, v12, -0x1

    .line 422
    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v3, :cond_c

    const/4 v7, 0x1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v2, v13, :cond_1c

    .line 435
    :goto_4
    aput-char v11, v6, v17

    .line 436
    aput-char v11, v6, v16

    const/4 v13, 0x2

    .line 437
    aput-char v11, v6, v13

    .line 438
    aput-char v11, v6, v9

    move v9, v12

    const/4 v12, 0x0

    const/4 v13, 0x4

    .line 441
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v2, v15, :cond_d

    goto :goto_6

    .line 446
    :cond_d
    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x5

    if-ne v13, v15, :cond_18

    :goto_6
    if-eqz v7, :cond_f

    if-eq v13, v5, :cond_f

    :goto_7
    add-int/2addr v13, v8

    if-ne v13, v5, :cond_e

    goto :goto_8

    .line 476
    :cond_e
    aget-char v1, v6, v13

    if-ne v1, v11, :cond_f

    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v7, :cond_10

    if-nez v12, :cond_10

    const/4 v9, 0x0

    :cond_10
    if-nez v7, :cond_11

    add-int/lit8 v9, v13, -0x4

    :cond_11
    add-int/lit8 v12, v12, 0x3

    :goto_9
    if-le v12, v5, :cond_13

    .line 499
    aget-char v1, v6, v12

    if-eq v1, v11, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    :cond_13
    :goto_a
    rsub-int v1, v9, 0x190

    .line 506
    rem-int/lit8 v2, v14, 0x4

    sub-int/2addr v1, v2

    rem-int/2addr v1, v5

    rsub-int/lit8 v2, v1, 0x4

    add-int/2addr v9, v1

    :cond_14
    sub-int v1, v12, v2

    .line 511
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v3

    mul-int/lit8 v7, v7, 0x4

    if-ge v1, v7, :cond_15

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v5, :cond_14

    add-int/lit8 v12, v12, 0x1

    .line 513
    aput-char v11, v6, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 519
    :cond_15
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_16

    .line 520
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget-char v7, v6, v2

    sub-int/2addr v7, v11

    mul-int/lit16 v7, v7, 0x3e8

    add-int/lit8 v8, v2, 0x1

    aget-char v8, v6, v8

    sub-int/2addr v8, v11

    mul-int/lit8 v8, v8, 0x64

    add-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x2

    aget-char v8, v6, v8

    sub-int/2addr v8, v11

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x3

    aget-char v8, v6, v8

    sub-int/2addr v8, v11

    add-int/2addr v7, v8

    aput v7, v3, v1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_16
    add-int/2addr v9, v14

    .line 528
    div-int/2addr v9, v5

    iput v9, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v2, v4, :cond_17

    .line 532
    aget-char v1, v6, v2

    sub-int/2addr v1, v11

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    :cond_17
    return-void

    .line 450
    :cond_18
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v3, :cond_19

    add-int/lit8 v2, v2, 0x1

    move v9, v12

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 457
    :cond_19
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v11, :cond_1b

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-le v15, v10, :cond_1a

    goto :goto_d

    .line 462
    :cond_1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aput-char v15, v6, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    :cond_1b
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method private static compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I
    .locals 7

    .line 949
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, v0, v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v1

    sub-int/2addr v4, v2

    aget v1, v1, v4

    if-nez v1, :cond_0

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_0

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_0

    return v3

    .line 954
    :cond_0
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v1, v4, :cond_2

    const/4 p0, -0x1

    if-ne v1, p0, :cond_1

    return p0

    :cond_1
    return v2

    .line 963
    :cond_2
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v2, :cond_3

    iget-byte v6, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    .line 967
    iget-byte v6, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v6, v2, :cond_4

    neg-int p0, v4

    return p0

    :cond_4
    if-ne v5, v2, :cond_5

    .line 971
    iget-byte v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v4, v2, :cond_5

    return v3

    .line 976
    :cond_5
    iget-object v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, v2

    aget v5, v4, v5

    if-eqz v5, :cond_7

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v4, v0, v4

    if-eqz v4, :cond_7

    .line 977
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v4, v5, :cond_6

    neg-int p0, v1

    return p0

    :cond_6
    if-le v4, v5, :cond_7

    :goto_0
    return v1

    .line 987
    :cond_7
    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_a

    .line 988
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v1, v1, v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_8

    .line 989
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return p0

    :cond_8
    if-ge v1, v2, :cond_9

    .line 993
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int p0, p0

    return p0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_a
    return v3
.end method

.method public static copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2333
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 2334
    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object p0
.end method

.method private multiplyFast(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    .line 1624
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1627
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v2, 0x3

    const-string v3, "multiply"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 1628
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 1632
    :cond_0
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_1

    if-eqz p1, :cond_1

    .line 1633
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    .line 1638
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1639
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1640
    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1641
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v3, v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_2
    if-ltz p1, :cond_8

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1656
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 1657
    aget v6, v6, v2

    mul-int v6, v6, p1

    add-int/2addr v6, v5

    .line 1658
    div-int/lit16 v5, v6, 0x2710

    .line 1659
    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v8, v5, 0x2710

    sub-int/2addr v6, v8

    aput v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 1664
    iget-object p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget p1, p1, v1

    .line 1665
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1666
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    aput v5, v2, v6

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 1669
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v2, v2, v5

    if-nez v2, :cond_6

    .line 1670
    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1673
    :cond_6
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result p1

    if-eqz p1, :cond_7

    .line 1675
    invoke-virtual {p0, p1, v3, v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0

    .line 1648
    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1649
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1650
    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1651
    invoke-virtual {p0, v4, v3, p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 866
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x1

    .line 867
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2719
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->acos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2788
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(D)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2526
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1262
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "add"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_0

    .line 1263
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1264
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1265
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1266
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1270
    :cond_0
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v2, :cond_1

    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v2, :cond_7

    .line 1271
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1275
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1279
    :cond_3
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_4

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_4

    :goto_0
    return-object v0

    .line 1283
    :cond_4
    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v3, v6, :cond_5

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    if-ne v3, v6, :cond_6

    if-ne v2, v6, :cond_6

    .line 1287
    iget-byte v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v8, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v7, v8, :cond_6

    :goto_1
    return-object v1

    :cond_6
    if-ne v3, v6, :cond_7

    if-ne v2, v6, :cond_7

    .line 1291
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v2, v3, :cond_7

    .line 1292
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1293
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1294
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1295
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1301
    :cond_7
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1302
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1305
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1308
    iget-byte v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1309
    iget-byte v8, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1311
    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1312
    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1316
    invoke-static {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v9

    if-lez v9, :cond_8

    move v9, v7

    goto :goto_2

    :cond_8
    move v9, v8

    .line 1323
    :goto_2
    iget-object v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v11

    sub-int/2addr v12, v6

    aget v10, v10, v12

    if-nez v10, :cond_9

    .line 1324
    iget v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1327
    :cond_9
    iget-object v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    aget v10, v10, v11

    if-nez v10, :cond_a

    .line 1328
    iget v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1334
    :cond_a
    iget v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v11, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v10, v11, :cond_b

    .line 1335
    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v10

    const/4 v11, 0x0

    goto :goto_3

    .line 1337
    :cond_b
    invoke-virtual {v3, v10}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v10

    move v11, v10

    const/4 v10, 0x0

    :goto_3
    if-eq v7, v8, :cond_d

    if-ne v7, v9, :cond_c

    .line 1343
    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v11

    goto :goto_4

    .line 1345
    :cond_c
    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v10

    :cond_d
    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1351
    :goto_5
    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    if-ge v13, v15, :cond_e

    .line 1352
    iget-object v15, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v15, v15, v13

    const/16 v16, 0x1

    iget-object v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v13

    add-int/2addr v15, v6

    add-int/2addr v15, v14

    .line 1353
    div-int/lit16 v14, v15, 0x2710

    .line 1354
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/16 v17, 0x0

    mul-int/lit16 v12, v14, 0x2710

    sub-int/2addr v15, v12

    aput v15, v6, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_5

    :cond_e
    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1356
    iget v2, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1357
    iput-byte v9, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eqz v14, :cond_f

    if-ne v7, v8, :cond_f

    .line 1363
    iget-object v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v17

    .line 1364
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1365
    iget-object v3, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aput v14, v3, v6

    .line 1366
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1368
    invoke-virtual {v0, v2, v5, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    :cond_f
    const/4 v2, 0x0

    .line 1373
    :goto_6
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v3

    if-ge v2, v6, :cond_12

    .line 1374
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v3

    add-int/lit8 v9, v9, -0x1

    aget v6, v6, v9

    if-eqz v6, :cond_10

    goto :goto_7

    .line 1377
    :cond_10
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    if-nez v2, :cond_11

    .line 1379
    iget-object v3, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/2addr v10, v11

    aput v10, v3, v17

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1386
    :cond_12
    :goto_7
    iget-object v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_13

    const/4 v2, 0x0

    .line 1387
    iput v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-eq v7, v8, :cond_13

    const/4 v2, 0x1

    .line 1391
    iput-byte v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_13
    add-int/2addr v10, v11

    .line 1396
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v2

    if-eqz v2, :cond_14

    .line 1398
    invoke-virtual {v0, v2, v5, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    :cond_14
    return-object v4
.end method

.method protected align(I)I
    .locals 8

    .line 702
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    neg-int v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 713
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const-string v6, "align"

    const/16 v7, 0x10

    if-le v1, v4, :cond_2

    .line 715
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 716
    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 718
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 719
    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v2

    :cond_2
    const/4 p1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge p1, v1, :cond_5

    if-gez v0, :cond_4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 734
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v4, v4, v2

    .line 736
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    goto :goto_2

    .line 738
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 743
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 744
    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    :cond_6
    return v4
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2726
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->asin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2795
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2733
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2743
    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2745
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v1, :cond_0

    .line 2748
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 2753
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 2754
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v0, :cond_1

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_0

    :cond_1
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2755
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2802
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cbrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    const/4 v0, 0x3

    .line 2614
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->ceil()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1026
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public classify()I
    .locals 1

    .line 2323
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return v0
.end method

.method protected complement(I)I
    .locals 5

    rsub-int p1, p1, 0x2710

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1240
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 1241
    aget v3, v2, v1

    rsub-int v3, v3, 0x270f

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    :cond_0
    div-int/lit16 v1, p1, 0x2710

    mul-int/lit16 v2, v1, 0x2710

    sub-int/2addr p1, v2

    .line 1246
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1247
    aget v3, v2, v0

    add-int/2addr v3, v1

    .line 1248
    div-int/lit16 v1, v3, 0x2710

    mul-int/lit16 v4, v1, 0x2710

    sub-int/2addr v3, v4

    .line 1249
    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public copySign(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4

    .line 2589
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 2590
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    :cond_0
    if-gez v0, :cond_2

    cmp-long v0, p1, v1

    if-gez v0, :cond_2

    :cond_1
    return-object p0

    .line 2593
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2579
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v1, :cond_1

    :cond_0
    if-gez v0, :cond_2

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez p1, :cond_2

    :cond_1
    return-object p0

    .line 2582
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2698
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2765
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method protected dfp2sci()Ljava/lang/String;
    .locals 14

    .line 2088
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    new-array v2, v1, [C

    .line 2089
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x14

    new-array v3, v3, [C

    .line 2098
    array-length v0, v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x30

    if-ltz v0, :cond_0

    add-int/lit8 v8, v6, 0x1

    .line 2099
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v0

    div-int/lit16 v10, v9, 0x3e8

    add-int/2addr v10, v7

    int-to-char v10, v10

    aput-char v10, v2, v6

    add-int/lit8 v10, v6, 0x2

    .line 2100
    div-int/lit8 v11, v9, 0x64

    rem-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v7

    int-to-char v11, v11

    aput-char v11, v2, v8

    add-int/lit8 v8, v6, 0x3

    .line 2101
    div-int/lit8 v11, v9, 0xa

    rem-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v7

    int-to-char v11, v11

    aput-char v11, v2, v10

    add-int/lit8 v6, v6, 0x4

    .line 2102
    rem-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v7

    int-to-char v7, v9

    aput-char v7, v2, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 2107
    aget-char v6, v2, v0

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2115
    :cond_2
    :goto_2
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/16 v8, 0x2d

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 2116
    aput-char v8, v3, v5

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const/16 v9, 0x65

    const/16 v10, 0x2e

    if-eq v0, v1, :cond_9

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v0, 0x1

    .line 2121
    aget-char v13, v2, v0

    aput-char v13, v3, v6

    add-int/lit8 v6, v6, 0x2

    .line 2122
    aput-char v10, v3, v11

    :goto_4
    if-ge v12, v1, :cond_4

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v11, v12, 0x1

    .line 2125
    aget-char v12, v2, v12

    aput-char v12, v3, v6

    move v6, v10

    move v12, v11

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v6, 0x1

    .line 2136
    aput-char v9, v3, v6

    .line 2140
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    if-gez v2, :cond_5

    neg-int v0, v2

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    const v4, 0x3b9aca00

    :goto_6
    if-le v4, v0, :cond_6

    .line 2147
    div-int/lit8 v4, v4, 0xa

    goto :goto_6

    :cond_6
    if-gez v2, :cond_7

    add-int/lit8 v6, v6, 0x2

    .line 2152
    aput-char v8, v3, v1

    move v1, v6

    :cond_7
    :goto_7
    if-lez v4, :cond_8

    add-int/lit8 v2, v1, 0x1

    .line 2156
    div-int v6, v0, v4

    add-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v3, v1

    .line 2157
    rem-int/2addr v0, v4

    .line 2158
    div-int/lit8 v4, v4, 0xa

    move v1, v2

    goto :goto_7

    .line 2161
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_9
    add-int/lit8 v0, v6, 0x1

    .line 2128
    aput-char v7, v3, v6

    add-int/lit8 v1, v6, 0x2

    .line 2129
    aput-char v10, v3, v0

    add-int/lit8 v0, v6, 0x3

    .line 2130
    aput-char v7, v3, v1

    add-int/lit8 v6, v6, 0x4

    .line 2131
    aput-char v9, v3, v0

    .line 2132
    aput-char v7, v3, v6

    .line 2133
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected dfp2string()Ljava/lang/String;
    .locals 12

    .line 2169
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [C

    .line 2172
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    .line 2175
    aput-char v2, v0, v3

    const/16 v2, 0x2e

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-gtz v1, :cond_0

    .line 2178
    aput-char v4, v0, v5

    const/4 v3, 0x2

    .line 2179
    aput-char v2, v0, v3

    const/4 v3, 0x3

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_0
    if-gez v1, :cond_1

    add-int/lit8 v7, v3, 0x1

    .line 2184
    aput-char v4, v0, v3

    add-int/lit8 v8, v3, 0x2

    .line 2185
    aput-char v4, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 2186
    aput-char v4, v0, v8

    add-int/lit8 v3, v3, 0x4

    .line 2187
    aput-char v4, v0, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2191
    :cond_1
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v5

    :goto_1
    if-ltz v7, :cond_3

    add-int/lit8 v8, v3, 0x1

    .line 2192
    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v7

    div-int/lit16 v10, v9, 0x3e8

    add-int/2addr v10, v4

    int-to-char v10, v10

    aput-char v10, v0, v3

    add-int/lit8 v10, v3, 0x2

    .line 2193
    div-int/lit8 v11, v9, 0x64

    rem-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v4

    int-to-char v11, v11

    aput-char v11, v0, v8

    add-int/lit8 v8, v3, 0x3

    .line 2194
    div-int/lit8 v11, v9, 0xa

    rem-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v4

    int-to-char v11, v11

    aput-char v11, v0, v10

    add-int/lit8 v10, v3, 0x4

    .line 2195
    rem-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v4

    int-to-char v9, v9

    aput-char v9, v0, v8

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    add-int/lit8 v3, v3, 0x5

    .line 2197
    aput-char v2, v0, v10

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v1, :cond_4

    add-int/lit8 v7, v3, 0x1

    .line 2203
    aput-char v4, v0, v3

    add-int/lit8 v8, v3, 0x2

    .line 2204
    aput-char v4, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 2205
    aput-char v4, v0, v8

    add-int/lit8 v3, v3, 0x4

    .line 2206
    aput-char v4, v0, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    add-int/lit8 v1, v3, 0x1

    .line 2212
    aput-char v2, v0, v3

    move v3, v1

    .line 2217
    :cond_5
    :goto_4
    aget-char v1, v0, v5

    if-ne v1, v4, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    if-ne v1, v2, :cond_7

    add-int/lit8 v5, v5, -0x1

    :cond_7
    :goto_5
    add-int/lit8 v1, v3, -0x1

    .line 2225
    aget-char v1, v0, v1

    if-ne v1, v4, :cond_8

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 2230
    :cond_8
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v1, :cond_9

    add-int/lit8 v5, v5, -0x1

    const/16 v1, 0x2d

    .line 2231
    aput-char v1, v0, v5

    .line 2234
    :cond_9
    new-instance v1, Ljava/lang/String;

    sub-int/2addr v3, v5

    invoke-direct {v1, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(D)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public divide(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2547
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public divide(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 10

    .line 1903
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1904
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1908
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v1, :cond_1

    .line 1909
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1914
    :cond_1
    const-string v0, "divide"

    if-nez p1, :cond_2

    .line 1915
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1916
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1917
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1918
    iput-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1919
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_2
    if-ltz p1, :cond_7

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_3

    goto :goto_1

    .line 1932
    :cond_3
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1935
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ltz v4, :cond_4

    mul-int/lit16 v6, v6, 0x2710

    .line 1936
    iget-object v7, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v7, v4

    add-int/2addr v6, v8

    .line 1937
    div-int v8, v6, p1

    mul-int v9, v8, p1

    sub-int/2addr v6, v9

    .line 1939
    aput v8, v7, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1942
    :cond_4
    iget-object v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v1

    aget v1, v4, v7

    if-nez v1, :cond_5

    .line 1944
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    mul-int/lit16 v6, v6, 0x2710

    .line 1946
    div-int v1, v6, p1

    mul-int v4, v1, p1

    sub-int/2addr v6, v4

    .line 1948
    iget-object v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aput v1, v4, v5

    :cond_5
    mul-int/lit16 v6, v6, 0x2710

    .line 1951
    div-int/2addr v6, p1

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result p1

    if-eqz p1, :cond_6

    .line 1953
    invoke-virtual {p0, p1, v0, v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v3

    .line 1925
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1926
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    const/4 v2, 0x3

    .line 1927
    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1928
    invoke-virtual {p0, v1, v0, p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1698
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "divide"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_0

    .line 1699
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1700
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1701
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1702
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1705
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1708
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_1

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v3, :cond_6

    .line 1709
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 1713
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    .line 1717
    :cond_3
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v3, v6, :cond_4

    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v7, :cond_4

    .line 1718
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1719
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int v3, v3, v1

    int-to-byte v1, v3

    iput-byte v1, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v2

    .line 1723
    :cond_4
    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v7, v6, :cond_5

    if-nez v3, :cond_5

    .line 1724
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1725
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int v3, v3, v1

    int-to-byte v1, v3

    iput-byte v1, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v2

    :cond_5
    if-ne v7, v6, :cond_6

    if-ne v3, v6, :cond_6

    .line 1730
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1731
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1732
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1733
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1739
    :cond_6
    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v4

    sub-int/2addr v7, v6

    aget v3, v3, v7

    const/4 v7, 0x2

    if-nez v3, :cond_7

    .line 1740
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1741
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1742
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int v3, v3, v4

    int-to-byte v3, v3

    iput-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1743
    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1744
    invoke-virtual {v0, v7, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1748
    :cond_7
    array-length v3, v4

    add-int/2addr v3, v6

    new-array v3, v3, [I

    .line 1749
    array-length v8, v4

    add-int/2addr v8, v7

    new-array v8, v8, [I

    .line 1750
    array-length v9, v4

    add-int/2addr v9, v6

    new-array v9, v9, [I

    .line 1754
    array-length v10, v4

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 1755
    array-length v10, v4

    aput v11, v8, v10

    .line 1756
    array-length v10, v4

    add-int/2addr v10, v6

    aput v11, v8, v10

    .line 1757
    array-length v4, v4

    aput v11, v9, v4

    const/4 v4, 0x0

    .line 1762
    :goto_0
    iget-object v10, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v10

    if-ge v4, v12, :cond_8

    .line 1763
    aget v10, v10, v4

    aput v10, v3, v4

    .line 1764
    aput v11, v8, v4

    .line 1765
    aput v11, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1770
    :cond_8
    array-length v4, v10

    add-int/2addr v4, v6

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ltz v4, :cond_19

    .line 1774
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v13

    aget v14, v3, v14

    mul-int/lit16 v14, v14, 0x2710

    array-length v15, v13

    sub-int/2addr v15, v6

    aget v15, v3, v15

    add-int/2addr v14, v15

    .line 1775
    iget-object v15, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/16 v16, 0x1

    array-length v6, v13

    add-int/lit8 v6, v6, -0x1

    aget v6, v15, v6

    add-int/lit8 v6, v6, 0x1

    div-int v6, v14, v6

    add-int/lit8 v14, v14, 0x1

    .line 1776
    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget v13, v15, v13

    div-int/2addr v14, v13

    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_13

    add-int v12, v6, v14

    .line 1781
    div-int/2addr v12, v7

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1785
    :goto_3
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v11

    add-int/lit8 v7, v7, 0x1

    if-ge v15, v7, :cond_a

    .line 1786
    array-length v7, v11

    if-ge v15, v7, :cond_9

    iget-object v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v15

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    mul-int v7, v7, v12

    add-int v7, v7, v17

    .line 1788
    div-int/lit16 v11, v7, 0x2710

    move-object/from16 v17, v3

    mul-int/lit16 v3, v11, 0x2710

    sub-int/2addr v7, v3

    .line 1789
    aput v7, v9, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    const/4 v7, 0x2

    move/from16 v17, v11

    goto :goto_3

    :cond_a
    move-object/from16 v17, v3

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 1794
    :goto_5
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v11

    add-int/lit8 v15, v15, 0x1

    if-ge v3, v15, :cond_b

    .line 1795
    aget v11, v9, v3

    rsub-int v11, v11, 0x270f

    aget v15, v17, v3

    add-int/2addr v11, v15

    add-int/2addr v11, v7

    .line 1796
    div-int/lit16 v7, v11, 0x2710

    mul-int/lit16 v15, v7, 0x2710

    sub-int/2addr v11, v15

    .line 1797
    aput v11, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    if-nez v7, :cond_c

    add-int/lit8 v14, v12, -0x1

    move-object/from16 v3, v17

    const/4 v7, 0x2

    :goto_6
    const/4 v11, 0x0

    goto :goto_2

    .line 1808
    :cond_c
    array-length v3, v11

    aget v3, v9, v3

    mul-int/lit16 v3, v3, 0x2710

    array-length v7, v11

    add-int/lit8 v7, v7, -0x1

    aget v7, v9, v7

    add-int/2addr v3, v7

    .line 1809
    iget-object v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    aget v7, v7, v15

    add-int/lit8 v7, v7, 0x1

    div-int/2addr v3, v7

    const/4 v7, 0x2

    if-lt v3, v7, :cond_e

    add-int v6, v12, v3

    :cond_d
    :goto_7
    move-object/from16 v3, v17

    goto :goto_6

    .line 1819
    :cond_e
    array-length v3, v11

    add-int/lit8 v3, v3, -0x1

    const/4 v11, 0x0

    :goto_8
    if-ltz v3, :cond_11

    .line 1820
    iget-object v13, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v13, v13, v3

    aget v15, v9, v3

    if-le v13, v15, :cond_f

    const/4 v11, 0x1

    :cond_f
    if-ge v13, v15, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 1828
    :cond_11
    :goto_9
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    aget v3, v9, v3

    if-eqz v3, :cond_12

    const/4 v13, 0x0

    goto :goto_a

    :cond_12
    move v13, v11

    :goto_a
    if-nez v13, :cond_d

    add-int/lit8 v3, v12, 0x1

    move v6, v3

    goto :goto_7

    :cond_13
    move-object/from16 v17, v3

    const/16 v18, 0x0

    .line 1838
    aput v12, v8, v4

    if-nez v12, :cond_14

    if-eqz v10, :cond_15

    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 1843
    :cond_15
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v3

    sget-object v6, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    if-ne v3, v6, :cond_16

    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    if-ne v10, v3, :cond_16

    goto :goto_c

    .line 1848
    :cond_16
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    if-le v10, v3, :cond_17

    goto :goto_c

    .line 1854
    :cond_17
    aput v18, v17, v18

    const/4 v3, 0x0

    .line 1855
    :goto_b
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    if-ge v3, v6, :cond_18

    add-int/lit8 v6, v3, 0x1

    .line 1856
    aget v3, v9, v3

    aput v3, v17, v6

    move v3, v6

    goto :goto_b

    :cond_18
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v3, v17

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_19
    const/16 v16, 0x1

    const/16 v18, 0x0

    .line 1861
    :goto_c
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    .line 1862
    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    :goto_d
    if-ltz v3, :cond_1b

    .line 1863
    aget v6, v8, v3

    if-eqz v6, :cond_1a

    move v4, v3

    goto :goto_e

    :cond_1a
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    :cond_1b
    :goto_e
    const/4 v3, 0x0

    .line 1870
    :goto_f
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    if-ge v3, v7, :cond_1c

    .line 1871
    iget-object v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    sub-int v9, v4, v3

    aget v9, v8, v9

    aput v9, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1875
    :cond_1c
    iget v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v3, v7

    add-int/2addr v3, v4

    array-length v7, v6

    sub-int/2addr v3, v7

    iput v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1876
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v3, v7, :cond_1d

    const/4 v3, 0x1

    goto :goto_10

    :cond_1d
    const/4 v3, -0x1

    :goto_10
    int-to-byte v3, v3

    iput-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1878
    iget-object v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget v3, v3, v7

    if-nez v3, :cond_1e

    const/4 v3, 0x0

    .line 1879
    iput v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    .line 1882
    :goto_11
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-le v4, v7, :cond_1f

    .line 1883
    array-length v3, v6

    sub-int/2addr v4, v3

    aget v3, v8, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v3

    goto :goto_12

    .line 1885
    :cond_1f
    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v3

    :goto_12
    if-eqz v3, :cond_20

    .line 1889
    invoke-virtual {v0, v3, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    :cond_20
    return-object v2
.end method

.method public dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v7

    goto/16 :goto_5

    .line 2281
    :cond_0
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/2addr v0, v1

    const/16 v1, -0x7fff

    if-ge v0, v1, :cond_1

    .line 2282
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2283
    iget-byte v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    goto :goto_0

    .line 2285
    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2287
    :goto_0
    iget v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v1, v1, 0x7ff8

    iput v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_1

    .line 2291
    :cond_2
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v0, v0, -0x7ff8

    iput v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2292
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2293
    iget-byte v2, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2294
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :goto_1
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    move-object v7, v0

    goto/16 :goto_5

    .line 2256
    :cond_3
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    sub-int/2addr v4, v1

    aget v3, v3, v4

    if-eqz v3, :cond_4

    .line 2258
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2259
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v5, p3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int v4, v4, v5

    int-to-byte v4, v4

    iput-byte v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2260
    iput-byte v1, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_2

    :cond_4
    move-object v3, p4

    .line 2263
    :goto_2
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, v1

    aget v4, v4, v5

    if-nez v4, :cond_5

    .line 2265
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2266
    iput-byte v0, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2269
    :cond_5
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v4, v1, :cond_6

    if-ne v4, v0, :cond_7

    .line 2270
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2271
    iput-byte v0, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2274
    :cond_7
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v4, v1, :cond_9

    if-ne v4, v2, :cond_8

    goto :goto_3

    :cond_8
    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    move-object v7, v3

    move-object v3, p0

    goto :goto_5

    .line 2275
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2276
    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_4

    .line 2250
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2251
    iget-byte v2, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2252
    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :goto_4
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    move-object v7, v1

    .line 2300
    :goto_5
    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/dfp/Dfp;->trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 907
    instance-of v0, p1, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 908
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    .line 909
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->exp()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2651
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->expm1()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2658
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->floor()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1017
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/dfp/DfpField;
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getRadixDigits()I
    .locals 1

    .line 644
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    return v0
.end method

.method public getReal()D
    .locals 2

    .line 2519
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTwo()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5

    .line 783
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "greaterThan"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 784
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 785
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    .line 786
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 787
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3

    .line 792
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 798
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p1

    if-lez p1, :cond_2

    return v4

    :cond_2
    return v3

    .line 793
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 794
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3
.end method

.method public hashCode()I
    .locals 2

    .line 926
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x11

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

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

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2607
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public intLog10()I
    .locals 3

    .line 1190
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 1191
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1193
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 1194
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 1196
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1197
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3

    return v0

    .line 1199
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public intValue()I
    .locals 5

    .line 1145
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const v1, 0x7fffffff

    .line 1147
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/high16 v1, -0x80000000

    .line 1151
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 1155
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    iget v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_2

    mul-int/lit16 v2, v2, 0x2710

    .line 1156
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1159
    :cond_2
    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    neg-int v0, v2

    return v0

    :cond_3
    return v2
.end method

.method public isInfinite()Z
    .locals 2

    .line 875
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .line 882
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isZero()Z
    .locals 4

    .line 890
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 892
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 896
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5

    .line 758
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "lessThan"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 759
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 760
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    .line 761
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 762
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3

    .line 767
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 773
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p1

    if-gez p1, :cond_2

    return v4

    :cond_2
    return v3

    .line 768
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 769
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p9, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p9}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p9, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p12, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p5, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p5, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p7, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p8, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 98
    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 98
    check-cast p1, [Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2846
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2864
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2880
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p12, p10, p11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2839
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2855
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2872
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2825
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 2828
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x0

    .line 2829
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2830
    aget-object v2, p2, v1

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 2826
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2810
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 2813
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x0

    .line 2814
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2815
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 2811
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2665
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log10()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2683
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v0

    return v0
.end method

.method public log10K()I
    .locals 1

    .line 1172
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log1p()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2672
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2540
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 1612
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiplyFast(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1614
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11

    .line 1507
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "multiply"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 1508
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1509
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1510
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1511
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1514
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1517
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_1

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v1, :cond_9

    .line 1518
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 1522
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    .line 1526
    :cond_3
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_4

    iget-byte v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v5, :cond_4

    iget-object v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    aget v5, v5, v6

    if-eqz v5, :cond_4

    .line 1527
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1528
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int v1, v1, p1

    int-to-byte p1, v1

    iput-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    .line 1532
    :cond_4
    iget-byte v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v4, :cond_5

    if-nez v1, :cond_5

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    sub-int/2addr v7, v4

    aget v6, v6, v7

    if-eqz v6, :cond_5

    .line 1533
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1534
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int v1, v1, p1

    int-to-byte p1, v1

    iput-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    :cond_5
    if-ne v5, v4, :cond_6

    if-ne v1, v4, :cond_6

    .line 1539
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1540
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int v1, v1, p1

    int-to-byte p1, v1

    iput-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    :cond_6
    if-ne v5, v4, :cond_7

    if-nez v1, :cond_7

    .line 1544
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    sub-int/2addr v7, v4

    aget v6, v6, v7

    if-eqz v6, :cond_8

    :cond_7
    if-ne v1, v4, :cond_9

    if-nez v5, :cond_9

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v1, v1, v5

    if-nez v1, :cond_9

    .line 1546
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1547
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1548
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1549
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1554
    :cond_9
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1556
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    if-ge v5, v7, :cond_b

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1558
    :goto_1
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v8

    if-ge v6, v9, :cond_a

    .line 1559
    aget v8, v8, v5

    iget-object v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v6

    mul-int v8, v8, v9

    add-int v9, v5, v6

    .line 1560
    aget v10, v1, v9

    add-int/2addr v10, v7

    add-int/2addr v8, v10

    .line 1562
    div-int/lit16 v7, v8, 0x2710

    mul-int/lit16 v10, v7, 0x2710

    sub-int/2addr v8, v10

    .line 1563
    aput v8, v1, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1565
    :cond_a
    array-length v6, v8

    add-int/2addr v6, v5

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1569
    :cond_b
    array-length v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    .line 1570
    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v4

    :goto_2
    if-ltz v6, :cond_d

    .line 1571
    aget v7, v1, v6

    if-eqz v7, :cond_c

    move v5, v6

    goto :goto_3

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_d
    :goto_3
    const/4 v6, 0x0

    .line 1578
    :goto_4
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v7

    if-ge v6, v8, :cond_e

    .line 1579
    iget-object v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v4

    sub-int v9, v5, v6

    aget v9, v1, v9

    aput v9, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1583
    :cond_e
    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v8, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v6, v8

    add-int/2addr v6, v5

    array-length v8, v7

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int/2addr v6, v4

    iput v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1584
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v8, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v8, :cond_f

    const/4 v6, 0x1

    goto :goto_5

    :cond_f
    const/4 v6, -0x1

    :goto_5
    int-to-byte v6, v6

    iput-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1586
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v7

    sub-int/2addr v8, v4

    aget v6, v6, v8

    if-nez v6, :cond_10

    .line 1588
    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1592
    :cond_10
    array-length v6, v7

    sub-int/2addr v6, v4

    if-le v5, v6, :cond_11

    .line 1593
    array-length v2, v7

    sub-int/2addr v5, v2

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v1

    goto :goto_6

    .line 1595
    :cond_11
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v1

    :goto_6
    if-eqz v1, :cond_12

    .line 1599
    invoke-virtual {p0, v1, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 1408
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1409
    iget-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0
.end method

.method public negativeOrNull()Z
    .locals 4

    .line 806
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 808
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 812
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 556
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 564
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 626
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 588
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 572
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 580
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 616
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 599
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 601
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x3

    .line 602
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 603
    const-string v2, "newInstance"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 606
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object v0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    .line 2346
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "nextAfter"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 2347
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2348
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    .line 2349
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2350
    invoke-virtual {p0, v3, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 2355
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    .line 2359
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2360
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 2363
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    .line 2370
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2371
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2372
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2374
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2375
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    rsub-int v1, v1, -0x7fff

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2378
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    .line 2380
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2381
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2382
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2384
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2385
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    .line 2387
    :cond_5
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2390
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2391
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    rsub-int v1, v1, -0x7fff

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2394
    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2397
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 2398
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2399
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2402
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2403
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2404
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v0
.end method

.method public positiveOrNull()Z
    .locals 4

    .line 836
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 838
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 842
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->pow(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(I)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2630
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2637
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2644
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public power10(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 1207
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 1210
    div-int/lit8 v2, p1, 0x4

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 1212
    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1215
    :goto_0
    rem-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/16 p1, 0x3e8

    .line 1225
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x64

    .line 1222
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0xa

    .line 1219
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public power10K(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1180
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1181
    iput p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->reciprocal()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1962
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(D)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public remainder(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2554
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 1036
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1039
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 1040
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_0
    return-object p1
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1008
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public rootN(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2621
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method protected round(I)I
    .locals 7

    .line 1427
    sget-object v0, Lorg/apache/commons/math3/dfp/Dfp$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x1388

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1458
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :pswitch_0
    if-gt p1, v2, :cond_0

    if-ne p1, v2, :cond_2

    .line 1449
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v0, v0, v1

    and-int/2addr v0, v3

    if-nez v0, :cond_2

    goto :goto_0

    :pswitch_1
    if-le p1, v2, :cond_2

    goto :goto_0

    :pswitch_2
    if-lt p1, v2, :cond_2

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_2

    goto :goto_0

    :pswitch_4
    if-gt p1, v2, :cond_0

    if-ne p1, v2, :cond_2

    .line 1445
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v0, v0, v1

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 1453
    :pswitch_5
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1465
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 1466
    aget v5, v4, v0

    add-int/2addr v5, v2

    .line 1467
    div-int/lit16 v2, v5, 0x2710

    mul-int/lit16 v6, v2, 0x2710

    sub-int/2addr v5, v6

    .line 1468
    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 1472
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1473
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v0

    sub-int/2addr v4, v3

    aput v2, v0, v4

    .line 1478
    :cond_2
    :pswitch_6
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v2, -0x7fff

    if-ge v0, v2, :cond_3

    .line 1480
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v0

    :cond_3
    const v2, 0x8000

    if-le v0, v2, :cond_4

    .line 1486
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v0

    :cond_4
    if-eqz p1, :cond_5

    .line 1492
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public round()J
    .locals 2

    .line 2561
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->scalb(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public scalb(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2600
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method protected shiftLeft()V
    .locals 3

    .line 671
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 672
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 674
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 675
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-void
.end method

.method protected shiftRight()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 683
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 684
    aget v4, v2, v3

    aput v4, v2, v1

    move v1, v3

    goto :goto_0

    .line 686
    :cond_0
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aput v0, v2, v1

    .line 687
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-void
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->signum()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2568
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2571
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2705
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2772
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8

    .line 1972
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    sub-int/2addr v3, v1

    aget v2, v2, v3

    if-nez v2, :cond_0

    .line 1974
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 1977
    const-string v3, "sqrt"

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_1

    .line 1978
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v1, :cond_1

    .line 1980
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    :cond_1
    if-ne v0, v4, :cond_2

    .line 1984
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    :cond_2
    if-ne v0, v5, :cond_3

    .line 1990
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1991
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1992
    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 1997
    :cond_3
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 2001
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2002
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2003
    iput-byte v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2004
    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 2008
    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2011
    iget v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lt v2, v6, :cond_5

    if-le v2, v1, :cond_6

    .line 2012
    :cond_5
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    div-int/2addr v2, v5

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2016
    :cond_6
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v3

    sub-int/2addr v7, v1

    aget v7, v2, v7

    div-int/lit16 v7, v7, 0x7d0

    if-eqz v7, :cond_9

    if-eq v7, v5, :cond_8

    if-eq v7, v4, :cond_7

    .line 2027
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0xbb8

    aput v4, v2, v3

    goto :goto_0

    .line 2024
    :cond_7
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x898

    aput v4, v2, v3

    goto :goto_0

    .line 2021
    :cond_8
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x5dc

    aput v4, v2, v3

    goto :goto_0

    .line 2018
    :cond_9
    array-length v4, v3

    sub-int/2addr v4, v1

    array-length v3, v3

    sub-int/2addr v3, v1

    aget v3, v2, v3

    div-int/2addr v3, v5

    add-int/2addr v3, v1

    aput v3, v2, v4

    .line 2030
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 2035
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2036
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    .line 2037
    :goto_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2038
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2039
    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2040
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2041
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2044
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2046
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    .line 2053
    :cond_a
    iget-object v2, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    aget v2, v2, v3

    if-nez v2, :cond_b

    :goto_2
    return-object v4

    :cond_b
    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_c
    return-object v0
.end method

.method public strictlyNegative()Z
    .locals 4

    .line 821
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 823
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 827
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public strictlyPositive()Z
    .locals 4

    .line 851
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 853
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    .line 857
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(D)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 98
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public subtract(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2533
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 1418
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2712
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->tan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 2779
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2780
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2781
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public toDouble()D
    .locals 14

    .line 2417
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v0, :cond_1

    .line 2418
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    return-wide v3

    .line 2425
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 2431
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v0

    const-wide/16 v5, 0x0

    if-nez v0, :cond_4

    .line 2433
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_3
    return-wide v5

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v0, :cond_5

    .line 2435
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    move-object v0, p0

    .line 2441
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x400a8f5c28f5c28fL    # 3.32

    mul-double v10, v10, v12

    double-to-int v10, v10

    if-gez v10, :cond_6

    add-int/lit8 v10, v10, -0x1

    .line 2446
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-static {v11, v10}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 2447
    :goto_1
    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v11, v10, -0x1

    .line 2455
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    invoke-static {v12, v11}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/16 v12, -0x3ff

    if-le v11, v12, :cond_8

    .line 2457
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_8
    const/16 v13, -0x432

    if-ge v11, v13, :cond_9

    return-wide v5

    :cond_9
    const/16 v5, 0x3ff

    if-le v11, v5, :cond_b

    if-eqz v9, :cond_a

    return-wide v1

    :cond_a
    return-wide v3

    :cond_b
    const-wide/high16 v1, 0x10000000000000L

    .line 2469
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2470
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2471
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2472
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_c

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_c
    move v10, v11

    :goto_2
    if-gt v10, v12, :cond_d

    add-int/lit8 v10, v10, -0x1

    :cond_d
    :goto_3
    if-ge v10, v12, :cond_e

    add-int/lit8 v10, v10, 0x1

    ushr-long/2addr v3, v8

    goto :goto_3

    :cond_e
    int-to-long v0, v10

    const-wide/16 v5, 0x3ff

    add-long/2addr v0, v5

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    .line 2491
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    if-eqz v9, :cond_f

    neg-double v0, v0

    :cond_f
    return-wide v0

    :cond_10
    :goto_4
    const/4 v12, 0x2

    .line 2448
    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public toSplitDouble()[D
    .locals 5

    const/4 v0, 0x2

    .line 2506
    new-array v0, v0, [D

    .line 2509
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/32 v3, -0x40000000

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 2510
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2067
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2070
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_0

    const-string v0, "-Infinity"

    return-object v0

    :cond_0
    const-string v0, "Infinity"

    return-object v0

    .line 2072
    :cond_1
    const-string v0, "NaN"

    return-object v0

    .line 2076
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    if-gt v0, v1, :cond_4

    const/4 v1, -0x1

    if-ge v0, v1, :cond_3

    goto :goto_0

    .line 2080
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2string()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2077
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2sci()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    return-object p4
.end method

.method protected trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    .line 1054
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1058
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1059
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1062
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v2, v0, v2

    if-nez v2, :cond_2

    .line 1064
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1069
    :cond_2
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const-string v3, "trunc"

    const/16 v4, 0x10

    if-gez v2, :cond_3

    .line 1070
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1071
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1072
    invoke-virtual {p0, v4, v3, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1080
    :cond_3
    array-length v0, v0

    if-lt v2, v0, :cond_4

    .line 1081
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    .line 1087
    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1088
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    iget v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v7, v8

    if-ge v5, v7, :cond_6

    .line 1089
    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v7, v5

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    or-int/2addr v6, v8

    .line 1090
    aput v2, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_b

    .line 1094
    sget-object v2, Lorg/apache/commons/math3/dfp/Dfp$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    .line 1111
    const-string p1, "0.5"

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1112
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1113
    iput-byte v1, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1114
    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1115
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1116
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v5, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1117
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1121
    :cond_7
    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lez p1, :cond_a

    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, p1

    aget p1, v2, v5

    and-int/2addr p1, v1

    if-eqz p1, :cond_a

    .line 1122
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 1123
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1124
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_2

    .line 1103
    :cond_8
    iget-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne p1, v1, :cond_a

    .line 1105
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_2

    .line 1096
    :cond_9
    iget-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    .line 1098
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1129
    :cond_a
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1130
    invoke-virtual {p0, v4, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v0
.end method

.method public unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 3

    .line 934
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 938
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method
