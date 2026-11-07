.class public Lorg/apache/commons/math3/fraction/BigFraction;
.super Ljava/lang/Number;
.source "BigFraction.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

.field private static final ONE_HUNDRED:Ljava/math/BigInteger;

.field public static final ONE_QUARTER:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ONE_THIRD:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/math3/fraction/BigFraction;

.field public static final ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

.field private static final serialVersionUID:J = -0x4e228907006eca93L


# instance fields
.field private final denominator:Ljava/math/BigInteger;

.field private final numerator:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 48
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 51
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 54
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 57
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 60
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_FIFTH:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 63
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 66
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_QUARTER:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 69
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_THIRD:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 72
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->THREE_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 75
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v5, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->THREE_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 78
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_FIFTHS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 81
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_QUARTERS:Lorg/apache/commons/math3/fraction/BigFraction;

    .line 84
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->TWO_THIRDS:Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide/16 v0, 0x64

    .line 90
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HUNDRED:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 176
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p1

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v2, p1

    const-wide v4, 0xfffffffffffffL

    and-long/2addr p1, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr p1, v6

    :cond_0
    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    neg-long p1, p1

    :cond_1
    const/16 v0, 0x34

    shr-long v0, v2, v0

    long-to-int v1, v0

    add-int/lit16 v1, v1, -0x433

    :goto_0
    const-wide v2, 0x1ffffffffffffeL

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    shr-long/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-gez v1, :cond_3

    .line 199
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 200
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-void

    .line 202
    :cond_3
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->flipBit(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 203
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-void

    .line 177
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_VALUE_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 174
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NAN_VALUE_CONVERSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(DDI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    .line 232
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDII)V

    return-void
.end method

.method private constructor <init>(DDII)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v1, p5

    move/from16 v4, p6

    .line 271
    invoke-direct {v0}, Ljava/lang/Number;-><init>()V

    .line 274
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v5

    double-to-long v5, v5

    .line 276
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x7fffffff

    cmp-long v11, v7, v9

    if-gtz v11, :cond_8

    long-to-double v7, v5

    sub-double/2addr v7, v2

    .line 282
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v11, v7, p3

    if-gez v11, :cond_0

    .line 283
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 284
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-void

    :cond_0
    const/4 v7, 0x0

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    move-wide/from16 v19, v2

    move-wide v7, v5

    move-wide v15, v11

    move-wide/from16 v17, v13

    move-wide v13, v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/16 v21, 0x1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v22, v9

    long-to-double v9, v5

    sub-double v9, v19, v9

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v24, v24, v9

    .line 301
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v9

    double-to-long v9, v9

    mul-long v26, v9, v7

    move-wide/from16 v28, v5

    add-long v5, v26, v13

    mul-long v26, v9, v15

    move-wide/from16 v30, v7

    add-long v7, v26, v17

    cmp-long v26, v5, v22

    if-gtz v26, :cond_4

    cmp-long v26, v7, v22

    if-lez v26, :cond_1

    goto :goto_2

    :cond_1
    move-wide/from16 v26, v9

    long-to-double v9, v5

    move-wide/from16 v32, v5

    long-to-double v5, v7

    div-double/2addr v9, v5

    if-ge v11, v4, :cond_2

    sub-double/2addr v9, v2

    .line 314
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    cmpl-double v9, v5, p3

    if-lez v9, :cond_2

    int-to-long v5, v1

    cmp-long v9, v7, v5

    if-gez v9, :cond_2

    move-wide/from16 v17, v15

    move-wide/from16 v19, v24

    move-wide/from16 v5, v26

    move-wide/from16 v13, v30

    move-wide/from16 v30, v32

    move-wide v15, v7

    goto :goto_1

    :cond_2
    move-wide/from16 v5, v28

    const/4 v12, 0x1

    :goto_1
    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v9, v22

    move-wide/from16 v7, v30

    goto :goto_0

    :cond_4
    :goto_2
    move-wide/from16 v32, v5

    const-wide/16 v5, 0x0

    cmpl-double v9, p3, v5

    if-nez v9, :cond_7

    .line 307
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v5

    int-to-long v9, v1

    cmp-long v12, v5, v9

    if-gez v12, :cond_7

    :goto_3
    if-ge v11, v4, :cond_6

    int-to-long v1, v1

    cmp-long v3, v7, v1

    if-gez v3, :cond_5

    .line 333
    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 334
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-void

    .line 336
    :cond_5
    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 337
    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-void

    .line 329
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/fraction/FractionConversionException;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DI)V

    throw v1

    .line 310
    :cond_7
    new-instance v1, Lorg/apache/commons/math3/fraction/FractionConversionException;

    move-wide v6, v7

    move-wide/from16 v4, v32

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v1

    .line 277
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/fraction/FractionConversionException;

    move-wide v4, v5

    const-wide/16 v6, 0x1

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v1
.end method

.method public constructor <init>(DI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/16 v6, 0x64

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 360
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    .line 373
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    int-to-long v0, p1

    .line 388
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 400
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 415
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 108
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 121
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 123
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 128
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 133
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    .line 134
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 135
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 139
    :cond_1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_2

    .line 140
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 141
    invoke-virtual {p2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p2

    .line 145
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    .line 146
    iput-object p2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-void

    .line 124
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1

    if-nez p0, :cond_0

    .line 440
    sget-object p0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object p0

    .line 443
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public abs()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2

    .line 454
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2

    int-to-long v0, p1

    .line 485
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public add(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 0

    .line 499
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 470
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 471
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4

    if-eqz p1, :cond_2

    .line 517
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 526
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 531
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 515
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public bigDecimalValue()Ljava/math/BigDecimal;
    .locals 3

    .line 548
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public bigDecimalValue(I)Ljava/math/BigDecimal;
    .locals 3

    .line 567
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public bigDecimalValue(II)Ljava/math/BigDecimal;
    .locals 3

    .line 586
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I
    .locals 2

    .line 601
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 603
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public divide(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2

    int-to-long v0, p1

    .line 638
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public divide(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 0

    .line 652
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public divide(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 621
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 622
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 619
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 670
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1

    .line 671
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 668
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public doubleValue()D
    .locals 5

    .line 688
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 689
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->getExponent(D)I

    move-result v1

    sub-int/2addr v0, v1

    .line 694
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1

    :cond_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 721
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 722
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/BigFraction;->reduce()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    .line 723
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->reduce()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    .line 724
    iget-object v3, v1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v4, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public floatValue()F
    .locals 3

    .line 741
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v1, v0

    .line 742
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1}, Lorg/apache/commons/math3/util/FastMath;->getExponent(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 747
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    div-float/2addr v1, v0

    return v1

    :cond_0
    return v0
.end method

.method public getDenominator()Ljava/math/BigInteger;
    .locals 1

    .line 761
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDenominatorAsInt()I
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getDenominatorAsLong()J
    .locals 2

    .line 783
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->getField()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/fraction/BigFractionField;
    .locals 1

    .line 1145
    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    return-object v0
.end method

.method public getNumerator()Ljava/math/BigInteger;
    .locals 1

    .line 794
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNumeratorAsInt()I
    .locals 1

    .line 805
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumeratorAsLong()J
    .locals 2

    .line 816
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 829
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 843
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 857
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

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

    .line 40
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2

    int-to-long v0, p1

    .line 888
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public multiply(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 0

    .line 902
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2

    if-eqz p1, :cond_0

    .line 874
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 872
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    if-eqz p1, :cond_2

    .line 919
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 923
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 921
    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object p1

    .line 917
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    .line 936
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public percentageValue()D
    .locals 2

    .line 948
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public pow(D)D
    .locals 4

    .line 1019
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p1

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public pow(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    if-gez p1, :cond_0

    .line 964
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    neg-int p1, p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 966
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public pow(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 981
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    neg-long p1, p1

    invoke-static {v1, p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v2, p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 984
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v1, p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v2, p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public pow(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    .line 999
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1000
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 1001
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v2, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 1004
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-static {v1, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-static {v2, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFraction;->reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    .line 1031
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public reduce()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4

    .line 1043
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1044
    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 2

    int-to-long v0, p1

    .line 1074
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public subtract(J)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 0

    .line 1087
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Ljava/math/BigInteger;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 3

    if-eqz p1, :cond_0

    .line 1061
    new-instance v0, Lorg/apache/commons/math3/fraction/BigFraction;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 1059
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 4

    if-eqz p1, :cond_2

    .line 1104
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1110
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1112
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    goto :goto_0

    .line 1114
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 1117
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 1102
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1133
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1135
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    const-string v0, "0"

    return-object v0

    .line 1138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->numerator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/math3/fraction/BigFraction;->denominator:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
