.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "DormandPrince853Integrator.java"


# static fields
.field private static final E1_01:D = 0.01312004499419488

.field private static final E1_06:D = -1.2251564463762044

.field private static final E1_07:D = -0.4957589496572502

.field private static final E1_08:D = 1.6643771824549864

.field private static final E1_09:D = -0.35032884874997366

.field private static final E1_10:D = 0.3341791187130175

.field private static final E1_11:D = 0.08192320648511571

.field private static final E1_12:D = -0.022355307863886294

.field private static final E2_01:D = -0.18980075407240762

.field private static final E2_06:D = 4.450312892752409

.field private static final E2_07:D = 1.8915178993145003

.field private static final E2_08:D = -5.801203960010585

.field private static final E2_09:D = -0.42268232132379197

.field private static final E2_10:D = -0.1521609496625161

.field private static final E2_11:D = 0.20136540080403034

.field private static final E2_12:D = 0.022651792198360825

.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 8 (5, 3)"

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 63
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    sub-double v2, v6, v2

    const-wide v8, 0x4060e00000000000L    # 135.0

    div-double/2addr v2, v8

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    sub-double v10, v0, v10

    const-wide v12, 0x4046800000000000L    # 45.0

    div-double/2addr v10, v12

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    sub-double v12, v0, v12

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double/2addr v12, v14

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    add-double v16, v16, v0

    div-double v16, v16, v14

    const/16 v14, 0xc

    new-array v15, v14, [D

    const/16 v18, 0x0

    aput-wide v2, v15, v18

    const/4 v2, 0x1

    aput-wide v10, v15, v2

    const/4 v3, 0x2

    aput-wide v12, v15, v3

    const/4 v10, 0x3

    aput-wide v16, v15, v10

    const/4 v11, 0x4

    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    aput-wide v12, v15, v11

    const/4 v12, 0x5

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    aput-wide v16, v15, v12

    const/4 v13, 0x6

    const-wide v16, 0x3fd3b13b13b13b14L    # 0.3076923076923077

    aput-wide v16, v15, v13

    move-wide/from16 v16, v0

    const/4 v0, 0x7

    const-wide v19, 0x3fe4d74d74d74d75L    # 0.6512820512820513

    aput-wide v19, v15, v0

    const/16 v1, 0x8

    const-wide v19, 0x3fe3333333333333L    # 0.6

    aput-wide v19, v15, v1

    move-wide/from16 v19, v4

    const/16 v4, 0x9

    const-wide v21, 0x3feb6db6db6db6dbL    # 0.8571428571428571

    aput-wide v21, v15, v4

    const/16 v5, 0xa

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    aput-wide v21, v15, v5

    move-wide/from16 v23, v6

    const/16 v6, 0xb

    aput-wide v21, v15, v6

    sput-object v15, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    .line 70
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v21

    mul-double v21, v21, v19

    sub-double v19, v23, v21

    div-double v19, v19, v8

    new-array v7, v2, [D

    aput-wide v19, v7, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    sub-double v8, v16, v8

    const-wide v19, 0x4066800000000000L    # 180.0

    div-double v8, v8, v19

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    sub-double v19, v16, v19

    const-wide/high16 v21, 0x404e000000000000L    # 60.0

    div-double v19, v19, v21

    new-array v15, v3, [D

    aput-wide v8, v15, v18

    aput-wide v19, v15, v2

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    sub-double v8, v16, v8

    const-wide/high16 v19, 0x405e000000000000L    # 120.0

    div-double v8, v8, v19

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    sub-double v19, v16, v19

    const-wide/high16 v21, 0x4044000000000000L    # 40.0

    div-double v19, v19, v21

    const/16 v21, 0x1

    new-array v2, v10, [D

    aput-wide v8, v2, v18

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v21

    aput-wide v19, v2, v3

    const-wide v19, 0x405ac00000000000L    # 107.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    mul-double v22, v22, v19

    const-wide v19, 0x407ce00000000000L    # 462.0

    add-double v22, v22, v19

    const-wide v19, 0x40a7700000000000L    # 3000.0

    div-double v22, v22, v19

    const-wide v19, 0x4068a00000000000L    # 197.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v24

    mul-double v24, v24, v19

    const-wide v19, -0x3f86e00000000000L    # -402.0

    sub-double v19, v19, v24

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v19, v19, v24

    const-wide v24, 0x4052400000000000L    # 73.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    mul-double v26, v26, v24

    const-wide/high16 v24, 0x4065000000000000L    # 168.0

    add-double v26, v26, v24

    const-wide v24, 0x4077700000000000L    # 375.0

    div-double v26, v26, v24

    const/16 v24, 0x2

    new-array v3, v11, [D

    aput-wide v22, v3, v18

    aput-wide v8, v3, v21

    aput-wide v19, v3, v24

    aput-wide v26, v3, v10

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide/high16 v22, 0x4030000000000000L    # 16.0

    add-double v19, v19, v22

    const-wide/high16 v25, 0x405b000000000000L    # 108.0

    div-double v19, v19, v25

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    sub-double v22, v22, v27

    div-double v22, v22, v25

    move-wide/from16 v25, v8

    new-array v8, v12, [D

    const-wide v27, 0x3fa2f684bda12f68L    # 0.037037037037037035

    aput-wide v27, v8, v18

    aput-wide v25, v8, v21

    aput-wide v25, v8, v24

    aput-wide v19, v8, v10

    aput-wide v22, v8, v11

    const-wide/high16 v19, 0x4037000000000000L    # 23.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    mul-double v22, v22, v19

    const-wide v19, 0x405d800000000000L    # 118.0

    add-double v22, v22, v19

    const-wide/high16 v19, 0x4090000000000000L    # 1024.0

    div-double v22, v22, v19

    const-wide/high16 v19, 0x4037000000000000L    # 23.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    mul-double v27, v27, v19

    const-wide v19, 0x405d800000000000L    # 118.0

    sub-double v19, v19, v27

    const-wide/high16 v27, 0x4090000000000000L    # 1024.0

    div-double v19, v19, v27

    new-array v9, v13, [D

    const-wide/high16 v27, 0x3fa3000000000000L    # 0.037109375

    aput-wide v27, v9, v18

    aput-wide v25, v9, v21

    aput-wide v25, v9, v24

    aput-wide v22, v9, v10

    aput-wide v19, v9, v11

    const-wide/high16 v19, -0x406e000000000000L    # -0.017578125

    aput-wide v19, v9, v12

    const-wide v19, 0x40b2b00000000000L    # 4784.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    mul-double v22, v22, v19

    const-wide v19, 0x40e92b0000000000L    # 51544.0

    add-double v22, v22, v19

    const-wide v19, 0x4116a97400000000L    # 371293.0

    div-double v22, v22, v19

    const-wide v19, 0x40b2b00000000000L    # 4784.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v27

    mul-double v27, v27, v19

    const-wide v19, 0x40e92b0000000000L    # 51544.0

    sub-double v19, v19, v27

    const-wide v27, 0x4116a97400000000L    # 371293.0

    div-double v19, v19, v27

    const/16 v27, 0x3

    new-array v10, v0, [D

    const-wide v28, 0x3fa2fdb8fee78792L    # 0.03709200011850479

    aput-wide v28, v10, v18

    aput-wide v25, v10, v21

    aput-wide v25, v10, v24

    aput-wide v22, v10, v27

    aput-wide v19, v10, v11

    const-wide v19, -0x4070a033df032cd1L    # -0.015319437748624402

    aput-wide v19, v10, v12

    const-wide v19, 0x3f80f1d92efb0b71L    # 0.008273789163814023

    aput-wide v19, v10, v13

    const-wide v19, 0x42528e82fff4c000L    # 3.18801444819E11

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v22

    mul-double v22, v22, v19

    const-wide v19, -0x3d8cb866b2b38000L    # -1.324889724104E12

    sub-double v19, v19, v22

    const-wide v22, 0x42623c3684a38000L    # 6.265569375E11

    div-double v19, v19, v22

    const-wide v22, 0x42528e82fff4c000L    # 3.18801444819E11

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v28

    mul-double v28, v28, v22

    const-wide v22, -0x3d8cb866b2b38000L    # -1.324889724104E12

    add-double v28, v28, v22

    const-wide v22, 0x42623c3684a38000L    # 6.265569375E11

    div-double v28, v28, v22

    const/16 v22, 0x7

    new-array v0, v1, [D

    const-wide v30, 0x3fe3f8b78b985813L    # 0.6241109587160757

    aput-wide v30, v0, v18

    aput-wide v25, v0, v21

    aput-wide v25, v0, v24

    aput-wide v19, v0, v27

    aput-wide v28, v0, v11

    const-wide v19, 0x403b9793d88d1855L    # 27.59209969944671

    aput-wide v19, v0, v12

    const-wide v19, 0x40342770f892ad69L    # 20.154067550477894

    aput-wide v19, v0, v13

    const-wide v19, -0x3fba414b79a3bd07L    # -43.48988418106996

    aput-wide v19, v0, v22

    const-wide v19, 0x41315d2b00000000L    # 1137963.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v28

    mul-double v28, v28, v19

    const-wide v19, -0x3eaec09000000000L    # -4521408.0

    sub-double v19, v19, v28

    const-wide v28, 0x4146694e00000000L    # 2937500.0

    div-double v19, v19, v28

    const-wide v28, 0x41315d2b00000000L    # 1137963.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    mul-double v30, v30, v28

    const-wide v28, -0x3eaec09000000000L    # -4521408.0

    add-double v30, v30, v28

    const-wide v28, 0x4146694e00000000L    # 2937500.0

    div-double v30, v30, v28

    const/16 v23, 0x8

    new-array v1, v4, [D

    const-wide v28, 0x3fde9205e321b655L    # 0.47766253643826434

    aput-wide v28, v1, v18

    aput-wide v25, v1, v21

    aput-wide v25, v1, v24

    aput-wide v19, v1, v27

    aput-wide v30, v1, v11

    const-wide v19, 0x40353ae4a6d655eeL    # 21.230051448181193

    aput-wide v19, v1, v12

    const-wide v19, 0x402e8ef7b5f258b8L    # 15.279233632882423

    aput-wide v19, v1, v13

    const-wide v19, -0x3fbf5b1be728ee47L    # -33.28821096898486

    aput-wide v19, v1, v22

    const-wide v19, -0x406b2e4c264b578aL    # -0.020331201708508627

    aput-wide v19, v1, v23

    const-wide v19, 0x40f7076000000000L    # 94326.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v28

    mul-double v28, v28, v19

    const-wide v19, 0x41159ea000000000L    # 354216.0

    add-double v28, v28, v19

    const-wide v19, 0x40fb8cf000000000L    # 112847.0

    div-double v28, v28, v19

    const-wide v19, 0x40f7076000000000L    # 94326.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v30

    mul-double v30, v30, v19

    const-wide v19, 0x41159ea000000000L    # 354216.0

    sub-double v19, v19, v30

    const-wide v30, 0x40fb8cf000000000L    # 112847.0

    div-double v19, v19, v30

    const/16 v30, 0x9

    new-array v4, v5, [D

    const-wide v31, -0x401202ede0e2c665L    # -0.9371424300859873

    aput-wide v31, v4, v18

    aput-wide v25, v4, v21

    aput-wide v25, v4, v24

    aput-wide v28, v4, v27

    aput-wide v19, v4, v11

    const-wide v19, -0x3fdfb34f1deef3e4L    # -8.149787010746927

    aput-wide v19, v4, v12

    const-wide v19, -0x3fcd7adcfa168a58L    # -18.52006565999696

    aput-wide v19, v4, v13

    const-wide v19, 0x4036bd4f06cb863aL    # 22.739487099350505

    aput-wide v19, v4, v22

    const-wide v19, 0x4003f2e777cf109dL    # 2.4936055526796523

    aput-wide v19, v4, v23

    const-wide v19, -0x3ff7a039f2d4a8d4L    # -3.0467644718982196

    aput-wide v19, v4, v30

    const-wide v19, 0x412d531200000000L    # 960905.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v28

    mul-double v28, v28, v19

    const-wide v19, -0x3eb59f1c00000000L    # -3457480.0

    sub-double v19, v19, v28

    const-wide v28, 0x4120d5a800000000L    # 551636.0

    div-double v19, v19, v28

    const-wide v28, 0x412d531200000000L    # 960905.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    mul-double v16, v16, v28

    const-wide v28, -0x3eb59f1c00000000L    # -3457480.0

    add-double v16, v16, v28

    const-wide v28, 0x4120d5a800000000L    # 551636.0

    div-double v16, v16, v28

    const/16 v28, 0xa

    new-array v5, v6, [D

    const-wide v31, 0x40022fbd3b09fcdcL    # 2.273310147516538

    aput-wide v31, v5, v18

    aput-wide v25, v5, v21

    aput-wide v25, v5, v24

    aput-wide v19, v5, v27

    aput-wide v16, v5, v11

    const-wide v16, -0x3fce0a837100cffaL    # -17.9589318631188

    aput-wide v16, v5, v12

    const-wide v16, 0x403bf2ea18b58a01L    # 27.94888452941996

    aput-wide v16, v5, v13

    const-wide v16, -0x3ff920c582e313edL    # -2.8589982771350235

    aput-wide v16, v5, v22

    const-wide v16, -0x3fde4118e560cc57L    # -8.87285693353063

    aput-wide v16, v5, v23

    const-wide v16, 0x4028b89c42c81861L    # 12.360567175794303

    aput-wide v16, v5, v30

    const-wide v16, 0x3fe496ac6253e202L    # 0.6433927460157636

    aput-wide v16, v5, v28

    const/16 v16, 0xb

    new-array v6, v14, [D

    fill-array-data v6, :array_0

    new-array v14, v14, [[D

    aput-object v7, v14, v18

    aput-object v15, v14, v21

    aput-object v2, v14, v24

    aput-object v3, v14, v27

    aput-object v8, v14, v11

    aput-object v9, v14, v12

    aput-object v10, v14, v13

    aput-object v0, v14, v22

    aput-object v1, v14, v23

    aput-object v4, v14, v30

    aput-object v5, v14, v28

    aput-object v6, v14, v16

    sput-object v14, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    const/16 v0, 0xd

    .line 137
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fabcc6368d1177cL    # 0.054293734116568765
        0x0
        0x0
        0x0
        0x0
        0x4011cd1ed2ad5ae2L    # 4.450312892752409
        0x3ffe43a845d5ab9fL    # 1.8915178993145003
        -0x3fe8cb91306950bdL    # -5.801203960010585
        0x3fd3ea1df2f0eb98L    # 0.3111643669578199
        -0x403c85fd70bc4ffeL    # -0.1521609496625161
        0x3fc9c657697fe72dL    # 0.20136540080403034
        0x3fa6e44f50ab6bc2L    # 0.04471061572777259
    .end array-data

    :array_1
    .array-data 8
        0x3fabcc6368d1177cL    # 0.054293734116568765
        0x0
        0x0
        0x0
        0x0
        0x4011cd1ed2ad5ae2L    # 4.450312892752409
        0x3ffe43a845d5ab9fL    # 1.8915178993145003
        -0x3fe8cb91306950bdL    # -5.801203960010585
        0x3fd3ea1df2f0eb98L    # 0.3111643669578199
        -0x403c85fd70bc4ffeL    # -0.1521609496625161
        0x3fc9c657697fe72dL    # 0.20136540080403034
        0x3fa6e44f50ab6bc2L    # 0.04471061572777259
        0x0
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    .line 220
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>()V

    const-string v1, "Dormand-Prince 8 (5, 3)"

    const/4 v2, 0x1

    move-object v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 13

    .line 239
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853StepInterpolator;-><init>()V

    const-string v1, "Dormand-Prince 8 (5, 3)"

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    return-void
.end method


# virtual methods
.method protected estimateError([[D[D[DD)D
    .locals 30

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 258
    :goto_0
    iget v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->mainSetDimension:I

    if-ge v4, v9, :cond_1

    .line 259
    aget-object v9, p1, v3

    aget-wide v10, v9, v4

    const-wide v12, 0x3f8adeaea1607e1aL    # 0.01312004499419488

    mul-double v12, v12, v10

    const/4 v9, 0x5

    aget-object v9, p1, v9

    aget-wide v14, v9, v4

    const-wide v16, -0x400c65c25aa54a3dL    # -1.2251564463762044

    mul-double v16, v16, v14

    add-double v12, v12, v16

    const/4 v9, 0x6

    aget-object v9, p1, v9

    aget-wide v16, v9, v4

    const-wide v18, -0x4020457c4121758eL    # -0.4957589496572502

    mul-double v18, v18, v16

    add-double v12, v12, v18

    const/4 v9, 0x7

    aget-object v9, p1, v9

    aget-wide v18, v9, v4

    const-wide v20, 0x3ffaa149f7eda509L    # 1.6643771824549864

    mul-double v20, v20, v18

    add-double v12, v12, v20

    const/16 v9, 0x8

    aget-object v9, p1, v9

    aget-wide v20, v9, v4

    const-wide v22, -0x402994364ef1818fL    # -0.35032884874997366

    mul-double v22, v22, v20

    add-double v12, v12, v22

    const/16 v9, 0x9

    aget-object v9, p1, v9

    aget-wide v22, v9, v4

    const-wide v24, 0x3fd56330d0783989L    # 0.3341791187130175

    mul-double v24, v24, v22

    add-double v12, v12, v24

    const/16 v9, 0xa

    aget-object v9, p1, v9

    aget-wide v24, v9, v4

    const-wide v26, 0x3fb4f8eb54a31435L    # 0.08192320648511571

    mul-double v26, v26, v24

    add-double v12, v12, v26

    const/16 v9, 0xb

    aget-object v9, p1, v9

    aget-wide v26, v9, v4

    const-wide v28, -0x40691bb0af54943eL    # -0.022355307863886294

    mul-double v28, v28, v26

    add-double v12, v12, v28

    const-wide v28, -0x4037b49be0405e0fL    # -0.18980075407240762

    mul-double v10, v10, v28

    const-wide v28, 0x4011cd1ed2ad5ae2L    # 4.450312892752409

    mul-double v14, v14, v28

    add-double/2addr v10, v14

    const-wide v14, 0x3ffe43a845d5ab9fL    # 1.8915178993145003

    mul-double v16, v16, v14

    add-double v10, v10, v16

    const-wide v14, -0x3fe8cb91306950bdL    # -5.801203960010585

    mul-double v18, v18, v14

    add-double v10, v10, v18

    const-wide v14, -0x4024f2c5d95448e9L    # -0.42268232132379197

    mul-double v20, v20, v14

    add-double v10, v10, v20

    const-wide v14, -0x403c85fd70bc4ffeL    # -0.1521609496625161

    mul-double v22, v22, v14

    add-double v10, v10, v22

    const-wide v14, 0x3fc9c657697fe72dL    # 0.20136540080403034

    mul-double v24, v24, v14

    add-double v10, v10, v24

    const-wide v14, 0x3f9732080ac040eeL    # 0.022651792198360825

    mul-double v26, v26, v14

    add-double v10, v10, v26

    .line 268
    aget-wide v14, p2, v4

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    aget-wide v16, p3, v4

    const-wide/16 v18, 0x0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v14, v15, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 269
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->vecAbsoluteTolerance:[D

    if-nez v9, :cond_0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->scalAbsoluteTolerance:D

    move/from16 v16, v4

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->scalRelativeTolerance:D

    mul-double v3, v3, v1

    add-double/2addr v14, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v4

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->vecAbsoluteTolerance:[D

    aget-wide v14, v3, v16

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->vecRelativeTolerance:[D

    aget-wide v20, v3, v16

    mul-double v20, v20, v1

    add-double v14, v14, v20

    :goto_1
    div-double/2addr v12, v14

    mul-double v12, v12, v12

    add-double/2addr v5, v12

    div-double/2addr v10, v14

    mul-double v10, v10, v10

    add-double/2addr v7, v10

    add-int/lit8 v4, v16, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1
    const-wide/16 v18, 0x0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    mul-double v7, v7, v1

    add-double/2addr v7, v5

    cmpg-double v1, v7, v18

    if-gtz v1, :cond_2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 283
    :cond_2
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    mul-double v1, v1, v5

    iget v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;->mainSetDimension:I

    int-to-double v3, v3

    mul-double v3, v3, v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getOrder()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
