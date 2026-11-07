.class public final Lorg/apache/commons/math3/complex/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final I:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final IDENTITY:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final J:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final K:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final ZERO:Lorg/apache/commons/math3/complex/Quaternion;

.field private static final serialVersionUID:J = 0x132946cL


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 39
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->IDENTITY:Lorg/apache/commons/math3/complex/Quaternion;

    .line 41
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v1, Lorg/apache/commons/math3/complex/Quaternion;->ZERO:Lorg/apache/commons/math3/complex/Quaternion;

    .line 43
    new-instance v2, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v2, Lorg/apache/commons/math3/complex/Quaternion;->I:Lorg/apache/commons/math3/complex/Quaternion;

    .line 45
    new-instance v3, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v3, Lorg/apache/commons/math3/complex/Quaternion;->J:Lorg/apache/commons/math3/complex/Quaternion;

    .line 47
    new-instance v4, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v12}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v4, Lorg/apache/commons/math3/complex/Quaternion;->K:Lorg/apache/commons/math3/complex/Quaternion;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    .line 74
    iput-wide p3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    .line 75
    iput-wide p5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    .line 76
    iput-wide p7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-void
.end method

.method public constructor <init>(D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 93
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    const/4 p1, 0x0

    .line 94
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    const/4 p1, 0x1

    .line 95
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    const/4 p1, 0x2

    .line 96
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-void

    .line 91
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p3

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method

.method public constructor <init>([D)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 106
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(D[D)V

    return-void
.end method

.method public static add(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 9

    .line 166
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    add-double/2addr v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v0
.end method

.method public static dotProduct(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)D
    .locals 6

    .line 216
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static multiply(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 29

    .line 127
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    .line 128
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    .line 129
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v4

    .line 130
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v6

    .line 133
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v8

    .line 134
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v10

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v12

    .line 136
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v14

    mul-double v16, v0, v8

    mul-double v18, v2, v10

    sub-double v16, v16, v18

    mul-double v18, v4, v12

    sub-double v16, v16, v18

    mul-double v18, v6, v14

    sub-double v21, v16, v18

    mul-double v16, v0, v10

    mul-double v18, v2, v8

    add-double v16, v16, v18

    mul-double v18, v4, v14

    add-double v16, v16, v18

    mul-double v18, v6, v12

    sub-double v23, v16, v18

    mul-double v16, v0, v12

    mul-double v18, v2, v14

    sub-double v16, v16, v18

    mul-double v18, v4, v8

    add-double v16, v16, v18

    mul-double v18, v6, v10

    add-double v25, v16, v18

    mul-double v0, v0, v14

    mul-double v2, v2, v12

    add-double/2addr v0, v2

    mul-double v4, v4, v10

    sub-double/2addr v0, v4

    mul-double v6, v6, v8

    add-double v27, v0, v6

    .line 144
    new-instance v20, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-direct/range {v20 .. v28}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v20
.end method

.method public static subtract(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 9

    .line 191
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    sub-double/2addr v7, p0

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 179
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->add(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public dotProduct(Lorg/apache/commons/math3/complex/Quaternion;)D
    .locals 2

    .line 229
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->dotProduct(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 272
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/complex/Quaternion;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 273
    check-cast p1, Lorg/apache/commons/math3/complex/Quaternion;

    .line 274
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public equals(Lorg/apache/commons/math3/complex/Quaternion;D)Z
    .locals 6

    .line 308
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getConjugate()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 9

    .line 115
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    neg-double v3, v3

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    neg-double v5, v5

    iget-wide v7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    neg-double v7, v7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v0
.end method

.method public getInverse()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 14

    .line 364
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 365
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 369
    new-instance v5, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    div-double v6, v2, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    neg-double v2, v2

    div-double v8, v2, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    neg-double v2, v2

    div-double v10, v2, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    neg-double v2, v2

    div-double v12, v2, v0

    invoke-direct/range {v5 .. v13}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v5

    .line 366
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public getNorm()D
    .locals 4

    .line 238
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPositivePolarForm()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .line 343
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 344
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->normalize()Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v0

    .line 347
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v8

    neg-double v8, v8

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v1

    .line 352
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->normalize()Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getQ0()D
    .locals 2

    .line 381
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    .line 391
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    .line 401
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    .line 411
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-wide v0
.end method

.method public getScalarPart()D
    .locals 2

    .line 421
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVectorPart()[D
    .locals 8

    .line 433
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v4

    const/4 v6, 0x3

    new-array v6, v6, [D

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    return-object v6
.end method

.method public hashCode()I
    .locals 11

    .line 290
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    const/4 v8, 0x4

    new-array v9, v8, [D

    const/4 v10, 0x0

    aput-wide v0, v9, v10

    const/4 v0, 0x1

    aput-wide v2, v9, v0

    const/4 v0, 0x2

    aput-wide v4, v9, v0

    const/4 v0, 0x3

    aput-wide v6, v9, v0

    const/16 v0, 0x11

    :goto_0
    if-ge v10, v8, :cond_0

    aget-wide v1, v9, v10

    .line 291
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isPureQuaternion(D)Z
    .locals 3

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isUnitQuaternion(D)Z
    .locals 6

    .line 323
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getNorm()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p1

    return p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 9

    .line 443
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double v1, v1, p1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double v3, v3, p1

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double v5, v5, p1

    iget-wide v7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double v7, v7, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 154
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->multiply(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public normalize()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 14

    .line 252
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getNorm()D

    move-result-wide v0

    .line 254
    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 258
    new-instance v5, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    div-double v6, v2, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    div-double v8, v2, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    div-double v10, v2, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    div-double v12, v2, v0

    invoke-direct/range {v5 .. v13}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v5

    .line 255
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public subtract(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 204
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->subtract(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
