.class public abstract Lorg/osmdroid/views/overlay/PolyOverlayWithIW;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "PolyOverlayWithIW.java"


# instance fields
.field private final mClosePath:Z

.field protected mDensity:F

.field private mDensityMultiplier:F

.field private final mDowngradeBottomRight:Landroid/graphics/Point;

.field private final mDowngradeCenter:Lorg/osmdroid/util/PointL;

.field private mDowngradeDisplay:Z

.field private mDowngradeMaximumPixelSize:I

.field private mDowngradeMaximumRectanglePixelSize:I

.field private final mDowngradeOffset:Lorg/osmdroid/util/PointL;

.field private mDowngradeSegments:[F

.field private final mDowngradeTopLeft:Landroid/graphics/Point;

.field protected mFillPaint:Landroid/graphics/Paint;

.field protected mHoles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/LinearRing;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

.field private mIsPaintOrPaintList:Z

.field private mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

.field private mMilestoneManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mOutline:Lorg/osmdroid/views/overlay/LinearRing;

.field protected mOutlinePaint:Landroid/graphics/Paint;

.field private final mOutlinePaintLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/PaintList;",
            ">;"
        }
    .end annotation
.end field

.field protected mPath:Landroid/graphics/Path;

.field private final mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

.field private final mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

.field private final mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

.field private final mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/views/MapView;ZZ)V
    .locals 2

    .line 73
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaintLists:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    iput v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    .line 48
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    .line 49
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    .line 50
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    .line 51
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    .line 59
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    .line 61
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    .line 62
    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    .line 69
    iput v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    .line 74
    iput-boolean p3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getRepository()Lorg/osmdroid/views/MapViewRepository;

    move-result-object p3

    invoke-virtual {p3}, Lorg/osmdroid/views/MapViewRepository;->getDefaultPolylineInfoWindow()Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 77
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    .line 79
    :cond_0
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->usePath(Z)V

    return-void
.end method

.method private displayDowngrade(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 462
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/LinearRing;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v2

    .line 463
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 464
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 465
    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v8

    .line 466
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-long v2, v2

    .line 467
    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-long v10, v4

    long-to-double v4, v2

    .line 468
    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    invoke-static/range {v4 .. v9}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v4, v10

    .line 469
    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    invoke-static/range {v4 .. v9}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v2, v12

    if-nez v8, :cond_0

    move-wide v8, v6

    goto :goto_0

    :cond_0
    if-lez v8, :cond_1

    sub-long/2addr v2, v12

    move-wide v8, v2

    move-wide v2, v12

    goto :goto_0

    :cond_1
    sub-long v8, v12, v2

    :goto_0
    cmp-long v12, v10, v4

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    if-lez v12, :cond_3

    sub-long v6, v10, v4

    move-wide v10, v4

    goto :goto_1

    :cond_3
    sub-long v6, v4, v10

    .line 488
    :goto_1
    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    const-wide/16 v12, 0x2

    div-long v14, v8, v12

    add-long/2addr v14, v2

    div-long v12, v6, v12

    add-long/2addr v12, v10

    invoke-virtual {v4, v14, v15, v12, v13}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 489
    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iget-object v12, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    invoke-virtual {v4, v1, v5, v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)V

    .line 490
    iget-object v1, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iget-wide v4, v1, Lorg/osmdroid/util/PointL;->x:J

    add-long/2addr v2, v4

    .line 491
    iget-object v1, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iget-wide v4, v1, Lorg/osmdroid/util/PointL;->y:J

    add-long/2addr v10, v4

    .line 494
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 495
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_2

    .line 496
    :cond_4
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 497
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/osmdroid/views/overlay/PaintList;

    .line 498
    invoke-interface {v12}, Lorg/osmdroid/views/overlay/PaintList;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    if-nez v1, :cond_6

    long-to-float v14, v2

    long-to-float v15, v10

    add-long v4, v2, v8

    long-to-float v1, v4

    add-long v4, v10, v6

    long-to-float v4, v4

    const/4 v13, 0x0

    move/from16 v16, v1

    move/from16 v17, v4

    .line 500
    invoke-interface/range {v12 .. v17}, Lorg/osmdroid/views/overlay/PaintList;->getPaint(IFFFF)Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 503
    :cond_6
    :goto_2
    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_6

    :cond_7
    cmp-long v4, v8, v6

    if-lez v4, :cond_8

    move-wide v4, v8

    goto :goto_3

    :cond_8
    move-wide v4, v6

    .line 508
    :goto_3
    iget v12, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumRectanglePixelSize:I

    int-to-long v12, v12

    cmp-long v14, v4, v12

    if-gtz v14, :cond_9

    long-to-float v13, v2

    long-to-float v14, v10

    add-long/2addr v2, v8

    long-to-float v15, v2

    add-long/2addr v10, v6

    long-to-float v2, v10

    move-object/from16 v12, p1

    move-object/from16 v17, v1

    move/from16 v16, v2

    .line 509
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 513
    :cond_9
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/LinearRing;->computeDowngradePointList(I)[F

    move-result-object v2

    if-eqz v2, :cond_10

    .line 514
    array-length v3, v2

    if-nez v3, :cond_a

    goto :goto_6

    .line 517
    :cond_a
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    .line 518
    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    if-eqz v6, :cond_b

    array-length v6, v6

    if-ge v6, v3, :cond_c

    .line 519
    :cond_b
    new-array v3, v3, [F

    iput-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    :cond_c
    long-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    .line 521
    iget v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 525
    :goto_4
    array-length v8, v2

    if-ge v6, v8, :cond_e

    .line 526
    iget-object v8, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    iget-wide v8, v8, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v8, v8

    add-int/lit8 v9, v6, 0x1

    aget v10, v2, v6

    mul-float v10, v10, v3

    add-float/2addr v8, v10

    .line 527
    iget-object v10, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    iget-wide v10, v10, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v10, v10

    add-int/lit8 v6, v6, 0x2

    aget v9, v2, v9

    mul-float v9, v9, v3

    add-float/2addr v10, v9

    if-nez v7, :cond_d

    move v4, v8

    move v5, v10

    goto :goto_5

    .line 532
    :cond_d
    iget-object v9, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v11, v7, 0x1

    aput v8, v9, v7

    add-int/lit8 v7, v7, 0x2

    .line 533
    aput v10, v9, v11

    .line 535
    :goto_5
    iget-object v9, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v11, v7, 0x1

    aput v8, v9, v7

    add-int/lit8 v7, v7, 0x2

    .line 536
    aput v10, v9, v11

    goto :goto_4

    .line 539
    :cond_e
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v3, v7, 0x1

    aput v4, v2, v7

    add-int/lit8 v7, v7, 0x2

    .line 540
    aput v5, v2, v3

    const/4 v3, 0x4

    if-gt v7, v3, :cond_f

    goto :goto_6

    :cond_f
    move-object/from16 v12, p1

    const/4 v3, 0x0

    .line 544
    invoke-virtual {v12, v2, v3, v7, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_10
    :goto_6
    return-void
.end method

.method private drawWithLines(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7

    .line 320
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LineDrawer;->setCanvas(Landroid/graphics/Canvas;)V

    .line 321
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    .line 322
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 323
    :goto_0
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v2, v1}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Landroid/graphics/Paint;)V

    .line 326
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v1, p2, v0}, Lorg/osmdroid/views/overlay/LinearRing;->buildLinePortion(Lorg/osmdroid/views/Projection;Z)V

    goto :goto_2

    .line 328
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/PaintList;

    .line 329
    iget-object v4, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v4, v3}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Lorg/osmdroid/views/overlay/PaintList;)V

    .line 330
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v3, p2, v0}, Lorg/osmdroid/views/overlay/LinearRing;->buildLinePortion(Lorg/osmdroid/views/Projection;Z)V

    const/4 v0, 0x0

    goto :goto_1

    .line 334
    :cond_2
    :goto_2
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    .line 335
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->init()V

    .line 336
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/LinearRing;->getDistances()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->setDistances([D)V

    .line 337
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/LinearRing;->getPointsForMilestones()Lorg/osmdroid/util/ListPointL;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/PointL;

    .line 338
    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v5, v2, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->add(JJ)V

    goto :goto_4

    .line 340
    :cond_3
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->end()V

    goto :goto_3

    .line 343
    :cond_4
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    .line 344
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 346
    :cond_5
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isInfoWindowOpen()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_6

    .line 347
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->draw()V

    :cond_6
    return-void
.end method

.method private drawWithPath(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 11

    .line 282
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 284
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    .line 285
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4, v1}, Lorg/osmdroid/views/overlay/LinearRing;->buildPathPortion(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    .line 287
    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->init()V

    .line 288
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/LinearRing;->getDistances()[D

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->setDistances([D)V

    .line 289
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/LinearRing;->getPointsForMilestones()Lorg/osmdroid/util/ListPointL;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/osmdroid/util/PointL;

    .line 290
    iget-wide v7, v6, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v9, v6, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->add(JJ)V

    goto :goto_2

    .line 292
    :cond_1
    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->end()V

    goto :goto_1

    .line 295
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 296
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/views/overlay/LinearRing;

    .line 297
    invoke-virtual {v4, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    .line 298
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4, p2, v0, v5}, Lorg/osmdroid/views/overlay/LinearRing;->buildPathPortion(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    goto :goto_3

    .line 300
    :cond_4
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 303
    :cond_5
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 304
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 306
    :cond_6
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 307
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 310
    :cond_7
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    .line 311
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 314
    :cond_8
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isInfoWindowOpen()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_9

    .line 315
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->draw()V

    :cond_9
    return-void
.end method

.method private isVisible(Landroid/graphics/Paint;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isVisible(Lorg/osmdroid/views/Projection;)Z
    .locals 19

    move-object/from16 v0, p0

    .line 255
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getBounds()Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v5

    iget-object v7, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 258
    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v9

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v11

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 260
    iget-object v9, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    .line 261
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v10

    const/4 v12, 0x1

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    .line 260
    invoke-virtual/range {v8 .. v13}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 262
    iget-object v9, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    .line 263
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v10

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    .line 262
    invoke-virtual/range {v8 .. v13}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 266
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 267
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 268
    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v5, v3

    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v7, v3

    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v9, v3

    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v11, v3

    invoke-static/range {v5 .. v12}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 271
    iget-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v5, v5, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v7, v5

    iget-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v5, v5, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v9, v5

    int-to-double v11, v1

    int-to-double v13, v2

    invoke-static/range {v7 .. v14}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v1

    move-wide v15, v11

    move-wide/from16 v17, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    .line 274
    invoke-static/range {v11 .. v18}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isWorthDisplaying(Lorg/osmdroid/views/Projection;)Z
    .locals 8

    .line 430
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getBounds()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    .line 431
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 432
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 433
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v6

    .line 434
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double v2, p1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double v4, p1

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 435
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v2, p1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v4, p1

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 436
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    const/4 v5, 0x0

    if-ge p1, v4, :cond_0

    return v5

    .line 439
    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-long v6, p1

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-long v6, p1

    cmp-long p1, v0, v6

    if-gez p1, :cond_1

    return v5

    .line 442
    :cond_1
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    if-ge p1, v0, :cond_2

    return v5

    .line 445
    :cond_2
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-long v0, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    return v5

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method

.method protected abstract click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
.end method

.method public contains(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 568
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 571
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 572
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 573
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 575
    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Region;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 1

    .line 226
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    if-lez v0, :cond_2

    .line 231
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isWorthDisplaying(Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeDisplay:Z

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->displayDowngrade(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    .line 240
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->drawWithPath(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    return-void

    .line 242
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->drawWithLines(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    return-void
.end method

.method public getActualPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;
    .locals 6

    .line 599
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/overlay/LinearRing;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public getDistance()D
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getInfoWindowLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    .line 120
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlinePaintLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/PaintList;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    .line 129
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaintLists:Ljava/util/List;

    return-object v0
.end method

.method public isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z
    .locals 0

    .line 588
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isGeodesic()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    .line 353
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/LinearRing;->clear()V

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    .line 357
    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 358
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 359
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->onDestroy()V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    .line 611
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 614
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1

    .line 615
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->contains(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    :cond_1
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    iget v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    mul-float p1, p1, v1

    iget v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    mul-float p1, p1, v1

    float-to-double v1, p1

    .line 623
    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 626
    invoke-virtual {p0, p2, v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected setDefaultInfoWindowLocation()V
    .locals 3

    .line 213
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/LinearRing;->getCenter(Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setDensityMultiplier(F)V
    .locals 0

    .line 557
    iput p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    return-void
.end method

.method public setDowngradeDisplay(Z)V
    .locals 0

    .line 408
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeDisplay:Z

    return-void
.end method

.method public setDowngradePixelSizes(II)V
    .locals 0

    .line 422
    iput p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumRectanglePixelSize:I

    .line 423
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->setGeodesic(Z)V

    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->setRelatedObject(Ljava/lang/Object;)V

    .line 162
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    return-void
.end method

.method public setInfoWindowLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setMilestoneManagers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneManager;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 192
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 193
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void

    .line 196
    :cond_1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->setPoints(Ljava/util/List;)V

    .line 380
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setDefaultInfoWindowLocation()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setEnabled(Z)V

    return-void
.end method

.method public showInfoWindow()V
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    :cond_0
    return-void
.end method

.method public usePath(Z)V
    .locals 3

    .line 91
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .line 93
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    .line 94
    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    .line 95
    new-instance p1, Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    invoke-direct {p1, v1, v2}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    goto :goto_1

    .line 97
    :cond_1
    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    .line 98
    new-instance p1, Lorg/osmdroid/views/overlay/LineDrawer;

    const/16 v1, 0x100

    invoke-direct {p1, v1}, Lorg/osmdroid/views/overlay/LineDrawer;-><init>(I)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    .line 99
    new-instance p1, Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    invoke-direct {p1, v1, v2}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Lorg/osmdroid/util/LineBuilder;Z)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    .line 100
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Landroid/graphics/Paint;)V

    :goto_1
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setPoints(Ljava/util/List;)V

    :cond_2
    return-void
.end method
