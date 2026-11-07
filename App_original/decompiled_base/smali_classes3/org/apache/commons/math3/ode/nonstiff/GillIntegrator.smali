.class public Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "GillIntegrator.java"


# static fields
.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x3

    .line 51
    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_C:[D

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 56
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    div-double/2addr v3, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    sub-double v5, v1, v5

    div-double/2addr v5, v1

    const/4 v7, 0x2

    new-array v8, v7, [D

    const/4 v9, 0x0

    aput-wide v3, v8, v9

    const/4 v3, 0x1

    aput-wide v5, v8, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    neg-double v4, v4

    div-double/2addr v4, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    add-double/2addr v10, v1

    div-double/2addr v10, v1

    new-array v6, v0, [D

    const-wide/16 v12, 0x0

    aput-wide v12, v6, v9

    aput-wide v4, v6, v3

    aput-wide v10, v6, v7

    new-array v4, v0, [[D

    new-array v5, v3, [D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    aput-wide v10, v5, v9

    aput-object v5, v4, v9

    aput-object v8, v4, v3

    aput-object v6, v4, v7

    sput-object v4, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_A:[[D

    .line 63
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    sub-double v4, v1, v4

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    div-double/2addr v4, v10

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    add-double/2addr v12, v1

    div-double/2addr v12, v10

    const/4 v1, 0x4

    new-array v1, v1, [D

    const-wide v10, 0x3fc5555555555555L    # 0.16666666666666666

    aput-wide v10, v1, v9

    aput-wide v4, v1, v3

    aput-wide v12, v1, v7

    aput-wide v10, v1, v0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_B:[D

    return-void

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 8

    .line 72
    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_C:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_A:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_B:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;-><init>()V

    const-string v1, "Gill"

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    return-void
.end method
