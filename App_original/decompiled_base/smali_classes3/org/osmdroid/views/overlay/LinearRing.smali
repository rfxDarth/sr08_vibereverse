.class public Lorg/osmdroid/views/overlay/LinearRing;
.super Ljava/lang/Object;
.source "LinearRing.java"


# instance fields
.field private isHorizontalRepeating:Z

.field private isVerticalRepeating:Z

.field private final mBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private final mClosed:Z

.field private mDistances:[D

.field private mDistancesPrecomputed:Z

.field private mDowngradePixelSize:I

.field private mDowngradePointList:[F

.field private mGeodesic:Z

.field private final mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

.field private final mOriginalPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mPath:Landroid/graphics/Path;

.field private final mPointAccepter:Lorg/osmdroid/util/PointAccepter;

.field private final mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

.field private final mProjectedCenter:Lorg/osmdroid/util/PointL;

.field private mProjectedHeight:J

.field private mProjectedPoints:[J

.field private mProjectedPrecomputed:Z

.field private mProjectedWidth:J

.field private final mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Landroid/graphics/Path;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Z)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    .line 57
    new-instance v0, Lorg/osmdroid/util/SegmentClipper;

    invoke-direct {v0}, Lorg/osmdroid/util/SegmentClipper;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    .line 59
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    .line 63
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    .line 64
    new-instance v0, Lorg/osmdroid/util/ListPointL;

    invoke-direct {v0}, Lorg/osmdroid/util/ListPointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    .line 119
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    .line 120
    new-instance v0, Lorg/osmdroid/util/SideOptimizationPointAccepter;

    new-instance v1, Lorg/osmdroid/util/PathBuilder;

    invoke-direct {v1, p1}, Lorg/osmdroid/util/PathBuilder;-><init>(Landroid/graphics/Path;)V

    invoke-direct {v0, v1}, Lorg/osmdroid/util/SideOptimizationPointAccepter;-><init>(Lorg/osmdroid/util/PointAccepter;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 122
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/LineBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Lorg/osmdroid/util/LineBuilder;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/LineBuilder;Z)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    .line 57
    new-instance v0, Lorg/osmdroid/util/SegmentClipper;

    invoke-direct {v0}, Lorg/osmdroid/util/SegmentClipper;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    .line 59
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v0}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    .line 63
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    .line 64
    new-instance v0, Lorg/osmdroid/util/ListPointL;

    invoke-direct {v0}, Lorg/osmdroid/util/ListPointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    .line 96
    iput-object p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    .line 97
    instance-of v1, p1, Lorg/osmdroid/views/overlay/LineDrawer;

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lorg/osmdroid/util/IntegerAccepter;

    invoke-virtual {p1}, Lorg/osmdroid/util/LineBuilder;->getLines()[F

    move-result-object v1

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/osmdroid/util/IntegerAccepter;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 99
    check-cast p1, Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/LineDrawer;->setIntegerAccepter(Lorg/osmdroid/util/IntegerAccepter;)V

    goto :goto_0

    .line 101
    :cond_0
    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    .line 103
    :goto_0
    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    return-void
.end method

.method private clipAndStore(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;ZZLorg/osmdroid/util/SegmentClipper;)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 375
    iget-object v2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    invoke-virtual {v2}, Lorg/osmdroid/util/ListPointL;->clear()V

    .line 376
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v5

    .line 377
    new-instance v4, Lorg/osmdroid/util/PointL;

    invoke-direct {v4}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 378
    new-instance v8, Lorg/osmdroid/util/PointL;

    invoke-direct {v8}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 379
    new-instance v2, Lorg/osmdroid/util/PointL;

    invoke-direct {v2}, Lorg/osmdroid/util/PointL;-><init>()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 380
    :goto_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    array-length v7, v3

    if-ge v9, v7, :cond_3

    .line 381
    aget-wide v10, v3, v9

    add-int/lit8 v7, v9, 0x1

    aget-wide v12, v3, v7

    invoke-virtual {v4, v10, v11, v12, v13}, Lorg/osmdroid/util/PointL;->set(JJ)V

    const/4 v7, 0x0

    move-object v3, p1

    .line 382
    invoke-virtual/range {v3 .. v8}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    .line 383
    iget-wide v10, v8, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v12, v0, Lorg/osmdroid/util/PointL;->x:J

    add-long/2addr v10, v12

    .line 384
    iget-wide v12, v8, Lorg/osmdroid/util/PointL;->y:J

    move-object v7, v4

    iget-wide v3, v0, Lorg/osmdroid/util/PointL;->y:J

    add-long/2addr v12, v3

    if-eqz p4, :cond_0

    .line 386
    iget-object v3, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    invoke-virtual {v3, v10, v11, v12, v13}, Lorg/osmdroid/util/ListPointL;->add(JJ)V

    :cond_0
    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v1, v10, v11, v12, v13}, Lorg/osmdroid/util/SegmentClipper;->add(JJ)V

    :cond_1
    if-nez v9, :cond_2

    .line 392
    invoke-virtual {v2, v10, v11, v12, v13}, Lorg/osmdroid/util/PointL;->set(JJ)V

    :cond_2
    add-int/lit8 v9, v9, 0x2

    move-object v4, v7

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    if-eqz v1, :cond_4

    .line 397
    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v5, v2, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/osmdroid/util/SegmentClipper;->add(JJ)V

    :cond_4
    if-eqz p4, :cond_5

    .line 400
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v1, v2, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/osmdroid/util/ListPointL;->add(JJ)V

    :cond_5
    return-void
.end method

.method private computeDistances()V
    .locals 10

    .line 619
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistancesPrecomputed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistancesPrecomputed:Z

    .line 623
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    if-eqz v0, :cond_1

    array-length v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 624
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    .line 627
    :cond_2
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 628
    iget-object v3, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    if-nez v4, :cond_3

    .line 630
    iget-object v6, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    aput-wide v1, v6, v4

    goto :goto_1

    .line 632
    :cond_3
    iget-object v6, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    invoke-virtual {v5, v0}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v7

    aput-wide v7, v6, v4

    .line 634
    :goto_1
    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private computeProjected()V
    .locals 30

    move-object/from16 v0, p0

    .line 555
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPrecomputed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 558
    iput-boolean v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPrecomputed:Z

    .line 559
    iget-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    if-eqz v2, :cond_1

    array-length v2, v2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_2

    .line 560
    :cond_1
    iget-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    iput-object v2, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    .line 571
    :cond_2
    new-instance v2, Lorg/osmdroid/util/PointL;

    invoke-direct {v2}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 572
    new-instance v10, Lorg/osmdroid/util/PointL;

    invoke-direct {v10}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 573
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v3

    .line 575
    iget-object v4, v0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v14, v4

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-wide/from16 v22, v6

    move-wide/from16 v24, v22

    move-wide/from16 v26, v24

    move-wide/from16 v28, v26

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    move-object v6, v4

    .line 576
    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    .line 577
    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    const-wide/high16 v8, 0x43b0000000000000L    # 1.152921504606847E18

    const/4 v11, 0x0

    .line 578
    invoke-virtual/range {v3 .. v11}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    if-nez v13, :cond_3

    .line 580
    iget-wide v8, v10, Lorg/osmdroid/util/PointL;->x:J

    .line 581
    iget-wide v14, v10, Lorg/osmdroid/util/PointL;->y:J

    move-wide/from16 v18, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v16

    move-wide/from16 v22, v8

    move-wide/from16 v24, v22

    move-wide/from16 v26, v14

    move-wide/from16 v28, v26

    move-wide/from16 v14, v18

    goto :goto_1

    :cond_3
    const-wide/high16 v8, 0x43b0000000000000L    # 1.152921504606847E18

    .line 585
    invoke-direct {v0, v2, v10, v8, v9}, Lorg/osmdroid/views/overlay/LinearRing;->setCloserPoint(Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;D)V

    .line 586
    iget-wide v8, v10, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v11, v24, v8

    if-lez v11, :cond_4

    .line 587
    iget-wide v8, v10, Lorg/osmdroid/util/PointL;->x:J

    move-wide/from16 v20, v6

    move-wide/from16 v24, v8

    .line 590
    :cond_4
    iget-wide v8, v10, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v11, v22, v8

    if-gez v11, :cond_5

    .line 591
    iget-wide v8, v10, Lorg/osmdroid/util/PointL;->x:J

    move-wide/from16 v16, v6

    move-wide/from16 v22, v8

    .line 594
    :cond_5
    iget-wide v6, v10, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v8, v28, v6

    if-lez v8, :cond_6

    .line 595
    iget-wide v6, v10, Lorg/osmdroid/util/PointL;->y:J

    move-wide v14, v4

    move-wide/from16 v28, v6

    .line 598
    :cond_6
    iget-wide v6, v10, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v8, v26, v6

    if-gez v8, :cond_7

    .line 599
    iget-wide v6, v10, Lorg/osmdroid/util/PointL;->y:J

    move-wide/from16 v18, v4

    move-wide/from16 v26, v6

    .line 603
    :cond_7
    :goto_1
    iget-object v4, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    mul-int/lit8 v5, v13, 0x2

    iget-wide v6, v10, Lorg/osmdroid/util/PointL;->x:J

    aput-wide v6, v4, v5

    .line 604
    iget-object v4, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    add-int/2addr v5, v1

    iget-wide v6, v10, Lorg/osmdroid/util/PointL;->y:J

    aput-wide v6, v4, v5

    .line 605
    iget-wide v4, v10, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v6, v10, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/osmdroid/util/PointL;->set(JJ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_8
    sub-long v1, v22, v24

    .line 608
    iput-wide v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedWidth:J

    sub-long v1, v26, v28

    .line 609
    iput-wide v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedHeight:J

    .line 610
    iget-object v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    add-long v24, v24, v22

    const-wide/16 v2, 0x2

    div-long v4, v24, v2

    add-long v28, v28, v26

    div-long v2, v28, v2

    invoke-virtual {v1, v4, v5, v2, v3}, Lorg/osmdroid/util/PointL;->set(JJ)V

    .line 611
    iget-object v13, v0, Lorg/osmdroid/views/overlay/LinearRing;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual/range {v13 .. v21}, Lorg/osmdroid/util/BoundingBox;->set(DDDD)V

    return-void
.end method

.method private getBestOffset(DDDDJJ)I
    .locals 15

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    mul-long v5, v3, p9

    long-to-double v5, v5

    add-double v7, p1, v5

    mul-long v3, v3, p11

    long-to-double v3, v3

    add-double v9, p3, v3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    .line 356
    invoke-static/range {v7 .. v14}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v3

    if-eqz v2, :cond_1

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-wide v0, v3

    goto :goto_0
.end method

.method private getBestOffset(DDDDDLorg/osmdroid/util/PointL;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v13, p11

    .line 320
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 323
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    const/4 v14, 0x0

    if-nez v1, :cond_0

    move-wide/from16 v16, v9

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    move-wide v11, v9

    const-wide/16 v9, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 327
    invoke-direct/range {v0 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDJJ)I

    move-result v15

    move-wide v0, v11

    neg-long v11, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 329
    invoke-direct/range {v0 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDJJ)I

    move-result v9

    :goto_0
    if-le v15, v9, :cond_1

    goto :goto_1

    :cond_1
    neg-int v15, v9

    :goto_1
    int-to-long v1, v15

    mul-long v9, v16, v1

    .line 333
    iput-wide v9, v13, Lorg/osmdroid/util/PointL;->y:J

    .line 334
    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const-wide/16 v11, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, v16

    .line 338
    invoke-direct/range {v0 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDJJ)I

    move-result v14

    move-wide v0, v9

    neg-long v9, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 340
    invoke-direct/range {v0 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDJJ)I

    move-result v1

    :goto_2
    if-le v14, v1, :cond_3

    goto :goto_3

    :cond_3
    neg-int v14, v1

    :goto_3
    int-to-long v0, v14

    mul-long v9, v16, v0

    .line 344
    iput-wide v9, v13, Lorg/osmdroid/util/PointL;->x:J

    return-void
.end method

.method private getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;)V
    .locals 6

    .line 297
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v2

    .line 298
    iget-object v1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object p1

    .line 300
    invoke-virtual {p0, v0, p2, p1}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)V

    return-void
.end method

.method public static getCloserValue(DDD)D
    .locals 7

    :goto_0
    sub-double v0, p2, p4

    sub-double v2, v0, p0

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double v4, p2, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    move-wide p2, v0

    goto :goto_0

    :cond_0
    :goto_1
    add-double v0, p2, p4

    sub-double v2, v0, p0

    .line 412
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double v4, p2, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-wide p2
.end method

.method private resetPrecomputations()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPrecomputed:Z

    .line 185
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistancesPrecomputed:Z

    .line 186
    iput v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePixelSize:I

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePointList:[F

    return-void
.end method

.method private setCloserPoint(Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;D)V
    .locals 8

    .line 424
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    if-eqz v0, :cond_0

    .line 425
    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v2, v0

    iget-wide v0, p2, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v4, v0

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide p3

    move-wide v4, v6

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    iput-wide p3, p2, Lorg/osmdroid/util/PointL;->x:J

    goto :goto_0

    :cond_0
    move-wide v4, p3

    .line 427
    :goto_0
    iget-boolean p3, p0, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    if-eqz p3, :cond_1

    .line 428
    iget-wide p3, p1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v0, p3

    iget-wide p3, p2, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v2, p3

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    iput-wide p3, p2, Lorg/osmdroid/util/PointL;->y:J

    :cond_1
    return-void
.end method


# virtual methods
.method protected addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V
    .locals 25

    move/from16 v0, p3

    .line 138
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    const-wide v3, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v1, v1, v3

    .line 139
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    mul-double v5, v5, v3

    .line 140
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    mul-double v7, v7, v3

    .line 141
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    mul-double v9, v9, v3

    sub-double v3, v1, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v11

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    sub-double v15, v5, v9

    div-double/2addr v15, v11

    move-wide/from16 v17, v1

    .line 144
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v13, v13, v1

    add-double/2addr v3, v13

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    mul-double v1, v1, v11

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v0, :cond_0

    int-to-double v13, v3

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double v13, v13, v15

    add-int/lit8 v4, v0, 0x1

    int-to-double v11, v4

    div-double/2addr v13, v11

    sub-double/2addr v15, v13

    mul-double v15, v15, v1

    .line 154
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    div-double/2addr v11, v15

    mul-double v13, v13, v1

    .line 155
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    .line 156
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v15, v15, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    move-wide/from16 v21, v1

    add-double v0, v15, v19

    .line 157
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v15, v15, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v19, v19, v23

    move v4, v3

    add-double v2, v15, v19

    .line 158
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v11, v11, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    add-double/2addr v11, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 160
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    add-double v15, v15, v19

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    .line 161
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 162
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    const-wide v13, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v11, v11, v13

    mul-double v0, v0, v13

    invoke-direct {v2, v11, v12, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, p0

    .line 163
    iget-object v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v4, 0x1

    move/from16 v0, p3

    move-wide/from16 v1, v21

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    return-void
.end method

.method public addPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 3

    .line 168
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 171
    invoke-virtual {v0, p1}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v1

    double-to-int v1, v1

    const v2, 0x186a0

    .line 173
    div-int/2addr v1, v2

    .line 174
    invoke-virtual {p0, v0, p1, v1}, Lorg/osmdroid/views/overlay/LinearRing;->addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->resetPrecomputations()V

    return-void
.end method

.method buildLinePortion(Lorg/osmdroid/views/Projection;Z)V
    .locals 8

    .line 270
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 275
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeDistances()V

    .line 276
    new-instance v4, Lorg/osmdroid/util/PointL;

    invoke-direct {v4}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 277
    invoke-direct {p0, p1, v4}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;)V

    .line 278
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    invoke-virtual {v0}, Lorg/osmdroid/util/SegmentClipper;->init()V

    .line 279
    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    iget-object v7, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->clipAndStore(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;ZZLorg/osmdroid/util/SegmentClipper;)V

    .line 280
    iget-object p1, v2, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    invoke-virtual {p1}, Lorg/osmdroid/util/SegmentClipper;->end()V

    return-void
.end method

.method buildPathPortion(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;
    .locals 6

    .line 241
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-object p2

    .line 245
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 246
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeDistances()V

    if-eqz p2, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    new-instance p2, Lorg/osmdroid/util/PointL;

    invoke-direct {p2}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 252
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;)V

    :goto_0
    move-object v2, p2

    .line 254
    iget-object p2, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    invoke-virtual {p2}, Lorg/osmdroid/util/SegmentClipper;->init()V

    .line 255
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    iget-object v5, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/overlay/LinearRing;->clipAndStore(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;ZZLorg/osmdroid/util/SegmentClipper;)V

    .line 256
    iget-object p1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    invoke-virtual {p1}, Lorg/osmdroid/util/SegmentClipper;->end()V

    .line 257
    iget-boolean p1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mClosed:Z

    if-eqz p1, :cond_2

    .line 258
    iget-object p1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_2
    return-object v2
.end method

.method public clear()V
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 654
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 658
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    invoke-virtual {v0}, Lorg/osmdroid/util/ListPointL;->clear()V

    return-void
.end method

.method clearPath()V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    .line 128
    iput-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    .line 129
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->resetPrecomputations()V

    .line 130
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->init()V

    return-void
.end method

.method computeDowngradePointList(I)[F
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 671
    :cond_0
    iget v1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePixelSize:I

    if-ne v1, p1, :cond_1

    .line 672
    iget-object p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePointList:[F

    return-object p1

    .line 674
    :cond_1
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 675
    iget-wide v1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedWidth:J

    iget-wide v3, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedHeight:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    return-object v0

    .line 679
    :cond_3
    new-instance v0, Lorg/osmdroid/util/ListPointAccepter;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lorg/osmdroid/util/ListPointAccepter;-><init>(Z)V

    .line 680
    new-instance v3, Lorg/osmdroid/util/SideOptimizationPointAccepter;

    invoke-direct {v3, v0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;-><init>(Lorg/osmdroid/util/PointAccepter;)V

    long-to-double v1, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v4

    int-to-double v4, p1

    div-double/2addr v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 682
    :goto_1
    iget-object v6, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    array-length v7, v6

    if-ge v5, v7, :cond_4

    add-int/lit8 v7, v5, 0x1

    .line 683
    aget-wide v8, v6, v5

    add-int/lit8 v5, v5, 0x2

    .line 684
    aget-wide v10, v6, v7

    .line 685
    iget-object v6, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    iget-wide v6, v6, Lorg/osmdroid/util/PointL;->x:J

    sub-long/2addr v8, v6

    long-to-double v6, v8

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 686
    iget-object v8, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedCenter:Lorg/osmdroid/util/PointL;

    iget-wide v8, v8, Lorg/osmdroid/util/PointL;->y:J

    sub-long/2addr v10, v8

    long-to-double v8, v10

    div-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    .line 687
    invoke-interface {v3, v6, v7, v8, v9}, Lorg/osmdroid/util/PointAccepter;->add(JJ)V

    goto :goto_1

    .line 689
    :cond_4
    iput p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePixelSize:I

    .line 690
    invoke-virtual {v0}, Lorg/osmdroid/util/ListPointAccepter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePointList:[F

    .line 691
    :goto_2
    iget-object p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDowngradePointList:[F

    array-length v1, p1

    if-ge v4, v1, :cond_5

    .line 692
    invoke-virtual {v0}, Lorg/osmdroid/util/ListPointAccepter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    aput v1, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)V
    .locals 18

    move-object/from16 v0, p3

    .line 307
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 308
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v11, v2, v4

    .line 309
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    int-to-double v1, v2

    div-double v13, v1, v4

    .line 310
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v15

    .line 311
    iget-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v7, v1

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v9, v0

    move-object/from16 v6, p0

    move-object/from16 v17, p2

    invoke-direct/range {v6 .. v17}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(DDDDDLorg/osmdroid/util/PointL;)V

    return-void
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 643
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPrecomputed:Z

    if-nez v0, :cond_0

    .line 644
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    .line 646
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getCenter(Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 544
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/LinearRing;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 546
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-object p1
.end method

.method getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Lorg/osmdroid/util/GeoPoint;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 451
    invoke-direct {v0}, Lorg/osmdroid/views/overlay/LinearRing;->computeProjected()V

    const/4 v6, 0x0

    move-object/from16 v2, p1

    .line 452
    invoke-virtual {v1, v2, v6}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 453
    new-instance v2, Lorg/osmdroid/util/PointL;

    invoke-direct {v2}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 454
    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v3, p5

    .line 455
    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/overlay/LinearRing;->clipAndStore(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;ZZLorg/osmdroid/util/SegmentClipper;)V

    .line 456
    invoke-virtual/range {p4 .. p4}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v1

    .line 457
    invoke-virtual/range {p4 .. p4}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 458
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 459
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 460
    iget v5, v7, Landroid/graphics/Point;->x:I

    int-to-double v8, v5

    :goto_0
    sub-double v10, v8, v1

    const-wide/16 v12, 0x0

    cmpl-double v5, v10, v12

    if-ltz v5, :cond_0

    move-wide v8, v10

    goto :goto_0

    .line 464
    :cond_0
    iget v5, v7, Landroid/graphics/Point;->y:I

    int-to-double v10, v5

    :goto_1
    sub-double v14, v10, v1

    cmpl-double v5, v14, v12

    if-ltz v5, :cond_1

    move-wide v10, v14

    goto :goto_1

    :cond_1
    mul-double v12, p2, p2

    .line 469
    new-instance v5, Lorg/osmdroid/util/PointL;

    invoke-direct {v5}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 470
    new-instance v7, Lorg/osmdroid/util/PointL;

    invoke-direct {v7}, Lorg/osmdroid/util/PointL;-><init>()V

    .line 473
    iget-object v14, v0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    invoke-virtual {v14}, Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    check-cast v6, Lorg/osmdroid/util/PointL;

    .line 474
    invoke-virtual {v7, v6}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    if-eqz v17, :cond_2

    move-wide/from16 v35, v1

    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_2
    move-wide/from16 v35, v1

    move-wide/from16 v21, v8

    :goto_3
    int-to-double v1, v4

    cmpg-double v6, v21, v1

    if-gez v6, :cond_5

    move-wide/from16 v23, v10

    :goto_4
    int-to-double v1, v3

    cmpg-double v6, v23, v1

    if-gez v6, :cond_4

    .line 480
    iget-wide v1, v5, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v1, v1

    move-wide/from16 v25, v1

    iget-wide v1, v5, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v1, v1

    move-wide/from16 v27, v1

    iget-wide v1, v7, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v1, v1

    move-wide/from16 v29, v1

    iget-wide v1, v7, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v1, v1

    move-wide/from16 v31, v1

    invoke-static/range {v21 .. v32}, Lorg/osmdroid/util/Distance;->getProjectionFactorToSegment(DDDDDD)D

    move-result-wide v33

    .line 481
    iget-wide v1, v5, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v1, v1

    move-wide/from16 v25, v1

    iget-wide v1, v5, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v1, v1

    move-wide/from16 v27, v1

    iget-wide v1, v7, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v1, v1

    move-wide/from16 v29, v1

    iget-wide v1, v7, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v1, v1

    move-wide/from16 v31, v1

    invoke-static/range {v21 .. v34}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToProjection(DDDDDDD)D

    move-result-wide v1

    cmpl-double v6, v12, v1

    if-lez v6, :cond_3

    .line 483
    iget-object v1, v0, Lorg/osmdroid/views/overlay/LinearRing;->mProjectedPoints:[J

    add-int/lit8 v2, v18, -0x1

    mul-int/lit8 v2, v2, 0x2

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 484
    aget-wide v5, v1, v2

    mul-int/lit8 v18, v18, 0x2

    .line 485
    aget-wide v7, v1, v18

    add-int/lit8 v18, v18, 0x1

    .line 486
    aget-wide v9, v1, v18

    long-to-double v1, v3

    sub-long/2addr v7, v3

    long-to-double v3, v7

    mul-double v3, v3, v33

    add-double/2addr v1, v3

    double-to-long v12, v1

    long-to-double v1, v5

    sub-long/2addr v9, v5

    long-to-double v3, v9

    mul-double v3, v3, v33

    add-double/2addr v1, v3

    double-to-long v14, v1

    .line 489
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v11

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/high16 v16, 0x43b0000000000000L    # 1.152921504606847E18

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v20}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    return-object v1

    :cond_3
    add-double v23, v23, v35

    goto :goto_4

    :cond_4
    add-double v21, v21, v35

    goto :goto_3

    .line 496
    :cond_5
    :goto_5
    invoke-virtual {v5, v7}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v6, v20

    move-wide/from16 v1, v35

    goto/16 :goto_2

    :cond_6
    move-object/from16 v20, v6

    return-object v20
.end method

.method public getDistance()D
    .locals 7

    .line 211
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/LinearRing;->getDistances()[D

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-wide v5, v0, v4

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method getDistances()[D
    .locals 1

    .line 202
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/LinearRing;->computeDistances()V

    .line 203
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mDistances:[D

    return-object v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mOriginalPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPointsForMilestones()Lorg/osmdroid/util/ListPointL;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointsForMilestones:Lorg/osmdroid/util/ListPointL;

    return-object v0
.end method

.method isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Z
    .locals 0

    .line 440
    invoke-virtual/range {p0 .. p5}, Lorg/osmdroid/views/overlay/LinearRing;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Lorg/osmdroid/util/GeoPoint;

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

    .line 222
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

    return v0
.end method

.method public setClipArea(JJJJ)V
    .locals 12

    .line 507
    iget-object v0, p0, Lorg/osmdroid/views/overlay/LinearRing;->mSegmentClipper:Lorg/osmdroid/util/SegmentClipper;

    iget-object v9, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    iget-object v10, p0, Lorg/osmdroid/views/overlay/LinearRing;->mIntegerAccepter:Lorg/osmdroid/util/IntegerAccepter;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Lorg/osmdroid/util/SegmentClipper;->set(JJJJLorg/osmdroid/util/PointAccepter;Lorg/osmdroid/util/IntegerAccepter;Z)V

    return-void
.end method

.method public setClipArea(Lorg/osmdroid/views/Projection;)V
    .locals 13

    .line 516
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 518
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int v2, v1, v1

    mul-int v3, v0, v0

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 522
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double v2, v2, v4

    double-to-int v2, v2

    sub-int v3, v1, v2

    int-to-long v5, v3

    sub-int v3, v0, v2

    int-to-long v7, v3

    add-int/2addr v1, v2

    int-to-long v9, v1

    add-int/2addr v0, v2

    int-to-long v11, v0

    move-object v4, p0

    .line 530
    invoke-virtual/range {v4 .. v12}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(JJJJ)V

    .line 535
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->isHorizontalWrapEnabled()Z

    move-result v0

    iput-boolean v0, v4, Lorg/osmdroid/views/overlay/LinearRing;->isHorizontalRepeating:Z

    .line 536
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->isVerticalWrapEnabled()Z

    move-result p1

    iput-boolean p1, v4, Lorg/osmdroid/views/overlay/LinearRing;->isVerticalRepeating:Z

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/LinearRing;->mGeodesic:Z

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

    .line 191
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/LinearRing;->clearPath()V

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 193
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/LinearRing;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method
