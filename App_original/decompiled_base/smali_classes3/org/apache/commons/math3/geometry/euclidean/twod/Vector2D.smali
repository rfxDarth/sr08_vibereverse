.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
.super Ljava/lang/Object;
.source "Vector2D.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/Vector<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field public static final ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private static final serialVersionUID:J = 0x3b45b4a2933f2caL


# instance fields
.field private final x:D

.field private final y:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 43
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->POSITIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 51
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 72
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 97
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p1, p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v0, v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 110
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p1, p1, v0

    iget-wide v0, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p4, p4, v0

    add-double/2addr p1, p4

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v0, v0, p1

    iget-wide v2, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    iget-wide v2, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v2, v2, p7

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 126
    iget-wide v0, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p1, p1, v0

    iget-wide v0, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p4, p4, v0

    add-double/2addr p1, p4

    iget-wide p3, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p7, p7, p3

    add-double/2addr p1, p7

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 5

    move-object/from16 v0, p12

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iget-wide v1, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v1, v1, p1

    iget-wide v3, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v3, v3, p4

    add-double/2addr v1, v3

    iget-wide v3, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v3, v3, p7

    add-double/2addr v1, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v3, v3, p10

    add-double/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    .line 144
    iget-wide v1, p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p1, p1, v1

    iget-wide v1, p6, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p4, p4, v1

    add-double/2addr p1, p4

    iget-wide p3, p9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p3, p3, p7

    add-double/2addr p1, p3

    iget-wide p3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p3, p3, p10

    add-double/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 85
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    const/4 v0, 0x1

    .line 86
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-void

    .line 83
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public static angle(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 252
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    const-wide v6, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double v6, v6, v0

    neg-double v8, v6

    cmpg-double v10, v4, v8

    if-ltz v10, :cond_1

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr v4, v0

    .line 264
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide p0

    return-wide p0

    .line 256
    :cond_1
    :goto_0
    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v8, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    neg-double v10, v10

    iget-wide v12, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static/range {v6 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    cmpl-double v6, v4, v2

    if-ltz v6, :cond_2

    div-double/2addr p0, v0

    .line 258
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    div-double/2addr p0, v0

    .line 260
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v0, p0

    return-wide v0

    .line 249
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceInf(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceSq(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 0

    .line 393
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public add(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 209
    check-cast p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 210
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    mul-double v3, v3, p1

    add-double/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    mul-double p1, p1, v5

    add-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 203
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 204
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public crossProduct(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 12

    .line 353
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double v4, v0, v2

    .line 354
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    sub-double v6, v0, v2

    .line 355
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 356
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide p1

    sub-double v10, v2, p1

    neg-double v8, v0

    .line 357
    invoke-static/range {v4 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 304
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 305
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v0, v2

    .line 306
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 307
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 299
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public distance1(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 290
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 291
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 292
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInf(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 312
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 313
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 314
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 315
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public distanceSq(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 320
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 321
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v0, v2

    .line 322
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 328
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 329
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v6, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 422
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 423
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 424
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result p1

    return p1

    .line 428
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getNorm()D
    .locals 4

    .line 188
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm1()D
    .locals 4

    .line 183
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getNormInf()D
    .locals 4

    .line 198
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormSq()D
    .locals 4

    .line 193
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 1

    .line 173
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    move-result-object v0

    return-object v0
.end method

.method public getX()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 160
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    return-wide v0
.end method

.method public bridge synthetic getZero()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getZero()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 1

    .line 178
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 442
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21e

    return v0

    .line 445
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4c

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7a

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .line 285
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .line 280
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic negate()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->negate()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5

    .line 270
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    neg-double v1, v1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    neg-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic normalize()Lorg/apache/commons/math3/geometry/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getNorm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    .line 231
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic scalarMultiply(D)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5

    .line 275
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    mul-double v1, v1, p1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    mul-double p1, p1, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/Vector;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public subtract(DLorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 221
    check-cast p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 222
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    mul-double v3, v3, p1

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    invoke-virtual {p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    mul-double p1, p1, v5

    sub-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 215
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 216
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v3, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public toArray()[D
    .locals 6

    .line 168
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->x:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->y:D

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 453
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/text/NumberFormat;)Ljava/lang/String;
    .locals 1

    .line 458
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;-><init>(Ljava/text/NumberFormat;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2DFormat;->format(Lorg/apache/commons/math3/geometry/Vector;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
