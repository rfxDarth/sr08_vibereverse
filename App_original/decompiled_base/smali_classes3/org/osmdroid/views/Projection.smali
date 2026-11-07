.class public Lorg/osmdroid/views/Projection;
.super Ljava/lang/Object;
.source "Projection.java"

# interfaces
.implements Lorg/osmdroid/api/IProjection;


# static fields
.field public static final mProjectedMapSize:D = 1.152921504606847E18


# instance fields
.field private horizontalWrapEnabled:Z

.field private final mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

.field private final mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

.field private final mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

.field private final mMapCenterOffsetX:I

.field private final mMapCenterOffsetY:I

.field private final mMercatorMapSize:D

.field private mOffsetX:J

.field private mOffsetY:J

.field private final mOrientation:F

.field private final mRotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mRotateScalePoints:[F

.field private final mScreenRectProjection:Landroid/graphics/Rect;

.field private mScrollX:J

.field private mScrollY:J

.field private final mTileSize:D

.field private final mTileSystem:Lorg/osmdroid/util/TileSystem;

.field private final mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mZoomLevelProjection:D

.field private verticalWrapEnabled:Z


# direct methods
.method public constructor <init>(DIILorg/osmdroid/util/GeoPoint;FZZII)V
    .locals 15

    .line 123
    new-instance v3, Landroid/graphics/Rect;

    const/4 v0, 0x0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-wide/16 v7, 0x0

    .line 129
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v12

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v4, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move/from16 v14, p10

    .line 123
    invoke-direct/range {v0 .. v14}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    return-void
.end method

.method public constructor <init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V
    .locals 10

    move/from16 v0, p9

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x2

    .line 48
    new-array v3, v3, [F

    iput-object v3, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    .line 50
    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v3}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v3, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 52
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 61
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v3, p0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    move/from16 v3, p13

    .line 94
    iput v3, p0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetX:I

    move/from16 v3, p14

    .line 95
    iput v3, p0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetY:I

    .line 96
    iput-wide p1, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    move/from16 v3, p10

    .line 97
    iput-boolean v3, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    move/from16 v3, p11

    .line 98
    iput-boolean v3, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    move-object/from16 v3, p12

    .line 99
    iput-object v3, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    .line 100
    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    .line 101
    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/views/Projection;->mTileSize:D

    .line 102
    iput-object p3, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    if-eqz p4, :cond_0

    move-object v4, p4

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p1, v4, v5, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v4, p1

    :goto_0
    move-wide p1, p5

    .line 104
    iput-wide p1, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    move-wide/from16 p1, p7

    .line 105
    iput-wide p1, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    .line 106
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result p1

    int-to-long p1, p1

    iget-wide v8, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    sub-long v8, p1, v8

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p2

    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    move/from16 p6, p1

    move-object p1, v3

    move-wide p4, v6

    invoke-virtual/range {p1 .. p6}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide p2

    move-wide v5, p4

    sub-long/2addr v8, p2

    iput-wide v8, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    .line 107
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result p1

    int-to-long p1, p1

    iget-wide v7, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    sub-long v7, p1, v7

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide p2

    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    move/from16 p6, p1

    move-object/from16 p1, p12

    invoke-virtual/range {p1 .. p6}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide p1

    sub-long/2addr v7, p1

    iput-wide v7, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    .line 108
    iput v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    .line 109
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v1, v0, p1, p2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 110
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 111
    invoke-direct {p0}, Lorg/osmdroid/views/Projection;->refresh()V

    return-void
.end method

.method constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 15

    .line 73
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v1

    const/4 v0, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getExpectedCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 75
    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v5

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v7

    .line 76
    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v9

    .line 77
    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->isHorizontalMapRepetitionEnabled()Z

    move-result v10

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->isVerticalMapRepetitionEnabled()Z

    move-result v11

    .line 78
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v12

    .line 79
    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapCenterOffsetX()I

    move-result v13

    .line 80
    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapCenterOffsetY()I

    move-result v14

    move-object v3, v0

    move-object v0, p0

    .line 72
    invoke-direct/range {v0 .. v14}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    return-void
.end method

.method private applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;
    .locals 1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    :goto_0
    if-eqz p5, :cond_1

    .line 393
    iget-object p5, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float p1, p1

    const/4 v0, 0x0

    aput p1, p5, v0

    int-to-float p1, p2

    const/4 p2, 0x1

    .line 394
    aput p1, p5, p2

    .line 395
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 396
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget p1, p1, v0

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 397
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget p1, p1, p2

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    return-object p3

    .line 399
    :cond_1
    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 400
    iput p2, p3, Landroid/graphics/Point;->y:I

    return-object p3
.end method

.method private getCloserPixel(JIID)J
    .locals 8

    add-int v0, p3, p4

    .line 482
    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    int-to-long v2, p3

    const-wide/16 v4, 0x0

    cmp-long p3, p1, v2

    if-gez p3, :cond_3

    :goto_0
    cmp-long p3, p1, v2

    if-gez p3, :cond_0

    long-to-double v4, p1

    add-double/2addr v4, p5

    double-to-long v4, v4

    move-wide v6, v4

    move-wide v4, p1

    move-wide p1, v6

    goto :goto_0

    :cond_0
    int-to-long p3, p4

    cmp-long p5, p1, p3

    if-gez p5, :cond_1

    goto :goto_1

    :cond_1
    sub-long p3, v0, p1

    .line 492
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p5

    cmp-long v0, p3, p5

    if-gez v0, :cond_2

    :goto_1
    return-wide p1

    :cond_2
    return-wide v4

    :cond_3
    :goto_2
    cmp-long p3, p1, v2

    if-ltz p3, :cond_4

    long-to-double v4, p1

    sub-double/2addr v4, p5

    double-to-long v4, v4

    move-wide v6, v4

    move-wide v4, p1

    move-wide p1, v6

    goto :goto_2

    :cond_4
    int-to-long p3, p4

    cmp-long p5, v4, p3

    if-gez p5, :cond_5

    goto :goto_3

    :cond_5
    sub-long p3, v0, p1

    .line 505
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p5

    cmp-long v0, p3, p5

    if-gez v0, :cond_6

    return-wide p1

    :cond_6
    :goto_3
    return-wide v4
.end method

.method private getLongPixelFromMercator(JZJII)J
    .locals 0

    add-long/2addr p1, p4

    if-eqz p3, :cond_0

    move p4, p6

    move p5, p7

    .line 531
    iget-wide p6, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    move-wide p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/osmdroid/views/Projection;->getCloserPixel(JIID)J

    move-result-wide p2

    return-wide p2

    :cond_0
    move-wide p2, p1

    return-wide p2
.end method

.method private getLongPixelXFromMercator(JZ)J
    .locals 8

    .line 515
    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/Projection;->getLongPixelFromMercator(JZJII)J

    move-result-wide p1

    return-wide p1
.end method

.method private getLongPixelYFromMercator(JZ)J
    .locals 8

    .line 522
    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/Projection;->getLongPixelFromMercator(JZJII)J

    move-result-wide p1

    return-wide p1
.end method

.method public static getScrollableOffset(JJDII)J
    .locals 5

    :goto_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-double p2, p2

    add-double/2addr p2, p4

    double-to-long p2, p2

    goto :goto_0

    :cond_0
    mul-int/lit8 p4, p7, 0x2

    sub-int p4, p6, p4

    int-to-long p4, p4

    cmp-long v4, v0, p4

    if-gez v4, :cond_3

    const-wide/16 p4, 0x2

    .line 799
    div-long/2addr v0, p4

    .line 800
    div-int/lit8 p6, p6, 0x2

    int-to-long p4, p6

    sub-long p6, p4, v0

    sub-long/2addr p6, p0

    cmp-long p0, p6, v2

    if-lez p0, :cond_1

    return-wide p6

    :cond_1
    add-long/2addr p4, v0

    sub-long/2addr p4, p2

    cmp-long p0, p4, v2

    if-gez p0, :cond_2

    return-wide p4

    :cond_2
    return-wide v2

    :cond_3
    int-to-long p4, p7

    sub-long/2addr p4, p0

    cmp-long p0, p4, v2

    if-gez p0, :cond_4

    return-wide p4

    :cond_4
    sub-int/2addr p6, p7

    int-to-long p0, p6

    sub-long/2addr p0, p2

    cmp-long p2, p0, v2

    if-lez p2, :cond_5

    return-wide p0

    :cond_5
    return-wide v2
.end method

.method private refresh()V
    .locals 12

    .line 666
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v0

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v1

    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    .line 668
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 670
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v2

    iget v3, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 669
    invoke-static {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 676
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 677
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 678
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 681
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 683
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    .line 684
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 685
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v5

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v0, v4

    .line 687
    :cond_1
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gez v8, :cond_2

    .line 688
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v5

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v0, v4

    .line 690
    :cond_2
    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4, v5, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    .line 692
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_3

    .line 693
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v4

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v2, v3

    .line 695
    :cond_3
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_4

    .line 696
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v4

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-direct {v3, v4, v5, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v2, v3

    .line 699
    :cond_4
    iget-object v3, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 700
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    .line 701
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v10

    .line 699
    invoke-virtual/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;->set(DDDD)V

    return-void
.end method


# virtual methods
.method adjustOffsets(DDZI)V
    .locals 14

    move-wide/from16 v0, p3

    const-wide/16 v2, 0x0

    if-eqz p5, :cond_0

    .line 754
    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v4

    .line 755
    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v6

    .line 757
    iget-wide v8, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    move/from16 v11, p6

    invoke-static/range {v4 .. v11}, Lorg/osmdroid/views/Projection;->getScrollableOffset(JJDII)J

    move-result-wide v0

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v4

    .line 760
    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v6

    .line 761
    iget-wide v8, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    move/from16 v11, p6

    invoke-static/range {v4 .. v11}, Lorg/osmdroid/views/Projection;->getScrollableOffset(JJDII)J

    move-result-wide v0

    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    .line 764
    :goto_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/osmdroid/views/Projection;->adjustOffsets(JJ)V

    return-void
.end method

.method adjustOffsets(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-void

    .line 774
    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    .line 775
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    .line 776
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    .line 777
    iget-wide p1, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    .line 778
    invoke-direct {p0}, Lorg/osmdroid/views/Projection;->refresh()V

    return-void
.end method

.method public adjustOffsets(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/PointF;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 716
    :cond_1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p2

    .line 717
    invoke-virtual {p0, p1, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 718
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 719
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    .line 720
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/osmdroid/views/Projection;->adjustOffsets(JJ)V

    return-void
.end method

.method public adjustOffsets(Lorg/osmdroid/util/BoundingBox;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 736
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/osmdroid/views/Projection;->adjustOffsets(DDZI)V

    .line 737
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getActualNorth()D

    move-result-wide v8

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getActualSouth()D

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/osmdroid/views/Projection;->adjustOffsets(DDZI)V

    return-void
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;
    .locals 10

    .line 200
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v1

    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-virtual {p0, v1, v2, p1}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v1

    .line 201
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide p1

    iget-boolean v3, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-virtual {p0, p1, p2, v3}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    const/4 p2, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    if-nez p1, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v9, 0x1

    :goto_3
    move-object v7, p3

    .line 200
    invoke-virtual/range {v0 .. v9}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getCleanMercator(JZ)J
    .locals 6

    .line 623
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getCleanMercator(JDZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCurrentCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 860
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getLongPixelXFromLongitude(D)J
    .locals 6

    .line 230
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongPixelXFromLongitude(DZ)J
    .locals 6

    .line 222
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean v1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    const/4 v5, 0x1

    :goto_1
    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide p1

    iget-boolean p3, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongPixelYFromLatitude(D)J
    .locals 6

    .line 246
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongPixelYFromLatitude(DZ)J
    .locals 6

    .line 238
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean v1, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    const/4 v5, 0x1

    :goto_1
    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide p1

    iget-boolean p3, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 2

    if-eqz p5, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    new-instance p5, Lorg/osmdroid/util/PointL;

    invoke-direct {p5}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 468
    :goto_0
    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v0, v0

    div-double/2addr v0, p2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1, p4}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v0

    iput-wide v0, p5, Lorg/osmdroid/util/PointL;->x:J

    .line 469
    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v0, v0

    div-double/2addr v0, p2

    double-to-long p1, v0

    invoke-direct {p0, p1, p2, p4}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    iput-wide p1, p5, Lorg/osmdroid/util/PointL;->y:J

    return-object p5
.end method

.method public getMercatorFromTile(I)J
    .locals 2

    .line 427
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mTileSize:D

    invoke-static {p1, v0, v1}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;
    .locals 17

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    move-object/from16 v1, p1

    goto :goto_0

    .line 547
    :cond_0
    new-instance v1, Lorg/osmdroid/util/RectL;

    invoke-direct {v1}, Lorg/osmdroid/util/RectL;-><init>()V

    .line 550
    :goto_0
    iget-object v2, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 551
    iget-object v3, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 552
    iget-object v4, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 553
    iget-object v5, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 556
    iget v6, v0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 558
    iget-object v6, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 559
    iget-object v7, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    .line 560
    iget-object v8, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    .line 561
    iget-object v9, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    .line 562
    iget-object v10, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    .line 563
    iget-object v11, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    .line 564
    iget-object v12, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    .line 565
    iget-object v13, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    const/16 v14, 0x8

    new-array v15, v14, [F

    const/16 v16, 0x0

    aput v6, v15, v16

    const/4 v6, 0x1

    aput v7, v15, v6

    const/4 v6, 0x2

    aput v8, v15, v6

    const/4 v6, 0x3

    aput v9, v15, v6

    const/4 v6, 0x4

    aput v10, v15, v6

    const/4 v6, 0x5

    aput v11, v15, v6

    const/4 v6, 0x6

    aput v12, v15, v6

    const/4 v6, 0x7

    aput v13, v15, v6

    .line 566
    iget-object v6, v0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v14, :cond_5

    .line 569
    aget v7, v15, v6

    cmpl-float v8, v2, v7

    if-lez v8, :cond_1

    move v2, v7

    :cond_1
    cmpg-float v8, v3, v7

    if-gez v8, :cond_2

    move v3, v7

    :cond_2
    add-int/lit8 v7, v6, 0x1

    .line 575
    aget v7, v15, v7

    cmpl-float v8, v4, v7

    if-lez v8, :cond_3

    move v4, v7

    :cond_3
    cmpg-float v8, v5, v7

    if-gez v8, :cond_4

    move v5, v7

    :cond_4
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_5
    float-to-int v2, v2

    .line 584
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v6

    iput-wide v6, v1, Lorg/osmdroid/util/RectL;->left:J

    float-to-int v2, v4

    .line 585
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide v6

    iput-wide v6, v1, Lorg/osmdroid/util/RectL;->top:J

    float-to-int v2, v3

    .line 586
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    float-to-int v2, v5

    .line 587
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->bottom:J

    return-object v1
.end method

.method public getMercatorXFromPixel(I)J
    .locals 4

    int-to-long v0, p1

    .line 609
    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMercatorYFromPixel(I)J
    .locals 4

    int-to-long v0, p1

    .line 616
    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNorthEast()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    .line 355
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetX()J
    .locals 2

    .line 634
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    return-wide v0
.end method

.method public getOffsetY()J
    .locals 2

    .line 638
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    return-wide v0
.end method

.method public getOffspring(DLandroid/graphics/Rect;)Lorg/osmdroid/views/Projection;
    .locals 16

    move-object/from16 v0, p0

    .line 137
    new-instance v1, Lorg/osmdroid/views/Projection;

    iget-object v5, v0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    iget v10, v0, Lorg/osmdroid/views/Projection;->mOrientation:F

    iget-boolean v11, v0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    iget-boolean v12, v0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    iget-object v13, v0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v15}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    return-object v1
.end method

.method public getOrientation()F
    .locals 1

    .line 846
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    return v0
.end method

.method public getPixelFromTile(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 416
    :goto_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 417
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, 0x1

    .line 418
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    add-int/lit8 p2, p2, 0x1

    .line 419
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, v2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    return-object p3
.end method

.method public getPixelsFromProjected(Lorg/osmdroid/util/PointL;DLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    .line 452
    :goto_0
    new-instance v5, Lorg/osmdroid/util/PointL;

    invoke-direct {v5}, Lorg/osmdroid/util/PointL;-><init>()V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 453
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 454
    iget-wide p1, v5, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p4, Landroid/graphics/Point;->x:I

    .line 455
    iget-wide p1, v5, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p4, Landroid/graphics/Point;->y:I

    return-object p4
.end method

.method public getProjectedPowerDifference()D
    .locals 4

    const-wide/high16 v0, 0x43b0000000000000L    # 1.152921504606847E18

    .line 442
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScreenCenterX()I
    .locals 2

    .line 595
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getScreenCenterY()I
    .locals 2

    .line 602
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSouthWest()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    .line 360
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getTileFromMercator(J)I
    .locals 2

    .line 540
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mTileSize:D

    invoke-static {p1, p2, v0, v1}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result p1

    return p1
.end method

.method public getWidth()I
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getWorldMapSize()D
    .locals 2

    .line 867
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    return-wide v0
.end method

.method public getZoomLevel()D
    .locals 2

    .line 147
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    return-wide v0
.end method

.method public isHorizontalWrapEnabled()Z
    .locals 1

    .line 832
    iget-boolean v0, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    return v0
.end method

.method public isVerticalWrapEnabled()Z
    .locals 1

    .line 839
    iget-boolean v0, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    return v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 6

    const-wide/16 v2, 0x0

    .line 331
    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result p1

    return p1
.end method

.method public metersToPixels(F)F
    .locals 7

    .line 343
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getCenterWithDateLine()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result p1

    return p1
.end method

.method public metersToPixels(FDD)F
    .locals 2

    float-to-double v0, p1

    .line 350
    invoke-static {p2, p3, p4, p5}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide p1

    div-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method public restore(Landroid/graphics/Canvas;Z)V
    .locals 2

    .line 655
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 656
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    .line 384
    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public save(Landroid/graphics/Canvas;ZZ)V
    .locals 2

    .line 645
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 646
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_2

    .line 647
    iget-object p2, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method setMapScroll(Lorg/osmdroid/views/MapView;)Z
    .locals 5

    .line 821
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 824
    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/osmdroid/views/MapView;->setMapScroll(JJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance p3, Lorg/osmdroid/util/PointL;

    invoke-direct {p3}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 324
    :goto_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v0

    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-virtual {p0, v0, v1, p1}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v0

    iput-wide v0, p3, Lorg/osmdroid/util/PointL;->x:J

    .line 325
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide p1

    iget-boolean v0, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide p1

    iput-wide p1, p3, Lorg/osmdroid/util/PointL;->y:J

    return-object p3
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 212
    :goto_0
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(DZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 213
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(DZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public toPixelsFromMercator(JJLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p5, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5}, Landroid/graphics/Point;-><init>()V

    :goto_0
    const/4 v0, 0x1

    .line 317
    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p5, Landroid/graphics/Point;->x:I

    .line 318
    invoke-direct {p0, p3, p4, v0}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p5, Landroid/graphics/Point;->y:I

    return-object p5
.end method

.method public toPixelsFromProjected(Lorg/osmdroid/util/PointL;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 303
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v2

    .line 304
    new-instance v5, Lorg/osmdroid/util/PointL;

    invoke-direct {v5}, Lorg/osmdroid/util/PointL;-><init>()V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 305
    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 306
    iget-wide v0, v5, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 307
    iget-wide v0, v5, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    .line 281
    invoke-virtual/range {v0 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(DDZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 9

    .line 288
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    const-wide/high16 v5, 0x43b0000000000000L    # 1.152921504606847E18

    move-wide v1, p1

    move-wide v3, p3

    move v8, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(JJLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    long-to-double p1, p1

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v3, p1, v0

    long-to-double p1, p3

    mul-double v5, p1, v0

    move-object v2, p0

    move-object v7, p5

    .line 268
    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 6

    .line 253
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object p1

    return-object p1
.end method

.method public unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    .line 376
    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method
