.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

.field private static final serialVersionUID:J = -0x1de3341942831b79L


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 100
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    sput-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->IDENTITY:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    return-void
.end method

.method public constructor <init>(DDDDZ)V
    .locals 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p9, :cond_0

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    mul-double v2, p7, p7

    add-double/2addr v0, v2

    .line 140
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    mul-double p1, p1, v2

    mul-double p3, p3, v2

    mul-double p5, p5, v2

    mul-double p7, p7, v2

    .line 147
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 148
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 149
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 150
    iput-wide p7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;DDD)V
    .locals 2

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA1()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 380
    new-instance p2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA2()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p3

    invoke-direct {p2, p3, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 381
    new-instance p3, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->getA3()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-direct {p3, p1, p6, p7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 382
    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p1

    .line 383
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 384
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 385
    iget-wide p2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 386
    iget-wide p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double p2, p2, v2

    .line 183
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    .line 185
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 186
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide p2

    mul-double p2, p2, v2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 187
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide p2

    mul-double p2, p2, v2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 188
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    mul-double v2, v2, p1

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void

    .line 179
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_AXIS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 335
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v4

    const-wide v6, -0x4010000000000012L    # -0.999999999999998

    mul-double v6, v6, v0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    .line 340
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 341
    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 342
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 343
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 344
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    neg-double p1, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void

    :cond_0
    div-double/2addr v4, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    .line 348
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v6

    mul-double v4, v4, v0

    div-double/2addr v2, v4

    .line 350
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 352
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v0

    mul-double v0, v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 353
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide p1

    mul-double v2, v2, p1

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void

    .line 332
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 274
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-virtual/range {p1 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    move-object/from16 v2, p1

    .line 279
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 280
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    .line 284
    invoke-virtual/range {p3 .. p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    move-object/from16 v5, p3

    .line 285
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 286
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    .line 289
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v13

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v17

    invoke-static/range {v7 .. v18}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v13

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v15

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v17

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v19

    invoke-static/range {v9 .. v20}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v9

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v13

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v17

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v19

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v21

    invoke-static/range {v11 .. v22}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v11

    const/4 v13, 0x3

    new-array v14, v13, [D

    const/4 v15, 0x0

    aput-wide v7, v14, v15

    const/4 v7, 0x1

    aput-wide v9, v14, v7

    const/4 v8, 0x2

    aput-wide v11, v14, v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v9

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v11

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v16

    const/16 p1, 0x1

    new-array v7, v13, [D

    aput-wide v9, v7, v15

    aput-wide v11, v7, p1

    aput-wide v16, v7, v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v18

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v20

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v22

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v24

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v26

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v28

    invoke-static/range {v18 .. v29}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v9

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v11

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v16

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v18

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v20

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v22

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v24

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v26

    invoke-static/range {v16 .. v27}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v1

    new-array v3, v13, [D

    aput-wide v9, v3, v15

    aput-wide v11, v3, p1

    aput-wide v1, v3, v8

    new-array v1, v13, [[D

    aput-object v14, v1, v15

    aput-object v7, v1, p1

    aput-object v3, v1, v8

    .line 307
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v1

    .line 308
    aget-wide v2, v1, v15

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 309
    aget-wide v2, v1, p1

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 310
    aget-wide v2, v1, v8

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 311
    aget-wide v2, v1, v13

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void
.end method

.method public constructor <init>([[DD)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 223
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 226
    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1

    aget-object v2, v1, v5

    array-length v2, v2

    if-ne v2, v6, :cond_1

    aget-object v2, v1, v4

    array-length v2, v2

    if-ne v2, v6, :cond_1

    aget-object v2, v1, v3

    array-length v2, v2

    if-ne v2, v6, :cond_1

    .line 234
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->orthogonalizeMatrix([[DD)[[D

    move-result-object v1

    .line 237
    aget-object v2, v1, v5

    aget-wide v7, v2, v5

    aget-object v9, v1, v4

    aget-wide v10, v9, v4

    aget-object v12, v1, v3

    aget-wide v13, v12, v3

    mul-double v15, v10, v13

    aget-wide v17, v12, v4

    aget-wide v19, v9, v3

    mul-double v21, v17, v19

    sub-double v15, v15, v21

    mul-double v7, v7, v15

    aget-wide v15, v9, v5

    aget-wide v21, v2, v4

    mul-double v13, v13, v21

    aget-wide v23, v2, v3

    mul-double v17, v17, v23

    sub-double v13, v13, v17

    mul-double v15, v15, v13

    sub-double/2addr v7, v15

    aget-wide v13, v12, v5

    mul-double v21, v21, v19

    mul-double v10, v10, v23

    sub-double v21, v21, v10

    mul-double v13, v13, v21

    add-double/2addr v7, v13

    const-wide/16 v9, 0x0

    cmpg-double v2, v7, v9

    if-ltz v2, :cond_0

    .line 246
    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->mat2quat([[D)[D

    move-result-object v1

    .line 247
    aget-wide v7, v1, v5

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    .line 248
    aget-wide v4, v1, v4

    iput-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    .line 249
    aget-wide v2, v1, v3

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    .line 250
    aget-wide v2, v1, v6

    iput-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-void

    .line 241
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 228
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROTATION_MATRIX_DIMENSIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v1, v1, v5

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v5

    aput-object v1, v3, v4

    invoke-direct {v2, v6, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)D
    .locals 0

    .line 1051
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->getAngle()D

    move-result-wide p0

    return-wide p0
.end method

.method private static mat2quat([[D)[D
    .locals 22

    const/4 v0, 0x4

    .line 395
    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 408
    aget-object v2, p0, v1

    aget-wide v3, v2, v1

    const/4 v2, 0x1

    aget-object v5, p0, v2

    aget-wide v6, v5, v2

    add-double v8, v3, v6

    const/4 v5, 0x2

    aget-object v10, p0, v5

    aget-wide v11, v10, v5

    add-double/2addr v8, v11

    const/4 v10, 0x3

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    const-wide v19, -0x4037ae147ae147aeL    # -0.19

    cmpl-double v21, v8, v19

    if-lez v21, :cond_0

    add-double/2addr v8, v15

    .line 411
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v17

    aput-wide v3, v0, v1

    div-double/2addr v13, v3

    .line 413
    aget-object v3, p0, v2

    aget-wide v6, v3, v5

    aget-object v4, p0, v5

    aget-wide v8, v4, v2

    sub-double/2addr v6, v8

    mul-double v6, v6, v13

    aput-wide v6, v0, v2

    .line 414
    aget-wide v6, v4, v1

    aget-object v4, p0, v1

    aget-wide v8, v4, v5

    sub-double/2addr v6, v8

    mul-double v6, v6, v13

    aput-wide v6, v0, v5

    .line 415
    aget-wide v5, v4, v2

    aget-wide v1, v3, v1

    sub-double/2addr v5, v1

    mul-double v13, v13, v5

    aput-wide v13, v0, v10

    return-object v0

    :cond_0
    sub-double v8, v3, v6

    sub-double/2addr v8, v11

    cmpl-double v21, v8, v19

    if-lez v21, :cond_1

    add-double/2addr v8, v15

    .line 420
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v17

    aput-wide v3, v0, v2

    div-double/2addr v13, v3

    .line 422
    aget-object v3, p0, v2

    aget-wide v6, v3, v5

    aget-object v4, p0, v5

    aget-wide v8, v4, v2

    sub-double/2addr v6, v8

    mul-double v6, v6, v13

    aput-wide v6, v0, v1

    .line 423
    aget-object v6, p0, v1

    aget-wide v7, v6, v2

    aget-wide v2, v3, v1

    add-double/2addr v7, v2

    mul-double v7, v7, v13

    aput-wide v7, v0, v5

    .line 424
    aget-wide v2, v6, v5

    aget-wide v5, v4, v1

    add-double/2addr v2, v5

    mul-double v13, v13, v2

    aput-wide v13, v0, v10

    return-object v0

    :cond_1
    sub-double v8, v6, v3

    sub-double/2addr v8, v11

    cmpl-double v21, v8, v19

    if-lez v21, :cond_2

    add-double/2addr v8, v15

    .line 429
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v17

    aput-wide v3, v0, v5

    div-double/2addr v13, v3

    .line 431
    aget-object v3, p0, v5

    aget-wide v6, v3, v1

    aget-object v4, p0, v1

    aget-wide v8, v4, v5

    sub-double/2addr v6, v8

    mul-double v6, v6, v13

    aput-wide v6, v0, v1

    .line 432
    aget-wide v6, v4, v2

    aget-object v4, p0, v2

    aget-wide v8, v4, v1

    add-double/2addr v6, v8

    mul-double v6, v6, v13

    aput-wide v6, v0, v2

    .line 433
    aget-wide v1, v3, v2

    aget-wide v3, v4, v5

    add-double/2addr v1, v3

    mul-double v13, v13, v1

    aput-wide v13, v0, v10

    return-object v0

    :cond_2
    sub-double/2addr v11, v3

    sub-double/2addr v11, v6

    add-double/2addr v11, v15

    .line 437
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v17

    aput-wide v3, v0, v10

    div-double/2addr v13, v3

    .line 439
    aget-object v3, p0, v1

    aget-wide v6, v3, v2

    aget-object v4, p0, v2

    aget-wide v8, v4, v1

    sub-double/2addr v6, v8

    mul-double v6, v6, v13

    aput-wide v6, v0, v1

    .line 440
    aget-wide v6, v3, v5

    aget-object v3, p0, v5

    aget-wide v8, v3, v1

    add-double/2addr v6, v8

    mul-double v6, v6, v13

    aput-wide v6, v0, v2

    .line 441
    aget-wide v1, v3, v2

    aget-wide v3, v4, v5

    add-double/2addr v1, v3

    mul-double v13, v13, v1

    aput-wide v13, v0, v5

    return-object v0
.end method

.method private orthogonalizeMatrix([[DD)[[D
    .locals 66
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 939
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 940
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 941
    aget-object v5, p1, v4

    .line 942
    aget-wide v6, v1, v0

    .line 943
    aget-wide v8, v1, v2

    .line 944
    aget-wide v10, v1, v4

    .line 945
    aget-wide v12, v3, v0

    .line 946
    aget-wide v14, v3, v2

    .line 947
    aget-wide v16, v3, v4

    .line 948
    aget-wide v18, v5, v0

    .line 949
    aget-wide v20, v5, v2

    .line 950
    aget-wide v22, v5, v4

    const/16 v24, 0x0

    .line 954
    new-array v0, v4, [I

    const/16 v25, 0x3

    aput v25, v0, v2

    aput v25, v0, v24

    const/16 v25, 0x2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 955
    aget-object v4, v0, v24

    .line 956
    aget-object v26, v0, v2

    .line 957
    aget-object v27, v0, v25

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    :goto_0
    const/16 v31, 0x1

    add-int/lit8 v2, v30, 0x1

    move-object/from16 p1, v0

    const/16 v0, 0xb

    if-ge v2, v0, :cond_1

    .line 964
    aget-wide v32, v1, v24

    mul-double v34, v32, v6

    aget-wide v36, v3, v24

    mul-double v38, v36, v12

    add-double v34, v34, v38

    aget-wide v38, v5, v24

    mul-double v40, v38, v18

    add-double v34, v34, v40

    .line 965
    aget-wide v40, v1, v31

    mul-double v42, v40, v6

    aget-wide v44, v3, v31

    mul-double v46, v44, v12

    add-double v42, v42, v46

    aget-wide v46, v5, v31

    mul-double v48, v46, v18

    add-double v42, v42, v48

    .line 966
    aget-wide v48, v1, v25

    mul-double v50, v48, v6

    aget-wide v52, v3, v25

    mul-double v54, v52, v12

    add-double v50, v50, v54

    aget-wide v54, v5, v25

    mul-double v56, v54, v18

    add-double v50, v50, v56

    mul-double v56, v32, v8

    mul-double v58, v36, v14

    add-double v56, v56, v58

    mul-double v58, v38, v20

    add-double v56, v56, v58

    mul-double v58, v40, v8

    mul-double v60, v44, v14

    add-double v58, v58, v60

    mul-double v60, v46, v20

    add-double v58, v58, v60

    mul-double v60, v48, v8

    mul-double v62, v52, v14

    add-double v60, v60, v62

    mul-double v62, v54, v20

    add-double v60, v60, v62

    mul-double v62, v32, v10

    mul-double v36, v36, v16

    add-double v62, v62, v36

    mul-double v38, v38, v22

    add-double v62, v62, v38

    mul-double v36, v40, v10

    mul-double v44, v44, v16

    add-double v36, v36, v44

    mul-double v46, v46, v22

    add-double v36, v36, v46

    mul-double v38, v48, v10

    mul-double v52, v52, v16

    add-double v38, v38, v52

    mul-double v54, v54, v22

    add-double v38, v38, v54

    mul-double v44, v6, v34

    mul-double v46, v8, v42

    add-double v44, v44, v46

    mul-double v46, v10, v50

    add-double v44, v44, v46

    sub-double v44, v44, v32

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    mul-double v44, v44, v32

    sub-double v44, v6, v44

    .line 975
    aput-wide v44, v4, v24

    mul-double v44, v6, v56

    mul-double v46, v8, v58

    add-double v44, v44, v46

    mul-double v46, v10, v60

    add-double v44, v44, v46

    sub-double v44, v44, v40

    mul-double v44, v44, v32

    sub-double v40, v8, v44

    .line 976
    aput-wide v40, v4, v31

    mul-double v6, v6, v62

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    mul-double v8, v10, v38

    add-double/2addr v6, v8

    sub-double v6, v6, v48

    mul-double v6, v6, v32

    sub-double/2addr v10, v6

    .line 977
    aput-wide v10, v4, v25

    mul-double v6, v12, v34

    mul-double v8, v14, v42

    add-double/2addr v6, v8

    mul-double v8, v16, v50

    add-double/2addr v6, v8

    .line 978
    aget-wide v8, v3, v24

    sub-double/2addr v6, v8

    mul-double v6, v6, v32

    sub-double v6, v12, v6

    aput-wide v6, v26, v24

    mul-double v6, v12, v56

    mul-double v8, v14, v58

    add-double/2addr v6, v8

    mul-double v8, v16, v60

    add-double/2addr v6, v8

    .line 979
    aget-wide v8, v3, v31

    sub-double/2addr v6, v8

    mul-double v6, v6, v32

    sub-double v6, v14, v6

    aput-wide v6, v26, v31

    mul-double v12, v12, v62

    mul-double v14, v14, v36

    add-double/2addr v12, v14

    mul-double v6, v16, v38

    add-double/2addr v12, v6

    .line 980
    aget-wide v6, v3, v25

    sub-double/2addr v12, v6

    mul-double v12, v12, v32

    sub-double v16, v16, v12

    aput-wide v16, v26, v25

    mul-double v34, v34, v18

    mul-double v42, v42, v20

    add-double v34, v34, v42

    mul-double v50, v50, v22

    add-double v34, v34, v50

    .line 981
    aget-wide v6, v5, v24

    sub-double v34, v34, v6

    mul-double v34, v34, v32

    sub-double v6, v18, v34

    aput-wide v6, v27, v24

    mul-double v56, v56, v18

    mul-double v58, v58, v20

    add-double v56, v56, v58

    mul-double v60, v60, v22

    add-double v56, v56, v60

    .line 982
    aget-wide v8, v5, v31

    sub-double v56, v56, v8

    mul-double v56, v56, v32

    sub-double v8, v20, v56

    aput-wide v8, v27, v31

    mul-double v18, v18, v62

    mul-double v20, v20, v36

    add-double v18, v18, v20

    mul-double v38, v38, v22

    add-double v18, v18, v38

    .line 983
    aget-wide v10, v5, v25

    sub-double v18, v18, v10

    mul-double v18, v18, v32

    sub-double v22, v22, v18

    aput-wide v22, v27, v25

    .line 986
    aget-wide v10, v4, v24

    aget-wide v12, v1, v24

    sub-double/2addr v10, v12

    .line 987
    aget-wide v12, v4, v31

    aget-wide v14, v1, v31

    sub-double/2addr v12, v14

    .line 988
    aget-wide v14, v4, v25

    aget-wide v16, v1, v25

    sub-double v14, v14, v16

    .line 989
    aget-wide v16, v26, v24

    aget-wide v18, v3, v24

    sub-double v16, v16, v18

    .line 990
    aget-wide v18, v26, v31

    aget-wide v20, v3, v31

    sub-double v18, v18, v20

    .line 991
    aget-wide v20, v26, v25

    aget-wide v32, v3, v25

    sub-double v20, v20, v32

    .line 992
    aget-wide v32, v5, v24

    sub-double v6, v6, v32

    .line 993
    aget-wide v32, v5, v31

    sub-double v8, v8, v32

    .line 994
    aget-wide v32, v5, v25

    sub-double v22, v22, v32

    mul-double v10, v10, v10

    mul-double v12, v12, v12

    add-double/2addr v10, v12

    mul-double v14, v14, v14

    add-double/2addr v10, v14

    mul-double v16, v16, v16

    add-double v10, v10, v16

    mul-double v18, v18, v18

    add-double v10, v10, v18

    mul-double v20, v20, v20

    add-double v10, v10, v20

    mul-double v6, v6, v6

    add-double/2addr v10, v6

    mul-double v8, v8, v8

    add-double/2addr v10, v8

    mul-double v22, v22, v22

    add-double v6, v10, v22

    sub-double v8, v6, v28

    .line 1002
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    cmpg-double v0, v8, p2

    if-gtz v0, :cond_0

    return-object p1

    .line 1007
    :cond_0
    aget-wide v8, v4, v24

    .line 1008
    aget-wide v10, v4, v31

    .line 1009
    aget-wide v12, v4, v25

    .line 1010
    aget-wide v14, v26, v24

    .line 1011
    aget-wide v16, v26, v31

    .line 1012
    aget-wide v18, v26, v25

    .line 1013
    aget-wide v20, v27, v24

    .line 1014
    aget-wide v22, v27, v31

    .line 1015
    aget-wide v28, v27, v25

    move-wide/from16 v64, v28

    move-wide/from16 v28, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v64

    move-object/from16 v0, p1

    move/from16 v30, v2

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1021
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_ORTHOGONOLIZE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v24

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/NotARotationMatrixException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 920
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v3, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v5, v3

    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v5, v5, v7

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v13, v9, v11

    move-object v15, v2

    move-wide/from16 v16, v3

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v5

    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v20, v2, v4

    add-double v13, v13, v20

    move-wide/from16 v20, v4

    iget-wide v4, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    move-wide/from16 v22, v7

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v24, v4, v6

    add-double v13, v13, v24

    sub-double v13, v18, v13

    neg-double v0, v9

    mul-double v0, v0, v22

    mul-double v18, v16, v11

    add-double v0, v0, v18

    mul-double v18, v2, v6

    mul-double v24, v4, v20

    sub-double v18, v18, v24

    add-double v0, v0, v18

    move-wide/from16 v18, v0

    neg-double v0, v2

    mul-double v0, v0, v22

    mul-double v24, v16, v20

    add-double v0, v0, v24

    mul-double v24, v4, v11

    mul-double v26, v9, v6

    sub-double v24, v24, v26

    add-double v0, v0, v24

    neg-double v4, v4

    mul-double v4, v4, v22

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    mul-double v9, v9, v20

    mul-double v2, v2, v11

    sub-double/2addr v9, v2

    add-double v8, v4, v9

    const/4 v10, 0x0

    move-wide v6, v0

    move-wide v2, v13

    move-object v1, v15

    move-wide/from16 v4, v18

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v15
.end method

.method public applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 28

    move-object/from16 v0, p0

    .line 858
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 859
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 860
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 862
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v7, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v9, v9, v3

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    .line 863
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v9, v9

    .line 865
    new-instance v11, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double v12, v1, v9

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v16, v14, v5

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v20, v1, v3

    sub-double v16, v16, v20

    sub-double v12, v12, v16

    mul-double v12, v12, v9

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v20, v7, v1

    add-double v12, v12, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v20

    sub-double v12, v12, v18

    mul-double v22, v3, v9

    mul-double v24, v16, v18

    mul-double v26, v1, v5

    sub-double v24, v24, v26

    sub-double v22, v22, v24

    mul-double v22, v22, v9

    mul-double v24, v7, v14

    add-double v22, v22, v24

    mul-double v22, v22, v20

    sub-double v22, v22, v3

    mul-double v24, v5, v9

    mul-double v1, v1, v3

    mul-double v14, v14, v18

    sub-double/2addr v1, v14

    sub-double v24, v24, v1

    mul-double v9, v9, v24

    mul-double v7, v7, v16

    add-double/2addr v9, v7

    mul-double v9, v9, v20

    sub-double v16, v9, v5

    move-wide/from16 v14, v22

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v11
.end method

.method public applyInverseTo([D[D)V
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 878
    aget-wide v2, p1, v1

    const/4 v4, 0x1

    .line 879
    aget-wide v5, p1, v4

    const/4 v7, 0x2

    .line 880
    aget-wide v8, p1, v7

    .line 882
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v12, v10, v2

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v16, v14, v5

    add-double v12, v12, v16

    move-wide/from16 v17, v2

    const/16 v16, 0x0

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v19, v1, v8

    add-double v12, v12, v19

    move-wide/from16 v19, v5

    const/4 v3, 0x1

    .line 883
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v4, v4

    mul-double v21, v17, v4

    mul-double v23, v14, v8

    mul-double v25, v1, v19

    sub-double v23, v23, v25

    sub-double v21, v21, v23

    mul-double v21, v21, v4

    mul-double v23, v12, v10

    add-double v21, v21, v23

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v23

    sub-double v21, v21, v17

    .line 885
    aput-wide v21, p2, v16

    mul-double v21, v19, v4

    mul-double v25, v1, v17

    mul-double v27, v10, v8

    sub-double v25, v25, v27

    sub-double v21, v21, v25

    mul-double v21, v21, v4

    mul-double v25, v12, v14

    add-double v21, v21, v25

    mul-double v21, v21, v23

    sub-double v21, v21, v19

    .line 886
    aput-wide v21, p2, v3

    mul-double v21, v8, v4

    mul-double v10, v10, v19

    mul-double v14, v14, v17

    sub-double/2addr v10, v14

    sub-double v21, v21, v10

    mul-double v4, v4, v21

    mul-double v12, v12, v1

    add-double/2addr v4, v12

    mul-double v4, v4, v23

    sub-double/2addr v4, v8

    .line 887
    aput-wide v4, p2, v7

    return-void
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 901
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v3, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v13, v9, v11

    move-object v15, v2

    move-wide/from16 v16, v3

    iget-wide v2, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    move-wide/from16 v18, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v20, v18, v2

    add-double v13, v13, v20

    move-wide/from16 v20, v2

    iget-wide v1, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    iget-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v22, v1, v3

    add-double v13, v13, v22

    sub-double/2addr v7, v13

    mul-double v13, v9, v5

    mul-double v22, v16, v11

    add-double v13, v13, v22

    mul-double v22, v18, v3

    mul-double v24, v1, v20

    sub-double v22, v22, v24

    add-double v13, v13, v22

    mul-double v22, v18, v5

    mul-double v24, v16, v20

    add-double v22, v22, v24

    mul-double v24, v1, v11

    mul-double v26, v9, v3

    sub-double v24, v24, v26

    add-double v22, v22, v24

    mul-double v1, v1, v5

    mul-double v3, v3, v16

    add-double/2addr v1, v3

    mul-double v9, v9, v20

    mul-double v3, v18, v11

    sub-double/2addr v9, v3

    add-double/2addr v1, v9

    const/4 v10, 0x0

    move-wide v4, v7

    move-wide v8, v1

    move-wide v2, v4

    move-wide v4, v13

    move-object v1, v15

    move-wide/from16 v6, v22

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v15
.end method

.method public applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 28

    move-object/from16 v0, p0

    .line 821
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    .line 822
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    .line 823
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    .line 825
    iget-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v7, v1

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v9, v9, v3

    add-double/2addr v7, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    .line 827
    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v12, v1, v10

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v16, v14, v5

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v20, v1, v3

    sub-double v16, v16, v20

    sub-double v12, v12, v16

    mul-double v12, v12, v10

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v20, v7, v1

    add-double v12, v12, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v20

    sub-double v12, v12, v18

    mul-double v22, v3, v10

    mul-double v24, v16, v18

    mul-double v26, v1, v5

    sub-double v24, v24, v26

    sub-double v22, v22, v24

    mul-double v22, v22, v10

    mul-double v24, v7, v14

    add-double v22, v22, v24

    mul-double v22, v22, v20

    sub-double v22, v22, v3

    mul-double v24, v5, v10

    mul-double v1, v1, v3

    mul-double v14, v14, v18

    sub-double/2addr v1, v14

    sub-double v24, v24, v1

    mul-double v10, v10, v24

    mul-double v7, v7, v16

    add-double/2addr v10, v7

    mul-double v10, v10, v20

    sub-double v14, v10, v5

    move-wide v10, v12

    move-wide/from16 v12, v22

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v9
.end method

.method public applyTo([D[D)V
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 840
    aget-wide v2, p1, v1

    const/4 v4, 0x1

    .line 841
    aget-wide v5, p1, v4

    const/4 v7, 0x2

    .line 842
    aget-wide v8, p1, v7

    .line 844
    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v12, v10, v2

    iget-wide v14, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v16, v14, v5

    add-double v12, v12, v16

    move-wide/from16 v17, v2

    const/16 v16, 0x0

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v19, v1, v8

    add-double v12, v12, v19

    move-wide/from16 v19, v5

    const/4 v3, 0x1

    .line 846
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v21, v17, v4

    mul-double v23, v14, v8

    mul-double v25, v1, v19

    sub-double v23, v23, v25

    sub-double v21, v21, v23

    mul-double v21, v21, v4

    mul-double v23, v12, v10

    add-double v21, v21, v23

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v23

    sub-double v21, v21, v17

    aput-wide v21, p2, v16

    mul-double v21, v19, v4

    mul-double v25, v1, v17

    mul-double v27, v10, v8

    sub-double v25, v25, v27

    sub-double v21, v21, v25

    mul-double v21, v21, v4

    mul-double v25, v12, v14

    add-double v21, v21, v25

    mul-double v21, v21, v23

    sub-double v21, v21, v19

    .line 847
    aput-wide v21, p2, v3

    mul-double v21, v8, v4

    mul-double v10, v10, v19

    mul-double v14, v14, v17

    sub-double/2addr v10, v14

    sub-double v21, v21, v10

    mul-double v4, v4, v21

    mul-double v12, v12, v1

    add-double/2addr v4, v12

    mul-double v4, v4, v23

    sub-double/2addr v4, v8

    .line 848
    aput-wide v4, p2, v7

    return-void
.end method

.method public getAngle()D
    .locals 7

    .line 510
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    const-wide v2, -0x4046666666666666L    # -0.1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v6, v0, v2

    if-ltz v6, :cond_2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    neg-double v0, v0

    .line 513
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    :goto_0
    mul-double v0, v0, v4

    return-wide v0

    .line 515
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    goto :goto_0

    .line 511
    :cond_2
    :goto_1
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAngles(Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;)[D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
        }
    .end annotation

    .line 556
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-wide v3, 0x3feffffffff24190L    # 0.9999999999

    const-wide v5, -0x40100000000dbe70L    # -0.9999999999

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p1, v0, :cond_1

    .line 563
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 564
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_0

    .line 568
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 566
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 574
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_3

    .line 581
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 582
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_2

    .line 586
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 584
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 592
    :cond_3
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_5

    .line 599
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 600
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_4

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_4

    .line 604
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 602
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 610
    :cond_5
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_7

    .line 617
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 618
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_6

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_6

    .line 622
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 620
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 628
    :cond_7
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_9

    .line 635
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 636
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_8

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_8

    .line 640
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 638
    :cond_8
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 646
    :cond_9
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_b

    .line 653
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 654
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_a

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_a

    .line 658
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 656
    :cond_a
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 664
    :cond_b
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XYX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_d

    .line 671
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 672
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_c

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_c

    .line 676
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    neg-double v5, v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 674
    :cond_c
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 682
    :cond_d
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->XZX:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_f

    .line 689
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 690
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_e

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_e

    .line 694
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v11

    neg-double v11, v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 692
    :cond_e
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 700
    :cond_f
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YXY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_11

    .line 707
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 708
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_10

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_10

    .line 712
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    neg-double v11, v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 710
    :cond_10
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 718
    :cond_11
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->YZY:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_13

    .line 725
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 726
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 727
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_12

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_12

    .line 730
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    neg-double v5, v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 728
    :cond_12
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 736
    :cond_13
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;->ZXZ:Lorg/apache/commons/math3/geometry/euclidean/threed/RotationOrder;

    if-ne p1, v0, :cond_15

    .line 743
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 744
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_14

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_14

    .line 748
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    neg-double v5, v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 746
    :cond_14
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1

    .line 761
    :cond_15
    sget-object p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 762
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyInverseTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v9

    cmpg-double v11, v9, v5

    if-ltz v11, :cond_16

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    cmpl-double v9, v5, v3

    if-gtz v9, :cond_16

    .line 766
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    neg-double v11, v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v9

    new-array p1, v2, [D

    aput-wide v3, p1, v7

    aput-wide v5, p1, v8

    aput-wide v9, p1, v1

    return-object p1

    .line 764
    :cond_16
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;

    invoke-direct {p1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;-><init>(Z)V

    throw p1
.end method

.method public getAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 12

    .line 494
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 496
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v5

    .line 497
    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    cmpg-double v6, v4, v2

    if-gez v6, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 498
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 499
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v5, v0, v2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v7, v0, v2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v9, v0, v2

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v4

    :cond_1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 501
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 502
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v5, v0, v2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v7, v0, v2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v9, v0, v2

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v4
.end method

.method public getMatrix()[[D
    .locals 31

    move-object/from16 v0, p0

    .line 782
    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    mul-double v3, v1, v1

    .line 783
    iget-wide v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    mul-double v7, v1, v5

    .line 784
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    mul-double v11, v1, v9

    .line 785
    iget-wide v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    mul-double v1, v1, v13

    mul-double v15, v5, v5

    mul-double v17, v5, v9

    mul-double v5, v5, v13

    mul-double v19, v9, v9

    mul-double v9, v9, v13

    mul-double v13, v13, v13

    const/4 v0, 0x3

    move-wide/from16 v21, v1

    .line 795
    new-array v1, v0, [D

    .line 796
    new-array v2, v0, [D

    move-object/from16 v23, v1

    .line 797
    new-array v1, v0, [D

    new-array v0, v0, [[D

    const/16 v24, 0x0

    aput-object v23, v0, v24

    const/16 v23, 0x1

    aput-object v2, v0, v23

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 799
    aget-object v1, v0, v24

    add-double/2addr v15, v3

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    mul-double v15, v15, v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    sub-double v15, v15, v27

    aput-wide v15, v1, v24

    .line 800
    aget-object v15, v0, v23

    sub-double v29, v17, v21

    mul-double v29, v29, v25

    aput-wide v29, v15, v24

    .line 801
    aget-object v16, v0, v2

    add-double v29, v5, v11

    mul-double v29, v29, v25

    aput-wide v29, v16, v24

    add-double v17, v17, v21

    mul-double v17, v17, v25

    .line 803
    aput-wide v17, v1, v23

    add-double v19, v3, v19

    mul-double v19, v19, v25

    sub-double v19, v19, v27

    .line 804
    aput-wide v19, v15, v23

    sub-double v17, v9, v7

    mul-double v17, v17, v25

    .line 805
    aput-wide v17, v16, v23

    sub-double/2addr v5, v11

    mul-double v5, v5, v25

    .line 807
    aput-wide v5, v1, v2

    add-double/2addr v9, v7

    mul-double v9, v9, v25

    .line 808
    aput-wide v9, v15, v2

    add-double/2addr v3, v13

    mul-double v3, v3, v25

    sub-double v3, v3, v27

    .line 809
    aput-wide v3, v16, v2

    return-object v0
.end method

.method public getQ0()D
    .locals 2

    .line 465
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    .line 472
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    .line 479
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    .line 486
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    return-wide v0
.end method

.method public revert()Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;
    .locals 10

    .line 458
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q0:D

    neg-double v1, v1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q1:D

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q2:D

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->q3:D

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;-><init>(DDDDZ)V

    return-object v0
.end method
