.class public Lcom/scwang/smartrefresh/header/storehouse/StoreHousePath;
.super Ljava/lang/Object;
.source "StoreHousePath.java"


# static fields
.field private static final sPointList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/scwang/smartrefresh/header/storehouse/StoreHousePath;->sPointList:Landroid/util/SparseArray;

    const/16 v0, 0x14

    .line 18
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/16 v2, 0x28

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    const/16 v3, 0xc

    new-array v4, v3, [F

    fill-array-data v4, :array_2

    const/16 v5, 0x18

    new-array v6, v5, [F

    fill-array-data v6, :array_3

    const/16 v7, 0x10

    new-array v8, v7, [F

    fill-array-data v8, :array_4

    new-array v9, v3, [F

    fill-array-data v9, :array_5

    new-array v10, v5, [F

    fill-array-data v10, :array_6

    new-array v11, v3, [F

    fill-array-data v11, :array_7

    new-array v12, v3, [F

    fill-array-data v12, :array_8

    new-array v13, v3, [F

    fill-array-data v13, :array_9

    new-array v14, v3, [F

    fill-array-data v14, :array_a

    const/16 v15, 0x8

    new-array v0, v15, [F

    fill-array-data v0, :array_b

    new-array v15, v7, [F

    fill-array-data v15, :array_c

    new-array v5, v3, [F

    fill-array-data v5, :array_d

    new-array v3, v7, [F

    fill-array-data v3, :array_e

    move-object/from16 v20, v0

    new-array v0, v7, [F

    fill-array-data v0, :array_f

    move-object/from16 v22, v0

    const/16 v7, 0x18

    new-array v0, v7, [F

    fill-array-data v0, :array_10

    move-object/from16 v23, v0

    const/16 v7, 0x14

    new-array v0, v7, [F

    fill-array-data v0, :array_11

    move-object/from16 v24, v0

    new-array v0, v7, [F

    fill-array-data v0, :array_12

    move-object/from16 v25, v0

    const/16 v7, 0x8

    new-array v0, v7, [F

    fill-array-data v0, :array_13

    move-object/from16 v26, v0

    const/16 v7, 0xc

    new-array v0, v7, [F

    fill-array-data v0, :array_14

    move-object/from16 v27, v0

    const/16 v7, 0x8

    new-array v0, v7, [F

    fill-array-data v0, :array_15

    move-object/from16 v28, v0

    const/16 v7, 0x10

    new-array v0, v7, [F

    fill-array-data v0, :array_16

    move-object/from16 v29, v0

    const/16 v7, 0x8

    new-array v0, v7, [F

    fill-array-data v0, :array_17

    move-object/from16 v30, v0

    const/16 v7, 0xc

    new-array v0, v7, [F

    fill-array-data v0, :array_18

    move-object/from16 v31, v0

    new-array v0, v7, [F

    fill-array-data v0, :array_19

    const/16 v7, 0x1a

    move-object/from16 v32, v0

    new-array v0, v7, [[F

    const/4 v7, 0x0

    aput-object v1, v0, v7

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v2, 0x2

    aput-object v4, v0, v2

    const/4 v2, 0x3

    aput-object v6, v0, v2

    const/4 v2, 0x4

    aput-object v8, v0, v2

    const/4 v4, 0x5

    aput-object v9, v0, v4

    const/4 v4, 0x6

    aput-object v10, v0, v4

    const/4 v4, 0x7

    aput-object v11, v0, v4

    const/16 v17, 0x8

    aput-object v12, v0, v17

    const/16 v4, 0x9

    aput-object v13, v0, v4

    const/16 v4, 0xa

    aput-object v14, v0, v4

    const/16 v6, 0xb

    aput-object v20, v0, v6

    const/16 v19, 0xc

    aput-object v15, v0, v19

    const/16 v6, 0xd

    aput-object v5, v0, v6

    const/16 v5, 0xe

    aput-object v3, v0, v5

    const/16 v3, 0xf

    aput-object v22, v0, v3

    const/16 v21, 0x10

    aput-object v23, v0, v21

    const/16 v3, 0x11

    aput-object v24, v0, v3

    const/16 v3, 0x12

    aput-object v25, v0, v3

    const/16 v3, 0x13

    aput-object v26, v0, v3

    const/16 v16, 0x14

    aput-object v27, v0, v16

    const/16 v3, 0x15

    aput-object v28, v0, v3

    const/16 v3, 0x16

    aput-object v29, v0, v3

    const/16 v3, 0x17

    aput-object v30, v0, v3

    const/16 v18, 0x18

    aput-object v31, v0, v18

    const/16 v3, 0x19

    aput-object v32, v0, v3

    const/16 v3, 0x10

    .line 224
    new-array v5, v3, [F

    fill-array-data v5, :array_1a

    new-array v3, v2, [F

    fill-array-data v3, :array_1b

    const/16 v6, 0x14

    new-array v8, v6, [F

    fill-array-data v8, :array_1c

    new-array v9, v6, [F

    fill-array-data v9, :array_1d

    const/16 v10, 0xc

    new-array v10, v10, [F

    fill-array-data v10, :array_1e

    new-array v11, v6, [F

    fill-array-data v11, :array_1f

    const/16 v12, 0x10

    new-array v13, v12, [F

    fill-array-data v13, :array_20

    const/16 v14, 0x8

    new-array v15, v14, [F

    fill-array-data v15, :array_21

    new-array v6, v6, [F

    fill-array-data v6, :array_22

    new-array v12, v12, [F

    fill-array-data v12, :array_23

    new-array v14, v4, [[F

    aput-object v5, v14, v7

    aput-object v3, v14, v1

    const/4 v1, 0x2

    aput-object v8, v14, v1

    const/4 v1, 0x3

    aput-object v9, v14, v1

    aput-object v10, v14, v2

    const/4 v1, 0x5

    aput-object v11, v14, v1

    const/4 v1, 0x6

    aput-object v13, v14, v1

    const/4 v1, 0x7

    aput-object v15, v14, v1

    const/16 v17, 0x8

    aput-object v6, v14, v17

    const/16 v1, 0x9

    aput-object v12, v14, v1

    const/4 v1, 0x0

    const/16 v3, 0x1a

    :goto_0
    if-ge v1, v3, :cond_0

    .line 304
    sget-object v5, Lcom/scwang/smartrefresh/header/storehouse/StoreHousePath;->sPointList:Landroid/util/SparseArray;

    add-int/lit8 v6, v1, 0x41

    aget-object v8, v0, v1

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 308
    sget-object v5, Lcom/scwang/smartrefresh/header/storehouse/StoreHousePath;->sPointList:Landroid/util/SparseArray;

    add-int/lit8 v6, v1, 0x61

    aget-object v8, v0, v1

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 312
    sget-object v1, Lcom/scwang/smartrefresh/header/storehouse/StoreHousePath;->sPointList:Landroid/util/SparseArray;

    add-int/lit8 v3, v0, 0x30

    aget-object v5, v14, v0

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 315
    :cond_2
    sget-object v0, Lcom/scwang/smartrefresh/header/storehouse/StoreHousePath;->sPointList:Landroid/util/SparseArray;

    const/16 v1, 0x20

    new-array v3, v7, [F

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 317
    new-array v1, v2, [F

    fill-array-data v1, :array_24

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 321
    new-array v1, v2, [F

    fill-array-data v1, :array_25

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x41c00000    # 24.0f
        0x0
        0x3f800000    # 1.0f
        0x41b00000    # 22.0f
        0x3f800000    # 1.0f
        0x41b00000    # 22.0f
        0x3f800000    # 1.0f
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x0
        0x423c0000    # 47.0f
        0x41b00000    # 22.0f
        0x423c0000    # 47.0f
        0x41b00000    # 22.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x3f800000    # 1.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x42140000    # 37.0f
        0x0
        0x42140000    # 37.0f
        0x0
        0x423c0000    # 47.0f
        0x41300000    # 11.0f
        0x423c0000    # 47.0f
        0x41300000    # 11.0f
        0x423c0000    # 47.0f
        0x41d00000    # 26.0f
        0x423c0000    # 47.0f
        0x41d00000    # 26.0f
        0x42180000    # 38.0f
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42380000    # 46.0f
        0x423c0000    # 47.0f
        0x42380000    # 46.0f
        0x423c0000    # 47.0f
        0x42740000    # 61.0f
        0x423c0000    # 47.0f
        0x42740000    # 61.0f
        0x42180000    # 38.0f
        0x428e0000    # 71.0f
        0x42140000    # 37.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_2
    .array-data 4
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x41c00000    # 24.0f
        0x0
        0x41c00000    # 24.0f
        0x0
        0x423c0000    # 47.0f
        0x41b00000    # 22.0f
        0x423c0000    # 47.0f
        0x41b00000    # 22.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x41b80000    # 23.0f
        0x42900000    # 72.0f
        0x41b80000    # 23.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x42100000    # 36.0f
        0x42140000    # 37.0f
        0x42100000    # 36.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x42100000    # 36.0f
        0x42140000    # 37.0f
        0x42100000    # 36.0f
    .end array-data

    :array_6
    .array-data 4
        0x423c0000    # 47.0f
        0x41b80000    # 23.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x41c00000    # 24.0f
        0x42400000    # 48.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x41c00000    # 24.0f
        0x0
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_9
    .array-data 4
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x0
        0x42400000    # 48.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x40400000    # 3.0f
        0x42040000    # 33.0f
        0x40400000    # 3.0f
        0x42180000    # 38.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x41b80000    # 23.0f
        0x42900000    # 72.0f
        0x41b80000    # 23.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x41c00000    # 24.0f
        0x41e00000    # 28.0f
        0x423c0000    # 47.0f
        0x428e0000    # 71.0f
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x0
        0x42140000    # 37.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_12
    .array-data 4
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x41c00000    # 24.0f
        0x0
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x0
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x42440000    # 49.0f
        0x41c00000    # 24.0f
        0x42440000    # 49.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x0
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x423c0000    # 47.0f
        0x0
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x41c00000    # 24.0f
        0x0
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
    .end array-data

    :array_23
    .array-data 4
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
    .end array-data

    :array_25
    .array-data 4
        0x41c00000    # 24.0f
        0x42700000    # 60.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPath(Ljava/lang/String;FI)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FI)",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 341
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 342
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 343
    sget-object v5, Lcom/scwang/smartrefresh/header/storehouse/StoreHousePath;->sPointList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    goto :goto_4

    .line 347
    :cond_0
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 348
    array-length v5, v4

    const/4 v6, 0x4

    div-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    .line 351
    new-array v8, v6, [F

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v6, :cond_2

    mul-int/lit8 v10, v7, 0x4

    add-int/2addr v10, v9

    .line 353
    aget v10, v4, v10

    .line 355
    rem-int/lit8 v11, v9, 0x2

    if-nez v11, :cond_1

    add-float/2addr v10, v1

    mul-float v10, v10, p1

    .line 356
    aput v10, v8, v9

    goto :goto_3

    :cond_1
    mul-float v10, v10, p1

    .line 360
    aput v10, v8, v9

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 363
    :cond_2
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, p2, 0x39

    int-to-float v4, v4

    add-float/2addr v1, v4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
