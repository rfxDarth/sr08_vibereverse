.class public Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.super Ljava/lang/Object;
.source "SingularValueDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final EPS:D = 2.220446049250313E-16

.field private static final TINY:D = 1.6033346880071782E-291


# instance fields
.field private cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final m:I

.field private final n:I

.field private final singularValues:[D

.field private final tol:D

.field private final transposed:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 37

    move-object/from16 v0, p0

    .line 88
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    .line 93
    iput-boolean v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    .line 94
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    .line 95
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    .line 96
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    goto :goto_0

    .line 98
    :cond_0
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    .line 99
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    .line 100
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    .line 101
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    .line 104
    :goto_0
    iget v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v5, v2, [D

    iput-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    .line 105
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v2, v7, v4

    aput v5, v7, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 106
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v7, v6, [I

    aput v5, v7, v4

    aput v5, v7, v3

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 107
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v8, v7, [D

    .line 108
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    new-array v10, v9, [D

    sub-int/2addr v9, v4

    .line 111
    invoke-static {v9, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 112
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    sub-int/2addr v9, v6

    invoke-static {v3, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v9

    const/4 v11, 0x0

    .line 113
    :goto_1
    invoke-static {v7, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v12

    const-wide/16 v15, 0x0

    if-ge v11, v12, :cond_15

    if-ge v11, v7, :cond_5

    .line 118
    iget-object v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v15, v12, v11

    move v12, v11

    const/16 v17, 0x0

    .line 119
    :goto_2
    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v12, v3, :cond_1

    .line 120
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    aget-wide v13, v3, v11

    aget-object v20, v1, v12

    move-object/from16 p1, v5

    const/16 v21, 0x1

    aget-wide v4, v20, v11

    invoke-static {v13, v14, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v4

    aput-wide v4, v3, v11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 p1, v5

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v21, 0x1

    .line 122
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, v3, v11

    cmpl-double v12, v4, v15

    if-eqz v12, :cond_4

    .line 123
    aget-object v12, v1, v11

    aget-wide v13, v12, v11

    cmpg-double v12, v13, v15

    if-gez v12, :cond_2

    neg-double v4, v4

    .line 124
    aput-wide v4, v3, v11

    :cond_2
    move v3, v11

    .line 126
    :goto_3
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v3, v4, :cond_3

    .line 127
    aget-object v4, v1, v3

    aget-wide v12, v4, v11

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v22, v5, v11

    div-double v12, v12, v22

    aput-wide v12, v4, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 129
    :cond_3
    aget-object v3, v1, v11

    aget-wide v4, v3, v11

    add-double v4, v4, v18

    aput-wide v4, v3, v11

    .line 131
    :cond_4
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, v3, v11

    neg-double v4, v4

    aput-wide v4, v3, v11

    goto :goto_4

    :cond_5
    move-object/from16 p1, v5

    const/16 v17, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v21, 0x1

    :goto_4
    add-int/lit8 v3, v11, 0x1

    move v4, v3

    .line 133
    :goto_5
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_8

    if-ge v11, v7, :cond_7

    .line 134
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v12, v5, v11

    cmpl-double v5, v12, v15

    if-eqz v5, :cond_7

    move v5, v11

    move-wide v12, v15

    .line 138
    :goto_6
    iget v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v5, v14, :cond_6

    .line 139
    aget-object v14, v1, v5

    aget-wide v22, v14, v11

    aget-wide v24, v14, v4

    mul-double v22, v22, v24

    add-double v12, v12, v22

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    neg-double v12, v12

    .line 141
    aget-object v5, v1, v11

    aget-wide v22, v5, v11

    div-double v12, v12, v22

    move v5, v11

    .line 142
    :goto_7
    iget v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v5, v14, :cond_7

    .line 143
    aget-object v14, v1, v5

    aget-wide v22, v14, v4

    aget-wide v24, v14, v11

    mul-double v24, v24, v12

    add-double v22, v22, v24

    aput-wide v22, v14, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 148
    :cond_7
    aget-object v5, v1, v11

    aget-wide v12, v5, v4

    aput-wide v12, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    if-ge v11, v7, :cond_9

    move v4, v11

    .line 153
    :goto_8
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v5, :cond_9

    .line 154
    aget-object v5, v2, v4

    aget-object v12, v1, v4

    aget-wide v13, v12, v11

    aput-wide v13, v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    if-ge v11, v9, :cond_13

    .line 161
    aput-wide v15, v8, v11

    move v4, v3

    .line 162
    :goto_9
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_a

    .line 163
    aget-wide v12, v8, v11

    move v14, v7

    aget-wide v6, v8, v4

    invoke-static {v12, v13, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v6

    aput-wide v6, v8, v11

    add-int/lit8 v4, v4, 0x1

    move v7, v14

    const/4 v6, 0x2

    goto :goto_9

    :cond_a
    move v14, v7

    .line 165
    aget-wide v6, v8, v11

    cmpl-double v4, v6, v15

    if-eqz v4, :cond_d

    .line 166
    aget-wide v12, v8, v3

    cmpg-double v4, v12, v15

    if-gez v4, :cond_b

    neg-double v6, v6

    .line 167
    aput-wide v6, v8, v11

    :cond_b
    move v4, v3

    .line 169
    :goto_a
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_c

    .line 170
    aget-wide v6, v8, v4

    aget-wide v12, v8, v11

    div-double/2addr v6, v12

    aput-wide v6, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 172
    :cond_c
    aget-wide v6, v8, v3

    add-double v6, v6, v18

    aput-wide v6, v8, v3

    .line 174
    :cond_d
    aget-wide v6, v8, v11

    neg-double v6, v6

    aput-wide v6, v8, v11

    .line 175
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v3, v4, :cond_12

    cmpl-double v4, v6, v15

    if-eqz v4, :cond_12

    move v4, v3

    .line 178
    :goto_b
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v6, :cond_e

    .line 179
    aput-wide v15, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_e
    move v4, v3

    .line 181
    :goto_c
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_10

    move v6, v3

    .line 182
    :goto_d
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v6, v7, :cond_f

    .line 183
    aget-wide v12, v10, v6

    aget-wide v15, v8, v4

    aget-object v7, v1, v6

    aget-wide v18, v7, v4

    mul-double v15, v15, v18

    add-double/2addr v12, v15

    aput-wide v12, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    move v4, v3

    .line 186
    :goto_e
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_12

    .line 187
    aget-wide v6, v8, v4

    neg-double v6, v6

    aget-wide v12, v8, v3

    div-double/2addr v6, v12

    move v12, v3

    .line 188
    :goto_f
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v12, v13, :cond_11

    .line 189
    aget-object v13, v1, v12

    aget-wide v15, v13, v4

    aget-wide v18, v10, v12

    mul-double v18, v18, v6

    add-double v15, v15, v18

    aput-wide v15, v13, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    move v4, v3

    .line 196
    :goto_10
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_14

    .line 197
    aget-object v6, p1, v4

    aget-wide v12, v8, v4

    aput-wide v12, v6, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_13
    move v14, v7

    :cond_14
    move-object/from16 v5, p1

    move v11, v3

    move v7, v14

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_15
    move-object/from16 p1, v5

    move v14, v7

    const/16 v17, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v21, 0x1

    .line 202
    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v14, v3, :cond_16

    .line 204
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-object v6, v1, v14

    aget-wide v10, v6, v14

    aput-wide v10, v4, v14

    .line 206
    :cond_16
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v3, :cond_17

    .line 207
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v6, v3, -0x1

    aput-wide v15, v4, v6

    :cond_17
    add-int/lit8 v4, v9, 0x1

    if-ge v4, v3, :cond_18

    .line 210
    aget-object v1, v1, v9

    add-int/lit8 v4, v3, -0x1

    aget-wide v6, v1, v4

    aput-wide v6, v8, v9

    :cond_18
    add-int/lit8 v1, v3, -0x1

    .line 212
    aput-wide v15, v8, v1

    move v4, v14

    .line 215
    :goto_11
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_1a

    const/4 v6, 0x0

    .line 216
    :goto_12
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v6, v7, :cond_19

    .line 217
    aget-object v7, v2, v6

    aput-wide v15, v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 219
    :cond_19
    aget-object v6, v2, v4

    aput-wide v18, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1a
    add-int/lit8 v7, v14, -0x1

    :goto_13
    if-ltz v7, :cond_22

    .line 222
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v10, v4, v7

    cmpl-double v4, v10, v15

    if-eqz v4, :cond_1f

    add-int/lit8 v4, v7, 0x1

    .line 223
    :goto_14
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_1d

    move v6, v7

    move-wide v10, v15

    .line 225
    :goto_15
    iget v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v6, v12, :cond_1b

    .line 226
    aget-object v12, v2, v6

    aget-wide v13, v12, v7

    aget-wide v22, v12, v4

    mul-double v13, v13, v22

    add-double/2addr v10, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1b
    neg-double v10, v10

    .line 228
    aget-object v6, v2, v7

    aget-wide v12, v6, v7

    div-double/2addr v10, v12

    move v6, v7

    .line 229
    :goto_16
    iget v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v6, v12, :cond_1c

    .line 230
    aget-object v12, v2, v6

    aget-wide v13, v12, v4

    aget-wide v22, v12, v7

    mul-double v22, v22, v10

    add-double v13, v13, v22

    aput-wide v13, v12, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_1d
    move v4, v7

    .line 233
    :goto_17
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v6, :cond_1e

    .line 234
    aget-object v6, v2, v4

    aget-wide v10, v6, v7

    neg-double v10, v10

    aput-wide v10, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 236
    :cond_1e
    aget-object v4, v2, v7

    aget-wide v10, v4, v7

    add-double v10, v10, v18

    aput-wide v10, v4, v7

    const/4 v4, 0x0

    :goto_18
    add-int/lit8 v6, v7, -0x1

    if-ge v4, v6, :cond_21

    .line 238
    aget-object v6, v2, v4

    aput-wide v15, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_1f
    const/4 v4, 0x0

    .line 241
    :goto_19
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v6, :cond_20

    .line 242
    aget-object v6, v2, v4

    aput-wide v15, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 244
    :cond_20
    aget-object v4, v2, v7

    aput-wide v18, v4, v7

    :cond_21
    add-int/lit8 v7, v7, -0x1

    goto :goto_13

    .line 249
    :cond_22
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    if-ltz v4, :cond_27

    if-ge v4, v9, :cond_25

    .line 250
    aget-wide v6, v8, v4

    cmpl-double v10, v6, v15

    if-eqz v10, :cond_25

    add-int/lit8 v6, v4, 0x1

    move v7, v6

    .line 252
    :goto_1b
    iget v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v7, v10, :cond_25

    move v10, v6

    move-wide v11, v15

    .line 254
    :goto_1c
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v10, v13, :cond_23

    .line 255
    aget-object v13, p1, v10

    aget-wide v22, v13, v4

    aget-wide v24, v13, v7

    mul-double v22, v22, v24

    add-double v11, v11, v22

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_23
    neg-double v10, v11

    .line 257
    aget-object v12, p1, v6

    aget-wide v13, v12, v4

    div-double/2addr v10, v13

    move v12, v6

    .line 258
    :goto_1d
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v12, v13, :cond_24

    .line 259
    aget-object v13, p1, v12

    aget-wide v22, v13, v7

    aget-wide v24, v13, v4

    mul-double v24, v24, v10

    add-double v22, v22, v24

    aput-wide v22, v13, v7

    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_25
    const/4 v6, 0x0

    .line 263
    :goto_1e
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v6, v7, :cond_26

    .line 264
    aget-object v7, p1, v6

    aput-wide v15, v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 266
    :cond_26
    aget-object v6, p1, v4

    aput-wide v18, v6, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    :cond_27
    :goto_1f
    const-wide/high16 v6, 0x3cb0000000000000L    # 2.220446049250313E-16

    if-lez v3, :cond_46

    add-int/lit8 v4, v3, -0x2

    move v9, v4

    :goto_20
    const-wide/high16 v10, 0x390000000000000L

    if-ltz v9, :cond_29

    .line 285
    iget-object v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v13, v12, v9

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    iget-object v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v18, v9, 0x1

    aget-wide v18, v14, v18

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    add-double v12, v12, v18

    mul-double v12, v12, v6

    add-double/2addr v12, v10

    .line 295
    aget-wide v18, v8, v9

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    cmpl-double v14, v18, v12

    if-gtz v14, :cond_28

    .line 296
    aput-wide v15, v8, v9

    goto :goto_21

    :cond_28
    add-int/lit8 v9, v9, -0x1

    goto :goto_20

    :cond_29
    :goto_21
    const/4 v12, 0x3

    if-ne v9, v4, :cond_2a

    const/4 v6, 0x4

    goto :goto_26

    :cond_2a
    add-int/lit8 v13, v3, -0x1

    move v14, v13

    :goto_22
    if-lt v14, v9, :cond_2f

    if-ne v14, v9, :cond_2b

    goto :goto_25

    :cond_2b
    if-eq v14, v3, :cond_2c

    .line 310
    aget-wide v18, v8, v14

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    goto :goto_23

    :cond_2c
    move-wide/from16 v18, v15

    :goto_23
    add-int/lit8 v5, v9, 0x1

    if-eq v14, v5, :cond_2d

    add-int/lit8 v5, v14, -0x1

    aget-wide v22, v8, v5

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    goto :goto_24

    :cond_2d
    move-wide/from16 v22, v15

    :goto_24
    add-double v18, v18, v22

    .line 312
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v22, v5, v14

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    mul-double v18, v18, v6

    add-double v18, v18, v10

    cmpg-double v5, v22, v18

    if-gtz v5, :cond_2e

    .line 313
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v15, v5, v14

    goto :goto_25

    :cond_2e
    add-int/lit8 v14, v14, -0x1

    goto :goto_22

    :cond_2f
    :goto_25
    if-ne v14, v9, :cond_30

    const/4 v6, 0x3

    goto :goto_26

    :cond_30
    if-ne v14, v13, :cond_31

    const/4 v6, 0x1

    goto :goto_26

    :cond_31
    move v9, v14

    const/4 v6, 0x2

    :goto_26
    add-int/lit8 v5, v9, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_42

    const/4 v10, 0x2

    if-eq v6, v10, :cond_40

    if-eq v6, v12, :cond_38

    .line 439
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v6, v4, v5

    cmpg-double v9, v6, v15

    if-gtz v9, :cond_33

    cmpg-double v9, v6, v15

    if-gez v9, :cond_32

    neg-double v6, v6

    goto :goto_27

    :cond_32
    move-wide v6, v15

    .line 440
    :goto_27
    aput-wide v6, v4, v5

    const/4 v4, 0x0

    :goto_28
    if-gt v4, v1, :cond_33

    .line 443
    aget-object v6, p1, v4

    aget-wide v11, v6, v5

    neg-double v11, v11

    aput-wide v11, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_33
    :goto_29
    if-ge v5, v1, :cond_37

    .line 448
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v6, v4, v5

    add-int/lit8 v9, v5, 0x1

    aget-wide v11, v4, v9

    cmpl-double v13, v6, v11

    if-ltz v13, :cond_34

    goto :goto_2c

    .line 452
    :cond_34
    aput-wide v11, v4, v5

    .line 453
    aput-wide v6, v4, v9

    .line 454
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    const/16 v21, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v5, v4, :cond_35

    const/4 v4, 0x0

    .line 455
    :goto_2a
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_35

    .line 456
    aget-object v6, p1, v4

    aget-wide v11, v6, v9

    .line 457
    aget-wide v13, v6, v5

    aput-wide v13, v6, v9

    .line 458
    aput-wide v11, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 461
    :cond_35
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    const/16 v21, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v5, v4, :cond_36

    const/4 v4, 0x0

    .line 462
    :goto_2b
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v6, :cond_36

    .line 463
    aget-object v6, v2, v4

    aget-wide v11, v6, v9

    .line 464
    aget-wide v13, v6, v5

    aput-wide v13, v6, v9

    .line 465
    aput-wide v11, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_36
    move v5, v9

    goto :goto_29

    :cond_37
    :goto_2c
    add-int/lit8 v3, v3, -0x1

    move/from16 v28, v1

    move-object v14, v2

    move-object/from16 v19, v8

    move-wide/from16 v22, v15

    const/16 v21, 0x1

    goto/16 :goto_36

    .line 374
    :cond_38
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v7, v3, -0x1

    aget-wide v11, v6, v7

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v13, v6, v4

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    .line 376
    aget-wide v13, v8, v4

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v13, v6, v5

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    aget-wide v13, v8, v5

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    .line 380
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v13, v6, v7

    div-double/2addr v13, v11

    .line 381
    aget-wide v18, v6, v4

    div-double v18, v18, v11

    .line 382
    aget-wide v22, v8, v4

    div-double v22, v22, v11

    .line 383
    aget-wide v24, v6, v5

    div-double v24, v24, v11

    .line 384
    aget-wide v26, v8, v5

    div-double v26, v26, v11

    add-double v11, v18, v13

    sub-double v18, v18, v13

    mul-double v11, v11, v18

    mul-double v18, v22, v22

    add-double v11, v11, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v11, v11, v18

    mul-double v22, v22, v13

    mul-double v22, v22, v22

    cmpl-double v6, v11, v15

    if-nez v6, :cond_3a

    cmpl-double v6, v22, v15

    if-eqz v6, :cond_39

    goto :goto_2d

    :cond_39
    move-wide/from16 v22, v15

    goto :goto_2e

    :cond_3a
    :goto_2d
    mul-double v18, v11, v11

    add-double v18, v18, v22

    move-wide/from16 v28, v11

    .line 390
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    cmpg-double v6, v28, v15

    if-gez v6, :cond_3b

    neg-double v10, v10

    :cond_3b
    add-double v11, v28, v10

    div-double v22, v22, v11

    :goto_2e
    add-double v9, v24, v13

    sub-double v11, v24, v13

    mul-double v9, v9, v11

    add-double v9, v9, v22

    mul-double v24, v24, v26

    move v6, v5

    move-wide/from16 v11, v24

    :goto_2f
    if-ge v6, v7, :cond_3f

    .line 400
    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v13

    div-double/2addr v9, v13

    div-double/2addr v11, v13

    if-eq v6, v5, :cond_3c

    add-int/lit8 v18, v6, -0x1

    .line 404
    aput-wide v13, v8, v18

    .line 406
    :cond_3c
    iget-object v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v18, v13, v6

    mul-double v22, v9, v18

    aget-wide v24, v8, v6

    mul-double v26, v11, v24

    move/from16 v28, v1

    move-object v14, v2

    add-double v1, v22, v26

    mul-double v24, v24, v9

    mul-double v18, v18, v11

    sub-double v24, v24, v18

    .line 407
    aput-wide v24, v8, v6

    add-int/lit8 v18, v6, 0x1

    .line 408
    aget-wide v22, v13, v18

    move/from16 v24, v7

    move-object/from16 v19, v8

    mul-double v7, v11, v22

    mul-double v22, v22, v9

    .line 409
    aput-wide v22, v13, v18

    move-wide/from16 v22, v15

    const/4 v13, 0x0

    .line 411
    :goto_30
    iget v15, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v13, v15, :cond_3d

    .line 412
    aget-object v15, p1, v13

    aget-wide v25, v15, v6

    mul-double v29, v9, v25

    aget-wide v31, v15, v18

    mul-double v33, v11, v31

    add-double v29, v29, v33

    move-wide/from16 v33, v9

    neg-double v9, v11

    mul-double v9, v9, v25

    mul-double v25, v33, v31

    add-double v9, v9, v25

    .line 413
    aput-wide v9, v15, v18

    .line 414
    aput-wide v29, v15, v6

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v9, v33

    goto :goto_30

    .line 416
    :cond_3d
    invoke-static {v1, v2, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v9

    div-double/2addr v1, v9

    div-double/2addr v7, v9

    .line 419
    iget-object v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v9, v11, v6

    .line 420
    aget-wide v9, v19, v6

    mul-double v12, v1, v9

    aget-wide v15, v11, v18

    mul-double v25, v7, v15

    add-double v12, v12, v25

    move-wide/from16 v25, v1

    neg-double v1, v7

    mul-double v9, v9, v1

    mul-double v15, v15, v25

    add-double/2addr v9, v15

    .line 421
    aput-wide v9, v11, v18

    .line 422
    aget-wide v9, v19, v18

    mul-double v15, v7, v9

    mul-double v9, v9, v25

    .line 423
    aput-wide v9, v19, v18

    .line 424
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    const/16 v21, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_3e

    const/4 v9, 0x0

    .line 425
    :goto_31
    iget v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v9, v10, :cond_3e

    .line 426
    aget-object v10, v14, v9

    aget-wide v29, v10, v6

    mul-double v31, v25, v29

    aget-wide v33, v10, v18

    mul-double v35, v7, v33

    add-double v31, v31, v35

    mul-double v29, v29, v1

    mul-double v33, v33, v25

    add-double v29, v29, v33

    .line 427
    aput-wide v29, v10, v18

    .line 428
    aput-wide v31, v10, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_3e
    move-wide v9, v12

    move-object v2, v14

    move-wide v11, v15

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-wide/from16 v15, v22

    move/from16 v7, v24

    move/from16 v1, v28

    goto/16 :goto_2f

    :cond_3f
    move/from16 v28, v1

    move-object v14, v2

    move-object/from16 v19, v8

    move-wide/from16 v22, v15

    const/16 v21, 0x1

    .line 432
    aput-wide v9, v19, v4

    goto/16 :goto_36

    :cond_40
    move/from16 v28, v1

    move-object v14, v2

    move-object/from16 v19, v8

    move-wide/from16 v22, v15

    const/16 v21, 0x1

    .line 353
    aget-wide v1, v19, v9

    .line 354
    aput-wide v22, v19, v9

    :goto_32
    if-ge v5, v3, :cond_45

    .line 356
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v6, v4, v5

    invoke-static {v6, v7, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v6

    .line 357
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v10, v4, v5

    div-double/2addr v10, v6

    div-double/2addr v1, v6

    .line 359
    aput-wide v6, v4, v5

    neg-double v6, v1

    .line 360
    aget-wide v12, v19, v5

    mul-double v15, v6, v12

    mul-double v12, v12, v10

    .line 361
    aput-wide v12, v19, v5

    const/4 v4, 0x0

    .line 363
    :goto_33
    iget v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v8, :cond_41

    .line 364
    aget-object v8, v14, v4

    aget-wide v12, v8, v5

    mul-double v24, v10, v12

    aget-wide v26, v8, v9

    mul-double v29, v1, v26

    add-double v24, v24, v29

    mul-double v12, v12, v6

    mul-double v26, v26, v10

    add-double v12, v12, v26

    .line 365
    aput-wide v12, v8, v9

    .line 366
    aput-wide v24, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_41
    add-int/lit8 v5, v5, 0x1

    move-wide v1, v15

    goto :goto_32

    :cond_42
    move/from16 v28, v1

    move-object v14, v2

    move-object/from16 v19, v8

    move-wide/from16 v22, v15

    const/16 v21, 0x1

    .line 331
    aget-wide v1, v19, v4

    .line 332
    aput-wide v22, v19, v4

    :goto_34
    if-lt v4, v5, :cond_45

    .line 334
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v7, v6, v4

    invoke-static {v7, v8, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v6

    .line 335
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v9, v8, v4

    div-double/2addr v9, v6

    div-double v11, v1, v6

    .line 337
    aput-wide v6, v8, v4

    if-eq v4, v5, :cond_43

    neg-double v1, v11

    add-int/lit8 v6, v4, -0x1

    .line 339
    aget-wide v7, v19, v6

    mul-double v1, v1, v7

    mul-double v7, v7, v9

    .line 340
    aput-wide v7, v19, v6

    :cond_43
    const/4 v6, 0x0

    .line 343
    :goto_35
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v6, v7, :cond_44

    .line 344
    aget-object v7, p1, v6

    aget-wide v15, v7, v4

    mul-double v24, v9, v15

    add-int/lit8 v8, v3, -0x1

    aget-wide v26, v7, v8

    mul-double v29, v11, v26

    add-double v24, v24, v29

    move-wide/from16 v29, v1

    neg-double v1, v11

    mul-double v1, v1, v15

    mul-double v26, v26, v9

    add-double v1, v1, v26

    .line 345
    aput-wide v1, v7, v8

    .line 346
    aput-wide v24, v7, v4

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v1, v29

    goto :goto_35

    :cond_44
    move-wide/from16 v29, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_34

    :cond_45
    :goto_36
    move-object v2, v14

    move-object/from16 v8, v19

    move-wide/from16 v15, v22

    move/from16 v1, v28

    goto/16 :goto_1f

    :cond_46
    move-object v14, v2

    .line 478
    iget v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    int-to-double v1, v1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, v3, v17

    mul-double v1, v1, v4

    mul-double v1, v1, v6

    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    .line 481
    iget-boolean v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    if-nez v1, :cond_47

    .line 482
    invoke-static {v14}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 483
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 485
    :cond_47
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 486
    invoke-static {v14}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/linear/SingularValueDecomposition;)[D
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    return-object p0
.end method


# virtual methods
.method public getConditionNumber()D
    .locals 5

    .line 620
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iget v3, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v0, v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getCovariance(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .line 578
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 580
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, v3, v2

    cmpl-double v3, v4, p1

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 p1, 0x2

    .line 590
    new-array p1, p1, [I

    aput v0, p1, v3

    aput v2, p1, v1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    .line 591
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    new-instance v5, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;

    invoke-direct {v5, p0, p1}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;-><init>(Lorg/apache/commons/math3/linear/SingularValueDecomposition;[[D)V

    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    add-int/lit8 v9, v0, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/math3/linear/RealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    .line 600
    new-instance p2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p2, p1, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 601
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1

    .line 586
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_LARGE_CUTOFF_SINGULAR_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, v2, p1, p2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public getInverseConditionNumber()D
    .locals 5

    .line 631
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getNorm()D
    .locals 3

    .line 612
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getRank()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 644
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 645
    aget-wide v3, v2, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    cmpl-double v2, v3, v5

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getS()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 523
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSingularValues()[D
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 8

    .line 657
    new-instance v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getUT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getRank()I

    move-result v4

    iget v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$1;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getUT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getU()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
