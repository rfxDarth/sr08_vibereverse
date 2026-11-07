.class public Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "LatLonGridlineOverlay2.java"


# instance fields
.field protected mDecimalFormatter:Ljava/text/DecimalFormat;

.field protected mLinePaint:Landroid/graphics/Paint;

.field protected mMultiplier:F

.field protected mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field protected mOptimizationPoint:Landroid/graphics/Point;

.field protected mTextBackgroundPaint:Landroid/graphics/Paint;

.field protected mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 26
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    .line 33
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    .line 36
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v1, -0x1000000

    .line 43
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setLineColor(I)V

    const/4 v2, -0x1

    .line 44
    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setFontColor(I)V

    .line 45
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setBackgroundColor(I)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setLineWidth(F)V

    const/16 v0, 0x20

    .line 47
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setFontSizeDp(S)V

    return-void
.end method

.method private computeStartLatitude(DD)D
    .locals 3

    div-double/2addr p1, p3

    .line 310
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    mul-double p1, p1, p3

    .line 311
    :goto_0
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    sub-double/2addr p1, p3

    goto :goto_0

    .line 314
    :cond_0
    :goto_1
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    add-double/2addr p1, p3

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method private formatCoordinate(DZ)Ljava/lang/String;
    .locals 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    if-lez v3, :cond_2

    if-eqz p3, :cond_1

    .line 325
    const-string p1, "N"

    goto :goto_0

    :cond_1
    const-string p1, "E"

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "S"

    goto :goto_0

    :cond_3
    const-string p1, "W"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 48

    move-object/from16 v0, p0

    .line 52
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_13

    .line 54
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->getIncrementor(I)D

    move-result-wide v7

    .line 55
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getCurrentCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double v9, v7, v2

    .line 57
    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v7, v8}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->computeStartLatitude(DD)D

    move-result-wide v11

    .line 58
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v5

    .line 59
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 60
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getHeight()I

    move-result v2

    int-to-float v13, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v1, v14

    div-float v16, v13, v14

    mul-float v2, v1, v1

    mul-float v3, v13, v13

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v3, v2, v14

    float-to-double v3, v3

    mul-double v17, v3, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v19, v1, v3

    div-float v20, v13, v3

    .line 68
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v1, v1, v21

    .line 69
    iget-object v3, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float v22, v3, v21

    add-float v23, v1, v22

    const/16 v24, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    if-gt v1, v3, :cond_1a

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v3, :cond_19

    const/high16 v25, 0x40000000    # 2.0f

    .line 74
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v14

    neg-float v14, v14

    if-nez v4, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/16 v26, 0x5a

    const/16 v3, 0x5a

    :goto_2
    int-to-float v3, v3

    add-float/2addr v14, v3

    move/from16 v26, v1

    const/4 v3, 0x0

    :goto_3
    const/4 v1, 0x1

    if-gt v3, v1, :cond_18

    move/from16 v28, v2

    if-nez v3, :cond_2

    move-wide/from16 v29, v7

    goto :goto_4

    :cond_2
    neg-double v1, v7

    move-wide/from16 v29, v1

    :goto_4
    if-nez v4, :cond_3

    .line 77
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_5

    :cond_3
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_5
    move-wide/from16 v35, v9

    move-wide/from16 v33, v11

    const/16 v31, 0x1

    const/16 v32, 0x0

    :goto_6
    if-eqz v31, :cond_17

    if-lez v32, :cond_7

    const/4 v2, 0x1

    if-ne v4, v2, :cond_5

    add-double v35, v35, v29

    :goto_7
    const-wide v37, -0x3f99800000000000L    # -180.0

    const-wide v39, 0x4076800000000000L    # 360.0

    cmpg-double v27, v35, v37

    if-gez v27, :cond_4

    add-double v35, v35, v39

    goto :goto_7

    :cond_4
    :goto_8
    const-wide v37, 0x4066800000000000L    # 180.0

    cmpl-double v27, v35, v37

    if-lez v27, :cond_7

    sub-double v35, v35, v39

    goto :goto_8

    :cond_5
    add-double v33, v33, v29

    .line 93
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v37

    cmpl-double v27, v33, v37

    if-lez v27, :cond_6

    .line 94
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v27

    move/from16 v37, v3

    invoke-virtual/range {v27 .. v27}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    invoke-direct {v0, v2, v3, v7, v8}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->computeStartLatitude(DD)D

    move-result-wide v33

    goto :goto_9

    :cond_6
    move/from16 v37, v3

    .line 95
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    cmpg-double v27, v33, v2

    if-gez v27, :cond_8

    .line 96
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v2

    invoke-direct {v0, v2, v3, v7, v8}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->computeStartLatitude(DD)D

    move-result-wide v33

    goto :goto_9

    :cond_7
    move/from16 v37, v3

    :cond_8
    :goto_9
    move/from16 v27, v4

    move-wide/from16 v2, v33

    move-wide/from16 v33, v7

    move-wide/from16 v7, v35

    .line 100
    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4, v2, v3, v7, v8}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 101
    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v35, v2

    iget-object v2, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    move-object/from16 v3, p2

    invoke-virtual {v3, v4, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    if-nez v27, :cond_b

    .line 103
    iget-object v2, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    int-to-double v3, v1

    move/from16 v39, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v40, v2

    int-to-double v1, v1

    move-wide/from16 v46, v3

    move-wide v3, v1

    move-wide/from16 v1, v46

    move/from16 v38, v26

    move/from16 v41, v37

    move/from16 v37, v27

    move-wide/from16 v26, v7

    move/from16 v8, v41

    move-object/from16 v7, v40

    move-wide/from16 v40, v9

    move/from16 v9, v39

    invoke-static/range {v1 .. v6}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v7, Landroid/graphics/Point;->y:I

    if-lez v32, :cond_a

    const-wide/16 v1, 0x0

    cmpg-double v3, v29, v1

    if-gez v3, :cond_9

    .line 107
    :goto_a
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v1, v9, :cond_a

    .line 108
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    add-double/2addr v2, v5

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_a

    .line 111
    :cond_9
    :goto_b
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v1, v9, :cond_a

    .line 112
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    sub-double/2addr v2, v5

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_b

    .line 116
    :cond_a
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move-wide v9, v5

    goto :goto_c

    :cond_b
    move-wide/from16 v40, v9

    move/from16 v38, v26

    move v9, v1

    move/from16 v46, v37

    move/from16 v37, v27

    move-wide/from16 v26, v7

    move/from16 v8, v46

    .line 118
    iget-object v7, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    int-to-double v1, v9

    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    invoke-static/range {v1 .. v6}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v1

    move-wide v9, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v7, Landroid/graphics/Point;->x:I

    .line 119
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    :goto_c
    move v7, v1

    const/4 v1, 0x1

    if-nez v32, :cond_d

    if-ne v8, v1, :cond_d

    :cond_c
    move-object/from16 v1, p1

    move/from16 v45, v7

    move/from16 v43, v8

    const/16 v39, 0x1

    goto/16 :goto_12

    :cond_d
    if-nez v37, :cond_e

    .line 130
    iget-object v2, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v3, v15, v28

    add-float v4, v15, v28

    .line 133
    iget-object v5, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    sub-float v5, v5, v16

    iget-object v6, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    sub-float v6, v6, v16

    mul-float v5, v5, v6

    float-to-double v5, v5

    move-wide/from16 v42, v5

    move v5, v2

    move v2, v3

    move v3, v5

    goto :goto_d

    .line 135
    :cond_e
    iget-object v2, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v2

    sub-float v2, v16, v28

    add-float v4, v16, v28

    .line 138
    iget-object v5, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float/2addr v5, v15

    iget-object v6, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sub-float/2addr v6, v15

    mul-float v5, v5, v6

    float-to-double v5, v5

    move-wide/from16 v42, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v4

    :goto_d
    cmpg-double v6, v42, v17

    if-gtz v6, :cond_f

    const/16 v31, 0x1

    goto :goto_e

    :cond_f
    const/16 v31, 0x0

    :goto_e
    if-eqz v31, :cond_c

    if-nez v38, :cond_10

    .line 143
    iget-object v6, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    const/16 v39, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v45, v7

    move/from16 v43, v8

    goto :goto_12

    :cond_10
    move-object/from16 v1, p1

    const/16 v39, 0x1

    if-nez v37, :cond_11

    move-wide/from16 v4, v35

    goto :goto_f

    :cond_11
    move-wide/from16 v4, v26

    :goto_f
    if-nez v37, :cond_12

    const/4 v6, 0x1

    goto :goto_10

    :cond_12
    const/4 v6, 0x0

    .line 145
    :goto_10
    invoke-direct {v0, v4, v5, v6}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->formatCoordinate(DZ)Ljava/lang/String;

    move-result-object v4

    if-nez v37, :cond_13

    move/from16 v2, v19

    :cond_13
    if-nez v37, :cond_14

    goto :goto_11

    :cond_14
    sub-float v3, v13, v20

    .line 148
    :goto_11
    iget-object v5, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float v5, v5, v21

    const/4 v6, 0x0

    cmpl-float v42, v14, v6

    if-eqz v42, :cond_15

    .line 151
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 152
    invoke-virtual {v1, v14, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_15
    div-float v5, v5, v25

    move v6, v2

    sub-float v2, v6, v5

    div-float v43, v23, v25

    move/from16 v44, v3

    sub-float v3, v44, v43

    add-float/2addr v5, v6

    add-float v43, v44, v43

    move/from16 v44, v6

    .line 154
    iget-object v6, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move/from16 v45, v7

    move-object v7, v4

    move v4, v5

    move/from16 v5, v43

    move/from16 v43, v8

    move/from16 v8, v44

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-float v2, v5, v22

    .line 157
    iget-object v3, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v42, :cond_16

    .line 159
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    :goto_12
    add-int/lit8 v32, v32, 0x1

    move-wide v5, v9

    move-wide/from16 v7, v33

    move-wide/from16 v33, v35

    move/from16 v4, v37

    move-wide/from16 v9, v40

    move/from16 v3, v43

    move/from16 v1, v45

    move-wide/from16 v35, v26

    move/from16 v26, v38

    goto/16 :goto_6

    :cond_17
    move-object/from16 v1, p1

    move/from16 v43, v3

    move/from16 v37, v4

    move-wide/from16 v33, v7

    move-wide/from16 v40, v9

    move/from16 v38, v26

    const/16 v39, 0x1

    move-wide v9, v5

    add-int/lit8 v3, v43, 0x1

    move/from16 v2, v28

    move-wide/from16 v9, v40

    goto/16 :goto_3

    :cond_18
    move-object/from16 v1, p1

    move/from16 v28, v2

    move/from16 v37, v4

    move-wide/from16 v33, v7

    move-wide/from16 v40, v9

    move/from16 v38, v26

    const/16 v39, 0x1

    move-wide v9, v5

    add-int/lit8 v4, v37, 0x1

    move/from16 v1, v38

    move-wide/from16 v9, v40

    const/4 v3, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_1

    :cond_19
    move/from16 v38, v1

    move/from16 v28, v2

    move-wide/from16 v33, v7

    move-wide/from16 v40, v9

    const/high16 v25, 0x40000000    # 2.0f

    move-object/from16 v1, p1

    move-wide v9, v5

    add-int/lit8 v2, v38, 0x1

    move v1, v2

    move/from16 v2, v28

    move-wide/from16 v9, v40

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_0

    :cond_1a
    :goto_13
    return-void
.end method

.method protected getIncrementor(I)D
    .locals 4

    packed-switch p1, :pswitch_data_0

    .line 300
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3e8999999999999aL    # 1.9073486328125E-7

    :goto_0
    mul-double v0, v0, v2

    return-wide v0

    .line 297
    :pswitch_0
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3e9999999999999aL    # 3.814697265625E-7

    goto :goto_0

    .line 295
    :pswitch_1
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ea999999999999aL    # 7.62939453125E-7

    goto :goto_0

    .line 293
    :pswitch_2
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3eb999999999999aL    # 1.52587890625E-6

    goto :goto_0

    .line 291
    :pswitch_3
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ec999999999999aL    # 3.0517578125E-6

    goto :goto_0

    .line 289
    :pswitch_4
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ed999999999999aL    # 6.103515625E-6

    goto :goto_0

    .line 287
    :pswitch_5
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ee999999999999aL    # 1.220703125E-5

    goto :goto_0

    .line 285
    :pswitch_6
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ef999999999999aL    # 2.44140625E-5

    goto :goto_0

    .line 283
    :pswitch_7
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f0999999999999aL    # 4.8828125E-5

    goto :goto_0

    .line 281
    :pswitch_8
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f1999999999999aL    # 9.765625E-5

    goto :goto_0

    .line 279
    :pswitch_9
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f2999999999999aL    # 1.953125E-4

    goto :goto_0

    .line 277
    :pswitch_a
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f3999999999999aL    # 3.90625E-4

    goto :goto_0

    .line 275
    :pswitch_b
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f4999999999999aL    # 7.8125E-4

    goto :goto_0

    .line 273
    :pswitch_c
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f5999999999999aL    # 0.0015625

    goto :goto_0

    .line 271
    :pswitch_d
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f6999999999999aL    # 0.003125

    goto/16 :goto_0

    .line 269
    :pswitch_e
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f7999999999999aL    # 0.00625

    goto/16 :goto_0

    .line 267
    :pswitch_f
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f8999999999999aL    # 0.0125

    goto/16 :goto_0

    .line 265
    :pswitch_10
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f9999999999999aL    # 0.025

    goto/16 :goto_0

    .line 263
    :pswitch_11
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3fa999999999999aL    # 0.05

    goto/16 :goto_0

    .line 261
    :pswitch_12
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    goto/16 :goto_0

    .line 259
    :pswitch_13
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    goto/16 :goto_0

    .line 257
    :pswitch_14
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_0

    .line 255
    :pswitch_15
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 253
    :pswitch_16
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    goto/16 :goto_0

    .line 251
    :pswitch_17
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    goto/16 :goto_0

    .line 249
    :pswitch_18
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    goto/16 :goto_0

    .line 247
    :pswitch_19
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    goto/16 :goto_0

    .line 245
    :pswitch_1a
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    goto/16 :goto_0

    .line 243
    :pswitch_1b
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDecimalFormatter(Ljava/text/DecimalFormat;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFontSizeDp(S)V
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setMultiplier(F)V
    .locals 0

    .line 227
    iput p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setTextStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
