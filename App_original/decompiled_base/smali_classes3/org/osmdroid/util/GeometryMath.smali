.class public Lorg/osmdroid/util/GeometryMath;
.super Ljava/lang/Object;
.source "GeometryMath.java"


# static fields
.field public static final DEG2RAD:D = 0.017453292519943295
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAD2DEG:D = 57.29577951308232
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Max4(DDDD)D
    .locals 0

    .line 64
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static Min4(DDDD)D
    .locals 0

    .line 60
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez p4, :cond_0

    .line 30
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    :goto_0
    move/from16 v4, p3

    float-to-double v4, v4

    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v4, v4, v6

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 35
    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v1

    int-to-double v8, v8

    .line 36
    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v2

    int-to-double v10, v10

    int-to-double v12, v1

    mul-double v14, v8, v4

    sub-double v14, v12, v14

    mul-double v16, v10, v6

    add-double v18, v14, v16

    int-to-double v14, v2

    mul-double v8, v8, v6

    sub-double v8, v14, v8

    mul-double v10, v10, v4

    sub-double/2addr v8, v10

    .line 39
    iget v10, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v1

    int-to-double v10, v10

    .line 40
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    mul-double v16, v10, v4

    sub-double v16, v12, v16

    mul-double v20, v1, v6

    add-double v20, v16, v20

    mul-double v10, v10, v6

    sub-double v10, v14, v10

    mul-double v1, v1, v4

    sub-double/2addr v10, v1

    .line 43
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v1, p1

    int-to-double v1, v1

    move-wide/from16 v16, v1

    .line 44
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v1, p2

    int-to-double v1, v1

    mul-double v22, v16, v4

    sub-double v22, v12, v22

    mul-double v24, v1, v6

    add-double v22, v22, v24

    mul-double v16, v16, v6

    sub-double v16, v14, v16

    mul-double v1, v1, v4

    sub-double v16, v16, v1

    .line 47
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v1, p1

    int-to-double v1, v1

    .line 48
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v0, p2

    move-wide/from16 v24, v1

    int-to-double v0, v0

    mul-double v26, v24, v4

    sub-double v12, v12, v26

    mul-double v26, v0, v6

    add-double v12, v12, v26

    mul-double v6, v6, v24

    sub-double/2addr v14, v6

    mul-double v0, v0, v4

    sub-double v26, v14, v0

    move-wide/from16 v24, v12

    .line 51
    invoke-static/range {v18 .. v25}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v0

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v16

    .line 52
    invoke-static/range {v20 .. v27}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->top:I

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v12

    .line 53
    invoke-static/range {v18 .. v25}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->right:I

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v16

    .line 54
    invoke-static/range {v20 .. v27}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    return-object v3
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 24
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0, p1, p2, p3}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
